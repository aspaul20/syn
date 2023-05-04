-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_1_wThq_rom is 
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


architecture rtl of Conv1DMac_new_1_wThq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 255=> "0000000", 256 => "1111111", 257 to 281=> "0000000", 282 => "0100110", 
    283 to 284=> "0000000", 285 => "0000001", 286 to 321=> "0000000", 322 => "0100010", 
    323 to 334=> "0000000", 335 => "0100001", 336 to 359=> "0000000", 360 => "0011100", 
    361 to 767=> "0000000", 768 => "1111111", 769 to 771=> "0000000", 772 => "0101010", 
    773 to 796=> "0000000", 797 => "1111111", 798 to 823=> "0000000", 824 => "1111111", 
    825 to 847=> "0000000", 848 => "0110101", 849 to 854=> "0000000", 855 => "0000010", 
    856 to 860=> "0000000", 861 => "1111110", 862 => "0110101", 863 to 876=> "0000000", 
    877 => "0000100", 878 to 1170=> "0000000", 1171 => "0000001", 1172 to 1177=> "0000000", 
    1178 => "0000001", 1179 => "0000000", 1180 => "0001110", 1181 => "0000001", 
    1182 to 1185=> "0000000", 1186 => "0000110", 1187 to 1207=> "0000000", 1208 => "0000001", 
    1209 to 1214=> "0000000", 1215 => "0010000", 1216 to 1217=> "0000000", 1218 => "0000001", 
    1219 to 1230=> "0000000", 1231 => "0000001", 1232 to 1244=> "0000000", 1245 => "0000001", 
    1246 to 1248=> "0000000", 1249 => "0010000", 1250 => "0000000", 1251 => "0000001", 
    1252 to 1255=> "0000000", 1256 => "0000001", 1257 to 1270=> "0000000", 1271 => "0000001", 
    1272 => "0000000", 1273 => "0000001", 1274 to 1791=> "0000000", 1792 => "0000010", 
    1793 to 1795=> "0000000", 1796 => "0000001", 1797 to 1810=> "0000000", 1811 => "0000010", 
    1812 to 1817=> "0000000", 1818 => "0000001", 1819 => "0000000", 1820 => "0010001", 
    1821 => "0000010", 1822 to 1825=> "0000000", 1826 => "0000111", 1827 to 1847=> "0000000", 
    1848 => "0000010", 1849 to 1854=> "0000000", 1855 => "0010011", 1856 => "0000010", 
    1857 => "0000000", 1858 => "0000001", 1859 to 1864=> "0000000", 1865 => "0000010", 
    1866 to 1870=> "0000000", 1871 => "0000010", 1872 => "0000001", 1873 to 1884=> "0000000", 
    1885 => "0000010", 1886 => "0000001", 1887 to 1888=> "0000000", 1889 => "0010011", 
    1890 => "0000000", 1891 => "0000010", 1892 to 1895=> "0000000", 1896 => "0000001", 
    1897 to 1910=> "0000000", 1911 => "0000001", 1912 => "0000000", 1913 => "0000010", 
    1914 to 2322=> "0000000", 2323 => "0000001", 2324 to 2331=> "0000000", 2332 => "0100000", 
    2333 to 2337=> "0000000", 2338 => "0001100", 2339 to 2359=> "0000000", 2360 => "0000001", 
    2361 to 2366=> "0000000", 2367 => "0100101", 2368 to 2382=> "0000000", 2383 => "0000001", 
    2384 to 2400=> "0000000", 2401 => "0100100", 2402 => "0000000", 2403 => "0000001", 
    2404 to 2407=> "0000000", 2408 => "0000001", 2409 to 2422=> "0000000", 2423 => "0000001", 
    2424 to 2943=> "0000000", 2944 => "0000001", 2945 to 2969=> "0000000", 2970 => "0000001", 
    2971 => "0000000", 2972 => "0000001", 2973 to 2977=> "0000000", 2978 => "0000001", 
    2979 to 2981=> "0000000", 2982 => "0111010", 2983 to 2990=> "0000000", 2991 => "0110100", 
    2992 to 3005=> "0000000", 3006 => "0110111", 3007 => "0000001", 3008 to 3009=> "0000000", 
    3010 => "0000001", 3011 to 3023=> "0000000", 3024 => "1111111", 3025 to 3036=> "0000000", 
    3037 => "0000001", 3038 => "1111111", 3039 to 3040=> "0000000", 3041 => "0000001", 
    3042 to 3064=> "0000000", 3065 => "0000001", 3066 to 3199=> "0000000", 3200 => "0000001", 
    3201 to 3218=> "0000000", 3219 => "0000010", 3220 to 3225=> "0000000", 3226 => "0000001", 
    3227 => "0000000", 3228 => "0100100", 3229 => "0000001", 3230 to 3233=> "0000000", 
    3234 => "0001110", 3235 to 3237=> "0000000", 3238 => "0000001", 3239 to 3246=> "0000000", 
    3247 => "0000001", 3248 to 3255=> "0000000", 3256 => "0000001", 3257 to 3261=> "0000000", 
    3262 => "0000001", 3263 => "0101010", 3264 => "0000001", 3265 => "0000000", 
    3266 => "0000001", 3267 to 3272=> "0000000", 3273 => "0000001", 3274 to 3278=> "0000000", 
    3279 => "0000001", 3280 to 3292=> "0000000", 3293 => "0000001", 3294 to 3296=> "0000000", 
    3297 => "0101001", 3298 => "0000000", 3299 => "0000010", 3300 to 3303=> "0000000", 
    3304 => "0000010", 3305 to 3318=> "0000000", 3319 => "0000010", 3320 => "0000000", 
    3321 => "0000001", 3322 to 3587=> "0000000", 3588 => "0101100", 3589 to 3612=> "0000000", 
    3613 => "1111111", 3614 to 3617=> "0000000", 3618 => "0000001", 3619 to 3647=> "0000000", 
    3648 => "0000001", 3649 to 3663=> "0000000", 3664 => "0111000", 3665 to 3670=> "0000000", 
    3671 => "0000010", 3672 to 3676=> "0000000", 3677 => "1111111", 3678 => "0111010", 
    3679 to 3680=> "0000000", 3681 => "0000001", 3682 => "0000000", 3683 => "0000001", 
    3684 to 3692=> "0000000", 3693 => "0000100", 3694 to 4095=> "0000000" );


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

entity Conv1DMac_new_1_wThq is
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

architecture arch of Conv1DMac_new_1_wThq is
    component Conv1DMac_new_1_wThq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_1_wThq_rom_U :  component Conv1DMac_new_1_wThq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

