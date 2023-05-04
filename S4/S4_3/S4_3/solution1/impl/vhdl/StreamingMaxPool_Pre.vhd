-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity StreamingMaxPool_Pre is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    in_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    in_V_V_empty_n : IN STD_LOGIC;
    in_V_V_read : OUT STD_LOGIC;
    out_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of StreamingMaxPool_Pre is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_pp1_stage0 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_pp2_stage0 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv14_2000 : STD_LOGIC_VECTOR (13 downto 0) := "10000000000000";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal in_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal exitcond_flatten_reg_259 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp2_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp2_stage0 : signal is "none";
    signal ap_enable_reg_pp2_iter1 : STD_LOGIC := '0';
    signal ap_block_pp2_stage0 : BOOLEAN;
    signal tmp_7_reg_282 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_141 : STD_LOGIC_VECTOR (13 downto 0);
    signal ch4_reg_152 : STD_LOGIC_VECTOR (8 downto 0);
    signal ch6_reg_163 : STD_LOGIC_VECTOR (8 downto 0);
    signal ch_1_fu_180_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_flatten_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state4_pp1_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal indvar_flatten_next_fu_197_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal buf_0_V_addr_2_reg_268 : STD_LOGIC_VECTOR (7 downto 0);
    signal ch_3_fu_222_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_7_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state7_pp2_stage0_iter0 : BOOLEAN;
    signal ap_block_state8_pp2_stage0_iter1 : BOOLEAN;
    signal ap_block_pp2_stage0_11001 : BOOLEAN;
    signal ch_2_fu_240_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp2_iter0 : STD_LOGIC := '0';
    signal buf_0_V_addr_1_reg_291 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_condition_pp1_exit_iter0_state4 : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp2_stage0_subdone : BOOLEAN;
    signal ap_condition_pp2_exit_iter0_state7 : STD_LOGIC;
    signal buf_0_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_V_ce0 : STD_LOGIC;
    signal buf_0_V_we0 : STD_LOGIC;
    signal buf_0_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_V_address1 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_V_ce1 : STD_LOGIC;
    signal buf_0_V_we1 : STD_LOGIC;
    signal buf_0_V_q1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ch_reg_130 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_186_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_fu_217_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_246_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp2_stage0_01001 : BOOLEAN;
    signal tmp_9_fu_228_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ch4_mid2_fu_209_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;
    signal ap_idle_pp2 : STD_LOGIC;
    signal ap_enable_pp2 : STD_LOGIC;

    component StreamingMaxPool_mb6 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0);
        q1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    buf_0_V_U : component StreamingMaxPool_mb6
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_0_V_address0,
        ce0 => buf_0_V_ce0,
        we0 => buf_0_V_we0,
        d0 => ap_const_lv8_0,
        q0 => buf_0_V_q0,
        address1 => buf_0_V_address1,
        ce1 => buf_0_V_ce1,
        we1 => buf_0_V_we1,
        d1 => in_V_V_dout,
        q1 => buf_0_V_q1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_logic_1 = ap_condition_pp1_exit_iter0_state4) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp1_exit_iter0_state4) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter1 <= (ap_const_logic_1 xor ap_condition_pp1_exit_iter0_state4);
                elsif ((ap_const_boolean_0 = ap_block_pp1_stage0_subdone)) then 
                    ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp2_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp2_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_logic_1 = ap_condition_pp2_exit_iter0_state7) and (ap_const_boolean_0 = ap_block_pp2_stage0_subdone))) then 
                    ap_enable_reg_pp2_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_enable_reg_pp2_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp2_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp2_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp2_exit_iter0_state7) and (ap_const_boolean_0 = ap_block_pp2_stage0_subdone))) then 
                    ap_enable_reg_pp2_iter1 <= (ap_const_logic_1 xor ap_condition_pp2_exit_iter0_state7);
                elsif ((ap_const_boolean_0 = ap_block_pp2_stage0_subdone)) then 
                    ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_enable_reg_pp2_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ch4_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ch4_reg_152 <= ap_const_lv9_0;
            elsif (((exitcond_flatten_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                ch4_reg_152 <= ch_3_fu_222_p2;
            end if; 
        end if;
    end process;

    ch6_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                ch6_reg_163 <= ap_const_lv9_0;
            elsif (((tmp_7_fu_234_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_enable_reg_pp2_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001))) then 
                ch6_reg_163 <= ch_2_fu_240_p2;
            end if; 
        end if;
    end process;

    ch_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                ch_reg_130 <= ch_1_fu_180_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ch_reg_130 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                indvar_flatten_reg_141 <= ap_const_lv14_0;
            elsif (((exitcond_flatten_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                indvar_flatten_reg_141 <= indvar_flatten_next_fu_197_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_7_fu_234_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001))) then
                buf_0_V_addr_1_reg_291 <= tmp_8_fu_246_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                buf_0_V_addr_2_reg_268 <= tmp_6_fu_217_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                exitcond_flatten_reg_259 <= exitcond_flatten_fu_191_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001))) then
                tmp_7_reg_282 <= tmp_7_fu_234_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_flatten_fu_191_p2, ap_enable_reg_pp1_iter0, tmp_7_fu_234_p2, ap_enable_reg_pp2_iter0, ap_block_pp1_stage0_subdone, ap_block_pp2_stage0_subdone, tmp_fu_174_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
            when ap_ST_fsm_pp1_stage0 => 
                if (not(((exitcond_flatten_fu_191_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif (((exitcond_flatten_fu_191_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_pp2_stage0;
            when ap_ST_fsm_pp2_stage0 => 
                if (not(((ap_enable_reg_pp2_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp2_stage0_subdone) and (tmp_7_fu_234_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp2_stage0;
                elsif (((ap_enable_reg_pp2_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp2_stage0_subdone) and (tmp_7_fu_234_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp2_stage0;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp1_stage0 <= ap_CS_fsm(3);
    ap_CS_fsm_pp2_stage0 <= ap_CS_fsm(5);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state6 <= ap_CS_fsm(4);
    ap_CS_fsm_state9 <= ap_CS_fsm(6);
        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp1_stage0_11001_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp1_iter1, exitcond_flatten_reg_259)
    begin
                ap_block_pp1_stage0_11001 <= ((exitcond_flatten_reg_259 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp1_stage0_subdone_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp1_iter1, exitcond_flatten_reg_259)
    begin
                ap_block_pp1_stage0_subdone <= ((exitcond_flatten_reg_259 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1));
    end process;

        ap_block_pp2_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp2_stage0_01001_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp2_iter1, tmp_7_reg_282)
    begin
                ap_block_pp2_stage0_01001 <= ((tmp_7_reg_282 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp2_stage0_11001_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp2_iter1, tmp_7_reg_282)
    begin
                ap_block_pp2_stage0_11001 <= ((tmp_7_reg_282 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp2_stage0_subdone_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp2_iter1, tmp_7_reg_282)
    begin
                ap_block_pp2_stage0_subdone <= ((tmp_7_reg_282 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state4_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_pp1_stage0_iter1_assign_proc : process(in_V_V_empty_n, exitcond_flatten_reg_259)
    begin
                ap_block_state5_pp1_stage0_iter1 <= ((exitcond_flatten_reg_259 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0));
    end process;

        ap_block_state7_pp2_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state8_pp2_stage0_iter1_assign_proc : process(out_V_V_full_n, tmp_7_reg_282)
    begin
                ap_block_state8_pp2_stage0_iter1 <= ((tmp_7_reg_282 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp1_exit_iter0_state4_assign_proc : process(exitcond_flatten_fu_191_p2)
    begin
        if ((exitcond_flatten_fu_191_p2 = ap_const_lv1_1)) then 
            ap_condition_pp1_exit_iter0_state4 <= ap_const_logic_1;
        else 
            ap_condition_pp1_exit_iter0_state4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_pp2_exit_iter0_state7_assign_proc : process(tmp_7_fu_234_p2)
    begin
        if ((tmp_7_fu_234_p2 = ap_const_lv1_1)) then 
            ap_condition_pp2_exit_iter0_state7 <= ap_const_logic_1;
        else 
            ap_condition_pp2_exit_iter0_state7 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp1 <= (ap_idle_pp1 xor ap_const_logic_1);
    ap_enable_pp2 <= (ap_idle_pp2 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp1_assign_proc : process(ap_enable_reg_pp1_iter1, ap_enable_reg_pp1_iter0)
    begin
        if (((ap_enable_reg_pp1_iter1 = ap_const_logic_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_0))) then 
            ap_idle_pp1 <= ap_const_logic_1;
        else 
            ap_idle_pp1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp2_assign_proc : process(ap_enable_reg_pp2_iter1, ap_enable_reg_pp2_iter0)
    begin
        if (((ap_enable_reg_pp2_iter1 = ap_const_logic_0) and (ap_enable_reg_pp2_iter0 = ap_const_logic_0))) then 
            ap_idle_pp2 <= ap_const_logic_1;
        else 
            ap_idle_pp2 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    buf_0_V_address0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0, ap_CS_fsm_pp2_stage0, ap_enable_reg_pp2_iter1, ap_block_pp2_stage0, ap_CS_fsm_state2, ap_enable_reg_pp1_iter0, buf_0_V_addr_1_reg_291, tmp_1_fu_186_p1, tmp_6_fu_217_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp2_stage0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0))) then 
            buf_0_V_address0 <= buf_0_V_addr_1_reg_291;
        elsif (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1))) then 
            buf_0_V_address0 <= tmp_6_fu_217_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            buf_0_V_address0 <= tmp_1_fu_186_p1(8 - 1 downto 0);
        else 
            buf_0_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    buf_0_V_address1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, ap_CS_fsm_pp2_stage0, ap_block_pp2_stage0, buf_0_V_addr_2_reg_268, ap_enable_reg_pp2_iter0, tmp_8_fu_246_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp2_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_enable_reg_pp2_iter0 = ap_const_logic_1))) then 
            buf_0_V_address1 <= tmp_8_fu_246_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            buf_0_V_address1 <= buf_0_V_addr_2_reg_268;
        else 
            buf_0_V_address1 <= "XXXXXXXX";
        end if; 
    end process;


    buf_0_V_ce0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_CS_fsm_pp2_stage0, ap_enable_reg_pp2_iter1, ap_CS_fsm_state2, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0, ap_block_pp2_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_enable_reg_pp2_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001)) or ((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)))) then 
            buf_0_V_ce0 <= ap_const_logic_1;
        else 
            buf_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_0_V_ce1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_CS_fsm_pp2_stage0, ap_block_pp1_stage0_11001, ap_block_pp2_stage0_11001, ap_enable_reg_pp2_iter0)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_enable_reg_pp2_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001)) or ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)))) then 
            buf_0_V_ce1 <= ap_const_logic_1;
        else 
            buf_0_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_0_V_we0_assign_proc : process(ap_CS_fsm_pp2_stage0, ap_enable_reg_pp2_iter1, tmp_7_reg_282, ap_CS_fsm_state2, ap_block_pp2_stage0_11001, tmp_fu_174_p2)
    begin
        if ((((tmp_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((tmp_7_reg_282 = ap_const_lv1_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001)))) then 
            buf_0_V_we0 <= ap_const_logic_1;
        else 
            buf_0_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_0_V_we1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0_11001, tmp_9_fu_228_p2)
    begin
        if (((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (tmp_9_fu_228_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            buf_0_V_we1 <= ap_const_logic_1;
        else 
            buf_0_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ch4_mid2_fu_209_p3 <= 
        ap_const_lv9_0 when (tmp_s_fu_203_p2(0) = '1') else 
        ch4_reg_152;
    ch_1_fu_180_p2 <= std_logic_vector(unsigned(ch_reg_130) + unsigned(ap_const_lv9_1));
    ch_2_fu_240_p2 <= std_logic_vector(unsigned(ch6_reg_163) + unsigned(ap_const_lv9_1));
    ch_3_fu_222_p2 <= std_logic_vector(unsigned(ch4_mid2_fu_209_p3) + unsigned(ap_const_lv9_1));
    exitcond_flatten_fu_191_p2 <= "1" when (indvar_flatten_reg_141 = ap_const_lv14_2000) else "0";

    in_V_V_blk_n_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, exitcond_flatten_reg_259)
    begin
        if (((exitcond_flatten_reg_259 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            in_V_V_blk_n <= in_V_V_empty_n;
        else 
            in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_V_V_read_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, exitcond_flatten_reg_259, ap_block_pp1_stage0_11001)
    begin
        if (((exitcond_flatten_reg_259 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            in_V_V_read <= ap_const_logic_1;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten_next_fu_197_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_141) + unsigned(ap_const_lv14_1));

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_CS_fsm_pp2_stage0, ap_enable_reg_pp2_iter1, ap_block_pp2_stage0, tmp_7_reg_282)
    begin
        if (((ap_const_boolean_0 = ap_block_pp2_stage0) and (tmp_7_reg_282 = ap_const_lv1_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= buf_0_V_q1;

    out_V_V_write_assign_proc : process(ap_CS_fsm_pp2_stage0, ap_enable_reg_pp2_iter1, tmp_7_reg_282, ap_block_pp2_stage0_11001)
    begin
        if (((tmp_7_reg_282 = ap_const_lv1_0) and (ap_enable_reg_pp2_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp2_stage0) and (ap_const_boolean_0 = ap_block_pp2_stage0_11001))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ch_reg_130),64));
    tmp_6_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ch4_mid2_fu_209_p3),64));
    tmp_7_fu_234_p2 <= "1" when (ch6_reg_163 = ap_const_lv9_100) else "0";
    tmp_8_fu_246_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ch6_reg_163),64));
    tmp_9_fu_228_p2 <= "1" when (unsigned(in_V_V_dout) > unsigned(buf_0_V_q0)) else "0";
    tmp_fu_174_p2 <= "1" when (ch_reg_130 = ap_const_lv9_100) else "0";
    tmp_s_fu_203_p2 <= "1" when (ch4_reg_152 = ap_const_lv9_100) else "0";
end behav;
