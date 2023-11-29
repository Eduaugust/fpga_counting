library ieee;
use ieee.std_logic_1164.all;

entity controlador is
    port(
        clk, reset_signal, botao: in std_logic;
        saida: out std_logic_vector(1 downto 0)
    );
end entity controlador;

architecture comportamento of controlador is

type estado is (ResetState, A, B, C, D);
signal estado_atual, proximo_estado: estado;

begin

    -- processo para definição do sincronismo da FSM
    sincrono: process(clk, reset_signal)
    begin
        if reset_signal = '1' then
            estado_atual <= ResetState;
        elsif rising_edge(clk) and botao = '1' then
            estado_atual <= proximo_estado;
        end if;
    end process sincrono;

    -- processo para a lógica combinacional da máquina
    combinacional: process(estado_atual)
    begin
        case estado_atual is
            when ResetState =>
                saida <= "00";
                proximo_estado <= A;
            when A =>
                saida <= "01";
                proximo_estado <= B;
            when B =>
                saida <= "10";
                proximo_estado <= C;
            when C =>
                saida <= "11";
                proximo_estado <= D;
            when D =>
                saida <= "00";
                proximo_estado <= A;
        end case;
    end process combinacional;

end architecture comportamento;