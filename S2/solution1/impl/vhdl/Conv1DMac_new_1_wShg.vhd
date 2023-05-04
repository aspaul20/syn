-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wShg_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 12; 
             MEM_SIZE    : integer := 4096
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Conv1DMac_new_1_wShg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 255=> "0000000", 256 => "0001111", 257 to 259=> "0000000", 260 => "1111111", 
    261 to 274=> "0000000", 275 => "0001101", 276 to 283=> "0000000", 284 => "1111111", 
    285 => "0001110", 286 to 290=> "0000000", 291 => "0000001", 292 to 311=> "0000000", 
    312 => "0001111", 313 to 318=> "0000000", 319 => "1111111", 320 => "0001110", 
    321 to 328=> "0000000", 329 => "0001110", 330 to 335=> "0000000", 336 => "1111111", 
    337 to 348=> "0000000", 349 => "0001111", 350 => "1111111", 351 to 352=> "0000000", 
    353 => "1111111", 354 => "0000000", 355 => "0001111", 356 to 376=> "0000000", 
    377 => "0001111", 378 to 786=> "0000000", 787 => "0000001", 788 to 793=> "0000000", 
    794 => "0000001", 795 => "0000000", 796 => "0100010", 797 => "0000001", 
    798 to 801=> "0000000", 802 => "0001101", 803 to 805=> "0000000", 806 => "0000001", 
    807 to 823=> "0000000", 824 => "0000001", 825 to 830=> "0000000", 831 => "0100111", 
    832 to 833=> "0000000", 834 => "0000001", 835 to 840=> "0000000", 841 => "0000001", 
    842 to 846=> "0000000", 847 => "0000001", 848 to 860=> "0000000", 861 => "0000001", 
    862 to 864=> "0000000", 865 => "0100110", 866 => "0000000", 867 => "0000010", 
    868 to 871=> "0000000", 872 => "0000001", 873 to 886=> "0000000", 887 => "0000010", 
    888 => "0000000", 889 => "0000001", 890 to 895=> "0000000", 896 => "0010000", 
    897 to 914=> "0000000", 915 => "0001101", 916 to 921=> "0000000", 922 => "1111111", 
    923 => "0000000", 924 => "1111111", 925 => "0001110", 926 to 930=> "0000000", 
    931 => "0000001", 932 to 933=> "0000000", 934 => "0000001", 935 to 942=> "0000000", 
    943 => "0000001", 944 to 951=> "0000000", 952 => "0001111", 953 to 957=> "0000000", 
    958 => "0000001", 959 => "1111111", 960 => "0001110", 961 => "0000000", 
    962 => "1111111", 963 to 968=> "0000000", 969 => "0001110", 970 to 974=> "0000000", 
    975 => "1111111", 976 to 988=> "0000000", 989 => "0001111", 990 to 992=> "0000000", 
    993 => "1111111", 994 => "0000000", 995 => "0001111", 996 to 999=> "0000000", 
    1000 => "1111111", 1001 to 1016=> "0000000", 1017 => "0001111", 1018 to 1279=> "0000000", 
    1280 => "0010000", 1281 to 1283=> "0000000", 1284 => "1111111", 1285 to 1298=> "0000000", 
    1299 => "0001101", 1300 to 1308=> "0000000", 1309 => "0001110", 1310 to 1313=> "0000000", 
    1314 to 1315=> "0000001", 1316 to 1335=> "0000000", 1336 => "0010000", 1337 to 1342=> "0000000", 
    1343 => "1111111", 1344 => "0001110", 1345 to 1352=> "0000000", 1353 => "0001110", 
    1354 to 1359=> "0000000", 1360 => "1111111", 1361 to 1372=> "0000000", 1373 => "0001111", 
    1374 => "1111111", 1375 to 1376=> "0000000", 1377 => "1111111", 1378 => "0000000", 
    1379 => "0001111", 1380 to 1400=> "0000000", 1401 => "0010000", 1402 to 1535=> "0000000", 
    1536 => "1111111", 1537 to 1561=> "0000000", 1562 => "0101110", 1563 => "0000000", 
    1564 => "1111111", 1565 to 1598=> "0000000", 1599 => "1111111", 1600 to 1601=> "0000000", 
    1602 => "0101000", 1603 to 1614=> "0000000", 1615 => "0100111", 1616 to 1629=> "0000000", 
    1630 => "1111111", 1631 to 1632=> "0000000", 1633 => "1111111", 1634 => "0000000", 
    1635 => "1111111", 1636 to 1639=> "0000000", 1640 => "0100010", 1641 to 2457=> "0000000", 
    2458 => "0100100", 2459 to 2460=> "0000000", 2461 => "0000001", 2462 to 2497=> "0000000", 
    2498 => "0100000", 2499 to 2510=> "0000000", 2511 => "0011111", 2512 to 2535=> "0000000", 
    2536 => "0011011", 2537 to 3455=> "0000000", 3456 => "1111111", 3457 to 3459=> "0000000", 
    3460 => "1111111", 3461 to 3481=> "0000000", 3482 => "1111111", 3483 => "0000000", 
    3484 => "0100001", 3485 => "1111111", 3486 to 3489=> "0000000", 3490 => "0001101", 
    3491 to 3511=> "0000000", 3512 => "1111111", 3513 to 3518=> "0000000", 3519 => "0100111", 
    3520 => "1111111", 3521 => "0000000", 3522 => "1111111", 3523 to 3528=> "0000000", 
    3529 => "1111111", 3530 to 3535=> "0000000", 3536 => "1111111", 3537 to 3548=> "0000000", 
    3549 to 3550=> "1111111", 3551 to 3552=> "0000000", 3553 => "0100110", 3554 to 3574=> "0000000", 
    3575 => "0000010", 3576 => "0000000", 3577 => "1111111", 3578 to 4095=> "0000000" );


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

entity Conv1DMac_new_1_wShg is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 4096;
        AddressWidth : INTEGER := 12);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Conv1DMac_new_1_wShg is
    component Conv1DMac_new_1_wShg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wShg_rom_U :  component Conv1DMac_new_1_wShg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


