library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE work.Test_Pack.ALL;

entity MODU_tb is
end MODU_tb;

architecture MODU_tb_rtl of MODU_tb is
    component MODU
    PORT (
            clk_100MHz            :IN  std_logic;                 
            reset                 :IN  std_logic;

            MODU_input_data       :IN  std_logic; 
            MODU_input_valid      :IN  std_logic;
            MODU_input_ready      :IN  std_logic;

            MODU_output_Q         :OUT std_logic_vector(15 DOWNTO 0);
            MODU_output_I         :OUT std_logic_vector(15 DOWNTO 0);
            MODU_output_valid     :OUT std_logic;
            MODU_output_ready     :OUT std_logic
    );
    end component;

    signal clk_100MHz             : std_logic := '0';
    signal reset                  : std_logic;
    signal MODU_input_valid       : std_logic;
    signal MODU_input_ready       : std_logic;

    signal test_in_vector         : std_logic_vector(191 downto 0) := MODU_VECTOR_INPUT;
    signal test_out_vector_Q      : std_logic_vector(1535 downto 0) := (others => '0');
    signal test_out_vector_I      : std_logic_vector(1535 downto 0) := (others => '0');
    signal MODU_input_data        : std_logic;
    signal MODU_output_Q          : std_logic_vector(15 downto 0);
    signal MODU_output_I          : std_logic_vector(15 downto 0);
    signal MODU_output_valid      : std_logic;
    signal MODU_output_ready      : std_logic;


    signal flag                   : std_logic := '0';

    signal MODU_Expected_Output_Q : std_logic_vector(1535 downto 0) := MODU_VECTOR_OUTPUT_Q;
    signal MODU_Expected_Output_I : std_logic_vector(1535 downto 0) := MODU_VECTOR_OUTPUT_I;
    signal test_pass_MODU_encoder_I                : boolean := true;
    signal test_pass_MODU_encoder_Q                : boolean := true;

begin

    uut: MODU port map (
        clk_100MHz         => clk_100MHz,
        reset              => reset,
        MODU_input_data    => MODU_input_data,
        MODU_input_valid   => MODU_input_valid,
        MODU_input_ready   => MODU_input_ready,


        MODU_output_Q      => MODU_output_Q,
        MODU_output_I      => MODU_output_I,
        MODU_output_valid  => MODU_output_valid,
        MODU_output_ready  => MODU_output_ready
    );

    clk_100MHz <= not clk_100MHz after CLK_100MHz_Period_HALF;

    -- Serial input in
    process
    begin
        reset              <= '1';
        wait for CLK_100MHz_Period + 5 ns;
        reset              <= '0';
        wait for CLK_100MHz_Period + 5 ns;
        MODU_input_valid   <= '1';
        MODU_input_ready   <= '1';

        report procedure_Break_Notice;
        report procedure_start_SIMULATION_Notice severity note;

        report "========================================================================================================";               report "========================================================================================================";         
        report "------------------------------    Inputting MODU {2} Input Streams --------------------------------" severity note;
        report "========================================================================================================";        
        report procedure_Break_Notice;
        report "---------------------------------- ### The First MODU Input Stream  " severity note;
        procedure_192_inputs_MODU(0, 191, test_in_vector, MODU_input_data);
        report "----------------------------- ### Done Inputting MODU the First stream: " severity note;
        report procedure_Break_Notice;
        report "---------------------------------- ### The Second MODU Input Stream  " severity note;
        procedure_192_inputs_MODU(0, 191, test_in_vector, MODU_input_data);
        report "----------------------------- ### Done Inputting MODU the Second stream: " severity note;

        -- procedure_192_inputs_MODU(0, 191, test_in_vector, MODU_input_data);
        -- procedure_192_inputs_MODU(0, 191, test_in_vector, MODU_input_data);
        -- procedure_192_inputs_MODU(0, 191, test_in_vector, MODU_input_data);

        report "------------------------------ Finishehd Inputting MODU {2} Input Streams --------------------------" severity note;
        report procedure_Break_Notice;


        MODU_input_data    <= 'X';
        MODU_input_valid   <= '0';
        MODU_input_ready   <= '0';
        wait;
    end process;

    -- Check output
    process
