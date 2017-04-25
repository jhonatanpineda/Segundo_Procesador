----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:07 10/21/2016 
-- Design Name: 
-- Module Name:    PSR_Modifier - Behavioral 
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

entity PSR_Modifier is
    Port ( Rst : in STD_LOGIC;
			  crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           SalidaMux : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_Modifier;

architecture Behavioral of PSR_Modifier is

begin
	process(Crs1, SalidaMux, AluOp, AluResult)
	begin
		if(Rst = '1') then
			NZVC <= "0000";
		end if;
		--ADDcc y ADDXcc
		if(AluOp = "000001" or AluOp = "000011") then
			NZVC(3) <= AluResult(31);
			if(AluResult = "00000000000000000000000000000000") then
				NZVC(2) <= '1';
			else
				NZVC(2) <= '0';
			end if;
			NZVC(1) <= (crs1(31) and SalidaMux(31) and not(AluResult(31))) or (not(crs1(31)) and not(SalidaMux(31)) and AluResult(31));
			NZVC(0) <= (crs1(31) and SalidaMux(31)) or (not(AluResult(31)) and (crs1(31) or SalidaMux(31)));
		end if;
		
		--SUBcc y SUBXcc
		if(AluOp = "000101" or AluOp = "000111") then
			NZVC(3) <= AluResult(31);
			if(AluResult = "00000000000000000000000000000000") then
				NZVC(2) <= '1';
			else
				NZVC(2) <= '0';
			end if;
			NZVC(1) <= (crs1(31) and not(SalidaMux(31)) and not(AluResult(31))) or (not(crs1(31)) and SalidaMux(31) and AluResult(31));
			NZVC(0) <= (not(crs1(31)) and SalidaMux(31)) or (AluResult(31) and (not(crs1(31)) or SalidaMux(31)));
		end if;
		
		--ANDcc, ANDNcc, ORcc, ORNcc, XORcc, XNORcc 
		if(AluOp = "001001" or AluOp = "001011" or AluOp = "001101" or AluOp = "001111" or 
			AluOp = "010001" or AluOp = "010011") then
			NZVC(3) <= AluResult(31);
			if(AluResult = "00000000000000000000000000000000") then
				NZVC(2) <= '1';
			else
				NZVC(2) <= '0';
			end if;
			NZVC(1) <= '0';
			NZVC(0) <= '0';
		end if;
	end process;
end Behavioral;

