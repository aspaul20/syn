-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv1DBuffer_new is
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


architecture behav of Conv1DBuffer_new is 
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
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv25_0 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_1FF : STD_LOGIC_VECTOR (9 downto 0) := "0111111111";
    constant ap_const_lv7_3F : STD_LOGIC_VECTOR (6 downto 0) := "0111111";
    constant ap_const_lv25_1000000 : STD_LOGIC_VECTOR (24 downto 0) := "1000000000000000000000000";
    constant ap_const_lv25_1 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    constant ap_const_lv17_8000 : STD_LOGIC_VECTOR (16 downto 0) := "01000000000000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
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
    signal tmp_reg_388 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal or_cond_mid2_reg_411 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_V_blk_n : STD_LOGIC;
    signal exitcond_flatten4_reg_397 : STD_LOGIC_VECTOR (0 downto 0);
    signal ptr_simd_reg_135 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvar_flatten4_reg_147 : STD_LOGIC_VECTOR (24 downto 0);
    signal op1_assign_reg_158 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvar_flatten_reg_169 : STD_LOGIC_VECTOR (16 downto 0);
    signal nm_reg_180 : STD_LOGIC_VECTOR (6 downto 0);
    signal ptr_simd4_reg_191 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ptr_simd_1_fu_208_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ptr_simd_1_reg_392 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal exitcond_flatten4_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state5_pp1_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal indvar_flatten_next4_fu_243_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal op1_assign_mid2_fu_307_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_cond_mid2_fu_347_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_mid2_fu_355_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal inputBuf_0_V_addr_1_reg_420 : STD_LOGIC_VECTOR (8 downto 0);
    signal ptr_simd_2_fu_368_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvar_flatten_next_fu_380_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_condition_pp1_exit_iter0_state5 : STD_LOGIC;
    signal inputBuf_0_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal inputBuf_0_V_ce0 : STD_LOGIC;
    signal inputBuf_0_V_we0 : STD_LOGIC;
    signal inputBuf_0_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal inputBuf_0_V_ce1 : STD_LOGIC;
    signal inputBuf_0_V_we1 : STD_LOGIC;
    signal ap_phi_mux_ptr_simd_phi_fu_139_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_s_fu_214_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_fu_363_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp1_stage0_01001 : BOOLEAN;
    signal tmp_8_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ofm_iter_fu_263_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_8_mid1_fu_269_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_exitcond_flatten_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_44_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_mid_fu_255_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_11_mid_fu_301_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_fu_321_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal nm_3_fu_315_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_mid2_fu_275_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_mid1_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_mid1_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_mid_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ptr_simd4_mid2_fu_327_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvar_flatten_op_fu_374_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;

    component Conv1DBuffer_new_bkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    inputBuf_0_V_U : component Conv1DBuffer_new_bkb
    generic map (
        DataWidth => 8,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => inputBuf_0_V_address0,
        ce0 => inputBuf_0_V_ce0,
        we0 => inputBuf_0_V_we0,
        d0 => in_V_V_dout,
        q0 => inputBuf_0_V_q0,
        address1 => inputBuf_0_V_addr_1_reg_420,
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


    indvar_flatten4_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                indvar_flatten4_reg_147 <= ap_const_lv25_0;
            elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                indvar_flatten4_reg_147 <= indvar_flatten_next4_fu_243_p2;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                indvar_flatten_reg_169 <= ap_const_lv17_0;
            elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                indvar_flatten_reg_169 <= indvar_flatten_next_fu_380_p3;
            end if; 
        end if;
    end process;

    nm_reg_180_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                nm_reg_180 <= ap_const_lv7_0;
            elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                nm_reg_180 <= nm_mid2_fu_355_p3;
            end if; 
        end if;
    end process;

    op1_assign_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                op1_assign_reg_158 <= ap_const_lv10_0;
            elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                op1_assign_reg_158 <= op1_assign_mid2_fu_307_p3;
            end if; 
        end if;
    end process;

    ptr_simd4_reg_191_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                ptr_simd4_reg_191 <= ap_const_lv10_0;
            elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
                ptr_simd4_reg_191 <= ptr_simd_2_fu_368_p2;
            end if; 
        end if;
    end process;

    ptr_simd_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ptr_simd_reg_135 <= ap_const_lv10_0;
            elsif (((tmp_reg_388 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                ptr_simd_reg_135 <= ptr_simd_1_reg_392;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                exitcond_flatten4_reg_397 <= exitcond_flatten4_fu_237_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                inputBuf_0_V_addr_1_reg_420 <= tmp_12_fu_363_p1(9 - 1 downto 0);
                or_cond_mid2_reg_411 <= or_cond_mid2_fu_347_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ptr_simd_1_reg_392 <= ptr_simd_1_fu_208_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_388 <= tmp_fu_202_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, tmp_fu_202_p2, ap_enable_reg_pp0_iter0, exitcond_flatten4_fu_237_p2, ap_enable_reg_pp1_iter0, ap_block_pp0_stage0_subdone, ap_block_pp1_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((tmp_fu_202_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((tmp_fu_202_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
            when ap_ST_fsm_pp1_stage0 => 
                if (not(((exitcond_flatten4_fu_237_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif (((exitcond_flatten4_fu_237_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
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

    ap_block_pp0_stage0_11001_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_reg_388)
    begin
                ap_block_pp0_stage0_11001 <= ((tmp_reg_388 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_reg_388)
    begin
                ap_block_pp0_stage0_subdone <= ((tmp_reg_388 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp1_stage0_01001_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_411, exitcond_flatten4_reg_397)
    begin
                ap_block_pp1_stage0_01001 <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten4_reg_397 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_411 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp1_stage0_11001_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_411, exitcond_flatten4_reg_397)
    begin
                ap_block_pp1_stage0_11001 <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten4_reg_397 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_411 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp1_stage0_subdone_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_411, exitcond_flatten4_reg_397)
    begin
                ap_block_pp1_stage0_subdone <= ((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (((exitcond_flatten4_reg_397 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_411 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(in_V_V_empty_n, tmp_reg_388)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((tmp_reg_388 = ap_const_lv1_0) and (in_V_V_empty_n = ap_const_logic_0));
    end process;

        ap_block_state5_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp1_stage0_iter1_assign_proc : process(in_V_V_empty_n, out_V_V_full_n, or_cond_mid2_reg_411, exitcond_flatten4_reg_397)
    begin
                ap_block_state6_pp1_stage0_iter1 <= (((exitcond_flatten4_reg_397 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((or_cond_mid2_reg_411 = ap_const_lv1_1) and (in_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(tmp_fu_202_p2)
    begin
        if ((tmp_fu_202_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_pp1_exit_iter0_state5_assign_proc : process(exitcond_flatten4_fu_237_p2)
    begin
        if ((exitcond_flatten4_fu_237_p2 = ap_const_lv1_1)) then 
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


    ap_phi_mux_ptr_simd_phi_fu_139_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_388, ptr_simd_reg_135, ptr_simd_1_reg_392)
    begin
        if (((tmp_reg_388 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_phi_mux_ptr_simd_phi_fu_139_p4 <= ptr_simd_1_reg_392;
        else 
            ap_phi_mux_ptr_simd_phi_fu_139_p4 <= ptr_simd_reg_135;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_flatten4_fu_237_p2 <= "1" when (indvar_flatten4_reg_147 = ap_const_lv25_1000000) else "0";
    exitcond_flatten_fu_249_p2 <= "1" when (indvar_flatten_reg_169 = ap_const_lv17_8000) else "0";

    in_V_V_blk_n_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_388, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, or_cond_mid2_reg_411)
    begin
        if ((((or_cond_mid2_reg_411 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0)) or ((tmp_reg_388 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            in_V_V_blk_n <= in_V_V_empty_n;
        else 
            in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_388, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_411, ap_block_pp0_stage0_11001, ap_block_pp1_stage0_11001)
    begin
        if ((((or_cond_mid2_reg_411 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)) or ((tmp_reg_388 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            in_V_V_read <= ap_const_logic_1;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten_next4_fu_243_p2 <= std_logic_vector(unsigned(indvar_flatten4_reg_147) + unsigned(ap_const_lv25_1));
    indvar_flatten_next_fu_380_p3 <= 
        ap_const_lv17_1 when (exitcond_flatten_fu_249_p2(0) = '1') else 
        indvar_flatten_op_fu_374_p2;
    indvar_flatten_op_fu_374_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_169) + unsigned(ap_const_lv17_1));

    inputBuf_0_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0, ap_enable_reg_pp1_iter0, tmp_s_fu_214_p1, tmp_12_fu_363_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1))) then 
            inputBuf_0_V_address0 <= tmp_12_fu_363_p1(9 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            inputBuf_0_V_address0 <= tmp_s_fu_214_p1(9 - 1 downto 0);
        else 
            inputBuf_0_V_address0 <= "XXXXXXXXX";
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


    inputBuf_0_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_388, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_reg_388 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            inputBuf_0_V_we0 <= ap_const_logic_1;
        else 
            inputBuf_0_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    inputBuf_0_V_we1_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, or_cond_mid2_reg_411, ap_block_pp1_stage0_11001)
    begin
        if (((or_cond_mid2_reg_411 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
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

    nm_3_fu_315_p2 <= std_logic_vector(unsigned(nm_mid_fu_255_p3) + unsigned(ap_const_lv7_1));
    nm_mid2_fu_355_p3 <= 
        nm_3_fu_315_p2 when (tmp_11_mid_fu_301_p2(0) = '1') else 
        nm_mid_fu_255_p3;
    nm_mid_fu_255_p3 <= 
        ap_const_lv7_0 when (exitcond_flatten_fu_249_p2(0) = '1') else 
        nm_reg_180;
    not_exitcond_flatten_fu_283_p2 <= (exitcond_flatten_fu_249_p2 xor ap_const_lv1_1);
    ofm_iter_fu_263_p2 <= std_logic_vector(unsigned(op1_assign_reg_158) + unsigned(ap_const_lv10_1));
    op1_assign_mid2_fu_307_p3 <= 
        ofm_iter_fu_263_p2 when (exitcond_flatten_fu_249_p2(0) = '1') else 
        op1_assign_reg_158;
    or_cond_fu_231_p2 <= (tmp_8_fu_219_p2 and tmp_10_fu_225_p2);
    or_cond_mid1_fu_341_p2 <= (tmp_8_mid2_fu_275_p3 and tmp_10_mid1_fu_335_p2);
    or_cond_mid2_fu_347_p3 <= 
        or_cond_mid1_fu_341_p2 when (tmp_11_mid_fu_301_p2(0) = '1') else 
        or_cond_mid_fu_289_p2;
    or_cond_mid_fu_289_p2 <= (or_cond_fu_231_p2 and not_exitcond_flatten_fu_283_p2);

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, exitcond_flatten4_reg_397)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (exitcond_flatten4_reg_397 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= inputBuf_0_V_q0;

    out_V_V_write_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, exitcond_flatten4_reg_397, ap_block_pp1_stage0_11001)
    begin
        if (((exitcond_flatten4_reg_397 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    ptr_simd4_mid2_fu_327_p3 <= 
        ap_const_lv10_0 when (tmp_34_fu_321_p2(0) = '1') else 
        ptr_simd4_reg_191;
    ptr_simd_1_fu_208_p2 <= std_logic_vector(unsigned(ap_phi_mux_ptr_simd_phi_fu_139_p4) + unsigned(ap_const_lv10_1));
    ptr_simd_2_fu_368_p2 <= std_logic_vector(unsigned(ptr_simd4_mid2_fu_327_p3) + unsigned(ap_const_lv10_1));

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

    tmp_10_fu_225_p2 <= "1" when (nm_reg_180 = ap_const_lv7_3F) else "0";
    tmp_10_mid1_fu_335_p2 <= "1" when (nm_3_fu_315_p2 = ap_const_lv7_3F) else "0";
    tmp_11_mid_fu_301_p2 <= (tmp_44_fu_295_p2 and not_exitcond_flatten_fu_283_p2);
    tmp_12_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ptr_simd4_mid2_fu_327_p3),64));
    tmp_34_fu_321_p2 <= (tmp_11_mid_fu_301_p2 or exitcond_flatten_fu_249_p2);
    tmp_44_fu_295_p2 <= "1" when (ptr_simd4_reg_191 = ap_const_lv10_200) else "0";
    tmp_8_fu_219_p2 <= "1" when (unsigned(op1_assign_reg_158) < unsigned(ap_const_lv10_1FF)) else "0";
    tmp_8_mid1_fu_269_p2 <= "1" when (unsigned(ofm_iter_fu_263_p2) < unsigned(ap_const_lv10_1FF)) else "0";
    tmp_8_mid2_fu_275_p3 <= 
        tmp_8_mid1_fu_269_p2 when (exitcond_flatten_fu_249_p2(0) = '1') else 
        tmp_8_fu_219_p2;
    tmp_fu_202_p2 <= "1" when (ap_phi_mux_ptr_simd_phi_fu_139_p4 = ap_const_lv10_200) else "0";
    tmp_s_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ptr_simd_reg_135),64));
end behav;
