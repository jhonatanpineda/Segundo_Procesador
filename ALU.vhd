----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:13 10/19/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           carry : in  STD_LOGIC;
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(A, B, AluOp, carry)
begin
	case AluOp is
-- ADDX
-- SUBX
-- ADDCC
--	SUBCC
--	ADDXCC
--	SUBXCC
--	ANDCC
--	ANDNCC
--	ORCC
--	ORNCC
--	XORCC
--	XNORCC
--	SLL
--	SRL
--	SAVE
--	RESTORE
		when "000000" => AluResult <= A+B; --ADD
		when "000001" => AluResult <= A+B; --ADDCC
		when "000010" => AluResult <= A+B+carry; --ADDX
		when "000011" => AluResult <= A+B+carry; --ADDXCC
		when "000100" => AluResult <= A-B; --SUB
		when "000101" => AluResult <= A-B; --SUBCC
		when "000110" => AluResult <= A-B-carry; --SUBX
		when "000111" => AluResult <= A-B-carry; --SUBXCC
		when "001000" => AluResult <= A and B; --AND 
		when "001001" => AluResult <= A and B; --ANDCC
		when "001010" => AluResult <= A and not(B); --ANDN 
		when "001011" => AluResult <= A and not(B); --ANDNCC
		when "001100" => AluResult <= A or B; --OR 
		when "001101" => AluResult <= A or B; --ORCC 
		when "001110" => AluResult <= A or not(B); --ORN
		when "001111" => AluResult <= A or not(B); --ORNCC
		when "010000" => AluResult <= A xor B; --XOR 
		when "010001" => AluResult <= A xor B; --XORCC
		when "010010" => AluResult <= A xnor B; --XNOR 
		when "010011" => AluResult <= A xnor B; --XNORCC
		when "010100" => AluResult <= to_stdlogicvector(to_bitvector(A) SLL conv_integer(B)); --SLL 
		when "010101" => AluResult <= to_stdlogicvector(to_bitvector(A) SRL conv_integer(B)); --SRL  
		when others => AluResult <= "00000000000000000000000000000000";
	end case;
end process;

end Behavioral;

