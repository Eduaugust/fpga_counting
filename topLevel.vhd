library ieee;
use ieee.std_logic_1164.all;

entity topLevel is
    Port ( clk, reset_signal, botao1 : in std_logic;
           saida : out std_logic_vector (6 downto 0));
end topLevel;

architecture Behavioral of topLevel is
    signal clk_out1, clk_out2, clk_out3, clk_out4, clk_mux : std_logic;
    signal seletor : std_logic_vector (1 downto 0);
    signal entrada_A, entrada_B, entrada_C, entrada_D : std_logic;
    signal saida_mux : std_logic;
    signal saida_mux_1bit : std_logic;
    signal entrada : std_logic_vector (3 downto 0);
    signal saida_bcd : std_logic_vector (6 downto 0);
    signal saida_contador1, saida_contador2, saida_contador3, saida_contador4 : std_logic_vector (3 downto 0);
    signal saida_contador, saida_maquina : std_logic_vector (7 downto 0);  -- Sinais para o contador e a máquina de estados

    -------- BCD --------
    signal saida_bcd1, saida_bcd2, saida_bcd3, saida_bcd4 : std_logic_vector (6 downto 0);

    -------- Controlador display --------
    signal saida_controlador_display_mux : std_logic_vector (1 downto 0);
    signal saida_controlador_display : std_logic_vector (3 downto 0);

    -------- Mux 4:1 --------
    signal saida_mux4_1 : std_logic_vector (6 downto 0);
    signal saida_mux4_1_seletor : std_logic_vector (1 downto 0);

    component contador is
        port(
            clk, reset_signal: in std_logic;
            saida: out std_logic_vector(7 downto 0)
        );
    end component;

    component maquina is
        port(
            clk, reset_signal: in std_logic;
            saida: out std_logic_vector(7 downto 0)
        );
    end component;

begin
    divisor1: entity work.divisordeclock
        generic map (MAX_COUNT => 4)
        port map (clk => clk, reset_signal => reset_signal, clk_out => clk_out1);

    divisor2: entity work.divisordeclock
        generic map (MAX_COUNT => 9)
        port map (clk => clk, reset_signal => reset_signal, clk_out => clk_out2);

    divisor3: entity work.divisordeclock
        generic map (MAX_COUNT => 24)
        port map (clk => clk, reset_signal => reset_signal, clk_out => clk_out3);

    divisor4: entity work.divisordeclock
        generic map (MAX_COUNT => 49)
        port map (clk => clk, reset_signal => reset_signal, clk_out => clk_out4);

    controlador: entity work.controlador
        port map (clk => clk, reset_signal => reset_signal, botao => botao1, saida => seletor);

    mux1bit: entity work.bit1_mux4_1
        port map(clk1 => clk_out1, clk2 => clk_out2, clk3 => clk_out3, clk4 => clk_out4, controle => seletor, saida => saida_mux_1bit);

    contadorEntity: entity work.contador 
        port map(clk => saida_mux_1bit, reset_signal => reset_signal, saida1 => saida_contador1, saida2 => saida_contador2, saida3 => saida_contador3, saida4 => saida_contador4);

    BCD1: entity work.modulo_BCD
        port map(entrada => saida_contador1, saida => saida_bcd1);

    BCD2: entity work.modulo_BCD
        port map(entrada => saida_contador2, saida => saida_bcd2);

    BCD3: entity work.modulo_BCD
        port map(entrada => saida_contador3, saida => saida_bcd3);

    BCD4: entity work.modulo_BCD
        port map(entrada => saida_contador4, saida => saida_bcd4);
		  
	controlador_display: entity work.controlador_display
        port map(clock => clk, s_mux => saida_controlador_display_mux, saida => saida_controlador_display);

    mux: entity work.mux4_1
        port map(entrada_A => saida_bcd1, entrada_B => saida_bcd2, entrada_C => saida_bcd3, entrada_D => saida_bcd4, saida => saida, seletor => saida_controlador_display_mux);

end Behavioral;