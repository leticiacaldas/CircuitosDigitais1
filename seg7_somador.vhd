library IEEE;
USE IEEE.std_logic_1164.all;

entity seg7_somador is
port(
     a, b: in std_logic_vector(3 downto 0);
	  s : out std_logic_vector(13 downto 0);
	  cout: out std_logic
);
end seg7_somador;

architecture arq_seg_7_somador of seg7_somador is
    signal n: std_logic_vector(3 downto 0);
	
    component somador_de_4bits is
    port(
        a, b: in std_logic_vector(3 downto 0);
	     s: out std_logic_vector(3 downto 0);
	     cout: out std_logic
    );	
    end component;

    component seg14 is 
    port(
        entrada : in std_logic_vector(3 downto 0);
	     s: out std_logic_vector(13 downto 0)
    );
    end component;

begin
    somador: somador_de_4bits port map(
	     a => a,
		  b => b,
		  s => n,
		  cout => cout
    );
 
    segmento7: seg14 port map(
	     entrada => n,
		  s => s
    );
end arq_seg_7_somador;