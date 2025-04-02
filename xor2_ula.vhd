library IEEE;
USE IEEE.std_logic_1164.all;

entity xor2_ula is
port(
    a, b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0)
);
end xor2_ula;

architecture arq_xor2 of xor2_ula is
begin
	s <= a xor b;
	
end arq_xor2;