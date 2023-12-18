library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package Test_Pack is 
--=============================================================================================
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Constants %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
--=============================================================================================
    --%%%%%%% Common:
    --------------- A) Clocks:
    constant CLK_50MHz_Period                      : Time:= 20 ns; 
    constant CLK_50MHz_Period_HALF                 : Time:=  CLK_50MHz_Period / 2; 
	constant CLK_50MHz_test                        : Time := CLK_50MHz_Period / 2; 
    constant CLK_100MHz_Period                     : Time:= 10 ns; 
    constant CLK_100MHz_Period_HALF                : Time:= CLK_100MHz_Period / 2; 
	constant CLK_100MHz_test                       : Time := CLK_100MHz_Period / 2;

    --------------- B) SIM Notice:
    constant procedure_start_SIMULATION_Notice    : string :=  "------------------------------------------ Simulation Started -------------------------------------------------";
    constant procedure_Break_Notice                : string := "===============================================================================================================";
    constant END_SIMULATION_Notice                : string :=  "----------------------------------------- Simulation Finished -------------------------------------------------"; 
    --signal temp                                    : std_logic_vector(0 downto 0);
    --%%%%%%% Block Specfic :
    ------------------------ A) Randi
    constant RANDI_VECTOR_INPUT      : std_logic_vector(95 downto 0)  := x"ACBCD2114DAE1577C6DBF4C9"; -- correct 
    --constant RANDI_VECTOR_INPUT      : std_logic_vector(95 downto 0)  := x"558AC4A53A1724E163AC2BF9"; -- inject fail

    constant RANDI_VECTOR_OUTPUT     : std_logic_vector(95 downto 0)  := x"558AC4A53A1724E163AC2BF9";
    ------------------------ B) FEC 
    constant FEC_VECTOR_INPUT             : std_logic_vector(95 downto 0)  := x"558AC4A53A1724E163AC2BF9";
    constant FEC_VECTOR_OUTPUT            : std_logic_vector(191 downto 0) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
    ------------------------ C) INTER
    constant INTER_VECTOR_INPUT           : std_logic_vector(191 downto 0) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
    constant INTER_VECTOR_OUTPUT           : std_logic_vector(191 downto 0) := x"4B047DFA42F2A5D5F61C021A5851E9A309A24FD58086BD1E";
    ------------------------ D) MODU 
    constant ZeroTS                      : std_logic_vector(15 downto 0)  := "0101101001111111";
    constant NZeroTS                     : std_logic_vector(15 downto 0)  := "1010010110000001";

    --constant ZeroTS                      : std_logic_vector(15 downto 0)  := "1101101001111111";   -- test fail
    --constant NZeroTS                     : std_logic_vector(15 downto 0)  := "0010010110000001";   -- test fail

    constant MODU_VECTOR_INPUT           : std_logic_vector(191 downto 0) := x"4B047DFA42F2A5D5F61C021A5851E9A309A24FD58086BD1E";
    constant MODU_VECTOR_OUTPUT_Q        : std_logic_vector(1535 downto 0)  := X"5A7F_5A7F_A581_A581_5A7F_5A7F_5A7F_5A7F_5A7F_A581_A581_5A7F_A581_A581_A581_A581_5A7F_5A7F_5A7F_A581_A581_A581_5A7F_A581_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_5A7F_A581_5A7F_5A7F_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_5A7F_5A7F_A581_A581_A581_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_A581_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_A581_A581_A581_A581_5A7F_5A7F_5A7F_A581_A581";
    constant MODU_VECTOR_OUTPUT_I        : std_logic_vector(1535 downto 0) := X"A581_5A7F_5A7F_A581_5A7F_5A7F_A581_5A7F_A581_A581_A581_A581_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_A581_5A7F_5A7F_5A7F_5A7F_A581_A581_A581_A581_A581_A581_A581_A581_A581_5A7F_5A7F_A581_A581_5A7F_5A7F_5A7F_5A7F_5A7F_5A7F_A581_5A7F_5A7F_A581_A581_5A7F_5A7F_A581_A581_5A7F_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_5A7F_5A7F_A581_5A7F_A581_A581_A581_A581_A581_A581_5A7F_5A7F_5A7F_5A7F_5A7F_5A7F_A581_5A7F_5A7F_A581_A581_A581_5A7F_A581_A581_5A7F";

    --constant MODU_VECTOR_OUTPUT_Q        : std_logic_vector(1535 downto 0)  := X"58A1_5A7F_A581_A581_5A7F_5A7F_5A7F_5A7F_5A7F_A581_A581_5A7F_A581_A581_A581_A581_5A7F_5A7F_5A7F_A581_A581_A581_5A7F_A581_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_5A7F_A581_5A7F_5A7F_A581_A581_5A7F_5A7F_A581_5A7F_5A7F_5A7F_5A7F_5A7F_A581_A581_A581_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_5A7F_A581_A581_5A7F_A581_5A7F_5A7F_A581_A581_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_5A7F_A581_5A7F_5A7F_581F_A581_A581_A581_5A7F_5A7F_5A7F_A581_A581"; --test failure

    constant MAX_ITERATIONS : integer := 96;  -- Define the maximum number of iterations
    -- constant MODU_VECTOR_INPUT_2      : std_logic_vector(191 downto 0) := x"4B047DFA42F2A5D5F61C021A5851E9A309A24FD58087BD1E";
