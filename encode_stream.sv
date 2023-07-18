module encode_stream (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [15:0] minbits,
  input logic [15:0] maxbits,
  input logic [15:0] maxprec,
  input logic signed[15:0] minexp,
  input logic [5:0] s_bc,
  input logic [32:0] s_bp,
  input logic [0:0] s_last,
  input logic [0:0] s_valid,
  input logic [10:0] s_ex_data,
  input logic [0:0] s_ex_valid,
  output logic [0:0] s_ex_ready,
  output logic [0:0] s_ready,
  output logic [0:0] m_flush,
  output logic [63:0] m_bits_data_tdata,
  output logic [0:0] m_bits_data_tlast,
  output logic [0:0] m_bits_valid,
  input logic [0:0] m_bits_ready
);
  logic [2:0] cs_scclang_global_0_s;
  logic [6:0] cs_scclang_global_0_prec;
  logic [6:0] cs_scclang_global_0_planes;
  logic [127:0] cs_scclang_global_0_buf;
  logic [11:0] cs_scclang_global_0_bits;
  logic [7:0] cs_scclang_global_0_posr;
  logic [7:0] cs_scclang_global_0_posw;
  logic [2:0] ns_scclang_global_1_s;
  logic [6:0] ns_scclang_global_1_prec;
  logic [6:0] ns_scclang_global_1_planes;
  logic [127:0] ns_scclang_global_1_buf;
  logic [11:0] ns_scclang_global_1_bits;
  logic [7:0] ns_scclang_global_1_posr;
  logic [7:0] ns_scclang_global_1_posw;
  logic signed[31:0] pre_w_scclang_global_2 = 7;
  logic signed[31:0] tbc_w_scclang_global_3 = 12;
  logic signed[31:0] buf_w_scclang_global_4 = 128;
  logic signed[31:0] pos_w_scclang_global_5 = 8;
  always @(s_ex_valid or s_ex_data or m_bits_ready or minbits or maxbits or maxprec or minexp or s_bc or s_bp or s_last or s_valid or cs_scclang_global_0_s or cs_scclang_global_0_prec or cs_scclang_global_0_planes or cs_scclang_global_0_buf or cs_scclang_global_0_bits or cs_scclang_global_0_posr or cs_scclang_global_0_posw) begin: mc_proc
    logic [2:0] ts_mc_proc_local_2_s;
    logic [6:0] ts_mc_proc_local_2_prec;
    logic [6:0] ts_mc_proc_local_2_planes;
    logic [127:0] ts_mc_proc_local_2_buf;
    logic [11:0] ts_mc_proc_local_2_bits;
    logic [7:0] ts_mc_proc_local_2_posr;
    logic [7:0] ts_mc_proc_local_2_posw;
    logic [0:0] dis_done_mc_proc_local_3;
    logic [0:0] add_done_mc_proc_local_4;
    logic [0:0] pad_done_mc_proc_local_5;
    logic [0:0] fls_done_mc_proc_local_6;
    logic [11:0] pbits_mc_proc_local_7;
    logic [11:0] abits_mc_proc_local_8;
    logic [11:0] n_mc_proc_local_9;
    logic [2:0] ts_mc_proc_local_2_s__ref_0;
    logic [7:0] ts_mc_proc_local_2_posw__ref_0;
    logic [6:0] ts_mc_proc_local_2_prec__ref_0;
    logic [127:0] ts_mc_proc_local_2_buf__ref_0;
    logic [6:0] ts_mc_proc_local_2_planes__ref_0;
    logic [11:0] ts_mc_proc_local_2_bits__ref_0;
    logic [7:0] ts_mc_proc_local_2_posr__ref_0;
    
    ts_mc_proc_local_2_posr__ref_0 = ts_mc_proc_local_2_posr;
    ts_mc_proc_local_2_bits__ref_0 = ts_mc_proc_local_2_bits;
    ts_mc_proc_local_2_planes__ref_0 = ts_mc_proc_local_2_planes;
    ts_mc_proc_local_2_buf__ref_0 = ts_mc_proc_local_2_buf;
    ts_mc_proc_local_2_prec__ref_0 = ts_mc_proc_local_2_prec;
    ts_mc_proc_local_2_posw__ref_0 = ts_mc_proc_local_2_posw;
    ts_mc_proc_local_2_s__ref_0 = ts_mc_proc_local_2_s;
    s_ex_ready <= 0;
    s_ready <= 0;
    m_flush <= 0;
    m_bits_valid <= 0;
    ts_mc_proc_local_2_s__ref_0 = cs_scclang_global_0_s;
    ts_mc_proc_local_2_prec__ref_0 = cs_scclang_global_0_prec;
    ts_mc_proc_local_2_planes__ref_0 = cs_scclang_global_0_planes;
    ts_mc_proc_local_2_buf__ref_0 = cs_scclang_global_0_buf;
    ts_mc_proc_local_2_bits__ref_0 = cs_scclang_global_0_bits;
    ts_mc_proc_local_2_posr__ref_0 = cs_scclang_global_0_posr;
    ts_mc_proc_local_2_posw__ref_0 = cs_scclang_global_0_posw;
    case(ts_mc_proc_local_2_s__ref_0)
      0: begin
        ts_mc_proc_local_2_prec__ref_0 = sc_dt__sc_min_func_0(maxprec,sc_dt__sc_max_func_1(0,((s_ex_data) - (minexp)) + ((2) * ((2) + (1)))));
        ts_mc_proc_local_2_bits__ref_0 = 0;
        ts_mc_proc_local_2_planes__ref_0 = 0;
        ts_mc_proc_local_2_buf__ref_0 = 0;
        ts_mc_proc_local_2_posr__ref_0 = 0;
        ts_mc_proc_local_2_posw__ref_0 = 0;
        if (s_ex_valid) begin
          if (((s_ex_data) != (0)) && ((ts_mc_proc_local_2_prec__ref_0) != (0))) begin
            ts_mc_proc_local_2_s__ref_0 = 2;
          end else begin
            ts_mc_proc_local_2_s__ref_0 = 1;
          end

        end

      end
      1: begin
        ts_mc_proc_local_2_buf__ref_0[0] = 0;
        ts_mc_proc_local_2_bits__ref_0 = 1;
        ts_mc_proc_local_2_posw__ref_0 = 1;
        s_ex_ready <= 1;
        ts_mc_proc_local_2_s__ref_0 = 4;

      end
      2: begin
        ts_mc_proc_local_2_buf__ref_0[0] = 1;
        ts_mc_proc_local_2_buf__ref_0[11:1] = s_ex_data;
        ts_mc_proc_local_2_bits__ref_0 = (11) + (1);
        ts_mc_proc_local_2_posw__ref_0 = (11) + (1);
        s_ex_ready <= 1;
        if ((ts_mc_proc_local_2_planes__ref_0) < (ts_mc_proc_local_2_prec__ref_0)) begin
          ts_mc_proc_local_2_s__ref_0 = 3;
        end else begin
          ts_mc_proc_local_2_s__ref_0 = 4;
        end


      end
      3: begin
        if (s_valid) begin
          if (zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2(ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0,s_bc,s_bp,ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0)) begin
            s_ready <= 1;
            if (s_last) begin
              ts_mc_proc_local_2_planes__ref_0 = 64;
            end else begin
              ts_mc_proc_local_2_planes__ref_0 = (ts_mc_proc_local_2_planes__ref_0) + (1);
            end

          end
        end else begin
          s_ready <= 1;
        end

        dis_done_mc_proc_local_3 = (ts_mc_proc_local_2_planes__ref_0) == (64);
        add_done_mc_proc_local_4 = ((ts_mc_proc_local_2_planes__ref_0) >= (ts_mc_proc_local_2_prec__ref_0)) || ((ts_mc_proc_local_2_bits__ref_0) >= (maxbits));
        pad_done_mc_proc_local_5 = (ts_mc_proc_local_2_bits__ref_0) >= (minbits);
        fls_done_mc_proc_local_6 = zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3(ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0,(add_done_mc_proc_local_4) && (pad_done_mc_proc_local_5),ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0);
        if (add_done_mc_proc_local_4) begin
          if (((dis_done_mc_proc_local_3) && (pad_done_mc_proc_local_5)) && (fls_done_mc_proc_local_6)) begin
            ts_mc_proc_local_2_s__ref_0 = 0;
          end else begin
            ts_mc_proc_local_2_s__ref_0 = 4;
          end

        end

      end
      4: begin
        if (s_valid) begin
          if ((ts_mc_proc_local_2_planes__ref_0) < (64)) begin
            if ((ts_mc_proc_local_2_planes__ref_0) < ((64) - (2))) begin
              m_flush <= 1;
            end
            s_ready <= 1;
            if (s_last) begin
              ts_mc_proc_local_2_planes__ref_0 = 64;
            end else begin
              ts_mc_proc_local_2_planes__ref_0 = (ts_mc_proc_local_2_planes__ref_0) + (1);
            end

          end
        end else begin
          s_ready <= 1;
        end

        if ((ts_mc_proc_local_2_bits__ref_0) < (minbits)) begin
          pbits_mc_proc_local_7 = (minbits) - (ts_mc_proc_local_2_bits__ref_0);
          abits_mc_proc_local_8 = (64) - ((ts_mc_proc_local_2_bits__ref_0) & ((64) - (1)));
          n_mc_proc_local_9 = sc_dt__sc_min_func_4(pbits_mc_proc_local_7,abits_mc_proc_local_8);
          if (zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2(ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0,n_mc_proc_local_9,64'd0,ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0)) begin end;
        end
        dis_done_mc_proc_local_3 = (ts_mc_proc_local_2_planes__ref_0) == (64);
        pad_done_mc_proc_local_5 = (ts_mc_proc_local_2_bits__ref_0) >= (minbits);
        fls_done_mc_proc_local_6 = zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3(ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0,pad_done_mc_proc_local_5,ts_mc_proc_local_2_s__ref_0,ts_mc_proc_local_2_prec__ref_0,ts_mc_proc_local_2_planes__ref_0,ts_mc_proc_local_2_buf__ref_0,ts_mc_proc_local_2_bits__ref_0,ts_mc_proc_local_2_posr__ref_0,ts_mc_proc_local_2_posw__ref_0);
        if (((dis_done_mc_proc_local_3) && (pad_done_mc_proc_local_5)) && (fls_done_mc_proc_local_6)) begin
          ts_mc_proc_local_2_s__ref_0 = 0;
        end

      end
    endcase
    ns_scclang_global_1_s <= ts_mc_proc_local_2_s__ref_0;
    ns_scclang_global_1_prec <= ts_mc_proc_local_2_prec__ref_0;
    ns_scclang_global_1_planes <= ts_mc_proc_local_2_planes__ref_0;
    ns_scclang_global_1_buf <= ts_mc_proc_local_2_buf__ref_0;
    ns_scclang_global_1_bits <= ts_mc_proc_local_2_bits__ref_0;
    ns_scclang_global_1_posr <= ts_mc_proc_local_2_posr__ref_0;
    ns_scclang_global_1_posw <= ts_mc_proc_local_2_posw__ref_0;
    ts_mc_proc_local_2_s = ts_mc_proc_local_2_s__ref_0;
    ts_mc_proc_local_2_posw = ts_mc_proc_local_2_posw__ref_0;
    ts_mc_proc_local_2_prec = ts_mc_proc_local_2_prec__ref_0;
    ts_mc_proc_local_2_buf = ts_mc_proc_local_2_buf__ref_0;
    ts_mc_proc_local_2_planes = ts_mc_proc_local_2_planes__ref_0;
    ts_mc_proc_local_2_bits = ts_mc_proc_local_2_bits__ref_0;
    ts_mc_proc_local_2_posr = ts_mc_proc_local_2_posr__ref_0;
  end
  always_ff @(posedge clk) begin: ms_proc
    
    
    if ((reset) == (0)) begin
      cs_scclang_global_0_s <= 0;
      cs_scclang_global_0_prec <= 0;
      cs_scclang_global_0_planes <= 0;
      cs_scclang_global_0_buf <= 0;
      cs_scclang_global_0_bits <= 0;
      cs_scclang_global_0_posr <= 0;
      cs_scclang_global_0_posw <= 0;
    end else begin
      cs_scclang_global_0_s <= ns_scclang_global_1_s;
      cs_scclang_global_0_prec <= ns_scclang_global_1_prec;
      cs_scclang_global_0_planes <= ns_scclang_global_1_planes;
      cs_scclang_global_0_buf <= ns_scclang_global_1_buf;
      cs_scclang_global_0_bits <= ns_scclang_global_1_bits;
      cs_scclang_global_0_posr <= ns_scclang_global_1_posr;
      cs_scclang_global_0_posw <= ns_scclang_global_1_posw;
    end

  end
  function /* automatic */ logic [11:0] sc_dt__sc_min_func_4 (input logic [11:0] a, input logic [11:0] b);
  begin

    //return (a) <= (b) ? a : b;
    sc_dt__sc_min_func_4 = (a) <= (b) ? a : b;
  end
  endfunction
  function /* automatic */ logic [15:0] sc_dt__sc_min_func_0 (input logic [15:0] a, input logic [15:0] b);
  begin

    //return (a) <= (b) ? a : b;
    sc_dt__sc_min_func_0 = (a) <= (b) ? a : b;
  end
  endfunction
  function /* automatic */ logic signed[15:0] sc_dt__sc_max_func_1 (input logic signed[15:0] a, input logic signed[15:0] b);
  begin

    //return (a) >= (b) ? a : b;
    sc_dt__sc_max_func_1 = (a) >= (b) ? a : b;
  end
  endfunction
  function /* automatic */ logic [0:0] zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2 (input logic [2:0] ts_s, input logic [6:0] ts_prec, input logic [6:0] ts_planes, input logic [127:0] ts_buf, input logic [11:0] ts_bits, input logic [7:0] ts_posr, input logic [7:0] ts_posw, input logic [11:0] bc, input logic [127:0] bp, inout logic [2:0] ts_s__ref_0, inout logic [6:0] ts_prec__ref_0, inout logic [6:0] ts_planes__ref_0, inout logic [127:0] ts_buf__ref_0, inout logic [11:0] ts_bits__ref_0, inout logic [7:0] ts_posr__ref_0, inout logic [7:0] ts_posw__ref_0);
  begin
    logic [11:0] n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10;
    n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10 = sc_dt__sc_min_func_5(bc,(maxbits) - (ts_bits));
    if (((128) - (ts_posw)) >= (n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10)) begin
      ts_buf__ref_0 = ((((bp) >> (0)) & ~(~($bits(bp)'('b0)) << (((n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10) - (1)) - (0) + 1)) & ~(~($bits(bp)'('b0)) << ((((ts_posw) + (n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10)) - (1))-(ts_posw)+1))) << (ts_posw)) | ((ts_buf__ref_0) & ((~($bits(ts_buf__ref_0)'('b0)) ) << ((((ts_posw) + (n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10)) - (1)) + 1) | ~(( ~($bits(ts_buf__ref_0)'('b0)) ) << (ts_posw))));
      ts_bits__ref_0 = (ts_bits) + (n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10);
      ts_posw__ref_0 = (ts_posw) + (n_zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2_local_10);
      //return (1);
       zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2 = (1);
    end
    //return (0);
     zhw__encode_streamfp_t11_52_2_bits_t64__pack_bits_func_2 = (0);     
  end
  endfunction
  function /* automatic */ logic [0:0] zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3 (input logic [2:0] ts_s, input logic [6:0] ts_prec, input logic [6:0] ts_planes, input logic [127:0] ts_buf, input logic [11:0] ts_bits, input logic [7:0] ts_posr, input logic [7:0] ts_posw, input logic [0:0] done, inout logic [2:0] ts_s__ref_0, inout logic [6:0] ts_prec__ref_0, inout logic [6:0] ts_planes__ref_0, inout logic [127:0] ts_buf__ref_0, inout logic [11:0] ts_bits__ref_0, inout logic [7:0] ts_posr__ref_0, inout logic [7:0] ts_posw__ref_0);
  begin
    logic [7:0] bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11;
    logic [63:0] flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tdata;
    logic [0:0] flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tlast;
    bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11 = (ts_posw) - (ts_posr);
    if (((bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11) >= (64)) && (m_bits_ready)) begin
      flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tdata = ((ts_buf__ref_0) >> (ts_posr)) & ~(~($bits(ts_buf__ref_0)'('b0)) << ((((ts_posr) + (64)) - (1)) - (ts_posr) + 1));
      flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tlast = (done) && ((bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11) == (64));
      m_bits_data_tdata <= flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tdata;
      m_bits_data_tlast <= flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tlast;
      m_bits_valid <= 1;
      ts_buf__ref_0 = ((((ts_buf__ref_0) >> ((ts_posr) + (64))) & ~(~($bits(ts_buf__ref_0)'('b0)) << (((ts_posw) - (1)) - ((ts_posr) + (64)) + 1)) & ~(~($bits(ts_buf__ref_0)'('b0)) << (((ts_posw) - (64))-(0)+1))) << (0)) | ((ts_buf__ref_0) & ((~($bits(ts_buf__ref_0)'('b0)) ) << (((ts_posw) - (64)) + 1) | ~(( ~($bits(ts_buf__ref_0)'('b0)) ) << (0))));
      ts_posr__ref_0 = 0;
      ts_posw__ref_0 = (bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11) - (64);
      //return (flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tlast);
       zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3 = (flit_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_12_tlast);
    end
    //return ((done) && ((bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11) == (0)));
     zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3 = ((done) && ((bbits_zhw__encode_streamfp_t11_52_2_bits_t64__out_bits_func_3_local_11) == (0)));
  end
  endfunction
  function /* automatic */ logic [15:0] sc_dt__sc_min_func_5 (input logic [15:0] a, input logic [15:0] b);
  begin

    //return ((a) <= (b) ? a : b);
     sc_dt__sc_min_func_5 =  (a) <= (b) ? a : b;
  end
  endfunction
endmodule
