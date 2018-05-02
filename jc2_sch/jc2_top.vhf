--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : jc2_top.vhf
-- /___/   /\     Timestamp : 04/13/2018 16:56:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl E:/Projects/MIPS-master/jc2_sch/jc2_top.vhf -w E:/Projects/MIPS-master/jc2_sch/jc2_top.sch
--Design Name: jc2_top
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BUF4_MXILINX_jc2_top is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          O0 : out   std_logic; 
          O1 : out   std_logic; 
          O2 : out   std_logic; 
          O3 : out   std_logic);
end BUF4_MXILINX_jc2_top;

architecture BEHAVIORAL of BUF4_MXILINX_jc2_top is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>I0,
                O=>O0);
   
   XLXI_2 : BUF
      port map (I=>I1,
                O=>O1);
   
   XLXI_3 : BUF
      port map (I=>I2,
                O=>O2);
   
   XLXI_4 : BUF
      port map (I=>I3,
                O=>O3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FDC_MXILINX_jc2_top is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_jc2_top;

architecture BEHAVIORAL of FDC_MXILINX_jc2_top is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_55 : GND
      port map (G=>XLXN_5);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>D,
                PRE=>XLXN_5,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FJKC_MXILINX_jc2_top is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          J   : in    std_logic; 
          K   : in    std_logic; 
          Q   : out   std_logic);
end FJKC_MXILINX_jc2_top;

architecture BEHAVIORAL of FJKC_MXILINX_jc2_top is
   attribute HU_SET         : string ;
   attribute BOX_TYPE       : string ;
   signal AD      : std_logic;
   signal A0      : std_logic;
   signal A1      : std_logic;
   signal A2      : std_logic;
   signal Q_DUMMY : std_logic;
   component FDC_MXILINX_jc2_top
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   attribute HU_SET of I_36_32 : label is "I_36_32_0";
begin
   Q <= Q_DUMMY;
   I_36_32 : FDC_MXILINX_jc2_top
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>AD,
                Q=>Q_DUMMY);
   
   I_36_37 : AND3B2
      port map (I0=>J,
                I1=>K,
                I2=>Q_DUMMY,
                O=>A0);
   
   I_36_40 : AND3B1
      port map (I0=>Q_DUMMY,
                I1=>K,
                I2=>J,
                O=>A1);
   
   I_36_41 : OR3
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                O=>AD);
   
   I_36_43 : AND2B1
      port map (I0=>K,
                I1=>J,
                O=>A2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_jc2_top is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_jc2_top;

architecture BEHAVIORAL of M2_1_MXILINX_jc2_top is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SR4CLED_MXILINX_jc2_top is
   port ( C    : in    std_logic; 
          CE   : in    std_logic; 
          CLR  : in    std_logic; 
          D0   : in    std_logic; 
          D1   : in    std_logic; 
          D2   : in    std_logic; 
          D3   : in    std_logic; 
          L    : in    std_logic; 
          LEFT : in    std_logic; 
          SLI  : in    std_logic; 
          SRI  : in    std_logic; 
          Q0   : out   std_logic; 
          Q1   : out   std_logic; 
          Q2   : out   std_logic; 
          Q3   : out   std_logic);
end SR4CLED_MXILINX_jc2_top;

architecture BEHAVIORAL of SR4CLED_MXILINX_jc2_top is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal L_LEFT   : std_logic;
   signal L_OR_CE  : std_logic;
   signal MDL0     : std_logic;
   signal MDL1     : std_logic;
   signal MDL2     : std_logic;
   signal MDL3     : std_logic;
   signal MDR0     : std_logic;
   signal MDR1     : std_logic;
   signal MDR2     : std_logic;
   signal MDR3     : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component M2_1_MXILINX_jc2_top
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute HU_SET of UL0 : label is "UL0_3";
   attribute HU_SET of UL1 : label is "UL1_2";
   attribute HU_SET of UL2 : label is "UL2_1";
   attribute HU_SET of UL3 : label is "UL3_7";
   attribute HU_SET of UR0 : label is "UR0_4";
   attribute HU_SET of UR1 : label is "UR1_5";
   attribute HU_SET of UR2 : label is "UR2_6";
   attribute HU_SET of UR3 : label is "UR3_8";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   I_36_78 : OR2
      port map (I0=>L,
                I1=>CE,
                O=>L_OR_CE);
   
   I_36_105 : OR2
      port map (I0=>LEFT,
                I1=>L,
                O=>L_LEFT);
   
   UL0 : M2_1_MXILINX_jc2_top
      port map (D0=>SLI,
                D1=>D0,
                S0=>L,
                O=>MDL0);
   
   UL1 : M2_1_MXILINX_jc2_top
      port map (D0=>Q0_DUMMY,
                D1=>D1,
                S0=>L,
                O=>MDL1);
   
   UL2 : M2_1_MXILINX_jc2_top
      port map (D0=>Q1_DUMMY,
                D1=>D2,
                S0=>L,
                O=>MDL2);
   
   UL3 : M2_1_MXILINX_jc2_top
      port map (D0=>Q2_DUMMY,
                D1=>D3,
                S0=>L,
                O=>MDL3);
   
   UR0 : M2_1_MXILINX_jc2_top
      port map (D0=>Q1_DUMMY,
                D1=>MDL0,
                S0=>L_LEFT,
                O=>MDR0);
   
   UR1 : M2_1_MXILINX_jc2_top
      port map (D0=>Q2_DUMMY,
                D1=>MDL1,
                S0=>L_LEFT,
                O=>MDR1);
   
   UR2 : M2_1_MXILINX_jc2_top
      port map (D0=>Q3_DUMMY,
                D1=>MDL2,
                S0=>L_LEFT,
                O=>MDR2);
   
   UR3 : M2_1_MXILINX_jc2_top
      port map (D0=>SRI,
                D1=>MDL3,
                S0=>L_LEFT,
                O=>MDR3);
   
   U0 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MDR0,
                Q=>Q0_DUMMY);
   
   U1 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MDR1,
                Q=>Q1_DUMMY);
   
   U2 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MDR2,
                Q=>Q2_DUMMY);
   
   U3 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MDR3,
                Q=>Q3_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity jc2_top is
   port ( clk   : in    std_logic; 
          left  : in    std_logic; 
          right : in    std_logic; 
          stop  : in    std_logic; 
          q     : out   std_logic_vector (3 downto 0));
