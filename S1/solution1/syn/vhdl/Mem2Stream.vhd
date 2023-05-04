-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mem2Stream is
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
    m_axi_in_V_AWVALID : OUT STD_LOGIC;
    m_axi_in_V_AWREADY : IN STD_LOGIC;
    m_axi_in_V_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_WVALID : OUT STD_LOGIC;
    m_axi_in_V_WREADY : IN STD_LOGIC;
    m_axi_in_V_WDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_WSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_in_V_WLAST : OUT STD_LOGIC;
    m_axi_in_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_ARVALID : OUT STD_LOGIC;
    m_axi_in_V_ARREADY : IN STD_LOGIC;
    m_axi_in_V_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RVALID : IN STD_LOGIC;
    m_axi_in_V_RREADY : OUT STD_LOGIC;
    m_axi_in_V_RDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_RLAST : IN STD_LOGIC;
    m_axi_in_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_BVALID : IN STD_LOGIC;
    m_axi_in_V_BREADY : OUT STD_LOGIC;
    m_axi_in_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    in_V_offset : IN STD_LOGIC_VECTOR (31 downto 0);
    out_V_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of Mem2Stream is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_600 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000011000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv11_600 : STD_LOGIC_VECTOR (10 downto 0) := "11000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal in_V_blk_n_AR : STD_LOGIC;
    signal in_V_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_reg_147 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal tmp_reg_147_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_97 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_sig_ioackin_m_axi_in_V_ARREADY : STD_LOGIC;
    signal tmp_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state8_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_5_fu_135_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal e_V_reg_156 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state8 : STD_LOGIC;
    signal tmp_112_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_in_V_ARREADY : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal in_V_offset1_fu_108_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_290 : BOOLEAN;
    signal ap_condition_144 : BOOLEAN;


