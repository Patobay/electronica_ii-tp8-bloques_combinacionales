library IEEE;
use IEEE.std_logic_1164.all;

entity cod_8_3 is
    port (
        entrada : in std_logic_vector (7 downto 0);
        valido  : out std_logic;
        salida  : out std_logic_vector (2 downto 0));
end cod_8_3;

architecture solucion of cod_8_3 is
    signal valido_and_codigo: std_logic_vector (3 downto 0);
begin-- Escribe aquí tu solución.
    valido <= valido_and_codigo(3);
    salida <= valido_and_codigo(2 downto 0);
    with entrada select 
        valido_and_codigo <=
        "1000" when "00000001",  -- el bit izquierdo a la salida "valido"
        "1001" when "00000010", 
        "1010" when "00000100",
        "1011" when "00001000",
        "1100" when "00010000", 
        "1101" when "00100000", 
        "1110" when "01000000",
        "1111" when "10000000",
        "0000" when others;
end solucion;
