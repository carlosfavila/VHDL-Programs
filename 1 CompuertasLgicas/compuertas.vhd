----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:52 03/18/2022 
-- Design Name: 
-- Module Name:    compuertas - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--hola, mi programa en VHDL de compuertas lógicas

entity compuertas is
    Port ( a, b, c, d : in  STD_LOGIC; -- otra manera de declarar "variables" de entada o salida.
--           b : in  STD_LOGIC;
--          c : in  STD_LOGIC;
--           d : in  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : inout  STD_LOGIC;
           f3 : out  STD_LOGIC;
           f4 : inout  STD_LOGIC;
           f5 : out  STD_LOGIC;
           f6 : inout  STD_LOGIC;
           f7 : out  STD_LOGIC);
end compuertas;

architecture Behavioral of compuertas is

begin
	f1 <= not a; -- compuerta NOT 
	f2 <= a and b and c and d; -- compuerta and de entradas A, B, C, D
--	f3 <= not (a and b and c and d); -- compuerta nand negando a AND
--	f3 <=  a nand b nand c nand d; -- compuerta nand ocupando "nand"
	f3 <= not(f2); -- compuerta nand negando a f2, SE DEBE DE CAMBIAR f2 a INOUT
	f4 <=  a or b or c or d; -- compuerta or entre A, B C y D
	f5 <= not f4; -- cambiar a inout f4
	f6 <= a xor b xor c xor d; -- compuerta xor entre A,B,C y D
	f7 <= not f6; --compuerta xnor cambiar a inout f6
end Behavioral;

