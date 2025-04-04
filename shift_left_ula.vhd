library IEEE;
USE IEEE.std_logic_1164.all;

entity shift_left_ula is
port(
    a : in std_logic_vector(3 downto 0); 
    s : out std_logic_vector(3 downto 0)
);
end shift_left_ula;

architecture arq_shift_left of shift_left_ula is
begin
    
    s <= a(2 downto 0) & '0';
end arq_shift_left;