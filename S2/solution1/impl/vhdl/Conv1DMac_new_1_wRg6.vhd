-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wRg6_rom is 
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


architecture rtl of Conv1DMac_new_1_wRg6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000", 1 to 18=> "0000000", 19 => "0001101", 20 to 27=> "0000000", 
    28 => "1111111", 29 => "0001111", 30 to 34=> "0000000", 35 => "0000001", 
    36 to 55=> "0000000", 56 => "0010000", 57 to 62=> "0000000", 63 => "1111111", 
    64 => "0001111", 65 to 72=> "0000000", 73 => "0001110", 74 to 92=> "0000000", 
    93 => "0001111", 94 => "1111111", 95 to 96=> "0000000", 97 => "1111111", 
    98 => "0000000", 99 => "0001111", 100 to 120=> "0000000", 121 => "0010000", 
    122 to 383=> "0000000", 384 => "0000001", 385 to 402=> "0000000", 403 => "0000001", 
    404 to 411=> "0000000", 412 => "0010000", 413 => "0000001", 414 to 417=> "0000000", 
    418 => "0000111", 419 to 439=> "0000000", 440 => "0000001", 441 to 446=> "0000000", 
    447 => "0010011", 448 => "0000001", 449 to 456=> "0000000", 457 => "0000001", 
    458 to 476=> "0000000", 477 => "0000001", 478 to 480=> "0000000", 481 => "0010010", 
    482 => "0000000", 483 => "0000001", 484 to 502=> "0000000", 503 => "0000001", 
    504 => "0000000", 505 => "0000001", 506 to 511=> "0000000", 512 => "0000100", 
    513 to 515=> "0000000", 516 => "0010101", 517 to 530=> "0000000", 531 => "0000011", 
    532 to 537=> "0000000", 538 => "0000011", 539 => "0000000", 540 => "0000010", 
    541 => "0000011", 542 to 545=> "0000000", 546 => "0000010", 547 to 567=> "0000000", 
    568 => "0000011", 569 to 574=> "0000000", 575 => "0000011", 576 => "0000100", 
    577 => "0000000", 578 => "0000011", 579 to 584=> "0000000", 585 => "0000100", 
    586 to 590=> "0000000", 591 => "0000011", 592 => "0011010", 593 to 598=> "0000000", 
    599 => "0000001", 600 to 604=> "0000000", 605 => "0000011", 606 => "0011110", 
    607 to 608=> "0000000", 609 => "0000011", 610 => "0000000", 611 => "0000100", 
    612 to 615=> "0000000", 616 => "0000010", 617 to 620=> "0000000", 621 => "0000010", 
    622 to 632=> "0000000", 633 => "0000100", 634 to 767=> "0000000", 768 => "0001111", 
    769 to 786=> "0000000", 787 => "0001100", 788 to 796=> "0000000", 797 => "0001110", 
    798 to 801=> "0000000", 802 to 803=> "0000001", 804 to 823=> "0000000", 824 => "0001111", 
    825 to 831=> "0000000", 832 => "0001110", 833 to 840=> "0000000", 841 => "0001101", 
    842 to 860=> "0000000", 861 => "0001110", 862 to 866=> "0000000", 867 => "0001110", 
    868 to 888=> "0000000", 889 => "0001111", 890 to 1151=> "0000000", 1152 => "1111111", 
    1153 to 1177=> "0000000", 1178 => "0101100", 1179 => "0000000", 1180 => "1111111", 
    1181 to 1217=> "0000000", 1218 => "0100110", 1219 to 1230=> "0000000", 1231 => "0100110", 
    1232 to 1245=> "0000000", 1246 => "1111111", 1247 to 1248=> "0000000", 1249 => "1111111", 
    1250 => "0000000", 1251 => "1111111", 1252 to 1255=> "0000000", 1256 => "0100000", 
    1257 to 1433=> "0000000", 1434 => "0000001", 1435 to 1436=> "0000000", 1437 => "1111111", 
    1438 to 1445=> "0000000", 1446 => "0111010", 1447 to 1454=> "0000000", 1455 => "0110000", 
    1456 to 1469=> "0000000", 1470 => "0110011", 1471 to 1473=> "0000000", 1474 => "0000001", 
    1475 to 1500=> "0000000", 1501 => "0000001", 1502 => "1111111", 1503 to 1506=> "0000000", 
    1507 => "1111111", 1508 to 2943=> "0000000", 2944 => "0001111", 2945 to 2947=> "0000000", 
    2948 => "1111111", 2949 to 2962=> "0000000", 2963 => "0001101", 2964 to 2969=> "0000000", 
    2970 => "0000001", 2971 to 2972=> "0000000", 2973 => "0001110", 2974 to 2977=> "0000000", 
    2978 to 2979=> "0000001", 2980 to 2999=> "0000000", 3000 => "0001111", 3001 to 3007=> "0000000", 
    3008 => "0001110", 3009 => "0000000", 3010 => "0000001", 3011 to 3016=> "0000000", 
    3017 => "0001110", 3018 to 3022=> "0000000", 3023 => "0000001", 3024 => "1111111", 
    3025 to 3036=> "0000000", 3037 => "0001111", 3038 => "1111111", 3039 to 3042=> "0000000", 
    3043 => "0001111", 3044 to 3064=> "0000000", 3065 => "0001111", 3066 to 3071=> "0000000", 
    3072 => "1111110", 3073 to 3075=> "0000000", 3076 => "0101100", 3077 to 3090=> "0000000", 
    3091 => "1111111", 3092 to 3097=> "0000000", 3098 => "1111110", 3099 => "0000000", 
    3100 => "1111111", 3101 => "1111110", 3102 to 3127=> "0000000", 3128 => "1111110", 
    3129 to 3133=> "0000000", 3134 => "0000001", 3135 to 3136=> "1111111", 3137 => "0000000", 
    3138 => "1111110", 3139 to 3144=> "0000000", 3145 => "1111110", 3146 to 3150=> "0000000", 
    3151 => "1111110", 3152 => "0110111", 3153 to 3158=> "0000000", 3159 => "0000010", 
    3160 to 3164=> "0000000", 3165 => "1111101", 3166 => "0111100", 3167 to 3168=> "0000000", 
    3169 => "1111111", 3170 => "0000000", 3171 => "1111111", 3172 to 3175=> "0000000", 
    3176 => "1111110", 3177 to 3180=> "0000000", 3181 => "0000100", 3182 to 3192=> "0000000", 
    3193 => "1111111", 3194 to 4095=> "0000000" );


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

entity Conv1DMac_new_1_wRg6 is
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

architecture arch of Conv1DMac_new_1_wRg6 is
    component Conv1DMac_new_1_wRg6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wRg6_rom_U :  component Conv1DMac_new_1_wRg6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


