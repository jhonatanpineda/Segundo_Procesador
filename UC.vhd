----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:24 10/19/2016 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

entity UC is
    Port (  OP : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           S : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin
	process(OP, OP3)
	begin
		case OP is
			when "10" =>
				case OP3 is
					when "000000" => S <= "000000"; --ADD
					when "010000" => S <= "000001"; --ADDcc
					when "001000" => S <= "000010"; --ADDX
					when "011000" => S <= "000011"; --ADDXcc
					when "000100" => S <= "000100"; --SUB
					when "010100" => S <= "000101"; --SUBcc
					when "001100" => S <= "000110"; --SUBX
					when "011100" => S <= "000111"; --SUBXcc
					when "000001" => S <= "001000"; --AND
					when "010001" => S <= "001001"; --ANDcc
					when "000101" => S <= "001010"; --ANDN
					when "010101" => S <= "001011"; --ANDNcc
					when "000010" => S <= "001100"; --OR
					when "010010" => S <= "001101"; --ORcc
					when "000110" => S <= "001110"; --ORN
					when "010110" => S <= "001111"; --ORNcc
					when "000011" => S <= "010000"; --XOR
					when "010011" => S <= "010001"; --XORcc
					when "000111" => S <= "010010"; --XNOR
					when "010111" => S <= "010011"; --XNORcc
					when "100101" => S <= "010100"; --SLL
					when "100110" => S <= "010101"; --SRL
					when "111100" => S <= "000000"; --SAVE
					when "111101" => S <= "000000"; --RESTORE
					when others => S <= "000000";
				end case;
			when others => S <= "000000";
		end case;
	end process;
	

end Behavioral;

