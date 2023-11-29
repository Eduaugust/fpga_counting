library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
    port(
        clk, reset_signal: in std_logic;
        saida1: out std_logic_vector(3 downto 0);
        saida2: out std_logic_vector(3 downto 0);
        saida3: out std_logic_vector(3 downto 0);
        saida4: out std_logic_vector(3 downto 0)
    );
end entity contador;

architecture comportamento of contador is
    signal contador_interno : integer range 0 to 9999 := 0;
begin
    process(clk, reset_signal)
    begin
        if reset_signal = '1' then
            contador_interno <= 0;
        elsif rising_edge(clk) then
            if contador_interno = 9999 then
                contador_interno <= 0;
            else
                contador_interno <= contador_interno + 1;
            end if;
        end if;
    end process;

    saida1 <= std_logic_vector(to_unsigned(contador_interno mod 10, 4));
    saida2 <= std_logic_vector(to_unsigned((contador_interno/10) mod 10, 4));
    saida3 <= std_logic_vector(to_unsigned((contador_interno/100) mod 10, 4));
    saida4 <= std_logic_vector(to_unsigned((contador_interno/1000) mod 10, 4));
end architecture comportamento;