begin




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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state8) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state8)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state8);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_in_V_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                    if ((ap_const_boolean_1 = ap_condition_144)) then 
                        ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_0;
                    elsif ((ap_const_boolean_1 = ap_condition_290)) then 
                        ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_1;
                    end if;
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


    i_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_129_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_97 <= i_5_fu_135_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_reg_97 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_reg_147 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                e_V_reg_156 <= m_axi_in_V_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_147 <= tmp_fu_129_p2;
                tmp_reg_147_pp0_iter1_reg <= tmp_reg_147;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_sig_ioackin_m_axi_in_V_ARREADY, tmp_fu_129_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_sig_ioackin_m_axi_in_V_ARREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_fu_129_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_fu_129_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(7);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(8);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_in_V_RVALID, out_V_V_full_n, ap_enable_reg_pp0_iter1, tmp_reg_147, ap_enable_reg_pp0_iter2, tmp_reg_147_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_147 = ap_const_lv1_0) and (m_axi_in_V_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_in_V_RVALID, out_V_V_full_n, ap_enable_reg_pp0_iter1, tmp_reg_147, ap_enable_reg_pp0_iter2, tmp_reg_147_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_147 = ap_const_lv1_0) and (m_axi_in_V_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_in_V_RVALID, out_V_V_full_n, ap_enable_reg_pp0_iter1, tmp_reg_147, ap_enable_reg_pp0_iter2, tmp_reg_147_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((tmp_reg_147 = ap_const_lv1_0) and (m_axi_in_V_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state10_pp0_stage0_iter2_assign_proc : process(out_V_V_full_n, tmp_reg_147_pp0_iter1_reg)
    begin
                ap_block_state10_pp0_stage0_iter2 <= ((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0));
    end process;

        ap_block_state8_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state9_pp0_stage0_iter1_assign_proc : process(m_axi_in_V_RVALID, tmp_reg_147)
    begin
                ap_block_state9_pp0_stage0_iter1 <= ((tmp_reg_147 = ap_const_lv1_0) and (m_axi_in_V_RVALID = ap_const_logic_0));
    end process;


    ap_condition_144_assign_proc : process(real_start, ap_done_reg, ap_sig_ioackin_m_axi_in_V_ARREADY)
    begin
                ap_condition_144 <= not(((real_start = ap_const_logic_0) or (ap_sig_ioackin_m_axi_in_V_ARREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1)));
    end process;


    ap_condition_290_assign_proc : process(real_start, ap_done_reg, m_axi_in_V_ARREADY)
    begin
                ap_condition_290 <= (not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (m_axi_in_V_ARREADY = ap_const_logic_1));
    end process;


    ap_condition_pp0_exit_iter0_state8_assign_proc : process(tmp_fu_129_p2)
    begin
        if ((tmp_fu_129_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state8 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state8 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    ap_sig_ioackin_m_axi_in_V_ARREADY_assign_proc : process(m_axi_in_V_ARREADY, ap_reg_ioackin_m_axi_in_V_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_in_V_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_in_V_ARREADY <= m_axi_in_V_ARREADY;
        else 
            ap_sig_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    i_5_fu_135_p2 <= std_logic_vector(unsigned(i_reg_97) + unsigned(ap_const_lv11_1));

    in_V_blk_n_AR_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, m_axi_in_V_ARREADY)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            in_V_blk_n_AR <= m_axi_in_V_ARREADY;
        else 
            in_V_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    in_V_blk_n_R_assign_proc : process(m_axi_in_V_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_147)
    begin
        if (((tmp_reg_147 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            in_V_blk_n_R <= m_axi_in_V_RVALID;
        else 
            in_V_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    in_V_offset1_fu_108_p4 <= in_V_offset(31 downto 3);

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_in_V_ARADDR <= tmp_112_fu_118_p1(32 - 1 downto 0);
    m_axi_in_V_ARBURST <= ap_const_lv2_0;
    m_axi_in_V_ARCACHE <= ap_const_lv4_0;
    m_axi_in_V_ARID <= ap_const_lv1_0;
    m_axi_in_V_ARLEN <= ap_const_lv32_600;
    m_axi_in_V_ARLOCK <= ap_const_lv2_0;
    m_axi_in_V_ARPROT <= ap_const_lv3_0;
    m_axi_in_V_ARQOS <= ap_const_lv4_0;
    m_axi_in_V_ARREGION <= ap_const_lv4_0;
    m_axi_in_V_ARSIZE <= ap_const_lv3_0;
    m_axi_in_V_ARUSER <= ap_const_lv1_0;

    m_axi_in_V_ARVALID_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ap_reg_ioackin_m_axi_in_V_ARREADY)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_reg_ioackin_m_axi_in_V_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_in_V_ARVALID <= ap_const_logic_1;
        else 
            m_axi_in_V_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_in_V_AWADDR <= ap_const_lv32_0;
    m_axi_in_V_AWBURST <= ap_const_lv2_0;
    m_axi_in_V_AWCACHE <= ap_const_lv4_0;
    m_axi_in_V_AWID <= ap_const_lv1_0;
    m_axi_in_V_AWLEN <= ap_const_lv32_0;
    m_axi_in_V_AWLOCK <= ap_const_lv2_0;
    m_axi_in_V_AWPROT <= ap_const_lv3_0;
    m_axi_in_V_AWQOS <= ap_const_lv4_0;
    m_axi_in_V_AWREGION <= ap_const_lv4_0;
    m_axi_in_V_AWSIZE <= ap_const_lv3_0;
    m_axi_in_V_AWUSER <= ap_const_lv1_0;
    m_axi_in_V_AWVALID <= ap_const_logic_0;
    m_axi_in_V_BREADY <= ap_const_logic_0;

    m_axi_in_V_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_147, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_reg_147 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_in_V_RREADY <= ap_const_logic_1;
        else 
            m_axi_in_V_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_in_V_WDATA <= ap_const_lv64_0;
    m_axi_in_V_WID <= ap_const_lv1_0;
    m_axi_in_V_WLAST <= ap_const_logic_0;
    m_axi_in_V_WSTRB <= ap_const_lv8_0;
    m_axi_in_V_WUSER <= ap_const_lv1_0;
    m_axi_in_V_WVALID <= ap_const_logic_0;

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, tmp_reg_147_pp0_iter1_reg)
    begin
        if (((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= e_V_reg_156;

    out_V_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, tmp_reg_147_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_reg_147_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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

    tmp_112_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(in_V_offset1_fu_108_p4),64));
    tmp_fu_129_p2 <= "1" when (i_reg_97 = ap_const_lv11_600) else "0";
end behav;
