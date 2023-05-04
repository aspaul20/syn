-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new401_CeG_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 14; 
             MEM_SIZE    : integer := 16384
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Conv1DMac_new401_CeG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 2331=> "0000000", 2332 => "0001111", 2333 to 2355=> "0000000", 2356 => "0000010", 
    2357 to 2363=> "0000000", 2364 => "0001110", 2365 to 2380=> "0000000", 2381 => "0010000", 
    2382 to 2403=> "0000000", 2404 => "0010000", 2405 to 2425=> "0000000", 2426 => "0000001", 
    2427 => "0010000", 2428 to 2459=> "0000000", 2460 => "0001110", 2461 to 2468=> "0000000", 
    2469 => "0000001", 2470 to 2521=> "0000000", 2522 => "0001110", 2523 to 2843=> "0000000", 
    2844 => "1111110", 2845 to 2859=> "0000000", 2860 => "0011111", 2861 to 2875=> "0000000", 
    2876 => "0000001", 2877 to 2892=> "0000000", 2893 => "1111111", 2894 to 2900=> "0000000", 
    2901 => "0100010", 2902 to 2915=> "0000000", 2916 => "1111111", 2917 to 2983=> "0000000", 
    2984 => "0100000", 2985 to 3022=> "0000000", 3023 => "0011010", 3024 to 3033=> "0000000", 
    3034 => "0000001", 3035 to 3039=> "0000000", 3040 => "0000001", 3041 to 3867=> "0000000", 
    3868 => "0001111", 3869 to 3890=> "0000000", 3891 => "0000001", 3892 => "0000010", 
    3893 to 3899=> "0000000", 3900 => "0001111", 3901 to 3916=> "0000000", 3917 => "0010000", 
    3918 to 3939=> "0000000", 3940 => "0010000", 3941 to 3961=> "0000000", 3962 => "0000001", 
    3963 => "0010000", 3964 to 3995=> "0000000", 3996 => "0001110", 3997 to 4004=> "0000000", 
    4005 => "0000001", 4006 to 4015=> "0000000", 4016 => "0000001", 4017 to 4032=> "0000000", 
    4033 => "0000001", 4034 to 4057=> "0000000", 4058 => "0001110", 4059 to 5901=> "0000000", 
    5902 => "0010100", 5903 to 5908=> "0000000", 5909 => "0011101", 5910 to 5947=> "0000000", 
    5948 => "0000001", 5949 to 5987=> "0000000", 5988 => "1111111", 5989 to 6010=> "0000000", 
    6011 => "1111111", 6012 to 6027=> "0000000", 6028 => "0011011", 6029 to 6058=> "0000000", 
    6059 => "0010111", 6060 to 6072=> "0000000", 6073 => "0000001", 6074 to 6105=> "0000000", 
    6106 => "0000010", 6107 to 6118=> "0000000", 6119 => "0011011", 6120 => "0000000", 
    6121 => "0011101", 6122 to 7451=> "0000000", 7452 => "1111111", 7453 to 7467=> "0000000", 
    7468 => "0010011", 7469 to 7500=> "0000000", 7501 => "1111111", 7502 to 7508=> "0000000", 
    7509 => "0010100", 7510 to 7591=> "0000000", 7592 => "0010011", 7593 to 7630=> "0000000", 
    7631 => "0010000", 7632 to 7647=> "0000000", 7648 => "0000001", 7649 to 9997=> "0000000", 
    9998 => "0000111", 9999 to 10004=> "0000000", 10005 => "0001010", 10006 to 10123=> "0000000", 
    10124 => "0001010", 10125 to 10154=> "0000000", 10155 => "0001000", 10156 to 10201=> "0000000", 
    10202 => "0000001", 10203 to 10214=> "0000000", 10215 => "0001010", 10216 => "0000000", 
    10217 => "0001010", 10218 to 10253=> "0000000", 10254 => "0001110", 10255 to 10260=> "0000000", 
    10261 => "0010100", 10262 to 10379=> "0000000", 10380 => "0010011", 10381 to 10410=> "0000000", 
    10411 => "0010000", 10412 to 10424=> "0000000", 10425 => "0000001", 10426 to 10457=> "0000000", 
    10458 => "0000001", 10459 to 10470=> "0000000", 10471 => "0010011", 10472 => "0000000", 
    10473 => "0010100", 10474 to 10525=> "0000000", 10526 => "0011000", 10527 to 10534=> "0000000", 
    10535 => "0000010", 10536 to 10557=> "0000000", 10558 => "0011000", 10559 to 10562=> "0000000", 
    10563 => "0011011", 10564 to 10594=> "0000000", 10595 => "0011001", 10596 to 10668=> "0000000", 
    10669 => "0000001", 10670 to 10687=> "0000000", 10688 => "0010111", 10689 to 10743=> "0000000", 
    10744 => "0010010", 10745 to 11277=> "0000000", 11278 => "0000101", 11279 to 11284=> "0000000", 
    11285 => "0001000", 11286 to 11403=> "0000000", 11404 => "0000111", 11405 to 11434=> "0000000", 
    11435 => "0000110", 11436 to 11481=> "0000000", 11482 => "0000001", 11483 to 11494=> "0000000", 
    11495 => "0000111", 11496 => "0000000", 11497 => "0001000", 11498 to 12557=> "0000000", 
    12558 => "0000010", 12559 to 12564=> "0000000", 12565 => "0000011", 12566 to 12683=> "0000000", 
    12684 => "0000010", 12685 to 12714=> "0000000", 12715 => "0000010", 12716 to 12774=> "0000000", 
    12775 => "0000011", 12776 => "0000000", 12777 => "0000011", 12778 to 13851=> "0000000", 
    13852 => "1111111", 13853 to 13874=> "0000000", 13875 => "0101001", 13876 to 13883=> "0000000", 
    13884 => "0000001", 13885 to 13894=> "0000000", 13895 => "0000001", 13896 to 13900=> "0000000", 
    13901 => "1111111", 13902 to 13923=> "0000000", 13924 => "1111111", 13925 to 13946=> "0000000", 
    13947 => "1111111", 13948 to 13988=> "0000000", 13989 => "0101000", 13990 to 13999=> "0000000", 
    14000 => "0101001", 14001 to 14016=> "0000000", 14017 => "0101001", 14018 to 14041=> "0000000", 
    14042 => "1111111", 14043 to 14063=> "0000000", 14064 => "0000001", 14065 to 14109=> "0000000", 
    14110 => "0010111", 14111 to 14118=> "0000000", 14119 => "0000001", 14120 to 14141=> "0000000", 
    14142 => "0010111", 14143 to 14146=> "0000000", 14147 => "0011010", 14148 to 14178=> "0000000", 
    14179 => "0011000", 14180 to 14252=> "0000000", 14253 => "0000001", 14254 to 14271=> "0000000", 
    14272 => "0010110", 14273 to 14327=> "0000000", 14328 => "0010001", 14329 to 15131=> "0000000", 
    15132 => "1111111", 15133 to 15147=> "0000000", 15148 => "0011100", 15149 to 15163=> "0000000", 
    15164 => "0000001", 15165 to 15188=> "0000000", 15189 => "0011110", 15190 to 15259=> "0000000", 
    15260 => "0000001", 15261 to 15271=> "0000000", 15272 => "0011101", 15273 to 15310=> "0000000", 
    15311 => "0011000", 15312 to 15321=> "0000000", 15322 => "0000001", 15323 to 15327=> "0000000", 
    15328 => "0000001", 15329 to 15899=> "0000000", 15900 => "0001110", 15901 to 15923=> "0000000", 
    15924 => "0000010", 15925 to 15931=> "0000000", 15932 => "0001101", 15933 to 15948=> "0000000", 
    15949 => "0001111", 15950 to 15971=> "0000000", 15972 => "0001110", 15973 to 15993=> "0000000", 
    15994 => "0000001", 15995 => "0001111", 15996 to 16027=> "0000000", 16028 => "0001100", 
    16029 to 16089=> "0000000", 16090 => "0001100", 16091 to 16383=> "0000000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity Conv1DMac_new401_CeG is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 16384;
        AddressWidth : INTEGER := 14);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Conv1DMac_new401_CeG is
    component Conv1DMac_new401_CeG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new401_CeG_rom_U :  component Conv1DMac_new401_CeG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


