library IEEE;
use IEEE.std_logic_1164.all;

entity ULA_4bits is
port(
    A, B : in std_logic_vector(3 downto 0); 
    F : in std_logic_vector(2 downto 0);    
    S : out std_logic_vector(13 downto 0); 
    Z, N, V : out std_logic                
);
end ULA_4bits;

architecture Behavioral of ULA_4bits is

    -- Componentes
    component somador_de_4bits is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
    end component;

    component and2_ula is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component or2_ula is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component xor2_ula is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component not2_ula is
    port(
        a : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component nand2_ula is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component nor2_ula is
    port(
        a, b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component shift_left_ula is
    port(
        a : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0)
    );
    end component;

    component seg14 is
    port(
        entrada : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(13 downto 0)
    );
    end component;

    -- Sinais
    signal soma_result, and_result, or_result, xor_result : std_logic_vector(3 downto 0);
    signal not_result, nand_result, nor_result : std_logic_vector(3 downto 0);
    signal shift_left_result : std_logic_vector(3 downto 0); 
    signal resultado : std_logic_vector(3 downto 0);
    signal carry_out : std_logic;

begin 
    -- Map dos componentes
    somador_r: somador_de_4bits port map (
        a => A,
        b => B,
        s => soma_result,
        cout => carry_out
    );

    and_r: and2_ula port map (
        a => A,
        b => B,
        s => and_result
    );

    or_r: or2_ula port map (
        a => A,
        b => B,
        s => or_result
    );

    xor_r: xor2_ula port map (
        a => A,
        b => B,
        s => xor_result
    );

    not_r: not2_ula port map (
        a => A,
        s => not_result
    );

    nand_r: nand2_ula port map (
        a => A,
        b => B,
        s => nand_result
    );

    nor_r: nor2_ula port map (
        a => A,
        b => B,
        s => nor_result
    );

    shift_left_r: shift_left_ula port map (
        a => A,
        s => shift_left_result
    );

    process (A, B, F, soma_result, and_result, or_result, xor_result, 
    not_result, nand_result, nor_result, shift_left_result, carry_out)
    begin
        case F is
            when "000" => resultado <= soma_result; -- Soma
            when "001" => resultado <= and_result; -- AND
            when "010" => resultado <= or_result; -- OR
            when "011" => resultado <= xor_result; -- XOR
            when "100" => resultado <= not_result; -- NOT
            when "101" => resultado <= nand_result; -- NAND
            when "110" => resultado <= nor_result; -- NOR
            when "111" => resultado <= shift_left_result; -- Shift Left
            when others => resultado <= (others => '0');
        end case;
    end process;

    -- Definição dos sinais de status
    Z <= '1' when (resultado = "0000") else '0';
    N <= resultado(3);
    V <= carry_out when (F = "000") else '0';

    -- Display
    seg7_resultado: seg14 port map (
        entrada => resultado,
        s => S
    );
end Behavioral;