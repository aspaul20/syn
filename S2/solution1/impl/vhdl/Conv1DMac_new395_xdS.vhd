-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new395_xdS_rom is 
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


architecture rtl of Conv1DMac_new395_xdS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 644=> "0000000", 645 => "1111111", 646 to 650=> "0000000", 651 => "0000100", 
    652 => "1111111", 653 => "0000000", 654 => "1111111", 655 to 656=> "0000000", 
    657 => "0101100", 658 to 664=> "0000000", 665 => "0000011", 666 to 673=> "0000000", 
    674 => "0000010", 675 => "0000000", 676 => "0000010", 677 to 682=> "0000000", 
    683 to 684=> "0000001", 685 to 689=> "0000000", 690 => "0000001", 691 => "0101110", 
    692 to 695=> "0000000", 696 => "0000001", 697 => "1111111", 698 => "0000010", 
    699 => "0000000", 700 => "0000110", 701 => "0000000", 702 => "1111111", 
    703 to 705=> "0000000", 706 => "0000001", 707 to 708=> "0000000", 709 => "0000001", 
    710 to 714=> "0000000", 715 => "1111110", 716 to 717=> "0000000", 718 => "0000010", 
    719 to 720=> "0000000", 721 => "0001010", 722 to 728=> "0000000", 729 => "1111101", 
    730 => "0000000", 731 => "0000001", 732 to 736=> "0000000", 737 => "1111111", 
    738 to 739=> "0000000", 740 => "1111110", 741 to 753=> "0000000", 754 => "1111111", 
    755 => "0001100", 756 => "0000000", 757 => "0000001", 758 to 760=> "0000000", 
    761 => "0000001", 762 => "1111111", 763 => "0000000", 764 => "0000001", 
    765 => "0000000", 766 => "0000111", 767 to 896=> "0000000", 897 => "0000001", 
    898 to 906=> "0000000", 907 => "1111110", 908 => "0011011", 909 => "0000000", 
    910 => "1111111", 911 to 912=> "0000000", 913 to 914=> "0000001", 915 to 918=> "0000000", 
    919 to 920=> "0000001", 921 => "1111111", 922 => "0000000", 923 => "1111111", 
    924 to 928=> "0000000", 929 => "0011001", 930 => "1111110", 931 => "0000000", 
    932 => "1111111", 933 to 939=> "0000000", 940 => "1111111", 941 to 945=> "0000000", 
    946 => "1111111", 947 => "0000001", 948 => "0000000", 949 => "0000001", 
    950 to 951=> "0000000", 952 => "1111111", 953 => "0011101", 954 to 957=> "0000000", 
    958 => "0000011", 959 to 961=> "0000000", 962 => "1111111", 963 to 964=> "0000000", 
    965 to 966=> "1111111", 967 to 970=> "0000000", 971 => "0000001", 972 => "0000100", 
    973 to 976=> "0000000", 977 => "0000001", 978 to 984=> "0000000", 985 => "0000011", 
    986 to 992=> "0000000", 993 => "0001000", 994 => "0000001", 995 => "0000000", 
    996 => "0000011", 997 to 1002=> "0000000", 1003 => "1111111", 1004 => "0000001", 
    1005 to 1009=> "0000000", 1010 => "0000010", 1011 to 1016=> "0000000", 1017 => "0000010", 
    1018 => "1111111", 1019 to 1021=> "0000000", 1022 => "1111101", 1023 to 1025=> "0000000", 
    1026 => "1111111", 1027 to 1028=> "0000000", 1029 => "1111111", 1030 to 1034=> "0000000", 
    1035 to 1036=> "0000001", 1037 => "0000000", 1038 => "0010010", 1039 to 1050=> "0000000", 
    1051 => "0010110", 1052 to 1056=> "0000000", 1057 => "0000001", 1058 => "0011110", 
    1059 to 1067=> "0000000", 1068 => "0010101", 1069 to 1073=> "0000000", 1074 => "0001101", 
    1075 => "0000001", 1076 to 1079=> "0000000", 1080 to 1081=> "0000001", 1082 to 1085=> "0000000", 
    1086 => "1111111", 1087 to 1088=> "0000000", 1089 => "1111111", 1090 to 1092=> "0000000", 
    1093 => "0000001", 1094 to 1098=> "0000000", 1099 => "0000001", 1100 to 1101=> "0000000", 
    1102 => "0000100", 1103 to 1104=> "0000000", 1105 => "1111111", 1106 to 1112=> "0000000", 
    1113 => "1111111", 1114 => "0000000", 1115 => "0000100", 1116 to 1120=> "0000000", 
    1121 => "1111111", 1122 => "0000110", 1123 => "0000000", 1124 => "1111111", 
    1125 to 1131=> "0000000", 1132 => "0000101", 1133 to 1137=> "0000000", 1138 => "0000010", 
    1139 => "1111111", 1140 to 1143=> "0000000", 1144 => "1111111", 1145 to 1149=> "0000000", 
    1150 => "1111111", 1151 to 1153=> "0000000", 1154 => "0001101", 1155 to 1156=> "0000000", 
    1157 => "0001011", 1158 => "0000110", 1159 to 1162=> "0000000", 1163 => "1111111", 
    1164 to 1176=> "0000000", 1177 => "0001011", 1178 to 1184=> "0000000", 1185 => "1111111", 
    1186 to 1187=> "0000000", 1188 => "0001100", 1189 to 1194=> "0000000", 1195 => "0001101", 
    1196 to 1202=> "0000000", 1203 => "1111111", 1204 to 1207=> "0000000", 1208 => "1111111", 
    1209 => "0000000", 1210 => "0001100", 1211 to 1213=> "0000000", 1214 => "0000110", 
    1215 to 1217=> "0000000", 1218 => "0000011", 1219 to 1220=> "0000000", 1221 => "0000011", 
    1222 => "0000001", 1223 to 1226=> "0000000", 1227 => "0000010", 1228 to 1240=> "0000000", 
    1241 => "0000100", 1242 to 1248=> "0000000", 1249 => "0000001", 1250 to 1251=> "0000000", 
    1252 => "0001000", 1253 to 1258=> "0000000", 1259 => "0000011", 1260 to 1265=> "0000000", 
    1266 => "0000001", 1267 to 1271=> "0000000", 1272 => "0000010", 1273 => "0000000", 
    1274 => "0000001", 1275 to 1277=> "0000000", 1278 => "1111101", 1279 to 1290=> "0000000", 
    1291 => "1111110", 1292 => "0011011", 1293 => "0000000", 1294 => "1111111", 
    1295 to 1296=> "0000000", 1297 to 1298=> "0000001", 1299 to 1304=> "0000000", 1305 => "1111111", 
    1306 => "0000000", 1307 => "1111111", 1308 to 1312=> "0000000", 1313 => "0011001", 
    1314 => "1111110", 1315 => "0000000", 1316 => "1111110", 1317 to 1323=> "0000000", 
    1324 => "1111111", 1325 to 1329=> "0000000", 1330 => "1111111", 1331 => "0000001", 
    1332 to 1335=> "0000000", 1336 => "1111111", 1337 => "0011101", 1338 to 1341=> "0000000", 
    1342 => "0000010", 1343 to 1345=> "0000000", 1346 => "1111111", 1347 to 1348=> "0000000", 
    1349 to 1350=> "1111111", 1351 to 1354=> "0000000", 1355 => "0000001", 1356 => "0000100", 
    1357 to 1360=> "0000000", 1361 => "0000001", 1362 to 1368=> "0000000", 1369 => "0000011", 
    1370 to 1376=> "0000000", 1377 => "0001000", 1378 => "0000001", 1379 => "0000000", 
    1380 => "0000011", 1381 to 1386=> "0000000", 1387 => "1111111", 1388 to 1393=> "0000000", 
    1394 to 1395=> "0000001", 1396 to 1400=> "0000000", 1401 => "0000010", 1402 => "1111111", 
    1403 to 1405=> "0000000", 1406 => "1111101", 1407 to 1536=> "0000000", 1537 => "0000101", 
    1538 to 1546=> "0000000", 1547 => "1111111", 1548 to 1553=> "0000000", 1554 => "0000110", 
    1555 to 1558=> "0000000", 1559 => "0000111", 1560 => "0000110", 1561 to 1581=> "0000000", 
    1582 => "0000011", 1583 to 1588=> "0000000", 1589 => "0001000", 1590 to 1597=> "0000000", 
    1598 => "0000001", 1599 to 1600=> "0000000", 1601 => "0000001", 1602 to 1604=> "0000000", 
    1605 => "1111111", 1606 to 1617=> "0000000", 1618 => "0000001", 1619 to 1622=> "0000000", 
    1623 to 1625=> "0000001", 1626 to 1635=> "0000000", 1636 => "0000010", 1637 to 1645=> "0000000", 
    1646 => "0000001", 1647 to 1652=> "0000000", 1653 => "0000010", 1654 to 1657=> "0000000", 
    1658 => "1111111", 1659 to 1661=> "0000000", 1662 => "1111111", 1663 to 2432=> "0000000", 
    2433 => "0001110", 2434 to 2436=> "0000000", 2437 => "0000001", 2438 to 2442=> "0000000", 
    2443 => "1111110", 2444 => "1111111", 2445 => "0000000", 2446 => "1111111", 
    2447 to 2449=> "0000000", 2450 => "0010000", 2451 to 2454=> "0000000", 2455 => "0010100", 
    2456 => "0010001", 2457 => "1111110", 2458 => "0000000", 2459 => "1111111", 
    2460 to 2464=> "0000000", 2465 to 2466=> "1111111", 2467 => "0000000", 2468 => "1111110", 
    2469 to 2475=> "0000000", 2476 => "1111111", 2477 => "0000000", 2478 => "0001001", 
    2479 to 2481=> "0000000", 2482 to 2483=> "1111111", 2484 => "0000000", 2485 => "0010110", 
    2486 to 2487=> "0000000", 2488 => "0000001", 2489 to 2493=> "0000000", 2494 => "0000011", 
    2495 to 2496=> "0000000", 2497 => "0000011", 2498 to 2500=> "0000000", 2501 => "1111110", 
    2502 to 2509=> "0000000", 2510 => "0000001", 2511 to 2513=> "0000000", 2514 => "0000011", 
    2515 to 2518=> "0000000", 2519 to 2520=> "0000100", 2521 => "0000011", 2522 => "0000000", 
    2523 => "0000001", 2524 to 2529=> "0000000", 2530 => "0000001", 2531 => "0000000", 
    2532 => "0000100", 2533 to 2541=> "0000000", 2542 => "0000010", 2543 to 2545=> "0000000", 
    2546 => "0000001", 2547 to 2548=> "0000000", 2549 => "0000101", 2550 to 2551=> "0000000", 
    2552 => "0000001", 2553 => "0000000", 2554 => "1111111", 2555 to 2557=> "0000000", 
    2558 => "1111110", 2559 to 2816=> "0000000", 2817 => "0010010", 2818 to 2820=> "0000000", 
    2821 => "0000001", 2822 to 2826=> "0000000", 2827 => "1111110", 2828 => "1111111", 
    2829 => "0000000", 2830 => "1111111", 2831 to 2832=> "0000000", 2833 => "1111111", 
    2834 => "0010100", 2835 to 2838=> "0000000", 2839 => "0011001", 2840 => "0010101", 
    2841 => "1111110", 2842 => "0000000", 2843 => "1111111", 2844 to 2848=> "0000000", 
    2849 => "1111111", 2850 => "1111110", 2851 => "0000000", 2852 => "1111110", 
    2853 to 2859=> "0000000", 2860 => "1111111", 2861 => "0000000", 2862 => "0001100", 
    2863 to 2865=> "0000000", 2866 to 2867=> "1111111", 2868 => "0000000", 2869 => "0011011", 
    2870 to 2871=> "0000000", 2872 => "0000001", 2873 to 2877=> "0000000", 2878 => "0000100", 
    2879 to 2880=> "0000000", 2881 => "0000100", 2882 to 2884=> "0000000", 2885 => "1111101", 
    2886 to 2893=> "0000000", 2894 => "0000001", 2895 to 2897=> "0000000", 2898 => "0000100", 
    2899 to 2902=> "0000000", 2903 to 2904=> "0000101", 2905 => "0000100", 2906 => "0000000", 
    2907 => "0000001", 2908 to 2913=> "0000000", 2914 => "0000001", 2915 => "0000000", 
    2916 => "0000101", 2917 to 2922=> "0000000", 2923 => "1111111", 2924 to 2925=> "0000000", 
    2926 => "0000010", 2927 to 2929=> "0000000", 2930 => "0000001", 2931 to 2932=> "0000000", 
    2933 => "0000111", 2934 to 2935=> "0000000", 2936 => "0000001", 2937 => "1111111", 
    2938 => "1111110", 2939 to 2941=> "0000000", 2942 => "1111101", 2943 to 3328=> "0000000", 
    3329 => "0010001", 3330 to 3332=> "0000000", 3333 => "0000001", 3334 to 3338=> "0000000", 
    3339 => "1111110", 3340 to 3341=> "0000000", 3342 => "1111111", 3343 to 3344=> "0000000", 
    3345 => "1111111", 3346 => "0010011", 3347 to 3350=> "0000000", 3351 => "0011000", 
    3352 => "0010101", 3353 => "1111110", 3354 => "0000000", 3355 => "1111111", 
    3356 to 3361=> "0000000", 3362 => "1111111", 3363 => "0000000", 3364 => "1111110", 
    3365 to 3373=> "0000000", 3374 => "0001100", 3375 to 3377=> "0000000", 3378 to 3379=> "1111111", 
    3380 => "0000000", 3381 => "0011011", 3382 to 3383=> "0000000", 3384 to 3386=> "0000001", 
    3387 to 3389=> "0000000", 3390 => "0000100", 3391 to 3392=> "0000000", 3393 => "0000011", 
    3394 => "1111111", 3395 to 3396=> "0000000", 3397 => "1111101", 3398 to 3405=> "0000000", 
    3406 => "0000001", 3407 to 3409=> "0000000", 3410 => "0000100", 3411 to 3414=> "0000000", 
    3415 to 3416=> "0000101", 3417 => "0000011", 3418 => "0000000", 3419 => "0000001", 
    3420 to 3425=> "0000000", 3426 => "0000001", 3427 => "0000000", 3428 => "0000101", 
    3429 to 3434=> "0000000", 3435 => "1111111", 3436 to 3437=> "0000000", 3438 => "0000010", 
    3439 to 3441=> "0000000", 3442 => "0000001", 3443 to 3444=> "0000000", 3445 => "0000111", 
    3446 to 3447=> "0000000", 3448 => "0000001", 3449 => "1111111", 3450 => "1111110", 
    3451 to 3453=> "0000000", 3454 => "1111100", 3455 to 3457=> "0000000", 3458 => "0001100", 
    3459 to 3460=> "0000000", 3461 => "0001011", 3462 => "0000110", 3463 to 3466=> "0000000", 
    3467 => "1111111", 3468 to 3480=> "0000000", 3481 => "0001011", 3482 => "0000000", 
    3483 => "0000001", 3484 to 3489=> "0000000", 3490 => "0000001", 3491 => "0000000", 
    3492 => "0001011", 3493 to 3498=> "0000000", 3499 => "0001100", 3500 => "0000001", 
    3501 to 3506=> "0000000", 3507 => "1111111", 3508 to 3511=> "0000000", 3512 => "1111111", 
    3513 => "0000001", 3514 => "0001100", 3515 to 3517=> "0000000", 3518 => "0000110", 
    3519 to 3521=> "0000000", 3522 => "0000011", 3523 to 3524=> "0000000", 3525 => "0000011", 
    3526 => "0000001", 3527 to 3530=> "0000000", 3531 => "0000010", 3532 to 3544=> "0000000", 
    3545 => "0000100", 3546 to 3555=> "0000000", 3556 => "0001000", 3557 to 3562=> "0000000", 
    3563 => "0000011", 3564 to 3569=> "0000000", 3570 => "0000001", 3571 to 3575=> "0000000", 
    3576 => "0000010", 3577 => "1111111", 3578 => "0000001", 3579 to 3581=> "0000000", 
    3582 => "1111101", 3583 to 3968=> "0000000", 3969 => "0001111", 3970 to 3972=> "0000000", 
    3973 => "0000001", 3974 to 3978=> "0000000", 3979 => "1111110", 3980 to 3981=> "0000000", 
    3982 => "1111111", 3983 to 3985=> "0000000", 3986 => "0010001", 3987 to 3990=> "0000000", 
    3991 => "0010110", 3992 => "0010011", 3993 => "1111110", 3994 => "0000000", 
    3995 => "1111111", 3996 to 4000=> "0000000", 4001 to 4002=> "1111111", 4003 => "0000000", 
    4004 => "1111110", 4005 to 4013=> "0000000", 4014 => "0001010", 4015 to 4017=> "0000000", 
    4018 to 4019=> "1111111", 4020 => "0000000", 4021 => "0011000", 4022 to 4023=> "0000000", 
    4024 => "0000001", 4025 => "0000000", 4026 => "0000001", 4027 to 4029=> "0000000", 
    4030 => "0000100", 4031 to 4032=> "0000000", 4033 => "0000011", 4034 => "1111111", 
    4035 to 4036=> "0000000", 4037 => "1111110", 4038 to 4045=> "0000000", 4046 => "0000001", 
    4047 to 4049=> "0000000", 4050 => "0000100", 4051 to 4054=> "0000000", 4055 => "0000101", 
    4056 => "0000100", 4057 => "0000011", 4058 to 4065=> "0000000", 4066 => "0000001", 
    4067 => "0000000", 4068 => "0000100", 4069 to 4074=> "0000000", 4075 => "1111111", 
    4076 to 4077=> "0000000", 4078 => "0000010", 4079 to 4081=> "0000000", 4082 => "0000001", 
    4083 to 4084=> "0000000", 4085 => "0000110", 4086 to 4087=> "0000000", 4088 => "0000001", 
    4089 => "1111111", 4090 => "1111110", 4091 to 4093=> "0000000", 4094 => "1111101", 
    4095 => "0000000" );


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

entity Conv1DMac_new395_xdS is
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

architecture arch of Conv1DMac_new395_xdS is
    component Conv1DMac_new395_xdS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new395_xdS_rom_U :  component Conv1DMac_new395_xdS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


