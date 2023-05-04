-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wWhU_rom is 
    generic(
             DWIDTH     : integer := 5; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 1024
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Conv1DMac_new_1_wWhU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 3=> "00000", 4 => "00001", 5 => "11110", 6 => "00000", 7 => "11111", 
    8 to 10=> "00000", 11 => "00011", 12 => "00000", 13 => "00001", 14 => "11010", 
    15 => "00000", 16 => "00110", 17 => "11010", 18 => "11111", 19 => "11110", 
    20 => "00010", 21 => "11111", 22 to 25=> "00000", 26 => "00001", 27 to 29=> "11111", 
    30 => "00010", 31 => "11011", 32 => "11101", 33 => "00100", 34 => "00101", 
    35 => "00000", 36 => "11111", 37 => "11110", 38 => "11100", 39 => "00011", 
    40 => "11110", 41 => "11101", 42 => "00000", 43 => "00010", 44 => "00001", 
    45 => "00000", 46 => "00010", 47 to 49=> "00000", 50 => "00100", 51 => "11110", 
    52 => "00011", 53 => "00000", 54 => "00100", 55 => "00001", 56 => "00000", 
    57 => "00010", 58 => "11110", 59 to 60=> "00000", 61 => "00011", 62 to 67=> "00000", 
    68 => "00101", 69 => "00011", 70 => "00000", 71 => "00001", 72 to 74=> "00000", 
    75 => "00001", 76 => "00000", 77 => "00101", 78 => "00011", 79 to 80=> "00000", 
    81 => "00100", 82 => "00011", 83 => "00001", 84 => "00111", 85 => "11100", 
    86 to 89=> "00000", 90 => "00011", 91 => "11111", 92 => "00000", 93 => "00110", 
    94 => "00101", 95 => "11011", 96 => "00100", 97 => "00001", 98 => "00000", 
    99 => "01000", 100 => "00000", 101 => "00101", 102 => "00100", 103 to 104=> "11110", 
    105 => "11011", 106 to 107=> "00000", 108 => "00010", 109 => "00101", 110 => "00111", 
    111 => "11101", 112 to 113=> "00000", 114 => "11100", 115 => "00001", 116 => "11011", 
    117 => "00000", 118 => "00011", 119 => "01000", 120 => "00101", 121 => "11111", 
    122 => "11110", 123 to 259=> "00000", 260 => "00101", 261 => "01110", 262 => "00000", 
    263 => "00010", 264 to 266=> "00000", 267 => "11010", 268 => "00000", 269 => "00001", 
    270 => "01000", 271 => "00000", 272 => "00011", 273 => "11101", 274 => "00001", 
    275 => "10101", 276 => "00000", 277 => "00001", 278 => "00000", 279 => "00001", 
    280 to 281=> "00000", 282 => "00001", 283 => "01111", 284 => "00101", 285 => "11100", 
    286 => "00001", 287 => "11010", 288 => "11110", 289 to 290=> "00011", 291 => "11110", 
    292 => "00100", 293 => "00000", 294 => "00111", 295 => "11011", 296 => "10111", 
    297 => "01011", 298 => "00000", 299 => "00001", 300 => "00010", 301 => "00001", 
    302 => "00000", 303 => "11110", 304 to 305=> "00000", 306 => "01000", 307 => "00011", 
    308 => "00110", 309 => "00000", 310 => "00010", 311 => "00000", 312 => "00001", 
    313 => "01000", 314 => "11110", 315 to 316=> "00000", 317 => "11011", 318 to 387=> "00000", 
    388 => "00011", 389 => "00110", 390 => "00000", 391 => "00010", 392 to 394=> "00000", 
    395 => "00010", 396 => "00000", 397 => "00101", 398 to 399=> "00000", 400 to 401=> "00001", 
    402 => "00000", 403 => "00010", 404 => "00111", 405 to 406=> "00000", 407 => "00011", 
    408 to 409=> "00000", 410 => "00011", 411 to 412=> "11111", 413 => "00111", 414 => "00110", 
    415 => "00000", 416 => "00101", 417 => "00001", 418 => "11110", 419 => "00111", 
    420 => "00001", 421 to 422=> "00011", 423 => "11101", 424 => "11111", 425 => "11011", 
    426 => "00000", 427 => "00011", 428 => "00100", 429 => "00110", 430 => "00111", 
    431 => "11101", 432 to 433=> "00000", 434 => "11100", 435 => "00010", 436 => "11110", 
    437 => "00000", 438 => "00100", 439 => "00111", 440 => "00110", 441 => "11111", 
    442 to 516=> "00000", 517 => "11110", 518 to 522=> "00000", 523 => "11010", 524 to 525=> "00000", 
    526 => "11101", 527 to 528=> "00000", 529 => "00001", 530 => "10101", 531 => "00001", 
    532 => "00000", 533 => "11010", 534 => "00000", 535 => "01100", 536 to 537=> "00000", 
    538 => "11111", 539 => "00000", 540 => "01001", 541 => "00011", 542 => "00100", 
    543 => "11101", 544 => "00001", 545 => "11100", 546 => "00011", 547 => "11101", 
    548 => "01011", 549 => "00001", 550 => "10111", 551 => "11101", 552 => "00001", 
    553 => "11011", 554 to 555=> "00000", 556 => "01000", 557 => "00100", 558 => "11110", 
    559 => "00111", 560 to 561=> "00000", 562 => "00001", 563 to 564=> "11111", 565 => "00000", 
    566 => "00010", 567 => "11110", 568 => "00101", 569 => "00010", 570 => "11110", 
    571 to 572=> "00000", 573 => "00100", 574 to 835=> "00000", 836 => "00010", 837 => "11101", 
    838 => "00000", 839 => "11111", 840 to 842=> "00000", 843 => "00110", 844 => "00000", 
    845 => "00010", 846 => "10110", 847 => "00000", 848 => "01010", 849 => "10111", 
    850 => "11111", 851 => "11110", 852 => "00011", 853 => "11111", 854 => "00000", 
    855 => "11111", 856 to 857=> "00000", 858 => "00010", 859 to 860=> "11110", 861 => "11111", 
    862 => "00011", 863 => "11000", 864 => "11100", 865 => "00111", 866 => "01001", 
    867 => "00000", 868 => "11110", 869 => "11100", 870 => "11010", 871 => "00110", 
    872 => "11101", 873 => "11011", 874 => "00000", 875 => "00010", 876 => "00001", 
    877 => "00000", 878 => "00011", 879 to 881=> "00000", 882 => "00101", 883 => "11101", 
    884 => "00101", 885 => "00000", 886 => "00111", 887 => "00010", 888 => "00000", 
    889 => "00100", 890 => "11101", 891 to 892=> "00000", 893 => "00101", 894 to 899=> "00000", 
    900 => "00010", 901 => "11100", 902 to 906=> "00000", 907 => "10111", 908 to 909=> "00000", 
    910 => "11011", 911 to 912=> "00000", 913 => "00100", 914 => "10101", 915 => "00010", 
    916 => "00000", 917 => "10101", 918 => "00000", 919 => "01101", 920 to 921=> "00000", 
    922 => "11111", 923 => "00000", 924 => "01101", 925 => "00011", 926 => "00101", 
    927 => "11011", 928 => "00000", 929 => "11100", 930 => "00101", 931 => "11100", 
    932 => "01100", 933 => "00010", 934 => "10111", 935 => "11101", 936 => "11111", 
    937 => "11001", 938 => "00000", 939 => "11111", 940 => "01000", 941 => "00100", 
    942 => "11111", 943 => "01000", 944 to 945=> "00000", 946 => "00010", 947 => "11111", 
    948 => "11110", 949 => "00000", 950 => "00011", 951 => "11110", 952 => "00101", 
    953 => "00100", 954 => "11110", 955 to 956=> "00000", 957 => "00110", 958 to 1023=> "00000" );


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

entity Conv1DMac_new_1_wWhU is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 1024;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Conv1DMac_new_1_wWhU is
    component Conv1DMac_new_1_wWhU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wWhU_rom_U :  component Conv1DMac_new_1_wWhU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

