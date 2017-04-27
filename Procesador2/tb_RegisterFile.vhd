--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:29:32 10/19/2016
-- Design Name:   
-- Module Name:   D:/Arquitectura/Componentes/RegisterFileMod/tb_RegisterFile.vhd
-- Project Name:  RegisterFileMod
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_RegisterFile IS
END tb_RegisterFile;
 
ARCHITECTURE behavior OF tb_RegisterFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         nrs1 : IN  std_logic_vector(5 downto 0);
         nrs2 : IN  std_logic_vector(5 downto 0);
         nrd : IN  std_logic_vector(5 downto 0);
         Rst : IN  std_logic;
         AluResult : IN  std_logic_vector(31 downto 0);
         crs1 : OUT  std_logic_vector(31 downto 0);
         crs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nrs1 : std_logic_vector(5 downto 0) := (others => '0');
   signal nrs2 : std_logic_vector(5 downto 0) := (others => '0');
   signal nrd : std_logic_vector(5 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal AluResult : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal crs1 : std_logic_vector(31 downto 0);
   signal crs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          nrs1 => nrs1,
          nrs2 => nrs2,
          nrd => nrd,
          Rst => Rst,
          AluResult => AluResult,
          crs1 => crs1,
          crs2 => crs2
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      nrs1 <= "000001";
		nrs2 <= "000010";
		nrd <= "000000";
		AluResult <= "00000000000000000000000000000100";
		wait for 20 ns;

		nrs1 <= "000000";
		nrs2 <= "000010";
		nrd <= "000001";
		AluResult <= "00000000000000000000000000000100";
      wait for 20 ns;	

		nrs1 <= "000001";
		nrs2 <= "000010";
		nrd <= "000101";
		AluResult <= "00000000000000000000000000000100";
		wait;
   end process;

END;