--====================================================================================================================


--============================================================================================================
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Functions & Procedures       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
--============================================================================================================
    -- procedures 
    --fill input 
    procedure procedure_96_inputs   (procedure_start, procedure_end : in integer; input_vector1 : std_logic_vector(95 downto 0); signal Test_bit_output : out std_logic); 
    procedure procedure_96_inputs_FEC   (procedure_start, procedure_end : in integer; input_vector1 : std_logic_vector(95 downto 0); signal Test_bit_output : out std_logic); 
    procedure procedure_192_inputs  (procedure_start, procedure_end : in integer; input_vector2: std_logic_vector(191 downto 0); signal Test_bit_output : out std_logic); 
    procedure procedure_192_inputs_MODU  (procedure_start, procedure_end : in integer; input_vector3 : std_logic_vector(191 downto 0); signal Test_bit_output : out std_logic); 
    procedure procedure_192_outputs (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(191 downto 0); signal Test_bit_output : in std_logic);
    procedure procedure_192_outputs_FEC (
        procedure_start, procedure_end : in integer;
        signal output_vector : out std_logic_vector(191 downto 0);
        signal Test_bit_output : in std_logic;
        signal ExpectedOutput : in std_logic_vector(191 downto 0);
        signal test_pass_fec_encoder : out boolean
        );
    procedure procedure_192_outputs_INTER (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(191 downto 0); signal Test_bit_output : in std_logic; signal ExpectedOutput : in std_logic_vector(191 downto 0); signal test_pass_INTER_encoder : out boolean);
    procedure procedure_192_outputs_MODU (
        procedure_start, procedure_end : in integer; 
        signal output_vector : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder : out boolean
    );
    procedure procedure_192_outputs_MODU_x2 (
        procedure_start, procedure_end : in integer; 
        signal output_vector : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder : out boolean;
        signal output_vector1 : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output1 : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput1 : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder1 : out boolean
    );
    procedure procedure_96_outputs_RANDI (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(95 downto 0); signal Test_bit_output : in std_logic; signal ExpectedOutput : in std_logic_vector(95 downto 0); signal test_pass_INTER_encoder : out boolean);
    --====================================================================================================================  
end package Test_Pack;

