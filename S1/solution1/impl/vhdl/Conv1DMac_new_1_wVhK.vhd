-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wVhK_rom is 
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


architecture rtl of Conv1DMac_new_1_wVhK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 195=> "00000", 196 => "00001", 197 => "11101", 198 to 202=> "00000", 203 => "11001", 
    204 to 205=> "00000", 206 => "11011", 207 to 208=> "00000", 209 => "00010", 210 => "10101", 
    211 => "00001", 212 => "00000", 213 => "11000", 214 => "00000", 215 => "01100", 
    216 to 217=> "00000", 218 => "11111", 219 => "00000", 220 => "01011", 221 => "00011", 
    222 => "00101", 223 => "11100", 224 => "00000", 225 => "11100", 226 => "00100", 
    227 => "11101", 228 => "01011", 229 => "00010", 230 => "11000", 231 => "11101", 
    232 => "00000", 233 => "11010", 234 to 235=> "00000", 236 => "01000", 237 => "00100", 
    238 => "11111", 239 => "00111", 240 to 241=> "00000", 242 => "00001", 243 => "11111", 
    244 => "11110", 245 => "00000", 246 => "00010", 247 => "11110", 248 => "00101", 
    249 => "00011", 250 => "11110", 251 to 252=> "00000", 253 => "00101", 254 to 387=> "00000", 
    388 => "00001", 389 => "11110", 390 => "00000", 391 => "11111", 392 to 394=> "00000", 
    395 => "00100", 396 => "00000", 397 => "00001", 398 => "11001", 399 => "00000", 
    400 => "00111", 401 => "11010", 402 => "11111", 403 => "11110", 404 => "00010", 
    405 => "11111", 406 => "00000", 407 => "11111", 408 to 409=> "00000", 410 => "00010", 
    411 to 413=> "11111", 414 => "00010", 415 => "11010", 416 => "11101", 417 => "00101", 
    418 => "00110", 419 => "00000", 420 => "11111", 421 => "11101", 422 => "11100", 
    423 => "00100", 424 => "11110", 425 => "11100", 426 => "00000", 427 => "00010", 
    428 => "00001", 429 => "00000", 430 => "00010", 431 to 433=> "00000", 434 => "00100", 
    435 => "11110", 436 => "00011", 437 => "00000", 438 => "00101", 439 => "00001", 
    440 => "00000", 441 => "00011", 442 => "11101", 443 to 444=> "00000", 445 => "00011", 
    446 to 579=> "00000", 580 => "00100", 581 => "01000", 582 => "00000", 583 => "00010", 
    584 to 586=> "00000", 587 => "00011", 588 => "00000", 589 => "00111", 590 to 591=> "00000", 
    592 to 593=> "00001", 594 => "00000", 595 => "00010", 596 => "01010", 597 to 598=> "00000", 
    599 => "00011", 600 to 601=> "00000", 602 => "00100", 603 to 604=> "11110", 605 => "01011", 
    606 => "01000", 607 => "11111", 608 => "00100", 609 => "00010", 610 => "11101", 
    611 => "01000", 612 => "00000", 613 => "00011", 614 => "00101", 615 => "11111", 
    616 => "11110", 617 => "11010", 618 => "00000", 619 => "00101", 620 => "00110", 
    621 => "01000", 622 => "01010", 623 => "11101", 624 to 625=> "00000", 626 => "11101", 
    627 => "00010", 628 => "11011", 629 => "00000", 630 => "00101", 631 => "01010", 
    632 => "01000", 633 => "11110", 634 => "11111", 635 to 636=> "00000", 637 => "11111", 
    638 to 707=> "00000", 708 to 709=> "11110", 710 => "00000", 711 => "01010", 712 to 714=> "00000", 
    715 => "00010", 716 => "00000", 717 => "00111", 718 => "00100", 719 => "00000", 
    720 => "11111", 721 => "11011", 722 => "00001", 723 => "11101", 724 => "00010", 
    725 => "00001", 726 => "00000", 727 => "11111", 728 to 729=> "00000", 730 => "00111", 
    731 => "11110", 732 to 733=> "00010", 734 => "11110", 735 => "00011", 736 => "11100", 
    737 => "11110", 738 to 739=> "00000", 740 => "11110", 741 => "00110", 742 => "11111", 
    743 => "00010", 744 => "00101", 745 => "11011", 746 => "00000", 747 => "10110", 
    748 => "00000", 749 => "00101", 750 => "00001", 751 to 753=> "00000", 754 => "00001", 
    755 => "00101", 756 => "00100", 757 => "00000", 758 => "11110", 759 => "00010", 
    760 => "00011", 761 => "00100", 762 => "00111", 763 to 899=> "00000", 900 => "11111", 
    901 => "00010", 902 to 909=> "00000", 910 => "11111", 911 => "00000", 912 => "11111", 
    913 => "11110", 914 to 915=> "11101", 916 => "00000", 917 => "00010", 918 => "00000", 
    919 => "00010", 920 to 923=> "00000", 924 => "11110", 925 => "00001", 926 => "00000", 
    927 => "00001", 928 => "11110", 929 => "11101", 930 => "11110", 931 => "00000", 
    932 => "11111", 933 => "00000", 934 => "00001", 935 to 936=> "00000", 937 => "11111", 
    938 => "00000", 939 => "11110", 940 to 941=> "00001", 942 to 945=> "00000", 946 => "00001", 
    947 => "00010", 948 => "11111", 949 to 951=> "00000", 952 => "00001", 953 to 954=> "11110", 
    955 to 956=> "00000", 957 => "11110", 958 to 964=> "00000", 965 => "00001", 966 to 973=> "00000", 
    974 => "00001", 975 to 978=> "00000", 979 => "11111", 980 to 986=> "00000", 987 to 988=> "00001", 
    989 to 997=> "00000", 998 => "00001", 999 => "00000", 1000 => "11111", 1001 => "00001", 
    1002 to 1023=> "00000" );


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

entity Conv1DMac_new_1_wVhK is
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

architecture arch of Conv1DMac_new_1_wVhK is
    component Conv1DMac_new_1_wVhK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wVhK_rom_U :  component Conv1DMac_new_1_wVhK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


