library IEEE;
USE IEEE.std_logic_1164.all;

entity not2_ula is
port(
    a : in std_logic_vector(3 downto 0);  
    s : out std_logic_vector(3 downto 0)
);
end not2_ula;

architecture arq_not2 of not2_ula is
begin
    s <= not a;
end arq_not2;
