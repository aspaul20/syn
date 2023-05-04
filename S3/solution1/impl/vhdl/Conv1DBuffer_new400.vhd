-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv1DBuffer_new400 is
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


architecture behav of Conv1DBuffer_new400 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp1_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv25_0 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv7_3F : STD_LOGIC_VECTOR (6 downto 0) := "0111111";
    constant ap_const_lv25_1000000 : STD_LOGIC_VECTOR (24 downto 0) := "1000000000000000000000000";
    constant ap_const_lv25_1 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv16_4000 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal in_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_reg_392 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal or_cond_mid2_reg_415 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_V_blk_n : STD_LOGIC;
    signal exitcond_flatten_reg_401 : STD_LOGIC_VECTOR (0 downto 0);
    signal ptr_simd_reg_139 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten10_reg_151 : STD_LOGIC_VECTOR (24 downto 0);
    signal op1_assign_reg_162 : STD_LOGIC_VECTOR (10 downto 0);
    signal indvar_flatten_reg_173 : STD_LOGIC_VECTOR (15 downto 0);
    signal nm_reg_184 : STD_LOGIC_VECTOR (6 downto 0);
    signal ptr_simd4_reg_195 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ptr_simd_3_fu_212_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ptr_simd_3_reg_396 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal exitcond_flatten_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state5_pp1_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal indvar_flatten_next1_fu_247_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal op1_assign_mid2_fu_311_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_cond_mid2_fu_351_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_mid2_fu_359_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal inputBuf_0_V_addr_6_reg_424 : STD_LOGIC_VECTOR (7 downto 0);
    signal ptr_simd_4_fu_372_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten_next_fu_384_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_condition_pp1_exit_iter0_state5 : STD_LOGIC;
    signal inputBuf_0_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal inputBuf_0_V_ce0 : STD_LOGIC;
    signal inputBuf_0_V_we0 : STD_LOGIC;
    signal inputBuf_0_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal inputBuf_0_V_ce1 : STD_LOGIC;
    signal inputBuf_0_V_we1 : STD_LOGIC;
    signal ap_phi_mux_ptr_simd_phi_fu_143_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_s_fu_218_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_284_fu_367_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp1_stage0_01001 : BOOLEAN;
    signal tmp_281_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_282_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten10_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ofm_iter_fu_253_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_295_mid1_fu_273_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_exitcond_flatten_fu_287_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_894_fu_299_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_mid_fu_265_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_298_mid_fu_305_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_874_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_4_fu_319_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_295_mid2_fu_279_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_297_mid1_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_mid1_fu_345_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_mid_fu_293_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ptr_simd4_mid2_fu_331_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten_op_fu_378_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;

    component Conv1DBuffer_new3tde IS
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
        d1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    inputBuf_0_V_U : component Conv1DBuffer_new3tde
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => inputBuf_0_V_address0,
        ce0 => inputBuf_0_V_ce0,
        we0 => inputBuf_0_V_we0,
        d0 => in_V_V_dout,
        q0 => inputBuf_0_V_q0,
        address1 => inputBuf_0_V_addr_6_reg_424,
        ce1 => inputBuf_0_V_ce1,
        we1 => inputBuf_0_V_we1,
        d1 => in_V_V_dout);





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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_logic_1 = ap_condition_pp1_exit_iter0_state5) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
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
                if (((ap_const_logic_1 = ap_condition_pp1_exit_iter0_state5) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter1 <= (ap_const_logic_1 xor ap_condition_pp1_exit_iter0_state5);
                elsif ((ap_const_boolean_0 = ap_block_pp1_stage0_subdone)) then 
                    ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
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


    indvar_flatten10_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                indvar_flatten10_reg_151 <= ap_const_lv25_0;
            elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                indvar_flatten10_reg_151 <= indvar_flatten_next1_fu_247_p2;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                indvar_flatten_reg_173 <= ap_const_lv16_0;
            elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                indvar_flatten_reg_173 <= indvar_flatten_next_fu_384_p3;
            end if; 
        end if;
    end process;

    nm_reg_184_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                nm_reg_184 <= ap_const_lv7_0;
            elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                nm_reg_184 <= nm_mid2_fu_359_p3;
            end if; 
        end if;
    end process;

    op1_assign_reg_162_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                op1_assign_reg_162 <= ap_const_lv11_0;
            elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                op1_assign_reg_162 <= op1_assign_mid2_fu_311_p3;
            end if; 
        end if;
    end process;

    ptr_simd4_reg_195_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                ptr_simd4_reg_195 <= ap_const_lv9_0;
            elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                ptr_simd4_reg_195 <= ptr_simd_4_fu_372_p2;
            end if; 
        end if;
    end process;

    ptr_simd_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ptr_simd_reg_139 <= ap_const_lv9_0;
            elsif (((tmp_reg_392 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                ptr_simd_reg_139 <= ptr_simd_3_reg_396;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                exitcond_flatten_reg_401 <= exitcond_flatten_fu_241_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                inputBuf_0_V_addr_6_reg_424 <= tmp_284_fu_367_p1(8 - 1 downto 0);
                or_cond_mid2_reg_415 <= or_cond_mid2_fu_351_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ptr_simd_3_reg_396 <= ptr_simd_3_fu_212_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_392 <= tmp_fu_206_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, tmp_fu_206_p2, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_241_p2, ap_enable_reg_pp1_iter0, ap_block_pp0_stage0_subdone, ap_block_pp1_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((tmp_fu_206_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((tmp_fu_206_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
            when ap_ST_fsm_pp1_stage0 => 
                if (not(((exitcond_flatten_fu_241_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif (((exitcond_flatten_fu_241_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp1_stage0 <= ap_CS_fsm(3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
    ap_CS_fsm_state7 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_reg_392)
    begin
                ap_block_pp0_stage0_11001 <= ((tmp_reg_392 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_reg_392)
    begin
                ap_block_pp0_stage0_subdone <= ((tmp_reg_392 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp1_stage0_01001_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_415, exitcond_flatten_reg_401)
    begin
                ap_block_pp1_stage0_01001 <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten_reg_401 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_415 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp1_stage0_11001_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_415, exitcond_flatten_reg_401)
    begin
                ap_block_pp1_stage0_11001 <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten_reg_401 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_415 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp1_stage0_subdone_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_415, exitcond_flatten_reg_401)
    begin
                ap_block_pp1_stage0_subdone <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten_reg_401 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_415 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(in_V_V_empty_n, tmp_reg_392)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((tmp_reg_392 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0));
    end process;

        ap_block_state5_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp1_stage0_iter1_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, or_cond_mid2_reg_415, exitcond_flatten_reg_401)
    begin
                ap_block_state6_pp1_stage0_iter1 <= (((exitcond_flatten_reg_401 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_415 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(tmp_fu_206_p2)
    begin
        if ((tmp_fu_206_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_pp1_exit_iter0_state5_assign_proc : process(exitcond_flatten_fu_241_p2)
    begin
        if ((exitcond_flatten_fu_241_p2 = ap_const_lv1_1)) then 
            ap_condition_pp1_exit_iter0_state5 <= ap_const_logic_1;
        else 
            ap_condition_pp1_exit_iter0_state5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_pp1 <= (ap_idle_pp1 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
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


    ap_phi_mux_ptr_simd_phi_fu_143_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_392, ptr_simd_reg_139, ptr_simd_3_reg_396)
    begin
        if (((tmp_reg_392 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_phi_mux_ptr_simd_phi_fu_143_p4 <= ptr_simd_3_reg_396;
        else 
            ap_phi_mux_ptr_simd_phi_fu_143_p4 <= ptr_simd_reg_139;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_flatten10_fu_259_p2 <= "1" when (indvar_flatten_reg_173 = ap_const_lv16_4000) else "0";
    exitcond_flatten_fu_241_p2 <= "1" when (indvar_flatten10_reg_151 = ap_const_lv25_1000000) else "0";

    in_V_V_blk_n_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_392, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, or_cond_mid2_reg_415)
    begin
        if ((((or_cond_mid2_reg_415 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0)) or ((tmp_reg_392 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            in_V_V_blk_n <= in_V_V_empty_n;
        else 
            in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_392, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_415, ap_block_pp0_stage0_11001, ap_block_pp1_stage0_11001)
    begin
        if ((((or_cond_mid2_reg_415 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)) or ((tmp_reg_392 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            in_V_V_read <= ap_const_logic_1;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten_next1_fu_247_p2 <= std_logic_vector(unsigned(indvar_flatten10_reg_151) + unsigned(ap_const_lv25_1));
    indvar_flatten_next_fu_384_p3 <= 
        ap_const_lv16_1 when (exitcond_flatten10_fu_259_p2(0) = '1') else 
        indvar_flatten_op_fu_378_p2;
    indvar_flatten_op_fu_378_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_173) + unsigned(ap_const_lv16_1));

    inputBuf_0_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0, ap_enable_reg_pp1_iter0, tmp_s_fu_218_p1, tmp_284_fu_367_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1))) then 
            inputBuf_0_V_address0 <= tmp_284_fu_367_p1(8 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            inputBuf_0_V_address0 <= tmp_s_fu_218_p1(8 - 1 downto 0);
        else 
            inputBuf_0_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    inputBuf_0_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp1_stage0, ap_block_pp0_stage0_11001, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            inputBuf_0_V_ce0 <= ap_const_logic_1;
        else 
            inputBuf_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    inputBuf_0_V_ce1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0_11001)
    begin
        if (((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            inputBuf_0_V_ce1 <= ap_const_logic_1;
        else 
            inputBuf_0_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    inputBuf_0_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_392, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_reg_392 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            inputBuf_0_V_we0 <= ap_const_logic_1;
        else 
            inputBuf_0_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    inputBuf_0_V_we1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_415, ap_block_pp1_stage0_11001)
    begin
        if (((or_cond_mid2_reg_415 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            inputBuf_0_V_we1 <= ap_const_logic_1;
        else 
            inputBuf_0_V_we1 <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    nm_4_fu_319_p2 <= std_logic_vector(unsigned(nm_mid_fu_265_p3) + unsigned(ap_const_lv7_1));
    nm_mid2_fu_359_p3 <= 
        nm_4_fu_319_p2 when (tmp_298_mid_fu_305_p2(0) = '1') else 
        nm_mid_fu_265_p3;
    nm_mid_fu_265_p3 <= 
        ap_const_lv7_0 when (exitcond_flatten10_fu_259_p2(0) = '1') else 
        nm_reg_184;
    not_exitcond_flatten_fu_287_p2 <= (exitcond_flatten10_fu_259_p2 xor ap_const_lv1_1);
    ofm_iter_fu_253_p2 <= std_logic_vector(unsigned(op1_assign_reg_162) + unsigned(ap_const_lv11_1));
    op1_assign_mid2_fu_311_p3 <= 
        ofm_iter_fu_253_p2 when (exitcond_flatten10_fu_259_p2(0) = '1') else 
        op1_assign_reg_162;
    or_cond_fu_235_p2 <= (tmp_282_fu_229_p2 and tmp_281_fu_223_p2);
    or_cond_mid1_fu_345_p2 <= (tmp_297_mid1_fu_339_p2 and tmp_295_mid2_fu_279_p3);
    or_cond_mid2_fu_351_p3 <= 
        or_cond_mid1_fu_345_p2 when (tmp_298_mid_fu_305_p2(0) = '1') else 
        or_cond_mid_fu_293_p2;
    or_cond_mid_fu_293_p2 <= (or_cond_fu_235_p2 and not_exitcond_flatten_fu_287_p2);

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, exitcond_flatten_reg_401)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (exitcond_flatten_reg_401 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= inputBuf_0_V_q0;

    out_V_V_write_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, exitcond_flatten_reg_401, ap_block_pp1_stage0_11001)
    begin
        if (((exitcond_flatten_reg_401 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    ptr_simd4_mid2_fu_331_p3 <= 
        ap_const_lv9_0 when (tmp_874_fu_325_p2(0) = '1') else 
        ptr_simd4_reg_195;
    ptr_simd_3_fu_212_p2 <= std_logic_vector(unsigned(ap_phi_mux_ptr_simd_phi_fu_143_p4) + unsigned(ap_const_lv9_1));
    ptr_simd_4_fu_372_p2 <= std_logic_vector(unsigned(ptr_simd4_mid2_fu_331_p3) + unsigned(ap_const_lv9_1));

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

    tmp_281_fu_223_p2 <= "1" when (unsigned(op1_assign_reg_162) < unsigned(ap_const_lv11_3FF)) else "0";
    tmp_282_fu_229_p2 <= "1" when (nm_reg_184 = ap_const_lv7_3F) else "0";
    tmp_284_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ptr_simd4_mid2_fu_331_p3),64));
    tmp_295_mid1_fu_273_p2 <= "1" when (unsigned(ofm_iter_fu_253_p2) < unsigned(ap_const_lv11_3FF)) else "0";
    tmp_295_mid2_fu_279_p3 <= 
        tmp_295_mid1_fu_273_p2 when (exitcond_flatten10_fu_259_p2(0) = '1') else 
        tmp_281_fu_223_p2;
    tmp_297_mid1_fu_339_p2 <= "1" when (nm_4_fu_319_p2 = ap_const_lv7_3F) else "0";
    tmp_298_mid_fu_305_p2 <= (tmp_894_fu_299_p2 and not_exitcond_flatten_fu_287_p2);
    tmp_874_fu_325_p2 <= (tmp_298_mid_fu_305_p2 or exitcond_flatten10_fu_259_p2);
    tmp_894_fu_299_p2 <= "1" when (ptr_simd4_reg_195 = ap_const_lv9_100) else "0";
    tmp_fu_206_p2 <= "1" when (ap_phi_mux_ptr_simd_phi_fu_143_p4 = ap_const_lv9_100) else "0";
    tmp_s_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ptr_simd_reg_139),64));
end behav;
