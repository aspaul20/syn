-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new411_IfE_rom is 
    generic(
             DWIDTH     : integer := 8; 
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


architecture rtl of Conv1DMac_new411_IfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "00000101", 2 => "00000000", 3 => "11111000", 
    4 => "00000000", 5 => "11110111", 6 => "11111010", 7 => "00000110", 
    8 => "11111111", 9 => "00000000", 10 => "11110110", 11 to 12=> "00000000", 
    13 => "11110010", 14 to 16=> "00000000", 17 => "00001001", 18 => "00000000", 
    19 => "11111111", 20 => "11111000", 21 to 22=> "00000000", 23 => "11110100", 
    24 => "11111000", 25 => "00001011", 26 => "11111100", 27 => "00001000", 
    28 to 30=> "00000000", 31 => "11110011", 32 => "11111000", 33 => "00000101", 
    34 => "00000000", 35 => "11111110", 36 => "00001010", 37 => "00000000", 
    38 => "11110010", 39 => "11110100", 40 => "11110001", 41 => "00001100", 
    42 => "11101010", 43 to 44=> "00001000", 45 => "00000000", 46 => "00001101", 
    47 => "11111110", 48 => "11110000", 49 => "11111000", 50 => "00000011", 
    51 to 52=> "00000000", 53 => "00000001", 54 => "00000000", 55 => "11110101", 
    56 => "11110010", 57 => "00000101", 58 => "11110000", 59 to 60=> "00000000", 
    61 => "11110111", 62 => "11110101", 63 => "11110111", 64 => "00000000", 
    65 => "00000111", 66 => "00000000", 67 => "00010010", 68 => "00000000", 
    69 => "11111010", 70 => "11000011", 71 => "00111011", 72 => "11000111", 
    73 => "00000000", 74 => "00010101", 75 to 76=> "00000000", 77 => "00000011", 
    78 to 80=> "00000000", 81 => "11101101", 82 => "00000000", 83 => "10110011", 
    84 => "11000100", 85 to 86=> "00000000", 87 => "00011000", 88 => "00001111", 
    89 => "11111101", 90 => "11000101", 91 => "00000010", 92 to 93=> "00000000", 
    94 => "00000001", 95 => "00010111", 96 => "11111100", 97 => "00110001", 
    98 => "00000000", 99 => "00000100", 100 => "11101100", 101 => "00000000", 
    102 => "11111010", 103 => "00100000", 104 => "00000001", 105 => "00001111", 
    106 => "00001101", 107 => "00000010", 108 => "11110110", 109 to 110=> "00000000", 
    111 => "00101100", 112 => "11111001", 113 => "00001111", 114 => "00000001", 
    115 to 116=> "00000000", 117 => "11111111", 118 => "00000000", 119 => "00011010", 
    120 => "00001111", 121 => "00000001", 122 => "11111101", 123 to 124=> "00000000", 
    125 => "11111100", 126 => "00010101", 127 => "00010011", 128 => "00000000", 
    129 => "00000101", 130 => "00000000", 131 => "00001001", 132 => "00000000", 
    133 => "00000001", 134 => "00001000", 135 => "11110100", 136 => "00000111", 
    137 => "00000000", 138 => "00001111", 139 to 144=> "00000000", 145 => "11111100", 
    146 => "00000000", 147 => "00000110", 148 => "00001010", 149 to 150=> "00000000", 
    151 => "00010001", 152 => "00001011", 153 => "11111100", 154 => "00001000", 
    155 => "00000010", 156 to 157=> "00000000", 158 => "00000001", 159 => "00010001", 
    160 => "11111100", 161 => "11110111", 162 => "00000000", 163 => "00000011", 
    164 => "11111111", 165 => "00000000", 166 => "00000100", 167 => "00001100", 
    168 => "11111111", 169 => "00000000", 170 => "00000001", 171 => "11111101", 
    172 to 173=> "00000000", 174 => "00000011", 175 => "11110111", 176 => "11111110", 
    177 => "00001000", 178 => "00000010", 179 to 180=> "00000000", 181 => "00000001", 
    182 => "00000000", 183 => "00001011", 184 => "00001001", 185 => "11111111", 
    186 => "11111110", 187 to 188=> "00000000", 189 => "11111100", 190 => "00001111", 
    191 => "00001101", 192 => "00000000", 193 => "00000101", 194 to 196=> "00000000", 
    197 => "11111011", 198 => "11111100", 199 => "00000011", 200 => "00000100", 
    201 => "00000000", 202 => "11111111", 203 to 204=> "00000000", 205 => "00010100", 
    206 to 208=> "00000000", 209 => "11111110", 210 => "00000000", 211 to 212=> "00000011", 
    213 to 216=> "00000000", 217 => "10101000", 218 => "00000101", 219 => "00001101", 
    220 to 221=> "00000000", 222 to 223=> "11111110", 224 => "11101110", 225 => "11111110", 
    226 to 227=> "00000000", 228 => "11111000", 229 => "00000000", 230 => "00101011", 
    231 => "11110110", 232 => "01000001", 233 => "10101111", 234 => "01011110", 
    235 => "10110110", 236 => "11101111", 237 => "00000000", 238 => "00001011", 
    239 => "00000101", 240 => "11100010", 241 => "11111101", 242 => "11111010", 
    243 to 244=> "00000000", 245 => "11111101", 246 => "00000000", 247 => "00000010", 
    248 => "11111101", 249 => "11101110", 250 => "11111110", 251 to 252=> "00000000", 
    253 => "11101010", 254 to 255=> "11111111", 256 => "00000000", 257 => "00000101", 
    258 => "00000000", 259 => "00000110", 260 => "00000000", 261 => "00001001", 
    262 => "00010100", 263 => "11111010", 264 => "00010110", 265 => "00000000", 
    266 => "00001001", 267 to 268=> "00000000", 269 => "00010000", 270 to 272=> "00000000", 
    273 => "11110110", 274 => "00000000", 275 => "00001110", 276 => "00010101", 
    277 to 278=> "00000000", 279 => "00001011", 280 => "00000110", 281 => "00010111", 
    282 => "00010010", 283 => "00000110", 284 to 285=> "00000000", 286 => "00000010", 
    287 => "00001001", 288 => "11111000", 289 => "11111101", 290 => "00000000", 
    291 => "00000010", 292 => "11101101", 293 => "00000000", 294 => "11100000", 
    295 => "00001000", 296 => "00000010", 297 => "00000110", 298 => "11100101", 
    299 => "00011110", 300 => "00000010", 301 => "00000000", 302 => "00000011", 
    303 => "11110000", 304 => "11110011", 305 => "00000101", 306 => "00000111", 
    307 to 310=> "00000000", 311 => "00000110", 312 => "00000100", 313 => "11101111", 
    314 => "11110111", 315 to 316=> "00000000", 317 => "11111000", 318 => "00001001", 
    319 => "00001000", 320 => "00000000", 321 => "00001000", 322 => "00000000", 
    323 => "00000001", 324 => "00000000", 325 => "00010000", 326 => "00011100", 
    327 => "11101010", 328 => "00011001", 329 => "00000000", 330 => "11111111", 
    331 to 332=> "00000000", 333 => "00000110", 334 to 336=> "00000000", 337 => "11111111", 
    338 => "00000000", 339 => "00010100", 340 => "00011100", 341 to 342=> "00000000", 
    343 to 344=> "11111111", 345 => "11111100", 346 => "00010100", 347 => "00001101", 
    348 to 349=> "00000000", 350 => "00000010", 351 => "11111110", 352 => "11110000", 
    353 => "11101101", 354 to 355=> "00000000", 356 => "11111101", 357 => "00000000", 
    358 => "11111100", 359 => "11111101", 360 => "00000001", 361 => "00000000", 
    362 => "11111001", 363 => "00000010", 364 => "00001100", 365 => "00000000", 
    366 => "00001011", 367 => "11101100", 368 => "00000000", 369 => "00000001", 
    370 => "00001000", 371 to 372=> "00000000", 373 => "00000011", 374 to 375=> "00000000", 
    376 to 377=> "11111011", 378 => "11111001", 379 to 380=> "00000000", 381 => "11101110", 
    382 to 383=> "11111111", 384 => "00000000", 385 => "00000010", 386 => "00000000", 
    387 => "00001011", 388 => "00000000", 389 => "00000011", 390 => "00001011", 
    391 => "11110000", 392 => "11111110", 393 => "00000000", 394 => "00010010", 
    395 to 396=> "00000000", 397 => "11110111", 398 to 400=> "00000000", 401 => "11111101", 
    402 => "00000000", 403 => "11111111", 404 => "00001001", 405 to 406=> "00000000", 
    407 => "00010101", 408 => "00001101", 409 => "00000101", 410 => "00000000", 
    411 => "00000111", 412 to 413=> "00000000", 414 => "00000001", 415 => "00010101", 
    416 => "11110101", 417 => "11110100", 418 => "00000000", 419 => "00000100", 
    420 => "11111111", 421 => "00000000", 422 => "00001010", 423 => "00010100", 
    424 => "11110101", 425 => "00001001", 426 => "00000001", 427 => "00000100", 
    428 to 429=> "00000000", 430 => "11111110", 431 => "11111010", 432 => "11111111", 
    433 => "00001100", 434 => "00000110", 435 to 436=> "00000000", 437 => "00000001", 
    438 => "00000000", 439 => "00010001", 440 => "00010000", 441 => "00000111", 
    442 => "00010000", 443 to 444=> "00000000", 445 => "11110011", 446 => "00010011", 
    447 => "00010001", 448 => "00000000", 449 => "00001000", 450 => "00000000", 
    451 => "11111111", 452 => "00000000", 453 => "00000110", 454 => "11011101", 
    455 => "00101011", 456 => "11100001", 457 => "00000000", 458 => "00000100", 
    459 to 460=> "00000000", 461 => "11111110", 462 to 464=> "00000000", 465 => "11111101", 
    466 => "00000000", 467 => "11011000", 468 => "11010110", 469 to 470=> "00000000", 
    471 => "00000100", 472 => "00000010", 473 => "00000011", 474 => "11011100", 
    475 to 477=> "00000000", 478 => "11111111", 479 => "00000010", 480 => "11111110", 
    481 => "00100111", 482 => "00000000", 483 => "00000001", 484 => "11111100", 
    485 => "00000000", 486 => "11111001", 487 => "11110011", 488 => "11111011", 
    489 to 490=> "00000010", 491 => "11110110", 492 => "00000001", 493 => "00000000", 
    494 => "00000110", 495 => "00101100", 496 => "00010000", 497 => "11111101", 
    498 => "11111100", 499 to 500=> "00000000", 501 => "11111111", 502 => "00000000", 
    503 => "11111101", 504 => "00000001", 505 => "11111101", 506 => "00001000", 
    507 to 508=> "00000000", 509 => "11111110", 510 => "00000100", 511 => "00000011", 
    512 => "00000000", 513 => "11110100", 514 to 516=> "00000000", 517 => "00000011", 
    518 => "00100010", 519 => "11100100", 520 => "00010101", 521 => "00000000", 
    522 => "00000011", 523 to 524=> "00000000", 525 => "11111011", 526 to 528=> "00000000", 
    529 => "11111110", 530 => "00000000", 531 to 532=> "00100000", 533 to 534=> "00000000", 
    535 => "00000011", 536 => "00000010", 537 => "11110100", 538 => "00011001", 
    539 => "00000100", 540 to 542=> "00000000", 543 => "00000011", 544 => "11111010", 
    545 => "11100111", 546 to 547=> "00000000", 548 => "11111001", 549 => "00000000", 
    550 => "00001111", 551 => "11111101", 552 => "00000100", 553 => "11111000", 
    554 => "00010010", 555 => "11110111", 556 => "11111011", 557 => "00000000", 
    558 => "11110110", 559 => "11101111", 560 => "00000111", 561 => "00000000", 
    562 => "00000010", 563 to 564=> "00000000", 565 => "00000001", 566 => "00000000", 
    567 => "00000001", 568 => "00000111", 569 => "00000010", 570 => "00010110", 
    571 to 572=> "00000000", 573 => "11111001", 574 => "00000011", 575 => "00000010", 
    576 to 578=> "00000000", 579 => "11111111", 580 => "00000000", 581 => "11110111", 
    582 => "11101000", 583 => "00011001", 584 => "11110111", 585 => "00000000", 
    586 => "11111110", 587 to 588=> "00000000", 589 => "00010011", 590 to 592=> "00000000", 
    593 => "00000101", 594 => "00000000", 595 => "11101001", 596 => "11100111", 
    597 to 598=> "00000000", 599 => "11111101", 600 => "11111110", 601 => "00001010", 
    602 => "11101010", 603 => "00000011", 604 to 606=> "00000000", 607 => "11111110", 
    608 => "11111101", 609 => "00010111", 610 to 611=> "00000000", 612 => "00000111", 
    613 => "00000000", 614 => "11100011", 615 => "00000011", 616 => "11111101", 
    617 => "00000001", 618 => "11110001", 619 => "00010100", 620 => "00000001", 
    621 => "00000000", 622 => "11111111", 623 => "00000111", 624 => "11111100", 
    625 => "00000000", 626 => "11111100", 627 to 628=> "00000000", 629 => "11111111", 
    630 => "00000000", 631 => "00000001", 632 => "00000000", 633 => "11110011", 
    634 => "11111001", 635 to 636=> "00000000", 637 to 638=> "11111101", 639 => "11111110", 
    640 to 706=> "00000000", 707 => "11111011", 708 => "00000000", 709 => "11111001", 
    710 => "00001100", 711 => "11110101", 712 => "00011010", 713 => "00000000", 
    714 => "11110001", 715 to 716=> "00000000", 717 => "00001110", 718 to 720=> "00000000", 
    721 => "00001000", 722 => "00000000", 723 => "00011000", 724 => "00001010", 
    725 to 726=> "00000000", 727 => "11101101", 728 => "11110101", 729 => "00001011", 
    730 => "00010110", 731 => "11110101", 732 to 733=> "00000000", 734 => "11111110", 
    735 => "11110001", 736 => "00010010", 737 => "11110011", 738 => "00000000", 
    739 => "11111101", 740 => "00000111", 741 => "00000000", 742 => "11110001", 
    743 to 744=> "00000010", 745 => "00000000", 746 => "11110001", 747 => "00001101", 
    748 => "11111011", 749 => "00000000", 750 => "00000101", 751 => "11101010", 
    752 => "11101111", 753 => "11111101", 754 => "11111000", 755 to 756=> "00000000", 
    757 => "11111101", 758 => "00000000", 759 => "11111110", 760 => "11110100", 
    761 => "11110011", 762 => "11101000", 763 to 764=> "00000000", 765 => "00010010", 
    766 => "11110000", 767 => "11110010", 768 => "00000000", 769 => "11110101", 
    770 => "00000000", 771 => "11111010", 772 => "00000000", 773 => "11111110", 
    774 => "00000000", 775 => "00001111", 776 => "11110110", 777 => "00000000", 
    778 => "11110111", 779 to 780=> "00000000", 781 => "11110001", 782 to 784=> "00000000", 
    785 => "00001000", 786 => "00000000", 787 => "11110110", 788 => "11110111", 
    789 to 790=> "00000000", 791 => "11110101", 792 => "11111001", 793 => "00001101", 
    794 => "11111000", 795 => "00001001", 796 to 797=> "00000000", 798 => "00000011", 
    799 to 800=> "11110110", 801 => "00001100", 802 => "00000000", 803 => "11111110", 
    804 => "00000111", 805 => "00000000", 806 => "00000111", 807 => "11110111", 
    808 => "11110000", 809 => "00010011", 810 => "11110100", 811 => "00000000", 
    812 => "00001001", 813 => "00000000", 814 => "11110110", 815 => "00001001", 
    816 => "11111100", 817 => "11111011", 818 => "00001100", 819 to 820=> "00000000", 
    821 => "00000001", 822 => "00000000", 823 => "11111001", 824 => "11111010", 
    825 => "00011000", 826 => "00010011", 827 to 828=> "00000000", 829 => "11110011", 
    830 => "11110110", 831 => "11111000", 832 to 896=> "00000000", 897 => "00000010", 
    898 => "00000000", 899 => "00000111", 900 => "00000000", 901 => "00000001", 
    902 to 905=> "00000000", 906 => "00001100", 907 to 908=> "00000000", 909 => "00000001", 
    910 to 912=> "00000000", 913 => "11111100", 914 => "00000000", 915 => "11111110", 
    916 to 918=> "00000000", 919 => "00001110", 920 => "00001000", 921 => "00000001", 
    922 to 926=> "00000000", 927 => "00001101", 928 => "11111111", 929 => "00000001", 
    930 => "00000000", 931 => "00000010", 932 => "11111111", 933 => "00000000", 
    934 => "11111111", 935 => "00001011", 936 => "00000000", 937 => "00000001", 
    938 => "11111101", 939 => "00000001", 940 => "11111111", 941 to 942=> "00000000", 
    943 => "11111111", 944 => "00000010", 945 => "00000110", 946 => "00000010", 
    947 to 948=> "00000000", 949 => "00000001", 950 => "00000000", 951 => "00001001", 
    952 => "00001000", 953 => "11111111", 954 to 957=> "00000000", 958 => "00001100", 
    959 => "00001011", 960 => "00000000", 961 => "11111100", 962 => "00000000", 
    963 => "11111111", 964 => "00000000", 965 => "11110001", 966 => "11100110", 
    967 => "00010100", 968 => "11101000", 969 => "00000000", 970 => "11111110", 
    971 to 972=> "00000000", 973 => "11110011", 974 to 978=> "00000000", 979 to 980=> "11101001", 
    981 to 982=> "00000000", 983 => "11111101", 984 => "11111111", 985 => "11110100", 
    986 => "11101100", 987 => "11111011", 988 to 989=> "00000000", 990 to 991=> "11111111", 
    992 => "00000101", 993 => "00010001", 994 to 995=> "00000000", 996 => "11111100", 
    997 => "00000000", 998 => "00001111", 999 => "11111111", 1000 => "11111000", 
    1001 => "11111010", 1002 => "00001111", 1003 => "11101011", 1004 => "11110101", 
    1005 => "00000000", 1006 => "11111101", 1007 => "00010111", 1008 => "11111001", 
    1009 => "11111110", 1010 to 1012=> "00000000", 1013 => "11111111", 1014 to 1015=> "00000000", 
    1016 => "00000001", 1017 => "00001011", 1018 => "11111100", 1019 to 1020=> "00000000", 
    1021 => "00000110", 1022 to 1023=> "11111110" );


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

entity Conv1DMac_new411_IfE is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 1024;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Conv1DMac_new411_IfE is
    component Conv1DMac_new411_IfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new411_IfE_rom_U :  component Conv1DMac_new411_IfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


