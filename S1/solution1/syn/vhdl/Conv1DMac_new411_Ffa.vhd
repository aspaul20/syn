-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Conv1DMac_new411_Ffa_rom is 
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


architecture rtl of Conv1DMac_new411_Ffa_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "00000010", 2 => "00000000", 3 => "00000110", 
    4 to 7=> "00000000", 8 => "11111111", 9 => "00000000", 10 => "00001010", 
    11 to 16=> "00000000", 17 => "11111100", 18 => "00000000", 19 => "11111110", 
    20 to 22=> "00000000", 23 => "00001100", 24 => "00000111", 25 => "00000001", 
    26 => "11111111", 27 to 30=> "00000000", 31 => "00001011", 32 => "00000000", 
    33 => "00000001", 34 => "00000000", 35 => "00000010", 36 => "11111111", 
    37 => "00000000", 38 => "11111111", 39 => "00001001", 40 => "11111111", 
    41 => "00000001", 42 => "11111110", 43 => "00000000", 44 => "11111111", 
    45 to 47=> "00000000", 48 => "00000010", 49 => "00000110", 50 => "00000010", 
    51 to 54=> "00000000", 55 => "00001000", 56 => "00000111", 57 => "11111111", 
    58 to 61=> "00000000", 62 => "00001011", 63 => "00001001", 64 to 128=> "00000000", 
    129 => "00100100", 130 => "00000000", 131 => "00000011", 132 => "00000000", 
    133 => "00100010", 134 => "00000100", 135 => "11111100", 136 to 137=> "00000000", 
    138 => "00000110", 139 to 140=> "00000000", 141 => "11101010", 142 to 144=> "00000000", 
    145 => "11111010", 146 => "00000000", 147 => "11111010", 148 => "00000011", 
    149 to 150=> "00000000", 151 => "00000111", 152 => "00000100", 153 => "11101101", 
    154 => "00000011", 155 => "11101100", 156 to 157=> "00000000", 158 => "11111110", 
    159 => "00000101", 160 => "00010110", 161 => "00000100", 162 => "00000000", 
    163 => "00000001", 164 => "11111011", 165 => "00000000", 166 => "00010110", 
    167 => "11111101", 168 => "00001110", 169 => "11100101", 170 => "00011111", 
    171 => "11100101", 172 => "00001000", 173 => "00000000", 174 => "00101011", 
    175 => "00000111", 176 => "11101100", 177 => "00000000", 178 => "11110011", 
    179 to 180=> "00000000", 181 => "11111101", 182 => "00000000", 183 => "11111011", 
    184 => "11111100", 185 => "00001001", 186 => "10111110", 187 to 188=> "00000000", 
    189 => "00011110", 190 => "00000110", 191 => "00000101", 192 => "00000000", 
    193 => "00000011", 194 => "00000000", 195 => "00001100", 196 => "00000000", 
    197 => "00000011", 198 => "11111011", 199 => "00000110", 200 => "11111100", 
    201 => "00000000", 202 => "00010010", 203 to 204=> "00000000", 205 => "00000111", 
    206 to 208=> "00000000", 209 => "11111000", 210 => "00000000", 211 => "11111000", 
    212 => "11111010", 213 to 214=> "00000000", 215 => "00010101", 216 => "00001101", 
    217 => "11111110", 218 => "11111010", 219 => "11111101", 220 to 222=> "00000000", 
    223 => "00010101", 224 => "00000011", 225 => "00000101", 226 => "00000000", 
    227 => "00000100", 228 => "11111011", 229 => "00000000", 230 => "11111011", 
    231 => "00010010", 232 => "00000101", 233 => "11111001", 234 to 235=> "00000010", 
    236 => "11111011", 237 => "00000000", 238 => "00000001", 239 => "00000110", 
    240 => "00000100", 241 => "00001011", 242 => "00000001", 243 to 244=> "00000000", 
    245 => "11111111", 246 => "00000000", 247 to 248=> "00010000", 249 => "11111000", 
    250 => "00000001", 251 to 252=> "00000000", 253 => "00000100", 254 => "00010010", 
    255 => "00010000", 256 => "00000000", 257 => "00000001", 258 => "00000000", 
    259 => "00000110", 260 to 263=> "00000000", 264 => "11111111", 265 => "00000000", 
    266 => "00001010", 267 to 268=> "00000000", 269 => "00000001", 270 to 272=> "00000000", 
    273 => "11111100", 274 => "00000000", 275 => "11111110", 276 to 278=> "00000000", 
    279 => "00001100", 280 => "00001000", 281 => "00000000", 282 => "11111111", 
    283 to 286=> "00000000", 287 => "00001100", 288 => "00000000", 289 => "00000001", 
    290 => "00000000", 291 => "00000010", 292 => "11111111", 293 => "00000000", 
    294 => "11111111", 295 => "00001010", 296 => "11111111", 297 => "00000000", 
    298 => "11111110", 299 => "00000000", 300 => "11111111", 301 to 303=> "00000000", 
    304 => "00000010", 305 => "00000110", 306 => "00000010", 307 to 310=> "00000000", 
    311 to 312=> "00001000", 313 => "11111111", 314 => "00000001", 315 to 317=> "00000000", 
    318 => "00001011", 319 => "00001010", 320 to 322=> "00000000", 323 => "00000111", 
    324 to 325=> "00000000", 326 => "00000100", 327 => "11110111", 328 => "00000100", 
    329 => "00000000", 330 => "00001011", 331 to 332=> "00000000", 333 => "00000010", 
    334 to 336=> "00000000", 337 => "11111101", 338 => "00000000", 339 => "00000100", 
    340 => "00000101", 341 to 342=> "00000000", 343 => "00001101", 344 => "00001000", 
    345 => "11111101", 346 => "00000101", 347 to 350=> "00000000", 351 => "00001101", 
    352 => "11111111", 353 => "11111010", 354 => "00000000", 355 => "00000010", 
    356 => "11111111", 357 => "00000000", 358 => "00000010", 359 => "00001011", 
    360 => "00000010", 361 => "11111110", 362 => "00000010", 363 => "11111110", 
    364 to 365=> "00000000", 366 => "11111111", 367 => "11111010", 368 => "00000011", 
    369 => "00000111", 370 => "00000001", 371 to 374=> "00000000", 375 => "00001010", 
    376 => "00001001", 377 => "11111110", 378 => "00000010", 379 to 380=> "00000000", 
    381 => "11111111", 382 => "00001011", 383 => "00001010", 384 => "00000000", 
    385 => "11111001", 386 => "00000000", 387 => "11110100", 388 => "00000000", 
    389 => "11101111", 390 => "00001010", 391 => "00000110", 392 => "00010010", 
    393 => "00000000", 394 => "11111011", 395 to 396=> "00000000", 397 => "00111010", 
    398 to 400=> "00000000", 401 => "11111101", 402 => "00000000", 403 => "00000110", 
    404 => "00001010", 405 to 406=> "00000000", 407 => "11111010", 408 => "11111100", 
    409 => "00101110", 410 => "00000010", 411 => "11111011", 412 to 413=> "00000000", 
    414 => "00000001", 415 => "11111000", 416 => "00000111", 417 to 418=> "00000000", 
    419 => "11111111", 420 => "11111000", 421 => "00000000", 422 => "10110000", 
    423 => "11110000", 424 => "00000100", 425 => "00000001", 426 => "10111001", 
    427 => "01000111", 428 => "00000001", 429 => "00000000", 430 => "11110000", 
    431 => "11100111", 432 => "00001001", 433 => "11110101", 434 => "00000010", 
    435 to 436=> "00000000", 437 => "00000001", 438 => "00000000", 439 => "11110000", 
    440 => "11111110", 441 => "11000100", 442 => "00000100", 443 to 444=> "00000000", 
    445 => "00001010", 446 to 447=> "11111010", 448 => "00000000", 449 => "00000001", 
    450 => "00000000", 451 => "00000001", 452 => "00000000", 453 => "00000001", 
    454 => "11111111", 455 => "00000001", 456 => "11111111", 457 => "00000000", 
    458 => "00000001", 459 to 460=> "00000000", 461 => "11111111", 462 to 464=> "00000000", 
    465 => "11111111", 466 => "00000000", 467 to 468=> "11111111", 469 to 470=> "00000000", 
    471 => "00000010", 472 => "00000001", 473 to 474=> "11111111", 475 => "11110100", 
    476 to 478=> "00000000", 479 => "00000010", 480 => "00010010", 481 => "00000001", 
    482 to 483=> "00000000", 484 => "11111111", 485 => "00000000", 486 => "11111101", 
    487 => "00000001", 488 => "11111111", 489 => "11111100", 490 => "11111110", 
    491 => "00000001", 492 => "11111111", 493 to 495=> "00000000", 496 => "00000010", 
    497 => "00000001", 498 to 500=> "00000000", 501 => "11111111", 502 => "00000000", 
    503 => "00000001", 504 => "00000010", 505 => "11111110", 506 => "00000010", 
    507 to 508=> "00000000", 509 => "00010110", 510 to 511=> "00000001", 512 => "00000000", 
    513 => "11110010", 514 => "00000000", 515 => "11111100", 516 => "00000000", 
    517 => "11111101", 518 => "00010110", 519 => "11110001", 520 => "00001100", 
    521 => "00000000", 522 => "11111010", 523 to 524=> "00000000", 525 => "11101111", 
    526 to 528=> "00000000", 529 => "00000001", 530 => "00000000", 531 => "00011001", 
    532 => "00010110", 533 to 534=> "00000000", 535 => "11111000", 536 => "11111100", 
    537 => "11111000", 538 => "00010111", 539 => "00000001", 540 to 541=> "00000000", 
    542 => "11111110", 543 => "11111010", 544 => "11111111", 545 => "11110000", 
    546 => "00000000", 547 => "11111111", 548 => "11111100", 549 => "00000000", 
    550 => "00100001", 551 => "11111010", 552 => "11110110", 553 => "11111100", 
    554 => "00010111", 555 => "11101010", 556 => "11110100", 557 => "00000000", 
    558 => "11110001", 559 => "11111110", 560 => "11111010", 561 => "11111101", 
    562 => "11111001", 563 to 564=> "00000000", 565 => "11111110", 566 => "00000000", 
    567 => "11111101", 568 => "00000000", 569 => "00010000", 570 => "00010001", 
    571 to 572=> "00000000", 573 => "11111101", 574 => "11111001", 575 => "11111010", 
    576 => "00000000", 577 => "11111100", 578 => "00000000", 579 => "11111111", 
    580 => "00000000", 581 => "00000001", 582 => "11110010", 583 => "00010000", 
    584 => "11110011", 585 => "00000000", 586 => "11111101", 587 to 588=> "00000000", 
    589 => "00001101", 590 to 592=> "00000000", 593 => "00000100", 594 => "00000000", 
    595 => "11101110", 596 => "11110000", 597 to 598=> "00000000", 599 => "11111100", 
    600 => "11111101", 601 => "11101100", 602 => "11101111", 603 => "00010100", 
    604 to 605=> "00000000", 606 => "00000001", 607 => "11111011", 608 => "11101001", 
    609 => "00001111", 610 => "00000000", 611 => "11111111", 612 => "00000011", 
    613 => "00000000", 614 => "11111100", 615 => "00000011", 616 => "00001110", 
    617 => "11110001", 618 => "00001000", 619 => "11111000", 620 => "00001000", 
    621 to 622=> "00000000", 623 => "00001100", 624 => "00001001", 625 => "00000001", 
    626 => "00000111", 627 to 628=> "00000000", 629 => "00000011", 630 => "00000000", 
    631 => "00000100", 632 => "11111111", 633 => "11111001", 634 => "00001000", 
    635 to 636=> "00000000", 637 => "11100010", 638 => "11111100", 639 => "11111101", 
    640 => "00000000", 641 => "00000010", 642 => "00000000", 643 => "11111110", 
    644 => "00000000", 645 => "00000010", 646 => "00010101", 647 => "11110101", 
    648 => "00000100", 649 => "00000000", 650 => "11111100", 651 to 652=> "00000000", 
    653 => "11010111", 654 to 656=> "00000000", 657 => "11111110", 658 => "00000000", 
    659 => "00001001", 660 => "00010101", 661 to 662=> "00000000", 663 => "11111100", 
    664 => "11111101", 665 => "00011110", 666 => "00001110", 667 => "11101000", 
    668 to 669=> "00000000", 670 => "11111111", 671 => "11111011", 672 => "00100000", 
    673 => "11111011", 674 => "00000000", 675 => "11111111", 676 => "00000001", 
    677 => "00000000", 678 => "00001111", 679 => "00000110", 680 => "11010100", 
    681 => "00101010", 682 => "11101111", 683 => "00000100", 684 => "11110011", 
    685 => "00000000", 686 => "11111111", 687 => "00000000", 688 => "11111110", 
    689 => "11111111", 690 => "11111001", 691 to 692=> "00000000", 693 => "11111110", 
    694 => "00000000", 695 => "11111110", 696 => "11111100", 697 => "00100011", 
    698 => "11100110", 699 to 700=> "00000000", 701 => "00101000", 702 to 703=> "11111100", 
    704 => "00000000", 705 => "00010100", 706 => "00000000", 707 => "11111101", 
    708 => "00000000", 709 => "00000001", 710 => "00000000", 711 => "11111100", 
    712 => "00001010", 713 => "00000000", 714 => "11111111", 715 to 716=> "00000000", 
    717 => "00011001", 718 to 720=> "00000000", 721 => "00000101", 722 => "00000000", 
    723 => "11111010", 724 => "11111011", 725 to 726=> "00000000", 727 to 728=> "11111111", 
    729 => "00100001", 730 => "11111101", 731 => "00001001", 732 to 733=> "00000000", 
    734 => "11111110", 735 => "11111100", 736 => "11110100", 737 => "00000001", 
    738 => "00000000", 739 => "11111111", 740 => "00001000", 741 => "00000000", 
    742 => "11001111", 743 => "00000010", 744 => "11111110", 745 => "00000110", 
    746 => "11010010", 747 => "00110111", 748 => "00001010", 749 => "00000000", 
    750 => "00011101", 751 => "11101110", 752 => "11011101", 753 => "11111111", 
    754 => "11110010", 755 to 756=> "00000000", 757 => "11111001", 758 => "00000000", 
    759 => "11111111", 760 => "11110101", 761 => "11011100", 762 => "11011010", 
    763 to 764=> "00000000", 765 => "11110010", 766 to 767=> "11111111", 768 => "00000000", 
    769 => "11111010", 770 => "00000000", 771 => "11111101", 772 => "00000000", 
    773 => "11101011", 774 => "00000000", 775 => "11111000", 776 => "11110111", 
    777 => "00000000", 778 => "11111111", 779 to 780=> "00000000", 781 => "11110110", 
    782 to 786=> "00000000", 787 => "11110110", 788 => "11111101", 789 to 790=> "00000000", 
    791 to 792=> "11111111", 793 => "00100011", 794 => "11111000", 795 => "11111111", 
    796 to 797=> "00000000", 798 => "00000001", 799 => "11111110", 800 => "00000000", 
    801 => "11111100", 802 to 807=> "00000000", 808 => "11100011", 809 => "00100010", 
    810 => "11100001", 811 => "00011010", 812 => "11111011", 813 => "00000000", 
    814 => "11110111", 815 => "11111110", 816 => "11111100", 817 => "11111110", 
    818 => "00000011", 819 to 820=> "00000000", 821 => "00000010", 822 => "00000000", 
    823 => "11111101", 824 => "00000000", 825 => "00001110", 826 => "00001001", 
    827 to 828=> "00000000", 829 => "00000010", 830 to 831=> "11111111", 832 => "00000000", 
    833 => "00000010", 834 => "00000000", 835 => "11111110", 836 => "00000000", 
    837 => "11111111", 838 => "00000010", 839 => "00001100", 840 => "00000100", 
    841 to 844=> "00000000", 845 => "00110000", 846 to 848=> "00000000", 849 => "11111101", 
    850 => "00000000", 851 => "00000001", 852 => "00000100", 853 to 856=> "00000000", 
    857 => "11111001", 858 => "11111110", 859 => "00000110", 860 to 862=> "00000000", 
    863 => "11111111", 864 => "11110110", 865 => "00001010", 866 to 867=> "00000000", 
    868 => "11111000", 869 => "00000000", 870 => "11100100", 871 => "11110111", 
    872 => "00100110", 873 => "11100110", 874 => "00000100", 875 => "00000110", 
    876 => "11110101", 877 => "00000000", 878 => "00000010", 879 => "11111010", 
    880 => "11101100", 881 => "11111101", 882 => "00000001", 883 to 884=> "00000000", 
    885 => "11111111", 886 => "00000000", 887 => "11111100", 888 => "11111110", 
    889 => "11010010", 890 => "00000001", 891 to 892=> "00000000", 893 => "11110110", 
    894 to 896=> "00000000", 897 => "00000010", 898 => "00000000", 899 => "00001010", 
    900 to 901=> "00000000", 902 => "00000101", 903 => "11110101", 904 => "00000100", 
    905 => "00000000", 906 => "00010000", 907 to 908=> "00000000", 909 => "00000001", 
    910 to 912=> "00000000", 913 => "11111011", 914 => "00000000", 915 => "00000101", 
    916 => "00000110", 917 to 918=> "00000000", 919 => "00010010", 920 => "00001011", 
    921 => "11111100", 922 => "00000110", 923 => "00000010", 924 to 925=> "00000000", 
    926 => "00000001", 927 => "00010010", 928 => "11111101", 929 => "11111001", 
    930 => "00000000", 931 => "00000011", 932 => "11111111", 933 => "00000000", 
    934 => "00000011", 935 => "00001111", 936 => "00000001", 937 => "11111111", 
    938 => "00000001", 939 => "11111110", 940 => "00000001", 941 => "00000000", 
    942 => "00000001", 943 => "11111010", 944 => "00000011", 945 => "00001001", 
    946 => "00000010", 947 to 948=> "00000000", 949 => "00000001", 950 => "00000000", 
    951 => "00001101", 952 => "00001100", 953 => "11111110", 954 => "00000001", 
    955 to 956=> "00000000", 957 => "11111101", 958 => "00010000", 959 => "00001110", 
    960 => "00000000", 961 => "11110111", 962 to 964=> "00000000", 965 => "11110100", 
    966 => "00000101", 967 => "00001011", 968 => "00000011", 969 to 972=> "00000000", 
    973 => "11111001", 974 to 976=> "00000000", 977 => "11111010", 978 => "00000000", 
    979 => "00000111", 980 => "00001011", 981 to 983=> "00000000", 984 => "11111111", 
    985 => "00110000", 986 => "00000111", 987 => "11011110", 988 to 989=> "00000000", 
    990 => "11111101", 991 => "00000001", 992 => "00101110", 993 => "00000101", 
    994 to 995=> "00000000", 996 => "11111110", 997 => "00000000", 998 => "11101111", 
    999 => "00001011", 1000 => "11101100", 1001 => "00011110", 1002 => "11010011", 
    1003 => "00100011", 1004 => "11100001", 1005 => "00000000", 1006 => "11110000", 
    1007 => "00000010", 1008 => "00000111", 1009 => "00000100", 1010 => "11111000", 
    1011 to 1012=> "00000000", 1013 => "11111101", 1014 => "00000000", 1015 => "00000010", 
    1016 => "00000100", 1017 => "11111110", 1018 => "11111011", 1019 to 1020=> "00000000", 
    1021 => "00111000", 1022 to 1023=> "00000000" );


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

entity Conv1DMac_new411_Ffa is
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

architecture arch of Conv1DMac_new411_Ffa is
    component Conv1DMac_new411_Ffa_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Conv1DMac_new411_Ffa_rom_U :  component Conv1DMac_new411_Ffa_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


