library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE work.Test_Pack.ALL;

entity INTER_tb is
end INTER_tb;

architecture INTER_tb_rtl of INTER_tb is
    component INTER
    port(
        clk_100MHz                              : in    std_logic; 

        reset                                   : in    std_logic; 

        INTER_Input_data                        : in    std_logic; 
        INTER_input_valid                       : in    std_logic; 
        INTER_input_ready                       : in    std_logic; 

        INTER_Output_data                       : out   std_logic;
        INTER_Output_valid                      : out   std_logic;
        INTER_Output_ready                     : out   std_logic  
    );
    end component;

    --constants 
    constant CLK_100MHz_Period                           : Time := 10 ns; 
    constant CLK_100MHz_Period_HALF                      : Time := CLK_100MHz_Period / 2; 
    --signals 
    signal clk                                    : std_logic := '0'; 
    signal reset                                  : std_logic; 
    signal INTER_input_valid                                     : std_logic;
    signal INTER_input_ready                                     : std_logic; 

    signal test_in_vector                         : std_logic_vector(191 downto 0) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
    signal INTER_Input_data                            : std_logic;
    signal INTER_Output_data                           : std_logic;
    signal test_pass_INTER_encoder                : boolean := true;
    signal INTER_Output_valid                              : std_logic;
    signal INTER_Output_ready                              : std_logic;
    signal flag                                   : std_logic := '0';
    
    signal test_out_vector                        : std_logic_vector(191 downto 0) := x"000000000000000000000000000000000000000000000000";
    signal INTER_Expected_Output                  : std_logic_vector(191 downto 0) := INTER_VECTOR_OUTPUT;


