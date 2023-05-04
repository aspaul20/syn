-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new_weiIfE_rom is 
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


architecture rtl of Conv1DMac_new_weiIfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 127=> "0000000", 128 => "0001000", 129 to 130=> "0000000", 131 => "0100000", 
    132 => "1111110", 133 => "0000101", 134 to 135=> "0000000", 136 => "0001010", 
    137 => "0000000", 138 => "1111100", 139 => "0000000", 140 => "1111110", 
    141 => "1011111", 142 to 144=> "0000000", 145 => "1111111", 146 => "0000000", 
    147 => "1111111", 148 => "0000000", 149 => "1111110", 150 => "0000000", 
    151 => "1111110", 152 => "1110101", 153 => "1111101", 154 => "0000110", 
    155 => "0000000", 156 => "1110100", 157 => "0000000", 158 => "0000101", 
    159 => "1110111", 160 => "0011001", 161 to 163=> "0000000", 164 => "0001001", 
    165 to 167=> "0000000", 168 to 169=> "1111110", 170 => "1111001", 171 => "1101001", 
    172 to 173=> "0000000", 174 => "1110001", 175 => "0000000", 176 => "1011101", 
    177 to 179=> "0000000", 180 => "1111101", 181 => "0011001", 182 => "0000001", 
    183 => "1110100", 184 => "1111101", 185 => "0000000", 186 => "0001011", 
    187 to 190=> "0000000", 191 => "0000110", 192 => "1101110", 193 => "1101000", 
    194 => "1110110", 195 to 196=> "0000000", 197 => "1111111", 198 to 200=> "0000000", 
    201 => "1111101", 202 => "0001011", 203 => "1110101", 204 => "1111111", 
    205 to 206=> "0000000", 207 => "1111110", 208 => "1110001", 209 => "1111111", 
    210 => "0000100", 211 to 212=> "0000000", 213 => "1110111", 214 => "0100111", 
    215 => "1111111", 216 => "0001010", 217 => "1111101", 218 => "0000000", 
    219 => "0011000", 220 to 221=> "0000000", 222 => "0001010", 223 => "0000000", 
    224 => "1111000", 225 => "0000000", 226 => "1011110", 227 to 228=> "0000000", 
    229 => "0000010", 230 => "1111000", 231 => "0001001", 232 => "0000000", 
    233 => "0000101", 234 => "1111011", 235 => "1111100", 236 => "0000000", 
    237 => "0001011", 238 => "1111010", 239 => "0001001", 240 => "0000000", 
    241 => "1101111", 242 => "0010110", 243 to 244=> "0000000", 245 => "1110001", 
    246 => "0000000", 247 => "0011110", 248 => "1111111", 249 => "0001101", 
    250 to 251=> "0000000", 252 => "0001000", 253 to 255=> "0000000", 256 => "1111110", 
    257 to 258=> "0000000", 259 => "0001001", 260 => "1111101", 261 => "0000100", 
    262 to 263=> "0000000", 264 => "0001001", 265 => "0000000", 266 => "1111110", 
    267 => "0000000", 268 => "1111101", 269 => "1101100", 270 to 272=> "0000000", 
    273 => "1111111", 274 => "0000000", 275 => "1111101", 276 to 278=> "0000000", 
    279 => "1111111", 280 to 281=> "1111101", 282 => "0001001", 283 => "0000000", 
    284 => "1111110", 285 => "0000000", 286 => "0000100", 287 => "1110101", 
    288 => "0000101", 289 to 291=> "0000000", 292 => "0000101", 293 to 295=> "0000000", 
    296 => "1111100", 297 => "1111101", 298 => "1111110", 299 => "1110100", 
    300 to 301=> "0000000", 302 to 303=> "1111101", 304 => "1101101", 305 to 307=> "0000000", 
    308 => "0001100", 309 => "0000011", 310 => "0000100", 311 => "1111110", 
    312 to 313=> "0000000", 314 => "1111110", 315 to 318=> "0000000", 319 => "1111111", 
    320 => "0001010", 321 => "0010000", 322 => "1111110", 323 to 328=> "0000000", 
    329 => "1111101", 330 to 331=> "1111110", 332 => "1111111", 333 to 334=> "0000000", 
    335 to 336=> "1111101", 337 to 338=> "1111111", 339 to 340=> "0000000", 341 => "1111110", 
    342 => "1111010", 343 => "1111101", 344 => "0000110", 345 => "1111110", 
    346 => "0000000", 347 => "0000110", 348 to 349=> "0000000", 350 => "0001000", 
    351 => "1111101", 352 => "1111111", 353 => "0000000", 354 => "1101110", 
    355 to 356=> "0000000", 357 => "1111110", 358 => "1111111", 359 => "1111110", 
    360 => "0000000", 361 => "0000101", 362 => "1111100", 363 => "1111101", 
    364 => "0000000", 365 to 366=> "1111110", 367 => "1111111", 368 => "0000000", 
    369 => "1111111", 370 => "0011100", 371 => "1111110", 372 => "0000000", 
    373 => "0000111", 374 => "0000000", 375 => "0001101", 376 => "1111101", 
    377 => "0001001", 378 to 379=> "0000000", 380 => "0001000", 381 to 511=> "0000000", 
    512 => "0000001", 513 to 514=> "0000000", 515 => "0011101", 516 => "1111001", 
    517 => "1111110", 518 to 519=> "0000000", 520 => "1111101", 521 => "0000000", 
    522 => "0001000", 523 => "0000000", 524 => "1111010", 525 => "0001111", 
    526 to 528=> "0000000", 529 => "1111110", 530 => "0000000", 531 => "1110111", 
    532 => "0000000", 533 => "1111011", 534 => "0000000", 535 => "1111111", 
    536 => "0000110", 537 => "1111001", 538 => "0011000", 539 => "0000000", 
    540 => "0000110", 541 => "0000000", 542 => "1111101", 543 => "0001001", 
    544 => "1110100", 545 to 547=> "0000000", 548 => "1111110", 549 to 551=> "0000000", 
    552 to 553=> "1111000", 554 => "0000101", 555 => "0001000", 556 to 557=> "0000000", 
    558 => "0000111", 559 => "1110111", 560 => "0010000", 561 to 563=> "0000000", 
    564 => "0000001", 565 to 566=> "0000101", 567 => "0000110", 568 => "0000001", 
    569 => "0000000", 570 => "0000010", 571 to 576=> "0000000", 577 => "1111101", 
    578 => "0000110", 579 to 584=> "0000000", 585 => "1111000", 586 => "0000011", 
    587 => "0000110", 588 to 590=> "0000000", 591 => "1111000", 592 => "0001000", 
    593 => "1111100", 594 => "0000001", 595 to 596=> "0000000", 597 => "0000101", 
    598 => "0001101", 599 => "1110111", 600 => "1111101", 601 => "1111001", 
    602 => "0000000", 603 => "0001110", 604 to 605=> "0000000", 606 => "1111101", 
    607 => "1110111", 608 => "0000100", 609 => "0000000", 610 => "0001111", 
    611 to 612=> "0000000", 613 => "1110111", 614 => "0000101", 615 => "0000001", 
    616 => "0000000", 617 => "1110111", 618 => "1111100", 619 => "1111011", 
    620 => "0000000", 621 => "0000011", 622 => "0000100", 623 => "0000001", 
    624 => "0000000", 625 => "0001100", 626 => "0000101", 627 => "1111011", 
    628 => "0000000", 629 => "1111010", 630 => "0000000", 631 => "1111001", 
    632 => "1111000", 633 => "1111101", 634 to 635=> "0000000", 636 => "1111101", 
    637 to 639=> "0000000", 640 => "0001011", 641 to 642=> "0000000", 643 => "1111100", 
    644 => "0000011", 645 => "1111100", 646 to 647=> "0000000", 648 => "1111001", 
    649 => "0000000", 650 => "1111010", 651 => "0000000", 652 => "0000010", 
    653 => "0000111", 654 to 656=> "0000000", 657 => "0000001", 658 => "0000000", 
    659 => "0000100", 660 => "0000000", 661 => "1111110", 662 => "0000000", 
    663 => "0000001", 664 => "1111000", 665 => "0000000", 666 => "1111111", 
    667 => "0000000", 668 => "1111000", 669 => "0000000", 670 => "1111011", 
    671 => "0000001", 672 to 675=> "0000000", 676 => "1111101", 677 to 679=> "0000000", 
    680 => "0000101", 681 => "0000100", 682 => "1111010", 683 => "0000101", 
    684 to 685=> "0000000", 686 => "1110101", 687 to 688=> "0000101", 689 to 691=> "0000000", 
    692 => "1111110", 693 => "1110111", 694 => "0000010", 695 => "1110111", 
    696 => "1111111", 697 => "0000000", 698 => "0010000", 699 to 702=> "0000000", 
    703 => "0001000", 704 => "0000111", 705 => "1111101", 706 => "1111001", 
    707 to 712=> "0000000", 713 => "0000100", 714 => "0010001", 715 => "1110111", 
    716 to 718=> "0000000", 719 => "0000011", 720 => "1110101", 721 => "0000000", 
    722 => "0000110", 723 to 724=> "0000000", 725 => "1111001", 726 => "1110110", 
    727 => "0000101", 728 => "1111010", 729 => "0000010", 730 => "0000000", 
    731 => "1111010", 732 to 733=> "0000000", 734 => "1111010", 735 => "0000101", 
    736 => "1111001", 737 => "0000000", 738 => "0000110", 739 to 740=> "0000000", 
    741 => "0000111", 742 => "1111010", 743 => "0001110", 744 => "0000000", 
    745 => "0000101", 746 to 747=> "0000010", 748 => "0000000", 749 => "0010001", 
    750 => "1111011", 751 => "0001101", 752 => "0000000", 753 => "0011010", 
    754 => "1111110", 755 => "0000011", 756 => "0000000", 757 => "0000010", 
    758 => "0000000", 759 => "1111111", 760 => "0000101", 761 => "1111010", 
    762 to 763=> "0000000", 764 => "1111011", 765 to 1023=> "0000000", 1024 => "0010011", 
    1025 to 1026=> "0000000", 1027 => "0001000", 1028 => "1111101", 1029 => "0001011", 
    1030 to 1031=> "0000000", 1032 => "0010100", 1033 => "0000000", 1034 => "0000011", 
    1035 => "0000000", 1036 => "1111101", 1037 => "1111011", 1038 to 1040=> "0000000", 
    1041 => "1111111", 1042 => "0000000", 1043 => "1111101", 1044 => "0000000", 
    1045 => "0000010", 1046 => "0000000", 1047 => "0000100", 1048 => "0000001", 
    1049 => "1111100", 1050 => "0010001", 1051 => "0000000", 1052 => "0000001", 
    1053 => "0000000", 1054 => "0001100", 1055 => "0001011", 1056 => "1111010", 
    1057 to 1059=> "0000000", 1060 => "0001001", 1061 to 1063=> "0000000", 1064 => "1111100", 
    1065 => "1111101", 1066 => "0000001", 1067 => "1111111", 1068 to 1069=> "0000000", 
    1070 => "0000001", 1071 => "1111101", 1072 => "1111010", 1073 to 1075=> "0000000", 
    1076 => "0001000", 1077 => "0001101", 1078 => "0000010", 1079 => "0000000", 
    1080 => "0000011", 1081 => "0000000", 1082 => "0010100", 1083 to 1086=> "0000000", 
    1087 => "0001011", 1088 => "1110111", 1089 => "1101101", 1090 => "0000001", 
    1091 to 1096=> "0000000", 1097 => "1111100", 1098 => "0010011", 1099 to 1100=> "0000001", 
    1101 to 1102=> "0000000", 1103 => "1111100", 1104 => "0000001", 1105 => "1111111", 
    1106 => "0001001", 1107 => "0000000", 1108 to 1109=> "0000001", 1110 => "1111101", 
    1111 => "1111100", 1112 => "0010010", 1113 => "1111101", 1114 => "0000000", 
    1115 => "0001000", 1116 to 1117=> "0000000", 1118 => "0010101", 1119 => "1111100", 
    1120 to 1121=> "0000000", 1122 => "1111011", 1123 to 1124=> "0000000", 1125 => "1111100", 
    1126 => "0000000", 1127 => "0010011", 1128 => "0000000", 1129 => "0001011", 
    1130 to 1131=> "1111101", 1132 => "0000000", 1133 => "0010101", 1134 => "0000000", 
    1135 => "0010011", 1136 => "0000000", 1137 => "0010001", 1138 => "0000110", 
    1139 => "1111110", 1140 => "0000000", 1141 => "0000100", 1142 => "0000000", 
    1143 => "0001101", 1144 => "1111100", 1145 => "0010100", 1146 to 1147=> "0000000", 
    1148 => "0001111", 1149 to 1279=> "0000000", 1280 => "0001001", 1281 to 1282=> "0000000", 
    1283 => "1111010", 1284 to 1285=> "0000110", 1286 to 1287=> "0000000", 1288 => "0001011", 
    1289 => "0000000", 1290 => "1111010", 1291 => "0000000", 1292 => "0000101", 
    1293 => "0000100", 1294 to 1296=> "0000000", 1297 => "0000001", 1298 => "0000000", 
    1299 => "0001000", 1300 => "0000000", 1301 => "0000100", 1302 => "0000000", 
    1303 => "0000100", 1304 => "1110111", 1305 => "0000101", 1306 => "1111110", 
    1307 => "0000000", 1308 => "1110111", 1309 => "0000000", 1310 => "0001000", 
    1311 => "0000001", 1312 => "0000110", 1313 to 1315=> "0000000", 1316 => "0000011", 
    1317 to 1319=> "0000000", 1320 to 1321=> "0000111", 1322 => "1111000", 1323 => "0000011", 
    1324 to 1325=> "0000000", 1326 => "1110011", 1327 => "0001001", 1328 => "0000100", 
    1329 to 1331=> "0000000", 1332 => "0000010", 1333 => "1111011", 1334 => "0000101", 
    1335 => "1110101", 1336 => "1111111", 1337 => "0000000", 1338 => "0001001", 
    1339 to 1342=> "0000000", 1343 => "0000101", 1344 => "0011001", 1345 => "0000101", 
    1346 => "1110111", 1347 to 1352=> "0000000", 1353 => "0000111", 1354 => "0001000", 
    1355 => "1110110", 1356 to 1358=> "0000000", 1359 => "0000111", 1360 => "1110010", 
    1361 => "0000011", 1362 => "0000100", 1363 to 1364=> "0000000", 1365 => "1111000", 
    1366 => "1110100", 1367 => "0001001", 1368 => "0001011", 1369 => "0000110", 
    1370 => "0000000", 1371 => "0000011", 1372 to 1373=> "0000000", 1374 => "0001100", 
    1375 => "0001001", 1376 => "1111001", 1377 => "0000000", 1378 => "0000100", 
    1379 to 1380=> "0000000", 1381 => "0001010", 1382 => "1111000", 1383 => "0001001", 
    1384 => "0000000", 1385 => "0000011", 1386 => "0000010", 1387 => "0000101", 
    1388 => "0000000", 1389 => "0001001", 1390 => "1111010", 1391 => "0001001", 
    1392 => "0000000", 1393 => "1111011", 1394 => "1111111", 1395 => "0000101", 
    1396 => "0000000", 1397 => "1111100", 1398 => "0000000", 1399 to 1400=> "0001000", 
    1401 => "0001011", 1402 to 1403=> "0000000", 1404 => "0000111", 1405 to 1791=> "0000000", 
    1792 => "0010000", 1793 to 1794=> "0000000", 1795 => "0001100", 1796 => "0000011", 
    1797 => "0001001", 1798 to 1799=> "0000000", 1800 => "0010000", 1801 => "0000000", 
    1802 => "1111100", 1803 => "0000000", 1804 => "0000011", 1805 => "1111110", 
    1806 to 1808=> "0000000", 1809 => "0000001", 1810 => "0000000", 1811 => "0000100", 
    1812 => "0000000", 1813 => "0000100", 1814 => "0000000", 1815 => "0000101", 
    1816 => "0000000", 1817 to 1818=> "0000011", 1819 to 1821=> "0000000", 1822 => "0001010", 
    1823 => "1111110", 1824 => "1110101", 1825 to 1827=> "0000000", 1828 => "0000110", 
    1829 to 1831=> "0000000", 1832 => "0000011", 1833 => "0000100", 1834 => "1111111", 
    1835 => "1111011", 1836 to 1837=> "0000000", 1838 => "1111111", 1839 => "0000101", 
    1840 => "1111101", 1841 to 1843=> "0000000", 1844 => "0001001", 1845 => "0000101", 
    1846 => "0001001", 1847 => "1111111", 1848 => "0000010", 1849 => "0000000", 
    1850 => "0010000", 1851 to 1854=> "0000000", 1855 => "0001010", 1856 => "0000011", 
    1857 => "1111011", 1858 => "1111111", 1859 to 1864=> "0000000", 1865 => "0000011", 
    1866 => "0001110", 1867 => "1111111", 1868 => "0000001", 1869 to 1870=> "0000000", 
    1871 => "0000011", 1872 => "1111111", 1873 => "0000010", 1874 => "0000111", 
    1875 => "0000000", 1876 => "0000001", 1877 => "1111111", 1878 => "1111100", 
    1879 => "0000100", 1880 => "0001110", 1881 => "0000011", 1882 => "0000000", 
    1883 => "0000010", 1884 to 1885=> "0000000", 1886 => "0010000", 1887 => "0000100", 
    1888 => "1111111", 1889 => "0000000", 1890 => "1111101", 1891 to 1892=> "0000000", 
    1893 => "0000101", 1894 => "1111111", 1895 => "0010000", 1896 => "0000000", 
    1897 => "0000100", 1898 => "0000010", 1899 => "0000011", 1900 => "0000000", 
    1901 => "0010000", 1902 => "1111111", 1903 => "0010000", 1904 => "0000000", 
    1905 to 1906=> "0000111", 1907 => "0000011", 1908 => "0000000", 1909 => "0000100", 
    1910 to 1911=> "0000000", 1912 => "0000100", 1913 => "0010000", 1914 to 1915=> "0000000", 
    1916 => "0001011", 1917 to 2562=> "0000000", 2563 => "0000100", 2564 => "0001010", 
    2565 => "1111111", 2566 to 2567=> "0000000", 2568 => "1111011", 2569 => "0000000", 
    2570 => "1111111", 2571 => "0000000", 2572 => "0001001", 2573 => "0000010", 
    2574 to 2576=> "0000000", 2577 => "0000011", 2578 => "0000000", 2579 => "0001100", 
    2580 => "0000000", 2581 => "0000101", 2582 => "0000000", 2583 => "0000100", 
    2584 => "0000001", 2585 => "0001011", 2586 => "0001100", 2587 => "0000000", 
    2588 => "0000001", 2589 => "0000000", 2590 => "1111111", 2591 => "0001010", 
    2592 => "0000011", 2593 to 2595=> "0000000", 2596 => "1111100", 2597 to 2599=> "0000000", 
    2600 to 2601=> "0001011", 2602 => "0000000", 2603 => "0000101", 2604 to 2605=> "0000000", 
    2606 => "0000001", 2607 => "0001100", 2608 => "0000001", 2609 to 2611=> "0000000", 
    2612 => "0000011", 2613 => "1110111", 2614 => "0000111", 2615 to 2616=> "0000001", 
    2617 => "0000000", 2618 => "1111110", 2619 to 2623=> "0000000", 2624 => "0000111", 
    2625 => "1110111", 2626 to 2632=> "0000000", 2633 => "0001100", 2634 => "1111101", 
    2635 => "0000001", 2636 to 2638=> "0000000", 2639 => "0001100", 2640 => "0000001", 
    2641 => "0000110", 2642 => "1111111", 2643 => "0000000", 2644 to 2645=> "0000001", 
    2646 => "1111011", 2647 => "0001101", 2648 => "1111101", 2649 => "0001010", 
    2650 => "0000000", 2651 => "1111101", 2652 to 2653=> "0000000", 2654 => "1111100", 
    2655 => "0001100", 2656 => "0000001", 2657 => "0000000", 2658 => "0000010", 
    2659 to 2660=> "0000000", 2661 => "0001010", 2662 => "0000000", 2663 => "1111111", 
    2664 => "0000000", 2665 to 2666=> "0001001", 2667 => "0001010", 2668 => "0000000", 
    2669 => "1111101", 2670 => "0000000", 2671 => "1111111", 2672 => "0000000", 
    2673 => "0010000", 2674 => "0001001", 2675 => "0001000", 2676 => "0000000", 
    2677 => "0000111", 2678 => "0000000", 2679 => "0000110", 2680 => "0001100", 
    2681 => "1111100", 2682 to 2683=> "0000000", 2684 => "1111101", 2685 to 2943=> "0000000", 
    2944 => "0001010", 2945 to 2946=> "0000000", 2947 => "1111110", 2948 => "0000110", 
    2949 => "0000111", 2950 to 2951=> "0000000", 2952 => "0001100", 2953 => "0000000", 
    2954 => "1111111", 2955 => "0000000", 2956 => "0000101", 2957 => "0001010", 
    2958 to 2960=> "0000000", 2961 => "0000010", 2962 => "0000000", 2963 => "0000111", 
    2964 => "0000000", 2965 => "0000101", 2966 => "0000000", 2967 => "0000110", 
    2968 => "0000000", 2969 => "0000110", 2970 => "1110101", 2971 => "0000000", 
    2972 => "0000001", 2973 => "0000000", 2974 => "0001000", 2975 => "0001011", 
    2976 => "0010000", 2977 to 2979=> "0000000", 2980 => "0000111", 2981 to 2983=> "0000000", 
    2984 to 2985=> "0000111", 2986 => "1111110", 2987 => "0000111", 2988 to 2989=> "0000000", 
    2990 => "1111111", 2991 => "0001000", 2992 => "0001010", 2993 to 2996=> "0000000", 
    2997 => "0001000", 2998 => "0000010", 2999 => "1111111", 3000 => "0000001", 
    3001 => "0000000", 3002 => "0001001", 3003 to 3006=> "0000000", 3007 => "0000110", 
    3008 => "0001110", 3009 => "0000101", 3010 => "1111111", 3011 to 3016=> "0000000", 
    3017 to 3018=> "0000111", 3019 => "0000000", 3020 => "0000001", 3021 to 3022=> "0000000", 
    3023 => "0000111", 3024 => "1111111", 3025 => "0000011", 3026 => "0000100", 
    3027 => "0000000", 3028 => "0000001", 3029 => "0000000", 3030 => "1111101", 
    3031 => "0000111", 3032 => "0001011", 3033 => "0000110", 3034 to 3037=> "0000000", 
    3038 => "0001101", 3039 => "0000111", 3040 => "1111111", 3041 => "0000000", 
    3042 => "0001010", 3043 to 3044=> "0000000", 3045 => "0000111", 3046 => "1111111", 
    3047 => "0001001", 3048 => "0000000", 3049 => "0010000", 3050 => "0000101", 
    3051 => "0000110", 3052 => "0000000", 3053 => "0001001", 3054 => "1111111", 
    3055 => "0001001", 3056 => "0000000", 3057 => "0000011", 3058 => "1111011", 
    3059 => "0000101", 3060 => "0000000", 3061 => "1111100", 3062 => "0000000", 
    3063 => "0001001", 3064 => "0000111", 3065 => "0001101", 3066 to 3067=> "0000000", 
    3068 => "0001001", 3069 to 3071=> "0000000", 3072 => "0001110", 3073 to 3074=> "0000000", 
    3075 => "0001110", 3076 => "0001000", 3077 to 3079=> "0000000", 3080 => "1111111", 
    3081 => "0000000", 3082 => "1111110", 3083 => "0000000", 3084 => "0000110", 
    3085 => "0000011", 3086 to 3088=> "0000000", 3089 => "0000010", 3090 => "0000000", 
    3091 => "0001000", 3092 => "0000000", 3093 => "0000011", 3094 => "0000000", 
    3095 => "0000110", 3096 => "0000010", 3097 => "0000111", 3098 => "0000100", 
    3099 => "0000000", 3100 => "0000011", 3101 => "0000000", 3102 => "1111111", 
    3103 => "0000101", 3104 => "1111001", 3105 to 3107=> "0000000", 3108 => "0000001", 
    3109 to 3111=> "0000000", 3112 => "0001001", 3113 => "0001000", 3114 => "0000001", 
    3115 to 3117=> "0000000", 3118 => "0000010", 3119 => "0001001", 3120 => "0000011", 
    3121 to 3123=> "0000000", 3124 => "0001000", 3125 => "1111110", 3126 => "0001011", 
    3127 => "0000010", 3128 => "0000001", 3129 => "0000000", 3130 => "0001111", 
    3131 to 3134=> "0000000", 3135 to 3136=> "0001000", 3137 => "0000111", 3138 => "0000001", 
    3139 to 3144=> "0000000", 3145 => "0001000", 3146 => "0001101", 3147 => "0000010", 
    3148 => "0000001", 3149 to 3150=> "0000000", 3151 => "0001000", 3152 to 3153=> "0000011", 
    3154 => "0000101", 3155 => "0000000", 3156 => "0000010", 3157 => "0000001", 
    3158 => "0001011", 3159 => "0001001", 3160 => "1111111", 3161 => "0000111", 
    3162 => "0000000", 3163 => "1111000", 3164 to 3165=> "0000000", 3166 => "1111111", 
    3167 => "0001001", 3168 => "0000010", 3169 => "0000000", 3170 => "0000011", 
    3171 to 3172=> "0000000", 3173 => "0001000", 3174 => "0000001", 3175 => "0001110", 
    3176 => "0000000", 3177 => "0001101", 3178 => "0001000", 3179 => "0000111", 
    3180 => "0000000", 3181 => "0001111", 3182 => "0000001", 3183 => "0001110", 
    3184 => "0000000", 3185 => "0000011", 3186 => "0001010", 3187 => "0000110", 
    3188 => "0000000", 3189 => "0000011", 3190 => "0000000", 3191 => "0000011", 
    3192 => "0001001", 3193 => "1111110", 3194 to 3195=> "0000000", 3196 => "1111111", 
    3197 to 3199=> "0000000", 3200 => "1111011", 3201 to 3202=> "0000000", 3203 => "1111110", 
    3204 => "1111111", 3205 => "1111101", 3206 to 3207=> "0000000", 3208 => "1111010", 
    3209 => "0000000", 3210 => "0001011", 3211 => "0000000", 3212 => "1111111", 
    3213 => "1111001", 3214 to 3218=> "0000000", 3219 => "1111110", 3220 => "0000000", 
    3221 => "0000001", 3222 => "0000000", 3223 => "0000010", 3224 => "0001111", 
    3225 to 3226=> "0000001", 3227 => "0000000", 3228 => "0001111", 3229 => "0000000", 
    3230 => "1111101", 3231 => "1011111", 3232 => "0001111", 3233 to 3235=> "0000000", 
    3236 => "1111110", 3237 to 3239=> "0000000", 3240 => "1111111", 3241 => "1111110", 
    3242 => "0001011", 3243 => "1110001", 3244 to 3245=> "0000000", 3246 => "0010100", 
    3247 => "1111110", 3248 => "1111001", 3249 to 3251=> "0000000", 3252 => "0001010", 
    3253 => "1111001", 3254 => "0000100", 3255 => "0010000", 3256 => "0000011", 
    3257 => "0000000", 3258 => "1111001", 3259 to 3262=> "0000000", 3263 => "1111101", 
    3264 => "0000101", 3265 => "0001101", 3266 => "0001110", 3267 to 3272=> "0000000", 
    3273 => "1111110", 3274 => "1111000", 3275 => "0010000", 3276 => "0000001", 
    3277 to 3278=> "0000000", 3279 => "1111110", 3280 => "0010100", 3281 => "0000000", 
    3282 => "1111110", 3283 to 3284=> "0000000", 3285 => "0001101", 3286 => "1011110", 
    3287 => "1111110", 3288 => "1111010", 3289 => "1111111", 3290 => "0000000", 
    3291 => "0001000", 3292 to 3293=> "0000000", 3294 => "1111011", 3295 => "1111101", 
    3296 => "0001011", 3297 => "0000000", 3298 => "1111010", 3299 to 3300=> "0000000", 
    3301 => "1111011", 3302 => "0001011", 3303 => "1111010", 3304 => "0000000", 
    3305 => "0001111", 3306 => "0000011", 3307 => "0000001", 3308 => "0000000", 
    3309 => "1111000", 3310 => "0001010", 3311 => "1111010", 3312 => "0000000", 
    3313 => "1111110", 3314 => "1111000", 3315 => "1111111", 3316 => "0000000", 
    3317 => "0000111", 3318 => "0000000", 3319 => "1011110", 3320 => "1111111", 
    3321 => "1111010", 3322 to 3323=> "0000000", 3324 => "1111100", 3325 to 3711=> "0000000", 
    3712 => "0000011", 3713 to 3714=> "0000000", 3715 => "0011001", 3716 => "1110110", 
    3717 => "0000011", 3718 to 3719=> "0000000", 3720 => "0000110", 3721 => "0000000", 
    3722 => "1111010", 3723 => "0000000", 3724 => "1110111", 3725 => "0000101", 
    3726 to 3728=> "0000000", 3729 => "1111101", 3730 => "0000000", 3731 => "1110110", 
    3732 => "0000000", 3733 => "1111010", 3734 => "0000000", 3735 => "1111100", 
    3736 => "1110110", 3737 => "1110100", 3738 => "0010111", 3739 => "0000000", 
    3740 => "1110110", 3741 => "0000000", 3742 => "0000011", 3743 => "0000001", 
    3744 => "0010010", 3745 to 3747=> "0000000", 3748 => "0000101", 3749 to 3751=> "0000000", 
    3752 to 3753=> "1110101", 3754 => "1111010", 3755 => "0001110", 3756 to 3757=> "0000000", 
    3758 => "1110100", 3759 => "1110110", 3760 => "0000101", 3761 to 3763=> "0000000", 
    3764 => "0000100", 3765 => "0001101", 3766 => "0001010", 3767 => "1110101", 
    3768 => "1111111", 3769 => "0000000", 3770 => "0000111", 3771 to 3774=> "0000000", 
    3775 => "0000010", 3776 => "0001110", 3777 => "0001001", 3778 => "1110111", 
    3779 to 3784=> "0000000", 3785 => "1110101", 3786 => "0001001", 3787 => "1110110", 
    3788 => "1111111", 3789 to 3790=> "0000000", 3791 => "1110101", 3792 => "1110011", 
    3793 => "1111010", 3794 => "0000011", 3795 => "0000000", 3796 => "1111111", 
    3797 => "1111000", 3798 => "0001101", 3799 => "1110101", 3800 => "0000110", 
    3801 => "1110110", 3802 => "0000000", 3803 => "0010011", 3804 to 3805=> "0000000", 
    3806 => "0000111", 3807 => "1110110", 3808 => "1111001", 3809 => "0000000", 
    3810 => "0000101", 3811 to 3812=> "0000000", 3813 to 3814=> "1111001", 3815 => "0000101", 
    3816 => "0000000", 3817 => "0001011", 3818 to 3819=> "1110101", 3820 => "0000000", 
    3821 => "0001000", 3822 => "1111010", 3823 => "0000100", 3824 => "0000000", 
    3825 => "0010100", 3826 => "0100000", 3827 => "1111000", 3828 => "0000000", 
    3829 => "0001100", 3830 => "0000000", 3831 => "0000010", 3832 => "1110101", 
    3833 => "0001001", 3834 to 3835=> "0000000", 3836 => "0000101", 3837 to 4095=> "0000000" );


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

entity Conv1DMac_new_weiIfE is
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

architecture arch of Conv1DMac_new_weiIfE is
    component Conv1DMac_new_weiIfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new_weiIfE_rom_U :  component Conv1DMac_new_weiIfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


