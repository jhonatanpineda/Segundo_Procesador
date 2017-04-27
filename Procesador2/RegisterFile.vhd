----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:42 10/19/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
    Port ( nrs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           nrd : in  STD_LOGIC_VECTOR (5 downto 0);
           Rst  : in  STD_LOGIC;
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
		   crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

type ram is array(39 downto 0) of std_logic_vector(31 downto 0);
signal registros : ram := (others => "00000000000000000000000000000000");
begin

process(Rst, nrs1, nrs2, nrd, AluResult)
	begin
		if(Rst = '1') then
			registros <= (others => "00000000000000000000000000000000");
			crs1 <= (others => '0');
			crs2 <= (others => '0');
		else
			if(nrd /= "00000") then
				registros(conv_integer(nrd)) <= AluResult;
			end if;
			crs1 <= registros(conv_integer(nrs1));
			crs2 <= registros(conv_integer(nrs2)); 
		end if;
	end process;
end Behavioral;
