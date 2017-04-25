----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:44 10/26/2016 
-- Design Name: 
-- Module Name:    Procesador - Behavioral 
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

entity Procesador is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Cwp: out STD_LOGIC;
			  Ncwp : out STD_LOGIC;
			  NZVC : out STD_LOGIC_VECTOR (3 downto 0);
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador;

architecture Behavioral of Procesador is

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);
		carry : IN std_logic;          
		AluResult : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT IM
	PORT(
		A : IN std_logic_vector(31 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT MUX
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT PC
	PORT(
		Rst : IN std_logic;
		Clk : IN std_logic;
		Datain : IN std_logic_vector(31 downto 0);          
		Dataout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT PSR_Modifier
	PORT(
		Rst : IN std_logic;
		crs1 : IN std_logic_vector(31 downto 0);
		SalidaMux : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);
		AluResult : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT PSR
	PORT(
		Clk : IN std_logic;
		Rst : IN std_logic;
		NZVC : IN std_logic_vector(3 downto 0);
		ncwp : IN std_logic;          
		cwp : OUT std_logic;
		Carry : OUT std_logic
		);
	END COMPONENT;

	COMPONENT RegisterFile
	PORT(
		nrs1 : IN std_logic_vector(5 downto 0);
		nrs2 : IN std_logic_vector(5 downto 0);
		nrd : IN std_logic_vector(5 downto 0);
		Rst : IN std_logic;
		AluResult : IN std_logic_vector(31 downto 0);          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT SEU
	PORT(
		A : IN std_logic_vector(12 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT Sumador
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT UC
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);          
		S : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	COMPONENT Win_Man
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic;          
		ncwp : OUT std_logic;
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;	
	
signal DirAnt, Dir, Adress, SalidaIM, SalidaAlu, ConRS1 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal ConRS2, SalidaSeu, SalidaMux : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal SalidaPSR, SalidaWin, SalidaPSRCarry : STD_LOGIC :=  '0';
signal AuxRS1, AuxRS2, AUXRd, EntradaAlu : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
signal icc : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin
	nPc: PC PORT MAP(
		Rst => Rst,
		Clk => Clk,
		Datain => DirAnt,
		Dataout => Dir
	);
	
	Pc0: PC PORT MAP(
		Rst => Rst,
		Clk => Clk,
		Datain => Dir,
		Dataout => Adress
	);
	
	Inst_Sumador: Sumador PORT MAP(
		A => Dir,
		B => "00000000000000000000000000000001",
		S => DirAnt
	);
		
	Inst_IM: IM PORT MAP(
		A => Adress,
		S => SalidaIM
	);
	
	Inst_UC: UC PORT MAP(
		OP => SalidaIm(31 downto 30),
		OP3 => SalidaIM(24 downto 19),
		S => EntradaAlu
	);

	Inst_Win_Man: Win_Man PORT MAP(
		rs1 => SalidaIm(18 downto 14),
		rs2 => SalidaIm(4 downto 0),
		rd => SalidaIm(29 downto 25),
		op => SalidaIm(31 downto 30),
		op3 => SalidaIm(24 downto 19),
		cwp => SalidaPSR,
		ncwp => SalidaWin,
		nrs1 => AUXRS1,
		nrs2 => AUXRS2,
		nrd => AUXRd 
	);

	
	Inst_RegisterFile: RegisterFile PORT MAP(
		nrs1 => AUXRS1,
		nrs2 => AUXRS2,
		nrd => AUXRd,
		Rst => Rst,
		AluResult => SalidaAlu,
		crs1 => ConRS1,
		crs2 => ConRS2
	);

	Inst_SEU: SEU PORT MAP(
		A => SalidaIM(12 downto 0),
		S => SalidaSeu
	);
	
	Inst_MUX: MUX PORT MAP(
		A => ConRS2,
		B => SalidaSeu,
		Sc => SalidaIM(13),
		S => SalidaMux
	);

	Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		Rst => Rst,
		crs1 => ConRS1,
		SalidaMux => SalidaMux,
		AluOp => EntradaAlu,
		AluResult => SalidaAlu,
		NZVC => icc
	);
	
		Inst_PSR: PSR PORT MAP(
		Clk => Clk,
		Rst => Rst,
		NZVC => icc,
		ncwp => SalidaWin,
		cwp => SalidaPSR,
		Carry => SalidaPSRCarry
	);
	
	Inst_ALU: ALU PORT MAP(
		A => ConRS1,
		B => SalidaMux,
		AluOp => EntradaAlu,
		carry => SalidaPSRCarry,
		AluResult => SalidaAlu
	);
	
	AluResult <= SalidaAlu;
	Ncwp <= SalidaWin;
	Cwp <= SalidaPSR;
	NZVC <= icc;

end Behavioral;