end jc2_top;

architecture BEHAVIORAL of jc2_top is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal dir     : std_logic;
   signal q_int0  : std_logic;
   signal q_int1  : std_logic;
   signal q_int2  : std_logic;
   signal q_int3  : std_logic;
   signal run     : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   component FJKC_MXILINX_jc2_top
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component SR4CLED_MXILINX_jc2_top
      port ( C    : in    std_logic; 
             CE   : in    std_logic; 
             CLR  : in    std_logic; 
             D0   : in    std_logic; 
             D1   : in    std_logic; 
             D2   : in    std_logic; 
             D3   : in    std_logic; 
             L    : in    std_logic; 
             LEFT : in    std_logic; 
             SLI  : in    std_logic; 
             SRI  : in    std_logic; 
             Q0   : out   std_logic; 
             Q1   : out   std_logic; 
             Q2   : out   std_logic; 
             Q3   : out   std_logic);
   end component;
   
   component BUF4_MXILINX_jc2_top
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   attribute HU_SET of dir_reg1 : label is "dir_reg1_11";
   attribute HU_SET of jcounter : label is "jcounter_9";
   attribute HU_SET of run_reg : label is "run_reg_10";
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
begin
   dir_reg1 : FJKC_MXILINX_jc2_top
      port map (C=>clk,
                CLR=>XLXN_18,
                J=>XLXN_22,
                K=>XLXN_21,
                Q=>run);
   
   I10 : INV
      port map (I=>left,
                O=>XLXN_19);
   
   I11 : INV
      port map (I=>right,
                O=>XLXN_20);
   
   I12 : INV
      port map (I=>stop,
                O=>XLXN_21);
   
   I13 : OR2B2
      port map (I0=>right,
                I1=>left,
                O=>XLXN_22);
   
   I14 : GND
      port map (G=>XLXN_18);
   
   I19 : GND
      port map (G=>XLXN_12);
   
   I20 : INV
      port map (I=>q_int0,
                O=>XLXN_10);
   
   I21 : INV
      port map (I=>q_int3,
                O=>XLXN_11);
   
   jcounter : SR4CLED_MXILINX_jc2_top
      port map (C=>clk,
                CE=>run,
                CLR=>XLXN_12,
                D0=>XLXN_12,
                D1=>XLXN_12,
                D2=>XLXN_12,
                D3=>XLXN_12,
                L=>XLXN_12,
                LEFT=>dir,
                SLI=>XLXN_11,
                SRI=>XLXN_10,
                Q0=>q_int0,
                Q1=>q_int1,
                Q2=>q_int2,
                Q3=>q_int3);
   
   run_reg : FJKC_MXILINX_jc2_top
      port map (C=>clk,
                CLR=>XLXN_18,
                J=>XLXN_20,
                K=>XLXN_19,
                Q=>dir);
   
   XLXI_1 : BUF4_MXILINX_jc2_top
      port map (I0=>q_int0,
                I1=>q_int1,
                I2=>q_int2,
                I3=>q_int3,
                O0=>q(0),
                O1=>q(1),
                O2=>q(2),
                O3=>q(3));
   
end BEHAVIORAL;


