library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity MODU is 
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
end MODU;

architecture MODU_rtl of MODU is

    --signals 
    signal   MODU_input_data_buffer             : std_logic;
    signal   flag                       : std_logic; 
    signal   MODU_input_data_fuse               : std_logic_vector(1 downto 0); 
    signal   Finished_Flag                  : std_logic;
    signal   counter_done               : integer := 0; 
    --constants
    constant ZeroTS             : std_logic_vector(15 downto 0) := x"5a7f";
    constant NZeroTS     : std_logic_vector(15 downto 0) := x"a581";
    
begin

    MODU_output_ready      <= '0' when (MODU_input_ready = '0') else '1';


    MODU_input_data_fuse    <= MODU_input_data & MODU_input_data_buffer when (flag = '1') else "00"; 
    process (clk_100MHz, reset) begin 
        if (reset = '1') then
            MODU_input_data_buffer  <= '0';
            flag            <= '0';
            Finished_Flag       <= '0';
        elsif (rising_edge(clk_100MHz)) then 
            if (MODU_input_valid = '1') then 
                MODU_input_data_buffer  <= MODU_input_data;
                flag            <= '1';
                if (flag = '1') then 
                    flag  <= '0';       
                end if;
            elsif(MODU_input_valid = '0') then 
                Finished_Flag   <= '1'; 
            end if;
        end if; 
    end process;

    process (clk_100MHz, reset) begin 
        if (reset = '1') then 
            MODU_output_Q                 <= (others => '0'); 
            MODU_output_I                 <= (others => '0');
            MODU_output_valid    <= '0'; 
        elsif(rising_edge(clk_100MHz)) then 
            if (MODU_input_valid = '1') then 
                if (flag = '1') then 
                    case (MODU_input_data_fuse) is 
                        when "00" => 
                            MODU_output_Q                 <= ZeroTS; 
                            MODU_output_I                 <= ZeroTS; 
                            MODU_output_valid    <= '1'; 
                        when "01" => 
                            MODU_output_Q                 <= NZeroTS; 
                            MODU_output_I                 <= ZeroTS;
                            MODU_output_valid    <= '1'; 
                        when "11" =>
                            MODU_output_Q                 <= NZeroTS; 
                            MODU_output_I                 <= NZeroTS;
                            MODU_output_valid    <= '1'; 
                        when "10" =>
                            MODU_output_Q                 <= ZeroTS; 
                            MODU_output_I                 <= NZeroTS;
                            MODU_output_valid    <= '1'; 
                        when others =>
                            MODU_output_Q <= (others => '0'); 
                            MODU_output_I <= (others => '0');
                    end case; 
                end if;
            elsif(Finished_Flag = '1') then 
                MODU_output_valid    <= '0';
            end if;
        end if;
    end process; 

end MODU_rtl; 