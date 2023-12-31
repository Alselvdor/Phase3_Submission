library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity INTER is 
    port(
        clk_100MHz                              : in    std_logic; 

        reset                                   : in    std_logic; 

        INTER_Input_data                        : in    std_logic; 
        INTER_input_ready                       : in    std_logic; 

        INTER_Output_data                       : out   std_logic;
        INTER_Output_valid                      : out   std_logic
    );
end INTER;

architecture INTER_RTL of INTER is
    --constants 
    constant Inter_Buffer                      : integer := 192;
    constant Inter_Buffer2                     : integer := 384;
    --signals 
    signal   INTER_Input_data_buffer          : std_logic_vector(Inter_Buffer-1 downto 0);
    signal   counter                          : unsigned(7 downto 0);
    signal   counter_out                      : integer;
    signal   counter_kmod16                   : unsigned(3 downto 0);
    signal   mk_pos                           : integer; 
    signal   finished_buffering_flag          : std_logic;
    signal   finished_outputting_flag         : std_logic;
    signal   PingPong_flag                    : std_logic;

    --state machine 
    type input_state_type is (idle, input_buffer, PingPong_state);   -- first input buffer 
    signal state_reg   : input_state_type;

    --component 
    component INTER_RAM_2PORT is 
        PORT
        (
            address_a	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            address_b	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            data_a		: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
            data_b		: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
            wren_a		: IN STD_LOGIC  := '0';
            wren_b		: IN STD_LOGIC  := '0';
            q_a		    : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
            q_b		    : OUT STD_LOGIC_VECTOR (0 DOWNTO 0)
        );

    end component INTER_RAM_2PORT;
     
    --ram signals 
    signal address_a	:  STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal address_b	:  STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal clock		:  STD_LOGIC  := '1';
    signal data_a		:  STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal data_b		:  STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal wren_a		:  STD_LOGIC  := '0';
    signal wren_b		:  STD_LOGIC  := '0';
    signal q_a		    :  STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal q_b		    :  STD_LOGIC_VECTOR (0 DOWNTO 0);

begin 

    --instant 
    ram2: INTER_RAM_2PORT port map
        (
            address_a   => address_a,
            address_b   => address_b,
            clock	    => clock	,
            data_a	    => data_a	,
            data_b	    => data_b	,
            wren_a	    => wren_a	,
            wren_b	    => wren_b	,
            q_a		    => q_a		,
            q_b		    => q_b		
        );

    --ram's signals assign      
    clock	    <= clk_100MHz;	 
    address_a   <= std_logic_vector(to_unsigned(mk_pos, address_a'length)); 
    address_b   <= std_logic_vector(to_unsigned(counter_out, address_b'length));
    data_a(0)   <= INTER_Input_data;
    wren_a      <= INTER_input_ready; 
    INTER_Output_data    <= q_b(0);


    --continous 
    mk_pos  <= ( (12 * to_integer(counter_kmod16)) + (to_integer(counter) / 16) ) when (PingPong_flag = '0') else
               ( ((12 * to_integer(counter_kmod16)) + (to_integer(counter) / 16) ) + 192) when (PingPong_flag = '1') else
                0; 
    
    
    process(clk_100MHz, reset) begin 
        if (reset = '1') then 
            counter_kmod16              <= (others => '0');
            counter                     <= (others => '0');
            INTER_Input_data_buffer              <= (others => '0'); 
            counter_out                 <=  0; 
            INTER_Output_valid       <= '0';
            PingPong_flag               <= '0';
            state_reg                   <= idle;
        elsif(rising_edge(clk_100MHz)) then 
            case state_reg is 
                when idle =>      
                    INTER_Output_valid   <= '0';               
                    if (INTER_input_ready = '1') then      
                        if (counter < Inter_Buffer-1) then 
                            counter_kmod16          <= counter_kmod16 + 1;
                            counter                 <= counter + 1;
                        end if; 
                        state_reg   <= input_buffer;
                    else
                        state_reg   <= idle; 
                    end if;
                when input_buffer => 
                    if (counter < Inter_Buffer-1) then 
                        counter_kmod16          <= counter_kmod16 + 1;
                        counter                 <= counter + 1;
                        state_reg               <= input_buffer;
                    else 
                        counter                 <= "00000000";
                        counter_kmod16          <= "0000";
                        state_reg               <= PingPong_state;
                        counter_out             <= counter_out + 1;
                        INTER_Output_valid   <= '1';
                        PingPong_flag   <= '1';
                    end if; 
                when PingPong_state =>
                    if (counter = Inter_Buffer-1) then 
                        PingPong_flag           <= not PingPong_flag;
                        counter                 <= "00000000";
                        counter_kmod16          <= "0000";
                    end if;
                    if(counter_out >= 0 and counter_out < Inter_Buffer2-1) then 
                        counter_out             <= counter_out + 1;
                        state_reg               <= PingPong_state;
                        INTER_Output_valid   <= '1';
                        if (counter < Inter_Buffer-1) then
                            counter_kmod16          <= counter_kmod16 + 1;
                            counter                 <= counter + 1;
                        end if;
                    else 
                        counter_out             <= 0;
                        state_reg               <= PingPong_state;
                        counter_kmod16          <= counter_kmod16 + 1;
                        counter                 <= counter + 1;
                    end if;
                    if ( (INTER_input_ready = '0') and (counter_out = 191 or counter_out = 383) ) then 
                        counter_out             <= 0;
                        state_reg               <= idle;
                        -- INTER_Output_valid   <= '0';
                    end if;
            end case;
        end if;
    end process;
end INTER_RTL; 