begin 

    --instant 
    uut: INTER port map (clk_100mhz => clk, reset => reset, 
                        INTER_Input_data => INTER_Input_data,
                        INTER_input_valid => INTER_input_valid, 
                        INTER_input_ready => INTER_input_ready, 
                        INTER_Output_data => INTER_Output_data,
                        INTER_Output_valid => INTER_Output_valid,
                        INTER_Output_ready => INTER_Output_ready 
                        );

    --clk process 
    clk <= not clk after CLK_100MHz_Period_HALF; 

    --serial input in 
    process begin 
        reset   <= '1'; 
        wait for CLK_100MHz_Period + 5 ns; 
        reset   <= '0';
        wait for CLK_100MHz_Period + 5 ns; 
        INTER_input_valid      <= '1';
        INTER_input_ready      <= '1';
        report procedure_Break_Notice;
        report procedure_start_SIMULATION_Notice severity note;

        report "========================================================================================================";               report "========================================================================================================";         
        report "------------------------------    Inputting {4} Input Streams --------------------------------" severity note;
        report "========================================================================================================";        
        report procedure_Break_Notice;
        report "---------------------------------- ### The First INTER Input Stream  " severity note;
        procedure_192_inputs(0, 191, test_in_vector, INTER_Input_data);
        report "----------------------------- ### Done Inputting the First stream: " severity note;
        report procedure_Break_Notice;
        report "---------------------------------- ### The Second INTER Input Stream  " severity note;
        procedure_192_inputs(0, 191, test_in_vector, INTER_Input_data);
        report "----------------------------- ### Done Inputting the Second stream: " severity note;
        report procedure_Break_Notice;
        report "---------------------------------- ### The Third INTER Input Stream  " severity note;
        procedure_192_inputs(0, 191, test_in_vector, INTER_Input_data);
        report "----------------------------- ### Done Inputting the Third stream: " severity note;
        report procedure_Break_Notice;
        report "---------------------------------- ### The Fourth INTER Input Stream  " severity note;
        procedure_192_inputs(0, 191, test_in_vector, INTER_Input_data);
        report "----------------------------- ### Done Inputting the Fourth stream: " severity note;
        report procedure_Break_Notice;

        
        report "------------------------------ Finishehd Inputting {4} Input Streams --------------------------" severity note;
        report procedure_Break_Notice;

        

        -- for i in 191 downto 0 loop 
        --     INTER_Input_data <= test_in_vector(i);
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     INTER_Input_data <= test_in_vector(i);
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     INTER_Input_data <= test_in_vector(i);
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     INTER_Input_data <= test_in_vector(i);
        --     wait for CLK_100MHz_Period; 
        -- end loop;
        INTER_Input_data <= 'X';
        -- wait until flag = '1'; 
        INTER_input_ready  <= '0';
        INTER_input_valid  <= '0';
        wait;
    end process; 

    --check output 
    process begin 
        wait until INTER_Output_valid = '1'; 
        wait for 2 ns; 

        report "========================================================================================================";               
        report "---------------------------- Started self checker for: INTER Block --------------------------------";
        report "========================================================================================================";        
        report "---------------------------------- ### The First INTER Input Stream  " severity note;
        procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
            report procedure_Break_Notice;
            assert test_pass_INTER_encoder = false 
                report "------------------------- ### INTER First Input Stream test passed Successfully" severity note ;
            assert test_pass_INTER_encoder = true 
                report "------------------------- ### INTER First Input Stream test Failed" severity note ;
            
            report procedure_Break_Notice;
            report "---------------------------------- ## The Second INTER Input Stream  " severity note;
            procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
            report procedure_Break_Notice;
            assert test_pass_INTER_encoder = false 
                report "------------------------- ## INTER Second Input Stream test passed Successfully" severity note ;
            assert test_pass_INTER_encoder = true 
                report "------------------------- ## INTER Second Input Stream test Failed" severity note ;
            
                report "---------------------------------- ### The Third INTER Input Stream  " severity note;
                procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
                    report procedure_Break_Notice;
                    assert test_pass_INTER_encoder = false 
                        report "------------------------- ### INTER Third Input Stream test passed Successfully" severity note ;
                    assert test_pass_INTER_encoder = true 
                        report "------------------------- ### INTER Third Input Stream test Failed" severity note ;
                    
                    report procedure_Break_Notice;
                    report "---------------------------------- ## The Fourth INTER Input Stream  " severity note;
                    procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
                    report procedure_Break_Notice;
                    assert test_pass_INTER_encoder = false 
                        report "------------------------- ## INTER Fourth Input Stream test passed Successfully" severity note ;
                    assert test_pass_INTER_encoder = true 
                        report "------------------------- ## INTER Fourth Input Stream test Failed" severity note ;

            report "========================================================================================================";
            report "-------------------Finished self checker for: INTER Block--------------------------";
            report "========================================================================================================";
                

        -- report procedure_Break_Notice;
        -- report "[First Bulk] Output Streaming" severity note; 
        -- report procedure_Break_Notice;
        -- procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
        -- report procedure_Break_Notice;
        -- report "[Second Bulk] Output Streaming" severity note; 
        -- report procedure_Break_Notice;
        -- procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
        -- report procedure_Break_Notice;
        -- report "[Third Bulk] Output Streaming" severity note; 
        -- report procedure_Break_Notice;
        -- procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);
        -- report procedure_Break_Notice;
        -- report "[Fourth Bulk] Output Streaming" severity note; 
        -- report procedure_Break_Notice;
        -- procedure_192_outputs_INTER(0, 191, test_out_vector, INTER_Output_data, INTER_Expected_Output, test_pass_INTER_encoder);


        -- assert test_pass_INTER_encoder = false 
        --     report procedure_Break_Notice;
        --     report "Test on 192 inputs passed successfully!" severity note; 
        --     report procedure_Break_Notice;

        report procedure_Break_Notice;
        report END_SIMULATION_Notice severity note;
        report procedure_Break_Notice;

        
        -- for i in 191 downto 0 loop 
        --     test_out_vector(i) <= INTER_Output_data; 
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     test_out_vector(i) <= INTER_Output_data; 
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     test_out_vector(i) <= INTER_Output_data; 
        --     wait for CLK_100MHz_Period; 
        -- end loop;

        -- for i in 191 downto 0 loop 
        --     test_out_vector(i) <= INTER_Output_data; 
        --     wait for CLK_100MHz_Period; 
        -- end loop;
        
        flag    <= '1';
        wait;
    end process;

end INTER_tb_rtl;