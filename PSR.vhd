----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:40 10/21/2016 
-- Design Name: 
-- Module Name:    PSR - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR is
    Port ( Clk : in  STD_LOGIC;
			  Rst : in  STD_LOGIC;
           NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           ncwp : in  STD_LOGIC;
           cwp : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

signal Aux : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
	process(Rst, Clk, NZVC, ncwp)
	begin
		if(Rst = '1') then
			cwp <= '0';
			Carry <= '0';
			Aux <= "0000";
		elsif(rising_edge(Clk)) then
			Aux <= NZVC;
			cwp <= ncwp;
			Carry <= Aux(0);
		end if;
	end process;
end Behavioral;

