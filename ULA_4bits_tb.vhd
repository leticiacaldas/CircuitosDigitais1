library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.stop;

entity ULA_4bits_tb is
end ULA_4bits_tb;

architecture sim of ULA_4bits_tb is

  constant clk_hz : integer := 100e6;
  constant clk_period : time := 1 sec / clk_hz;

  signal clk : std_logic := '1';
  signal rst : std_logic := '1';

  -- Sinais para os testes
  signal A, B : std_logic_vector(3 downto 0) := (others => '0');
  signal F : std_logic_vector(2 downto 0) := (others => '0');
  signal S : std_logic_vector(13 downto 0);
  signal V, Z, N : std_logic;

begin

  -- Geração do clock
  clk <= not clk after clk_period / 2;

  -- Instância da ULA
  DUT : entity work.ULA_4bits(behavioral)
  port map (
    A => A,
    B => B,
    F => F,
    S => S,
    V => V,
    Z => Z,
    N => N
  );

  -- Processo de sequenciamento
  SEQUENCER_PROC : process
  begin
    -- Reset inicial
    rst <= '1';
    wait for clk_period * 2;
    rst <= '0';

    -- Teste 1: Soma
    A <= "0001";
    B <= "0010" := 
    F <= "000"; -- Operação de soma
    wait for clk_period * 10;

    -- Teste 2: AND
    A <= "1100";
    B <= "1010";
    F <= "001"; -- Operação AND
    wait for clk_period * 10;

    -- Teste 3: OR
    A <= "1100";
    B <= "1010";
    F <= "010"; -- Operação OR
    wait for clk_period * 10;

    -- Finaliza a simulação
    assert false
      report "Testbench finalizado com sucesso"
      severity note;

    stop;
  end process;

end architecture;