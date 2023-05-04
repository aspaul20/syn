-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wQgW_rom is 
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


architecture rtl of Conv1DMac_new_1_wQgW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 127=> "0000000", 128 => "0001111", 129 to 146=> "0000000", 147 => "0001101", 
    148 to 156=> "0000000", 157 => "0001110", 158 to 161=> "0000000", 162 to 163=> "0000001", 
    164 to 183=> "0000000", 184 => "0001111", 185 to 191=> "0000000", 192 => "0001110", 
    193 to 200=> "0000000", 201 => "0001110", 202 to 220=> "0000000", 221 => "0001110", 
    222 to 226=> "0000000", 227 => "0001111", 228 to 248=> "0000000", 249 => "0001111", 
    250 to 643=> "0000000", 644 => "1111111", 645 to 667=> "0000000", 668 => "0000001", 
    669 to 673=> "0000000", 674 => "0000001", 675 to 677=> "0000000", 678 => "0111010", 
    679 to 686=> "0000000", 687 => "0110011", 688 to 701=> "0000000", 702 => "0110101", 
    703 => "0000001", 704 to 705=> "0000000", 706 => "0000001", 707 to 719=> "0000000", 
    720 => "1111111", 721 to 732=> "0000000", 733 => "0000001", 734 => "1111111", 
    735 to 736=> "0000000", 737 => "0000001", 738 => "0000000", 739 => "1111111", 
    740 to 1407=> "0000000", 1408 => "0010000", 1409 to 1411=> "0000000", 1412 => "1111111", 
    1413 to 1426=> "0000000", 1427 => "0001101", 1428 to 1436=> "0000000", 1437 => "0001110", 
    1438 to 1441=> "0000000", 1442 to 1443=> "0000001", 1444 to 1463=> "0000000", 1464 => "0001111", 
    1465 to 1471=> "0000000", 1472 => "0001110", 1473 to 1480=> "0000000", 1481 => "0001110", 
    1482 to 1487=> "0000000", 1488 => "1111111", 1489 to 1500=> "0000000", 1501 => "0001111", 
    1502 => "1111111", 1503 to 1506=> "0000000", 1507 => "0001111", 1508 to 1528=> "0000000", 
    1529 => "0001111", 1530 to 1535=> "0000000", 1536 => "1111111", 1537 to 1561=> "0000000", 
    1562 => "0100110", 1563 to 1599=> "0000000", 1600 => "1111111", 1601 => "0000000", 
    1602 => "0100001", 1603 to 1614=> "0000000", 1615 => "0100001", 1616 to 1634=> "0000000", 
    1635 => "1111111", 1636 to 1639=> "0000000", 1640 => "0011100", 1641 to 1663=> "0000000", 
    1664 => "0001111", 1665 to 1682=> "0000000", 1683 => "0001101", 1684 to 1692=> "0000000", 
    1693 => "0001110", 1694 to 1697=> "0000000", 1698 to 1699=> "0000001", 1700 to 1719=> "0000000", 
    1720 => "0001111", 1721 to 1727=> "0000000", 1728 => "0001110", 1729 to 1736=> "0000000", 
    1737 => "0001110", 1738 to 1756=> "0000000", 1757 => "0001111", 1758 => "1111111", 
    1759 to 1762=> "0000000", 1763 => "0001111", 1764 to 1784=> "0000000", 1785 => "0001111", 
    1786 to 2943=> "0000000", 2944 => "1111101", 2945 to 2947=> "0000000", 2948 => "1111111", 
    2949 to 2962=> "0000000", 2963 => "1111111", 2964 to 2969=> "0000000", 2970 => "1111110", 
    2971 => "0000000", 2972 => "0101011", 2973 => "1111110", 2974 to 2977=> "0000000", 
    2978 => "0010000", 2979 to 2981=> "0000000", 2982 => "1111111", 2983 to 2990=> "0000000", 
    2991 => "1111111", 2992 to 2999=> "0000000", 3000 => "1111110", 3001 to 3005=> "0000000", 
    3006 => "1111111", 3007 => "0110010", 3008 => "1111110", 3009 => "0000000", 
    3010 => "1111110", 3011 to 3016=> "0000000", 3017 => "1111110", 3018 to 3022=> "0000000", 
    3023 to 3024=> "1111111", 3025 to 3036=> "0000000", 3037 to 3038=> "1111110", 3039 to 3040=> "0000000", 
    3041 => "0110001", 3042 => "0000000", 3043 => "1111111", 3044 to 3062=> "0000000", 
    3063 => "0000010", 3064 => "0000000", 3065 => "1111110", 3066 to 3327=> "0000000", 
    3328 => "0001101", 3329 to 3331=> "0000000", 3332 => "0000001", 3333 to 3346=> "0000000", 
    3347 => "0001011", 3348 to 3356=> "0000000", 3357 => "0001011", 3358 to 3361=> "0000000", 
    3362 to 3363=> "0000001", 3364 to 3383=> "0000000", 3384 => "0001100", 3385 to 3391=> "0000000", 
    3392 => "0001100", 3393 to 3400=> "0000000", 3401 => "0001011", 3402 to 3407=> "0000000", 
    3408 => "0000001", 3409 to 3420=> "0000000", 3421 => "0001100", 3422 => "0000001", 
    3423 to 3426=> "0000000", 3427 => "0001100", 3428 to 3448=> "0000000", 3449 => "0001100", 
    3450 to 4095=> "0000000" );


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

entity Conv1DMac_new_1_wQgW is
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

architecture arch of Conv1DMac_new_1_wQgW is
    component Conv1DMac_new_1_wQgW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wQgW_rom_U :  component Conv1DMac_new_1_wQgW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


