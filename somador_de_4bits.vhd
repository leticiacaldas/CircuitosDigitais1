library IEEE;
USE IEEE.std_logic_1164.all;

entity somador_de_4bits is
port(
    a, b: in std_logic_vector(3 downto 0);
    s: out std_logic_vector(3 downto 0);
    cout: out std_logic
);
end somador_de_4bits;

architecture arq of somador_de_4bits is
component somador_completo is
port(
    ai, bi, ci: in std_logic;
    si, ci1: out std_logic
);
end component;

signal c1, c2, c3: std_logic;
begin 
    M0: somador_completo port map(
        ai => a(0),
        bi => b(0),
        ci => '0',
        si => s(0),
        ci1 => c1
    );

    M1: somador_completo port map(
        ai => a(1),
        bi => b(1),
        ci => c1,
        si => s(1),
        ci1 => c2
    );

    M2: somador_completo port map(
        ai => a(2),
        bi => b(2),
        ci => c2,
        si => s(2),
        ci1 => c3
    );
     
    M3: somador_completo port map(
        ai => a(3),
        bi => b(3),
        ci => c3,
        si => s(3),
        ci1 => cout
    );
end arq;