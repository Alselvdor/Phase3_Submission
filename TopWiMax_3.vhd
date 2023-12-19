library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity TopWiMax_3 is 
    port(
        CLK_50Mhz                            	  : in    std_logic; 
        CLK_100Mhz                            	  : in    std_logic; 
        reset                 	                  : in    std_logic; 
        load               	                      : in    std_logic; 
        TopWiMax_input_valid                 	      : in    std_logic; 
        TopWiMax_input_ready                	      : in    std_logic; 
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
end TopWiMax_3;

architecture TopWiMax_3_RTL of TopWiMax_3 is

    --components 
    -- component PLL_main is 
    --     port (
    --         refclk                                  : in  std_logic := 'X'; --  refclk.clk
    --         rst                                     : in  std_logic := 'X'; --   reset.reset
    --         outclk_0                                : out std_logic;        -- outclk0.clk
    --         outclk_1                                : out std_logic;        -- outclk1.clk
    --         reset                                  : out std_logic         --  reset.export
    --     );
    -- end component;

    component randi
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

    component FEC
    port(
        clk_50mhz                 : in    std_logic; 
        clk_100mhz                : in    std_logic; 

        reset               	  : in    std_logic; 

        FEC_input_data            : in    std_logic; 
        FEC_input_valid           : in    std_logic; 
        FEC_input_ready           : IN    std_logic; 

        FEC_output_data           : out   std_logic;
        FEC_output_valid          : out   std_logic;
        FEC_output_ready          : out    std_logic

    );
    end component;

    component INTER
        port(
            clk_100MHz                              : in    std_logic; 

            reset                                   : in    std_logic; 

            INTER_Input_data                        : in    std_logic; 
            INTER_input_valid                       : in    std_logic; 
            INTER_input_ready                       : in    std_logic; 

            INTER_Output_data                       : out   std_logic;
            INTER_Output_valid                      : out   std_logic;
            INTER_Output_ready                      : out   std_logic  
        );
    end component;

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

    --signals 
 
    --RANDI          
    signal  RANDI_out                              : std_logic;
    signal  RANDI_out_valid                        : std_logic;
 
    --FEC         
    signal  FEC_encoder_out_valid_out             : std_logic;
    signal  fec_out                               : std_logic;
    signal  FEC2Randi_Ready                       : std_logic;
 
    --INTER         
    signal  INTER_out_valid                       : std_logic;
    signal  INTER_out                             : std_logic;
    signal  INTER2FEC_Ready                       : std_logic;

    --MODU
    signal  MODU2INTER_Ready                       : std_logic;

begin

    --reset for other blocks (blocks' reset is active high)
    -- reset2 <= not reset; 
    --Instantiations
    -- pll1: PLL_main port map 
    -- (
    --     refclk                        => CLK_50Mhz,
    --     rst                           => reset,
    --     outclk_0                     => CLK_50Mhz,
    --     outclk_1                    => CLK_100Mhz,
    --     reset                        => reset
    -- );

    --cont

        RANDI_output_valid                        <= RANDI_out_valid;
        Randi_output_data                         <= RANDI_out;

        FEC_output_valid                          <= FEC_encoder_out_valid_out;
        FEC_output_data                           <= fec_out;

        INTER_output_valid                        <= INTER_out_valid;
        INTER_output_data                         <= INTER_out;



    RANDI1: RANDI port map 
    (
        clk_50MHz              => CLK_50Mhz, 
        reset                  => reset, 
        load                   => load, 

        randi_input_data       => WiInput, 
        randi_input_valid      => TopWiMax_input_valid,  
        randi_input_ready      => FEC2Randi_Ready , 

        randi_output_valid     => RANDI_out_valid,          
        randi_output_data      => RANDI_out,
        randi_output_ready     => TopWiMax_out_ready

    );

    fec1: FEC port map
    (
        CLK_50Mhz                   => CLK_50Mhz,
        clk_100mhz                  => CLK_100Mhz,
        reset                       => reset, 
        
        FEC_input_valid              => RANDI_out_valid,
        FEC_input_data               => RANDI_out,
        FEC_input_ready              => INTER2FEC_Ready,

        FEC_output_data              => fec_out,
        FEC_output_valid             => FEC_encoder_out_valid_out,
        FEC_output_ready             => FEC2Randi_Ready
         

    );

    inter1: INTER port map 
    (
        clk_100mhz => CLK_100Mhz,
        reset => reset, 

        INTER_Input_data => fec_out,
        INTER_input_valid => FEC_encoder_out_valid_out, 
        INTER_input_ready => MODU2INTER_Ready,
        
        INTER_Output_data => INTER_out,
        INTER_Output_valid => INTER_out_valid,
        INTER_Output_ready => INTER2FEC_Ready                    
    );

    modu1: MODU port map 
    (
     

        clk_100MHz         => CLK_100Mhz,
        reset              => reset,

        MODU_input_data    => INTER_out,
        MODU_input_valid   => INTER_out_valid,
        MODU_input_ready   => TopWiMax_input_ready,

        MODU_output_Q      => WiOutput1,
        MODU_output_I      => WiOutput2,

        MODU_output_valid  => TopWiMax_out_valid,
        MODU_output_ready  => MODU2INTER_Ready
    );

end TopWiMax_3_RTL;