library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Test_Pack.all;

entity randi_tb is
end randi_tb;
-- Rnadi RTL
architecture randi_tb_rtl of randi_tb is
    COMPONENT randi
    PORT
        (
            clk_50MHz            : IN  std_logic;

            reset                : IN  std_logic;
            load                 : IN  std_logic;
            
            randi_input_data     : IN  std_logic;
            randi_input_valid    : IN  std_logic;
            randi_input_ready    : IN  std_logic;


            randi_output_data   : OUT std_logic;
            randi_output_valid  : OUT std_logic;
            randi_output_ready  : OUT std_logic
        );
    end component;

    --signals 
    signal clk                                       : std_logic := '0';   --start clk with 0 
    signal reset                                     : std_logic;  
    signal randi_input_valid                         : std_logic;  
    signal load                                      : std_logic;  
    signal randi_input_data                          : std_logic; 
    signal randi_output_data                         : std_logic; 
    signal randi_input_ready                          : std_logic; 
    signal randi_output_ready                         : std_logic; 
    signal randi_output_valid                        : std_logic;
    signal input_vector                             : std_logic_vector(95 downto 0) := RANDI_VECTOR_INPUT;
    signal RANDI_Output_Expected                        : std_logic_vector(95 downto 0) := RANDI_VECTOR_OUTPUT;
    signal RANDI_Output_Vector                    : std_logic_vector(95 downto 0) := (others => '0');

    signal test_pass_RANDI                          : boolean;


begin 
    --instant 
    uut: randi port map (
        clk_50MHz              => clk, 
        reset                  => reset, 
        load                   => load,   
        randi_input_data       => randi_input_data, 
        randi_input_valid      => randi_input_valid,  
        randi_input_ready      => randi_input_ready,  
        randi_output_valid     => randi_output_valid,          
        randi_output_data      => randi_output_data,
        randi_output_ready     => randi_output_ready
        );

    --clock process 
    clk <= not clk after CLK_50MHz_Period_HALF;

    --assigning input bits from the vector 
    process begin 
        reset <= '1'; --initialize values 
        randi_input_valid    <= '0';
        randi_input_ready    <= '0';
        wait for CLK_50MHz_Period_HALF + 5 ns;     --make sure a pos edge came before changing the reset 
        reset <= '0'; 
        load <= '1';    --take seed into module 
        wait for CLK_50MHz_Period; --bec of 75 ns edge the next pos edge so make sure a pos edge came 
        load <= '0'; 
        wait for CLK_50MHz_Period; --bec of 75 ns edge the next pos edge so make sure a pos edge came 
        randi_input_valid <= '1'; 
        randi_input_ready <= '1';
        -- wait until randi_input_ready = '1';

        report procedure_Break_Notice;
        report procedure_start_SIMULATION_Notice severity note;
        report procedure_Break_Notice;

        report procedure_Break_Notice;
        report "------------------------------ Inputting {2} Input Streams --------------------------------" severity note;
        report procedure_Break_Notice;
        report "---------------------------- ### Starting Inputting the First stream: " severity note;
        report procedure_Break_Notice;
        procedure_96_inputs(0, 95, input_vector, randi_input_data);  --definition in package  
        report "----------------------------- ### Done Inputting the First stream: " severity note;
        report procedure_Break_Notice;
        report "---------------------------- ### Starting Inputting the Second stream: " severity note;
        report procedure_Break_Notice;
        procedure_96_inputs(0, 95, input_vector, randi_input_data);  --definition in package  
        report "----------------------------- ### Done Inputting the Second stream: " severity note;
        report "------------------------------ Finishehd Inputting {2} Input Streams --------------------------" severity note;
        report procedure_Break_Notice;
        randi_input_valid  <= '0';
        randi_input_ready <= '0';
        wait; --makes process executes once 
    end process;

    --checking on output 
    --verifier
    process
    begin
        wait on randi_input_data;    --wait for a change in the input
        wait for 10 ns;         --to give time between input and output 
        test_pass_RANDI <= true;  -- Reset the test flag for MODU Q outputs
        -- wait until randi_input_ready = '1';
        report "========================================================================================================";
        report "------------------------------------- STARTED Blocks SELF CHECKER --------------------------------------";
        report "========================================================================================================";        
        report "---------------------------- Started self checker for: Randomizer Block --------------------------------";
        report "========================================================================================================";        
        report "---------------------------------- ### The First Randimoizer Input Stream  " severity note;
        procedure_96_outputs_RANDI(0, 95, RANDI_Output_Vector, randi_output_data, RANDI_Output_Expected, test_pass_RANDI);
        report procedure_Break_Notice;
            assert test_pass_RANDI = false 
                report "------------------------- ### Randomizer First Input Stream test passed successfully" severity note ;
            assert test_pass_RANDI = true 
                report "------------------------- ### Randomizer First Input Stream test Failed" severity note ;
        report procedure_Break_Notice;
        report "---------------------------------- ### The Second Randimoizer Input Stream  " severity note;
        procedure_96_outputs_RANDI(0, 95, RANDI_Output_Vector, randi_output_data, RANDI_Output_Expected, test_pass_RANDI);
        report procedure_Break_Notice;
            assert test_pass_RANDI = false 
                report "------------------------- ### Randomizer Second Input Stream test passed successfully" severity note ;
            assert test_pass_RANDI = true 
                report "------------------------- ### Randomizer Second Input Stream test Failed" severity note ;
        report procedure_Break_Notice;
        report "========================================================================================================";
        report "-------------------Finished self checker for: RANDI Block--------------------------";
        report "========================================================================================================";
        report procedure_Break_Notice;
        report END_SIMULATION_Notice severity note;
        report procedure_Break_Notice;

        wait; 
    end process;
end randi_tb_rtl;