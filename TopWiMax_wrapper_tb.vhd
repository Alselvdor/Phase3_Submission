library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
use work.Test_Pack.all;

entity TopWiMax_wrapper_tb is 
end TopWiMax_wrapper_tb;

architecture TopWiMax_wrapper_tb_rtl of TopWiMax_wrapper_tb is
    component TopWiMax_wrapper  
    port(
        CLK_50Mhz                            	  : in    std_logic; 
        reset                 	                  : in    std_logic; 
        load               	                      : in    std_logic; 

        TopWiMax_wrapper_in_ready                 : in    std_logic;
        TopWiMax_wrapper_in_valid                 : in    std_logic; 
        
        RANDI_output_valid                        : out std_logic;
        FEC_output_valid                          : out std_logic;
        INTER_output_valid                        : out std_logic;
        MODU_out_valid                            : out std_logic;
        TopWiMax_wrapper_out_ready                : out std_logic
    );

    end component;
    signal   clk_50                               : std_logic := '0'; 
    signal   reset                                : std_logic; 
    signal   en                                   : std_logic; 
    signal   load                                 : std_logic; 
    signal   rand_led                             : std_logic;
    signal   fec_led                              : std_logic;
    signal   int_led                              : std_logic;
    signal   mod_led                              : std_logic;

    signal   rand_valid_alias_signal              : std_logic;
    signal   fec_valid_alias_signal               : std_logic;
    signal   int_valid_alias_signal               : std_logic;
    signal   mod_valid_alias_signal               : std_logic;
    
    signal   TopWiMax_wrapper_in_valid              : std_logic;
    signal   TopWiMax_wrapper_out_ready               : std_logic;

    begin 

    rand_valid_alias_signal <= <<signal .TopWiMax_wrapper_tb.Wimaxwrap.RANDI_output_valid : std_logic>>; 
    fec_valid_alias_signal  <= <<signal .TopWiMax_wrapper_tb.Wimaxwrap.FEC_output_valid  : std_logic>>;
    int_valid_alias_signal  <= <<signal .TopWiMax_wrapper_tb.Wimaxwrap.INTER_output_valid  : std_logic>>;
    mod_valid_alias_signal  <= <<signal .TopWiMax_wrapper_tb.Wimaxwrap.MODU_out_valid  : std_logic>>;

    --instantiations
    Wimaxwrap: TopWiMax_wrapper port map
    (
        clk_50mhz   =>  clk_50,
        reset       =>  reset,
        load        =>  load ,

        TopWiMax_wrapper_in_ready          =>  en   ,
        TopWiMax_wrapper_in_valid     => TopWiMax_wrapper_in_valid,
        RANDI_output_valid   =>  rand_led,
        FEC_output_valid    =>  fec_led ,
        INTER_output_valid    =>  int_led ,
        MODU_out_valid    =>  mod_led ,
        TopWiMax_wrapper_out_ready => TopWiMax_wrapper_out_ready
    );

   
    --clk process 
    clk_50 <= not clk_50 after CLK_50MHz_Period_HALF;

    --assigning input bits from the vector 
    process begin 
        reset <= '1'; --initialize values 
        en    <= '0';
        wait for 3*CLK_50MHz_Period_HALF;     --make sure a pos edge came before changing the reset 
        reset <= '0'; 
        wait for 2*CLK_50MHz_Period_HALF;
        load <= '1';    --take seed into module 
        wait for 1*CLK_50MHz_Period; --bec of 75 ns edge the next pos edge so make sure a pos edge came 
        load <= '0';
        wait for CLK_50MHz_Period_HALF; 
        en <= '1';   
        wait for 12000 ns;
        reset <= '1'; --initialize values 
        en    <= '0';
        wait for 3*CLK_50MHz_Period_HALF;     --make sure a pos edge came before changing the reset 
        reset <= '0'; 
        wait for 2*CLK_50MHz_Period_HALF;
        load <= '1';    --take seed into module 
        wait for 1*CLK_50MHz_Period; --bec of 75 ns edge the next pos edge so make sure a pos edge came 
        load <= '0'; 
        en <= '1'; 
        wait for 12000 ns;
        reset <= '1'; --initialize values 
        en    <= '0';
        wait for 3*CLK_50MHz_Period_HALF;     --make sure a pos edge came before changing the reset 
        reset <= '0'; 
        wait for 2*CLK_50MHz_Period_HALF;
        load <= '1';    --take seed into module 
        wait for 1*CLK_50MHz_Period; --bec of 75 ns edge the next pos edge so make sure a pos edge came 
        load <= '0'; 
        en <= '1'; 

        wait; --makes process executes once 
    end process;

    --verifiers 
    --rand
    process
    variable rand_test_pass: boolean;
    begin
        wait for 1 ns;
        wait until rand_valid_alias_signal = '1'; 
        wait for CLK_50MHz_Period;
        wait for 1 ns;
        if (rand_led = '1') then 
            rand_test_pass := true;
        else
            rand_test_pass := false;
        end if;
        -- error reporting
        assert rand_test_pass
        report "Randomizer test failed" severity error;        
        wait for CLK_50MHz_Period; 
    end process;

    --fec
    process
    variable fec_test_pass: boolean;
    begin
        wait for 1 ns;
        wait until fec_valid_alias_signal = '1'; 
        wait for CLK_100MHz_Period;
        wait for 1 ns;
        if (fec_led = '1') then 
            fec_test_pass := true;
        else
            fec_test_pass := false;
        end if;
        -- error reporting
        assert fec_test_pass
        report "FEC test failed" severity error;        
        wait for CLK_100MHz_Period; 
    end process;

    --int
    process
    variable int_test_pass: boolean;
    begin
        wait for 1 ns;
        wait until int_valid_alias_signal = '1'; 
        wait for CLK_100MHz_Period;
        wait for 1 ns;
        if (int_led = '1') then 
            int_test_pass := true;
        else
            int_test_pass := false;
        end if;
        -- error reporting
        assert int_test_pass
        report "Interleaver test failed" severity error;        
        wait for CLK_100MHz_Period; 
    end process;

    --mod
    process
    variable mod_test_pass: boolean;
    begin
        wait for 1 ns;
        wait until mod_valid_alias_signal = '1'; 
        wait for CLK_50MHz_Period;
        wait for 1 ns;
        if (mod_led = '1') then 
            mod_test_pass := true;
        else
            mod_test_pass := false;
        end if;
        -- error reporting
        assert mod_test_pass
        report "Modulation test failed" severity error;        
        wait for CLK_50MHz_Period; 
    end process;

    end TopWiMax_wrapper_tb_rtl;