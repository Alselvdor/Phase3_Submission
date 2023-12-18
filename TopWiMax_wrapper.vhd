library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
use work.Test_Pack.all;


entity TopWiMax_wrapper is 
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
end TopWiMax_wrapper;

architecture TopWiMax_wrapper_RTL of TopWiMax_wrapper is

    --components 

    component TopWiMax  
    port(
        CLK_50Mhz                            	  : in    std_logic; 
        CLK_100Mhz                            	  : in    std_logic; 
        reset                 	                  : in    std_logic; 
        load               	                      : in    std_logic; 

        TopWiMax_in_valid                 	      : in    std_logic; 
        TopWiMax_in_ready                	      : in    std_logic; 
        WiInput                               	  : in    std_logic; 
        
        RANDI_output_valid                        : out std_logic;
        Randi_output_data                         : out std_logic;

        FEC_output_valid                          : out std_logic;
        FEC_output_data                           : out std_logic;

        INTER_output_valid                        : out std_logic;
        INTER_output_data                         : out std_logic;

        TopWiMax_out_valid                        : out   std_logic;
        TopWiMax_out_ready                        : out   std_logic;
        WiOutput1                              	  : out   std_logic_vector(15 downto 0);  -- Q
        WiOutput2                              	  : out   std_logic_vector(15 downto 0)   -- I
    );
	     end component;


    component PLL_main is 
        port (
            refclk                                  : in  std_logic := 'X'; --  refclk.clk
            rst                                     : in  std_logic := 'X'; --   reset.reset
            outclk_0                                : out std_logic;        -- outclk0.clk
            outclk_1                                : out std_logic;        -- outclk1.clk
            locked                                  : out std_logic         --  locked.export
        );
    end component;

    --ROMs
    signal seed_rom                                : std_logic_vector(14 downto 0)   := Intial_Seed;
    signal RANDI_VECTOR_INPUT                       : std_logic_vector(95 downto 0)   := RANDI_VECTOR_INPUT; 
    signal RANDI_VECTOR_OUTPUT                      : std_logic_vector(95 downto 0)   := RANDI_VECTOR_OUTPUT;
    signal FEC_VECTOR_OUTPUT                       : std_logic_vector(191 downto 0)  := FEC_VECTOR_OUTPUT;
    signal INTER_VECTOR_OUTPUT                       : std_logic_vector(191 downto 0)  := INTER_VECTOR_OUTPUT;
    signal MODU_VECTOR_INPUT                       : std_logic_vector(191 downto 0)  := MODU_VECTOR_INPUT;

    --PLL
    signal clk_50mhz_sig                          : std_logic;
    signal clk_100mhz_sig                         : std_logic;
    signal locked                                 : std_logic;
    signal locked2                                : std_logic;

    --General
    signal WiInput                                : std_logic;     
    signal TopWiMax_in_valid                      : std_logic;
    signal TopWiMax_in_ready                      : std_logic;
    signal TopWiMax_out_ready                     : std_logic;

    --RADNI
    signal RANDI_Output_data_test_signal          : std_logic;
    signal RANDI_Output_valid_test_signal         : std_logic;
    signal RANDI_Counter                          : integer;
    signal RANDI_Counter2                         : integer;
    signal RANDI_Flag                             : std_logic; 

    --FEC
    signal FEC_Output_data_test_signal            : std_logic;
    signal FEC_output_valid_test_signal           : std_logic;
    signal FEC_Counter                            : integer;
    signal FEC_Flag                               : std_logic; 

    --INTER
    signal INTER_Output_data_test_signal          : std_logic;
    signal INTER_Output_valid_test_signal         : std_logic;
    signal INTER_Counter                          : integer;
    signal INTER_Flag                             : std_logic; 

    --MODU
    signal MODU_Output1_Q                         : std_logic_vector(15 downto 0);
    signal MODU_Output2_I                         : std_logic_vector(15 downto 0);
    signal TopWiMax_out_valid                     : std_logic;
    signal MODU_Counter                           : integer;
    signal MODU_Flag                              : std_logic; 
    
    -- signal   RANDI_Output_data_test_signal                   : std_logic;
    -- signal   RANDI_Output_valid_test_signal                  : std_logic;
    -- signal   FEC_output_data_test_signal                     : std_logic;
    -- signal   FEC_output_valid_test_signal                    : std_logic;
    -- signal   INTER_Output_data_test_signal                   : std_logic;
    -- signal   INTER_Output_valid_test_signal                  : std_logic;

