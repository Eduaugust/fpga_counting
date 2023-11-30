library ieee;
use ieee.std_logic_1164.all;

entity divisordeclock is
    generic(
        MAX_COUNT : integer := 5000000
    );
    port(
        clk, reset_signal: in std_logic;
        --- clk_out be a buffer
        clk_out: buffer std_logic
    );
end entity divisordeclock;

architecture comportamento of divisordeclock is
    signal contador : integer range 0 to MAX_COUNT := 0;
begin
    -- processo para o divisor de frequência
    divisor_freq: process(clk, reset_signal)
    begin
        if reset_signal = '1' then
            contador <= 0;
            clk_out <= '0';
        elsif rising_edge(clk) then
            if contador = MAX_COUNT then
                contador <= 0;
                clk_out <= not clk_out;
            else
                contador <= contador + 1;
					 clk_out <= '0';
            end if;
        end if;
    end process divisor_freq;
end architecture comportamento;