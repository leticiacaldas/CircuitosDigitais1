library IEEE;
USE IEEE.std_logic_1164.all;

entity somador_completo is
port(
    ai, bi, ci : in std_logic;
    si, ci1 : out std_logic
);
end somador_completo;

architecture arq of somador_completo is
begin
    si <= ai xor bi xor ci;
    ci1 <= (ai and bi) or (ai and ci) or (bi and ci);
end arq;