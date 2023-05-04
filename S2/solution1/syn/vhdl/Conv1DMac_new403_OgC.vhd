-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new403_OgC_rom is 
    generic(
             DWIDTH     : integer := 4; 
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


architecture rtl of Conv1DMac_new403_OgC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 512=> "0000", 513 => "0001", 514 to 518=> "0000", 519 => "1111", 520 to 523=> "0000", 
    524 => "0001", 525 to 528=> "0000", 529 => "0011", 530 => "0010", 531 => "1111", 
    532 to 533=> "0000", 534 => "0001", 535 => "0010", 536 to 537=> "0000", 538 => "0001", 
    539 to 541=> "0000", 542 => "1111", 543 to 544=> "0000", 545 => "0010", 546 => "0000", 
    547 => "1110", 548 => "0000", 549 to 550=> "1110", 551 to 553=> "0000", 554 => "1110", 
    555 => "0010", 556 => "0001", 557 => "1110", 558 to 565=> "0000", 566 => "0001", 
    567 => "0000", 568 => "1111", 569 to 571=> "0000", 572 => "0010", 573 to 577=> "0000", 
    578 => "1111", 579 to 583=> "0000", 584 => "1110", 585 => "1111", 586 to 588=> "0000", 
    589 => "0010", 590 to 591=> "0000", 592 => "0010", 593 to 594=> "0000", 595 => "0011", 
    596 => "0000", 597 => "0001", 598 to 599=> "0000", 600 => "0001", 601 to 603=> "0000", 
    604 => "0011", 605 to 606=> "0000", 607 => "0001", 608 => "1111", 609 to 610=> "0000", 
    611 => "0010", 612 to 613=> "0000", 614 => "0010", 615 => "0000", 616 => "0010", 
    617 to 629=> "0000", 630 => "1111", 631 => "1110", 632 => "0000", 633 => "1111", 
    634 to 635=> "0000", 636 => "1111", 637 to 1407=> "0000", 1408 => "0010", 1409 => "0100", 
    1410 => "1110", 1411 to 1414=> "0000", 1415 => "1100", 1416 => "0011", 1417 => "0000", 
    1418 to 1420=> "1111", 1421 => "0010", 1422 to 1423=> "0000", 1424 => "1110", 1425 to 1426=> "1111", 
    1427 => "0010", 1428 to 1429=> "0000", 1430 => "0011", 1431 => "0001", 1432 to 1433=> "0000", 
    1434 => "0011", 1435 to 1437=> "0000", 1438 => "1110", 1439 => "0000", 1440 => "0011", 
    1441 to 1442=> "1111", 1443 to 1444=> "0000", 1445 => "1110", 1446 => "0001", 1447 to 1450=> "0000", 
    1451 to 1453=> "0010", 1454 to 1456=> "0000", 1457 => "0100", 1458 to 1460=> "0000", 1461 => "0010", 
    1462 => "0001", 1463 => "0000", 1464 => "1111", 1465 to 1466=> "0000", 1467 => "0001", 
    1468 to 1473=> "0000", 1474 => "1111", 1475 to 1479=> "0000", 1480 => "0011", 1481 => "0001", 
    1482 => "0011", 1483 to 1484=> "0000", 1485 to 1486=> "1101", 1487 => "0000", 1488 => "1111", 
    1489 => "0000", 1490 => "1101", 1491 to 1492=> "0000", 1493 => "1110", 1494 to 1495=> "0000", 
    1496 => "1101", 1497 => "0000", 1498 => "0010", 1499 => "0000", 1500 => "1111", 
    1501 to 1502=> "0000", 1503 => "0011", 1504 => "0001", 1505 to 1506=> "0000", 1507 => "0001", 
    1508 => "0000", 1509 => "0010", 1510 => "1110", 1511 => "1111", 1512 to 1515=> "0000", 
    1516 => "1110", 1517 => "0000", 1518 => "0011", 1519 to 1525=> "0000", 1526 => "1111", 
    1527 => "0001", 1528 => "0000", 1529 => "1101", 1530 to 1531=> "0000", 1532 => "1111", 
    1533 => "0000", 1534 => "0001", 1535 to 1919=> "0000", 1920 => "1101", 1921 => "0011", 
    1922 => "1110", 1923 to 1926=> "0000", 1927 => "1110", 1928 => "0100", 1929 => "0000", 
    1930 => "1111", 1931 => "0001", 1932 => "1011", 1933 => "1100", 1934 to 1935=> "0000", 
    1936 => "0001", 1937 to 1938=> "0000", 1939 => "0010", 1940 to 1941=> "0000", 1942 => "1111", 
    1943 => "1110", 1944 to 1945=> "0000", 1946 => "0011", 1947 to 1949=> "0000", 1950 => "0011", 
    1951 => "0000", 1952 => "0001", 1953 => "0011", 1954 => "1100", 1955 => "0001", 
    1956 => "0000", 1957 => "0001", 1958 => "1101", 1959 to 1961=> "0000", 1962 => "1111", 
    1963 => "1101", 1964 => "0010", 1965 => "1101", 1966 to 1968=> "0000", 1969 => "0001", 
    1970 to 1972=> "0000", 1973 => "1111", 1974 => "0001", 1975 => "0000", 1976 => "1011", 
    1977 => "0000", 1978 => "0111", 1979 to 1980=> "0010", 1981 to 1985=> "0000", 1986 => "0011", 
    1987 to 1992=> "0000", 1993 => "1111", 1994 to 1997=> "0000", 1998 => "1111", 1999 => "0000", 
    2000 => "1101", 2001 to 2002=> "0000", 2003 => "1111", 2004 => "0000", 2005 => "1101", 
    2006 to 2007=> "0000", 2008 => "0010", 2009 => "0000", 2010 => "0001", 2011 => "0000", 
    2012 => "1110", 2013 to 2014=> "0000", 2015 => "1111", 2016 to 2018=> "0000", 2019 => "0011", 
    2020 => "0000", 2021 => "1100", 2022 => "0000", 2023 => "0010", 2024 => "1101", 
    2025 to 2027=> "0000", 2028 => "0011", 2029 to 2037=> "0000", 2038 => "0010", 2039 => "1100", 
    2040 => "0000", 2041 => "1111", 2042 to 2043=> "0000", 2044 => "1111", 2045 => "0000", 
    2046 => "0110", 2047 to 2431=> "0000", 2432 => "1111", 2433 => "0001", 2434 => "1110", 
    2435 to 2438=> "0000", 2439 => "1111", 2440 => "0010", 2441 => "0000", 2442 => "0011", 
    2443 => "0000", 2444 to 2445=> "0001", 2446 to 2447=> "0000", 2448 => "1101", 2449 => "0000", 
    2450 => "1101", 2451 => "1111", 2452 to 2454=> "0000", 2455 => "1111", 2456 to 2457=> "0000", 
    2458 => "0011", 2459 to 2461=> "0000", 2462 => "0001", 2463 to 2464=> "0000", 2465 => "0011", 
    2466 => "1111", 2467 => "0011", 2468 => "0000", 2469 => "0001", 2470 => "1111", 
    2471 to 2473=> "0000", 2474 => "1110", 2475 => "0100", 2476 => "1111", 2477 to 2480=> "0000", 
    2481 => "1111", 2482 to 2484=> "0000", 2485 => "1110", 2486 => "0011", 2487 => "0000", 
    2488 => "0011", 2489 => "0000", 2490 => "0001", 2491 => "0101", 2492 => "0001", 
    2493 to 2503=> "0000", 2504 to 2505=> "1111", 2506 => "0010", 2507 to 2508=> "0000", 2509 => "0001", 
    2510 => "0011", 2511 => "0000", 2512 => "1110", 2513 => "0000", 2514 => "1111", 
    2515 => "1110", 2516 => "0000", 2517 => "1110", 2518 to 2519=> "0000", 2520 => "0001", 
    2521 => "0000", 2522 => "1110", 2523 => "0000", 2524 => "1110", 2525 to 2526=> "0000", 
    2527 => "0010", 2528 => "0011", 2529 to 2532=> "0000", 2533 => "0001", 2534 => "1101", 
    2535 => "1110", 2536 => "1111", 2537 to 2539=> "0000", 2540 => "0001", 2541 => "0000", 
    2542 => "1111", 2543 to 2549=> "0000", 2550 => "0011", 2551 => "1110", 2552 to 2555=> "0000", 
    2556 => "0001", 2557 => "0000", 2558 => "0001", 2559 to 3071=> "0000", 3072 => "1111", 
    3073 => "0001", 3074 to 3078=> "0000", 3079 => "1111", 3080 to 3083=> "0000", 3084 => "0001", 
    3085 to 3088=> "0000", 3089 => "0011", 3090 => "0010", 3091 => "1110", 3092 to 3093=> "0000", 
    3094 => "0001", 3095 => "0010", 3096 to 3097=> "0000", 3098 => "0001", 3099 to 3101=> "0000", 
    3102 => "1111", 3103 to 3104=> "0000", 3105 => "0010", 3106 => "0000", 3107 => "1110", 
    3108 => "0000", 3109 => "1110", 3110 => "1101", 3111 to 3113=> "0000", 3114 => "1110", 
    3115 => "0010", 3116 => "0001", 3117 => "1101", 3118 to 3125=> "0000", 3126 => "0001", 
    3127 => "0000", 3128 => "1111", 3129 => "0000", 3130 => "0001", 3131 => "1111", 
    3132 => "0011", 3133 to 3137=> "0000", 3138 => "1111", 3139 to 3143=> "0000", 3144 => "1110", 
    3145 => "1111", 3146 to 3148=> "0000", 3149 => "0010", 3150 to 3151=> "0000", 3152 => "0010", 
    3153 to 3154=> "0000", 3155 => "0011", 3156 => "0000", 3157 => "0001", 3158 to 3159=> "0000", 
    3160 => "0001", 3161 to 3163=> "0000", 3164 => "0011", 3165 to 3166=> "0000", 3167 => "0001", 
    3168 => "1111", 3169 to 3170=> "0000", 3171 => "0011", 3172 to 3173=> "0000", 3174 => "0010", 
    3175 => "0000", 3176 => "0011", 3177 to 3189=> "0000", 3190 => "1111", 3191 => "1110", 
    3192 => "0000", 3193 => "1111", 3194 to 3195=> "0000", 3196 => "1111", 3197 to 4095=> "0000" );


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

entity Conv1DMac_new403_OgC is
    generic (
        DataWidth : INTEGER := 4;
        AddressRange : INTEGER := 4096;
        AddressWidth : INTEGER := 12);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Conv1DMac_new403_OgC is
    component Conv1DMac_new403_OgC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new403_OgC_rom_U :  component Conv1DMac_new403_OgC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

