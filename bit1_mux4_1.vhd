library ieee;
use ieee.std_logic_1164.all;

entity bit1_mux4_1 is
    port(
        clk1, clk2, clk3, clk4: in std_logic;
        controle: in std_logic_vector(1 downto 0);
        saida: out std_logic
    );
end entity bit1_mux4_1;

architecture comportamento of bit1_mux4_1 is
begin
    process(controle)
    begin
        case controle is
            when "00" => saida <= clk1;
            when "01" => saida <= clk2;
            when "10" => saida <= clk3;
            when "11" => saida <= clk4;
            when others => saida <= '0';
        end case;
    end process;
end architecture comportamento;