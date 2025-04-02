library IEEE;
USE IEEE.std_logic_1164.all;

entity nand2_ula is
port(
    a, b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0)
);
end nand2_ula;

architecture arq_nand2 of nand2_ula is
begin
	s <= a nand b;
	
end arq_nand2;