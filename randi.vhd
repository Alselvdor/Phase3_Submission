library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity randi is 
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
end randi;

-- rANDI RTL
architecture randi_rtl of randi is
    --constants 
    constant SEED_WIDTH                     : integer := 15; 
    constant seed_rom                       : std_logic_vector(SEED_WIDTH-1 downto 0)  := "101010001110110";
    --internal signals 
    signal randi_input_data_reg             : std_logic;  --signals for input port (for protecting input )
    signal randi_output_data_reg            : std_logic;  --signals for output port (for protecting output)
    signal seed_reg                         : std_logic_vector(SEED_WIDTH-1 downto 0);   --seeding signal
    signal seed_reg2                        : std_logic_vector(SEED_WIDTH-1 downto 0);   --seeding signal
    signal xor_1                            : std_logic;    --xoring signal 
    signal counter_reset_seed               : integer; 
    signal FEC_Recieveing_Ready             : std_logic;
begin
    
    --continuous assignments
   --randi_input_data_reg         <= randi_input_data when (randi_input_ready = '1') else '0';;   --connect input with internal signal
   randi_input_data_reg         <= randi_input_data;
    FEC_Recieveing_Ready         <= randi_input_ready; 

    randi_output_data            <= randi_output_data_reg; --connect output with internal signal 
    seed_reg2           <= seed_rom; 
    xor_1               <= '0' when (randi_input_valid = '0') else seed_reg(SEED_WIDTH-1) xor seed_reg(SEED_WIDTH-2); --xor last 2 bits, but init if enable is lo
    randi_output_data_reg        <= '0' when (randi_input_valid = '0') else randi_input_data_reg xor xor_1; --xor dataIn with xoring result of last 2 bits, but init if enable is lo
    randi_output_valid      <= '0' when (randi_input_valid = '0') else '1';
    randi_output_ready      <= '0' when (randi_input_ready = '0') else '1';


    process (clk_50MHz, reset) begin 
        --initialize 
        if (reset = '1') then --my reset is active high
            seed_reg            <= (others => '0');    --init with zeros 
            counter_reset_seed  <= 0;
        elsif (rising_edge(clk_50MHz)) then 
        -- if reset is high then operate, but check enable and load first 
            if(load = '1') then
                seed_reg <= seed_reg2;    --initialize the seed reg with input seed
            elsif(randi_input_valid = '1') then
                seed_reg            <= seed_reg(SEED_WIDTH-2 downto 0) & xor_1;    --shift left by 1 and xor with xoring result of last 2 bits
                counter_reset_seed  <= counter_reset_seed + 1;
                if (counter_reset_seed = 95) then 
                    counter_reset_seed  <= 0;
                    seed_reg            <= seed_reg2; 
                end if;
            end if;
        end if;
    end process; 

end randi_rtl;