-------------------------------------------------
-- Company:       GRACO-UnB
-- Engineer:      DANIEL MAURICIO MUÑOZ ARBOLEDA
-- 
-- Create Date:   04-Mar-2021 
-- Design name:   FPUs
-- Module name:   fpupack
-- Description:   This package defines types, subtypes and constants
-- Automatically generated using the vFPUgen.m v1.0
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package fpupack is

constant FRAC_WIDTH : integer := 13;
constant EXP_WIDTH : integer := 7;
constant FP_WIDTH : integer:= FRAC_WIDTH+EXP_WIDTH+1;

constant bias : std_logic_vector(EXP_WIDTH-1 downto 0) := "0111111";
constant int_bias : integer := 63;
constant int_alin : integer := 127;
constant EXP_DF : std_logic_vector(EXP_WIDTH-1 downto 0) := "1000010";
constant bias_MAX : std_logic_vector(EXP_WIDTH-1 downto 0) := "1000110";
constant bias_MIN : std_logic_vector(EXP_WIDTH-1 downto 0) := "0110101";
constant EXP_ONE: std_logic_vector(EXP_WIDTH-1 downto 0):= (others => '1');
constant EXP_INF : std_logic_vector(EXP_WIDTH-1 downto 0) := "1111111";

constant s_one : std_logic_vector(FP_WIDTH-1 downto 0) := "001111110000000000000";
constant s_ten : std_logic_vector(FP_WIDTH-1 downto 0) := "010000100100000000000";
constant s_twn : std_logic_vector(FP_WIDTH-1 downto 0) := "010000110100000000000";
constant s_hundred : std_logic_vector(FP_WIDTH-1 downto 0) := "010001011001000000000";
constant s_pi : std_logic_vector(FP_WIDTH-1 downto 0) := "010000001001001000011";
constant s_3pi2 : std_logic_vector(FP_WIDTH-1 downto 0) := "010000010010110110010";
constant s_2pi : std_logic_vector(FP_WIDTH-1 downto 0) := "010000011001001000011";

constant P	: std_logic_vector(FP_WIDTH-1 downto 0) := "001111100011011011101"; --PROD[cos(atan(1/2^i))]
constant s_pid2 : std_logic_vector(FP_WIDTH-1 downto 0) := "001111111001001000011";
constant s_2dpi : std_logic_vector(FP_WIDTH-1 downto 0) := "001111100100010111110";

constant Phyp	: std_logic_vector(FP_WIDTH-1 downto 0) := "001111110011010010000"; --PROD[cosh(atanh(1/2^i))]
constant log2e	: std_logic_vector(FP_WIDTH-1 downto 0) := "001111110111000101010";
constant ilog2e	: std_logic_vector(FP_WIDTH-1 downto 0) := "001111100110001011100";
constant d_043 	: std_logic_vector(FP_WIDTH-1 downto 0) := "001110100110000100010";

constant MAX_ITER_CORDIC : std_logic_vector(4 downto 0):= "10100";
constant MAX_POLY_MACKLR : std_logic_vector(3 downto 0):= "0011";

constant OneM: std_logic_vector(FRAC_WIDTH downto 0) := "10000000000000";
constant Zero: std_logic_vector(FP_WIDTH-1 downto 0) := (others => '0');
constant Inf: std_logic_vector(FP_WIDTH-1 downto 0) := "011111110000000000000";
constant NaN: std_logic_vector(FP_WIDTH-1 downto 0) := "011111111000000000000";
constant TSed: POSITIVE := 15;
constant Niter: POSITIVE := 3;

end fpupack;

package body fpupack is
end fpupack;