begin
    --reset for other blocks (blocks' reset is active high)
    locked2 <= not locked; 
    
    --Instantiations
    pll1_wrap: PLL_main port map 
    (
        refclk                        => CLK_50Mhz,
        rst                           => reset,
        outclk_0                      => CLK_50Mhz_sig,
        outclk_1                      => clk_100mhz_sig,
        locked                        => locked
    );

    twimax_wrap : TopWiMax port map 
    (
        CLK_50Mhz             => CLK_50Mhz_sig,
        CLK_100Mhz            => clk_100mhz_sig,
        reset                 => locked2,   
        load                  => load,    	     
        TopWiMax_in_valid     => TopWiMax_in_valid,    
        TopWiMax_in_ready     => TopWiMax_in_ready, 
        WiInput               => WiInput    ,   
        
        RANDI_output_valid   => RANDI_Output_valid_test_signal    ,   
        Randi_output_data    => RANDI_Output_data_test_signal    ,   

        FEC_output_valid     => FEC_output_valid_test_signal     ,   
        FEC_output_data      => FEC_output_data_test_signal      ,   

        INTER_output_valid   => INTER_Output_valid_test_signal     ,   
        INTER_output_data    => INTER_Output_data_test_signal      ,   

        TopWiMax_out_valid    => TopWiMax_out_valid,    
        TopWiMax_out_ready    => TopWiMax_out_ready,     
        WiOutput1             => MODU_Output1_Q,           
        WiOutput2             => MODU_Output2_I         
    );

    --take input into module 
    process (clk_50mhz_sig, reset) begin 
        if (reset = '1') then 
            RANDI_Counter <= 95;    
            TopWiMax_in_valid    <= '0'; 
        elsif (rising_edge(clk_50mhz_sig)) then 
            if (load = '0' and RANDI_Counter > 0 and RANDI_Counter <= 95 and TopWiMax_in_ready = '1') then 
                TopWiMax_in_valid <= '1';
                WiInput <= RANDI_VECTOR_INPUT(RANDI_Counter); 
                RANDI_Counter <= RANDI_Counter - 1; 
            elsif (load = '0' and RANDI_Counter = 0 and TopWiMax_in_ready = '1') then 
                TopWiMax_in_valid           <= '1';
                WiInput  <= RANDI_VECTOR_INPUT(RANDI_Counter); 
                RANDI_Counter        <= 95;
            end if; 
        end if; 
    end process;

    --rand
    process (clk_50mhz_sig, reset) begin 
        if (reset = '1') then 
            RANDI_Counter2 <= 95; 
            RANDI_Flag <= '0';
            rand_pass <= '0';            
        elsif (rising_edge(clk_50mhz_sig)) then 
            if (load = '0' and RANDI_Counter2 >= 0 and RANDI_Counter2 <= 95 and TopWiMax_in_valid = '1') then
                if ((RANDI_Output_data_test_signal = RANDI_Output_data_test_signal_data_rom(RANDI_Counter2)) and (RANDI_Flag = '0')) then 
                    rand_pass <= '1';
                    RANDI_Counter2 <= RANDI_Counter2 - 1; 
                else 
                    RANDI_Flag       <= '1'; 
                    rand_pass       <= '0';                     
                end if;
            end if; 
            if(RANDI_Counter2 = 0) then 
                RANDI_Counter2   <= 95;
            end if;
        end if; 
    end process; 

    --fec
    process (clk_100mhz_sig, reset) begin 
        if(reset = '1') then 
            fec_pass    <= '0';
            FEC_Counter <= 191;  
            FEC_Flag    <= '0';      
        elsif(rising_edge(clk_100mhz_sig)) then 
            if(FEC_output_valid_test_signal = '1') then 
                if(FEC_Counter >= 0) then 
                    if(FEC_Output_data_test_signal = FEC_Output_data_test_signal_data_rom(FEC_Counter) and FEC_Flag = '0') then 
                        fec_pass    <= '1';
                        FEC_Counter <= FEC_Counter - 1;
                    else 
                        FEC_Flag    <= '1';
                        fec_pass    <= '0';
                    end if;
                end if;
                if (FEC_Counter = 0) then 
                    FEC_Counter <= 191;
                end if;
            end if;
        end if;
    end process;

    --int
    process (clk_100mhz_sig, reset) begin 
        if(reset = '1') then 
            int_pass    <= '0';
            INTER_Counter <= 191;  
            INTER_Flag    <= '0';      
        elsif(rising_edge(clk_100mhz_sig)) then 
            if(INTER_Output_valid_test_signal = '1') then 
                if(INTER_Counter >= 0) then 
                    if(INTER_Output_data_test_signal = INTER_Output_data_test_signal_data_rom(INTER_Counter) and INTER_Flag = '0') then 
                        int_pass    <= '1';
                        INTER_Counter <= INTER_Counter - 1;
                    else 
                        INTER_Flag    <= '1';
                        int_pass    <= '0';                        
                    end if;
                end if;
                if (INTER_Counter = 0) then 
                    INTER_Counter <= 191;
                end if;
            end if;
        end if;
    end process;

    --mod
    process (clk_50mhz_sig, reset) begin 
        if(reset = '1') then 
            mod_pass    <= '0';
            MODU_Counter <= 191;  
            MODU_Flag    <= '0';      
        elsif(rising_edge(clk_50mhz_sig)) then 
            if(TopWiMax_out_valid = '1') then 
                if(MODU_Counter >= 1) then 
                    if(MODU_Output1_Q(15) = MODU_VECTOR_INPUT(MODU_Counter) and MODU_Output2_I(15) = MODU_VECTOR_INPUT(MODU_Counter-1) and MODU_Flag = '0') then 
                        mod_pass    <= '1';
                        if(MODU_Counter > 1) then 
                            MODU_Counter <= MODU_Counter - 2;
                        end if;
                        if (MODU_Counter = 1) then
                           MODU_Counter  <= MODU_Counter - 1;         
                        end if;
                    else 
                        MODU_Flag    <= '1';
                        mod_pass    <= '0';
                    end if;
                end if;
                if (MODU_Counter = 1) then 
                    MODU_Counter <= 191;
                end if;
            end if;
        end if;
    end process;


end TopWiMax_wrapper_RTL;