package body Test_Pack is 
    --procedures
    --fill input 
    procedure procedure_96_inputs (procedure_start, procedure_end : in integer; input_vector1 : std_logic_vector(95 downto 0); signal Test_bit_output : out std_logic) is 
        begin 
            for i in procedure_end downto procedure_start loop    
                Test_bit_output <= input_vector1(i); 
                wait for CLK_50MHz_Period;                
            end loop; 
    end procedure_96_inputs;
    
    procedure procedure_96_inputs_FEC (procedure_start, procedure_end : in integer; input_vector1 : std_logic_vector(95 downto 0); signal Test_bit_output : out std_logic) is 
    begin 
        for i in procedure_end downto procedure_start loop    
            Test_bit_output <= input_vector1(i); 
            --report "{Streaming In} Bit #" & integer'image(i) severity note; 
            wait for CLK_50MHz_Period;                
        end loop; 
    end procedure_96_inputs_FEC;

    procedure procedure_192_inputs (procedure_start, procedure_end : in integer; input_vector2 : std_logic_vector(191 downto 0); signal Test_bit_output : out std_logic) is 
        begin 
            for i in procedure_end downto procedure_start loop 
                Test_bit_output <= input_vector2(i);
                wait for CLK_100MHz_Period; 
            end loop;
    end procedure_192_inputs;
 
    procedure procedure_192_inputs_MODU (procedure_start, procedure_end : in integer; input_vector3 : std_logic_vector(191 downto 0); signal Test_bit_output : out std_logic) is 
    begin 
        for i in procedure_end downto procedure_start loop 
            Test_bit_output <= input_vector3(i);
            wait for CLK_100MHz_Period; 
        end loop;
    end procedure_192_inputs_MODU;

    --fill output 
    procedure procedure_192_outputs (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(191 downto 0);  signal Test_bit_output : in std_logic) is 
        begin 
            for i in procedure_end downto procedure_start loop 
                output_vector(i) <= Test_bit_output;
                wait  for CLK_100MHz_Period; 
            end loop; 
    end procedure_192_outputs;

    procedure procedure_192_outputs_FEC (procedure_start, procedure_end : in integer; 
    signal output_vector : out std_logic_vector(191 downto 0); 
    signal Test_bit_output : in std_logic; 
    signal ExpectedOutput : in std_logic_vector(191 downto 0); 
    signal test_pass_fec_encoder : out boolean) is  

    begin 
        test_pass_fec_encoder <= true;  
        for i in procedure_end downto procedure_start loop 
            output_vector(i) <= Test_bit_output;
            if (ExpectedOutput(i) = Test_bit_output) then 
                --report "{Streaming Out} Bit #" & integer'image(i) & " And it is correct, test passed" severity note; 
            else
                --report "Bit " & integer'image(i) & " is incorrect, test failed" severity error; 
                --report "Expected: " & std_logic'image(ExpectedOutput(i)) & ", Got: " & std_logic'image(Test_bit_output) severity error;
                test_pass_fec_encoder <= false;                                      
            end if;
            wait  for CLK_100MHz_Period; 
        end loop; 
    end procedure_192_outputs_FEC;

    procedure procedure_192_outputs_INTER (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(191 downto 0); signal Test_bit_output : in std_logic; signal ExpectedOutput : in std_logic_vector(191 downto 0); signal test_pass_INTER_encoder : out boolean) is  
    begin 
        test_pass_INTER_encoder <= true;
        for i in procedure_end downto procedure_start loop 
            output_vector(i) <= Test_bit_output;
            if (ExpectedOutput(i) = Test_bit_output) then 
                --report "Bit " & integer'image(i) & " is correct, test passed" severity note; 
                --report "And Equals " & std_logic'image(ExpectedOutput(i)) & " as expected" severity note; 
            else
                --report "Bit " & integer'image(i) & " is incorrect, test failed" severity error; 
                --report "Expected: " & std_logic'image(ExpectedOutput(i)) & ", Got: " & std_logic'image(Test_bit_output) severity error;
                test_pass_INTER_encoder <= false;                                      
            end if;
            wait for CLK_100MHz_Period; 
        end loop; 
    end procedure_192_outputs_INTER;

    procedure procedure_192_outputs_MODU (
        procedure_start, procedure_end : in integer; 
        signal output_vector : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder : out boolean
    ) is  
    variable lcount : integer := 0;  -- Initialize lcount to 0
    begin 
        test_pass_MODU_encoder <= true;
            for i in procedure_end downto procedure_start loop 
                exit when lcount = MAX_ITERATIONS;  -- Exit the loop when lcount reaches the maximum number of iterations
                    -- report "Outer Loop Count: " & integer'image(lcount) severity note;
                    for j in 15 downto 0 loop output_vector((i - (15 - j)) - lcount * 15) <= Test_bit_output(j);
                        if ExpectedOutput((i - (15 - j)) - lcount * 15) = Test_bit_output(j) then 
                            --report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is correct, test passed" severity note; 
                            --report "And Equals " & std_logic'image(ExpectedOutput((i - (15 - j)) - lcount * 15)) & " as expected" severity note; 
                        else
                            -- report "Inner Bit Count: " & integer'image(j) severity note;  -- above before if 
                            -- report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is incorrect, test failed" severity error; 
                            -- report "Expected: " & std_logic'image(ExpectedOutput((i - (15 - j)) - lcount * 15)) & ", Got: " & std_logic'image(Test_bit_output(j)) severity error;
                            test_pass_MODU_encoder <= false;                                      
                        end if;
                        wait for 1 ps; 
                    end loop; 
                    lcount := lcount + 1;  -- Increment lcount0
                    wait for CLK_50MHz_Period;
            end loop; 
    end procedure_192_outputs_MODU;

    procedure procedure_192_outputs_MODU_x2 (
        procedure_start, procedure_end : in integer; 
        signal output_vector : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder : out boolean;
        signal output_vector1 : out std_logic_vector(1535 downto 0); 
        signal Test_bit_output1 : in std_logic_vector(15 downto 0); 
        signal ExpectedOutput1 : in std_logic_vector(1535 downto 0); 
        signal test_pass_MODU_encoder1 : out boolean
    ) is  
    variable lcount : integer := 0;  -- Initialize lcount to 0
    begin 
        test_pass_MODU_encoder <= true;
            for i in procedure_end downto procedure_start loop 
                exit when lcount = MAX_ITERATIONS;  -- Exit the loop when lcount reaches the maximum number of iterations
                    -- report "Outer Loop Count: " & integer'image(lcount) severity note;
                    for j in 15 downto 0 loop 
                    output_vector((i - (15 - j)) - lcount * 15) <= Test_bit_output(j);
                    output_vector1((i - (15 - j)) - lcount * 15) <= Test_bit_output1(j);
                    --report "Inner Bit Count: " & integer'image(j) severity note;
                        if ExpectedOutput((i - (15 - j)) - lcount * 15) = Test_bit_output(j) then 
                            --report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is correct, test passed" severity note; 
                            --report "And Equals " & std_logic'image(ExpectedOutput((i - (15 - j)) - lcount * 15)) & " as expected" severity note; 
                        else
                            --report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is incorrect, test failed" severity error; 
                            --report "Expected: " & std_logic'image(ExpectedOutput((i - (15 - j)) - lcount * 15)) & ", Got: " & std_logic'image(Test_bit_output(j)) severity error;
                            test_pass_MODU_encoder <= false;                                      
                        end if;
                        if ExpectedOutput1((i - (15 - j)) - lcount * 15) = Test_bit_output1(j) then 
                            --report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is correct, test passed" severity note; 
                            --report "And Equals " & std_logic'image(ExpectedOutput((i - (15 - j)) - lcount * 15)) & " as expected" severity note; 
                        else
                            --report "Bit " & integer'image((i - (15 - j)) - lcount * 15) & " is incorrect, test failed" severity error; 
                            --report "Expected: " & std_logic'image(ExpectedOutput1((i - (15 - j)) - lcount * 15)) & ", Got: " & std_logic'image(Test_bit_output1(j)) severity error;
                            test_pass_MODU_encoder1 <= false;                                      
                        end if;
                        wait for 1 ps; 
                    end loop; 
                    lcount := lcount + 1;  -- Increment lcount0
                    wait for CLK_50MHz_Period;
            end loop; 
    end procedure_192_outputs_MODU_x2;


    procedure procedure_96_outputs_RANDI (procedure_start, procedure_end : in integer; signal output_vector : out std_logic_vector(95 downto 0); signal Test_bit_output : in std_logic; signal ExpectedOutput : in std_logic_vector(95 downto 0); signal test_pass_INTER_encoder : out boolean) is  
        begin 
        test_pass_INTER_encoder <= true;
            for i in procedure_end downto procedure_start loop 
                output_vector(i) <= Test_bit_output;
                if (ExpectedOutput(i) = Test_bit_output) then 
                   -- report "Bit " & integer'image(i) & " is correct, test passed" severity note; 
                   -- report "And Equals " & std_logic'image(ExpectedOutput(i)) & " as expected" severity note; 
                else
                    --report "Bit " & integer'image(i) & " is incorrect, test failed" severity error; 
                    --report "Expected: " & std_logic'image(ExpectedOutput(i)) & ", Got: " & std_logic'image(Test_bit_output) severity error;
                    test_pass_INTER_encoder <= false;                                      
                end if;
                wait for CLK_50MHz_Period; 
            end loop; 
    end procedure_96_outputs_RANDI;

    
end package body Test_Pack; 