begin
    wait until MODU_output_valid = '1';
    report procedure_Break_Notice;
    report procedure_start_SIMULATION_Notice severity note;
    report procedure_Break_Notice;
    test_pass_MODU_encoder_Q <= true;  -- Reset the test flag for MODU Q outputs
    test_pass_MODU_encoder_I <= true;  -- Reset the test flag for MODU I outputs


    report "========================================================================================================";               
    report "---------------------------- Started self checker for: MODU Block --------------------------------";
    report "========================================================================================================";            
    report "----------------------------- Checking MODU (Demodulating) (2) output streams ---------------" severity note;
    report procedure_Break_Notice;
    report "------------------------ ### Started Checking First MODU Output stream: " severity note;
    --procedure_192_outputs_MODU(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q);
    procedure_192_outputs_MODU_x2(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q, test_out_vector_I, MODU_output_I, MODU_Expected_Output_I, test_pass_MODU_encoder_I);

    assert test_pass_MODU_encoder_Q = false 
        report "------------------------ ### First MODU Output Stream: 1536 Q Values Successed" severity note;
    assert test_pass_MODU_encoder_Q = true 
        report "------------------------ ### First MODU Output Stream: 1536 Q Values Failed" severity note;
        report procedure_Break_Notice;
    assert test_pass_MODU_encoder_I = false 
        report "------------------------ ### First MODU Output Stream: 1536 I Values Successed" severity note;
    assert test_pass_MODU_encoder_I = true 
        report "------------------------ ### First MODU Output Stream: 1536 I Values failed" severity note;
    report procedure_Break_Notice;
    report "--------------------------- ### Ended Checking MODU First Output stream " severity note;
    report procedure_Break_Notice;

    report "-------------------------- ### Started Checking MODU Second Output stream: " severity note;
    procedure_192_outputs_MODU_x2(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q, test_out_vector_I, MODU_output_I, MODU_Expected_Output_I, test_pass_MODU_encoder_I);
    assert test_pass_MODU_encoder_Q = false 
        report "------------------------ ### Second MODU Output Stream: 1536 Q Values Successed" severity note;
    assert test_pass_MODU_encoder_Q = true 
        report "------------------------ ### Second MODU Output Stream: 1536 Q Values Failed" severity note;
        report procedure_Break_Notice;
    assert test_pass_MODU_encoder_I = false 
        report "------------------------ ### Second MODU Output Stream: 1536 I Values Successed" severity note;
    assert test_pass_MODU_encoder_I = true 
        report "------------------------ ### Second MODU Output Stream: 1536 I Values Failed" severity note;
    report procedure_Break_Notice;
    report "--------------------------- ### Ended Checking MODU Second Output stream " severity note;
    report procedure_Break_Notice;
    report "----------------------------- Ended MODU Checking (Demodulating) (2) output streams ---------------" severity note;
    report procedure_Break_Notice;


    --procedure_192_outputs_MODU(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q);
    --procedure_192_outputs_MODU(0, 1535, test_out_vector_I, MODU_output_I, MODU_Expected_Output_I, test_pass_MODU_encoder_I);

    -- procedure_192_outputs_MODU_x2(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q, test_out_vector_I, MODU_output_I, MODU_Expected_Output_I, test_pass_MODU_encoder_I);
    -- procedure_192_outputs_MODU_x2(0, 1535, test_out_vector_Q, MODU_output_Q, MODU_Expected_Output_Q, test_pass_MODU_encoder_Q, test_out_vector_I, MODU_output_I, MODU_Expected_Output_I, test_pass_MODU_encoder_I);

    -- report procedure_Break_Notice;
    -- assert test_pass_MODU_encoder_Q = true 
    --     report procedure_Break_Notice;
    --     report "Test on 1536 output bits of Q passed successfully!" severity note;
    --     report procedure_Break_Notice severity note; 
    -- report procedure_Break_Notice;
    -- assert test_pass_MODU_encoder_I = true 
    --     report procedure_Break_Notice;
    --     report "Test on 1536 output bits of I passed successfully!" severity note;
    --     report procedure_Break_Notice severity note; 





    report procedure_Break_Notice;
    report END_SIMULATION_Notice severity note;
    report procedure_Break_Notice;


    flag <= '1';
    wait;
end process;

end MODU_tb_rtl;
