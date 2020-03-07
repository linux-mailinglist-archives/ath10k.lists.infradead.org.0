Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E36C17CF95
	for <lists+ath10k@lfdr.de>; Sat,  7 Mar 2020 19:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CFFXmWHk+74sVJlZRuwXMhSzmUzhmvilZIccF7z2wz0=; b=sW5FqkvCOt13gD
	BYbRflC/fTpfRZaDyz0ZN8d7mTOw0vsj3JTnbnIzqHK19Gjw36WmMqhmjrWWi67X6xNPYKgwwdYDn
	tG/H3+4eRFpd2NwvFcq0liQQgL/a2iGzLyrUoHtndIoRDXUHFsQpDv08ri3pwrQSbOdz7zMF2THBZ
	twt3QNAFW+ag385q3bPmCCD+hYHgLDUlZySLSPpqgxqve2fYRdxHwzq/f1DlNpsfoaKhraHqK249C
	MFJrLsCREANeCwp582dFnlQOHGnboD5ammmHpfTUJIW2cCm1i6EGpF1EOqpz4TtHw5RqBtcnnTp+1
	VS/Ljw05MeX2IAhUN7AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAdxY-0005xL-Fo; Sat, 07 Mar 2020 18:14:00 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAdxT-0005wI-Gm
 for ath10k@lists.infradead.org; Sat, 07 Mar 2020 18:13:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Mar 2020 10:13:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,527,1574150400"; d="scan'208";a="230451322"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 07 Mar 2020 10:13:51 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jAdxO-000CXd-Ta; Sun, 08 Mar 2020 02:13:50 +0800
Date: Sun, 8 Mar 2020 02:13:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Manikanta Pubbisetty <mpubbise@codeaurora.org>
Subject: [ath6kl:pending 21/34] drivers/net/wireless/ath/ath11k/dp_rx.c:3078
 ath11k_dp_rx_h_defrag_reo_reinject() warn: unsigned 'buf_id' is never less
 than zero.
Message-ID: <202003080234.gIH7QWdj%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_101355_609237_DBCB8DFA 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: kbuild-all@lists.01.org, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending
head:   8098994ce0e3684547d874966af5d4c27c11f855
commit: 481e5890884c05226b129e9cae2dca58b22c1a4f [21/34] ath11k: handle RX fragments

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

New smatch warnings:
drivers/net/wireless/ath/ath11k/dp_rx.c:3078 ath11k_dp_rx_h_defrag_reo_reinject() warn: unsigned 'buf_id' is never less than zero.

Old smatch warnings:
drivers/net/wireless/ath/ath11k/dp_rx.c:3259 ath11k_dp_rx_frag_h_mpdu() warn: potential spectre issue 'peer->rx_tid' [r] (local cap)

vim +/buf_id +3078 drivers/net/wireless/ath/ath11k/dp_rx.c

  3023	
  3024	static int ath11k_dp_rx_h_defrag_reo_reinject(struct ath11k *ar, struct dp_rx_tid *rx_tid,
  3025						      struct sk_buff *defrag_skb)
  3026	{
  3027		struct ath11k_base *ab = ar->ab;
  3028		struct ath11k_pdev_dp *dp = &ar->dp;
  3029		struct dp_rxdma_ring *rx_refill_ring = &dp->rx_refill_buf_ring;
  3030		struct hal_rx_desc *rx_desc = (struct hal_rx_desc *)defrag_skb->data;
  3031		struct hal_reo_entrance_ring *reo_ent_ring;
  3032		struct hal_reo_dest_ring *reo_dest_ring;
  3033		struct dp_link_desc_bank *link_desc_banks;
  3034		struct hal_rx_msdu_link *msdu_link;
  3035		struct hal_rx_msdu_details *msdu0;
  3036		struct hal_srng *srng;
  3037		dma_addr_t paddr;
  3038		u32 desc_bank, msdu_info, mpdu_info;
  3039		u32 dst_idx, buf_id, cookie;
  3040		u32 *msdu_len_offset;
  3041		int ret;
  3042	
  3043		link_desc_banks = ab->dp.link_desc_banks;
  3044		reo_dest_ring = rx_tid->dst_ring_desc;
  3045	
  3046		ath11k_hal_rx_reo_ent_paddr_get(ab, reo_dest_ring, &paddr, &desc_bank);
  3047		msdu_link = (struct hal_rx_msdu_link *)(link_desc_banks[desc_bank].vaddr +
  3048				(paddr - link_desc_banks[desc_bank].paddr));
  3049		msdu0 = &msdu_link->msdu_link[0];
  3050		dst_idx = FIELD_GET(RX_MSDU_DESC_INFO0_REO_DEST_IND, msdu0->rx_msdu_info.info0);
  3051		memset(msdu0, 0, sizeof(*msdu0));
  3052	
  3053		msdu_info = FIELD_PREP(RX_MSDU_DESC_INFO0_FIRST_MSDU_IN_MPDU, 1) |
  3054			    FIELD_PREP(RX_MSDU_DESC_INFO0_LAST_MSDU_IN_MPDU, 1) |
  3055			    FIELD_PREP(RX_MSDU_DESC_INFO0_MSDU_CONTINUATION, 0) |
  3056			    FIELD_PREP(RX_MSDU_DESC_INFO0_MSDU_LENGTH,
  3057				       defrag_skb->len - HAL_RX_DESC_SIZE) |
  3058			    FIELD_PREP(RX_MSDU_DESC_INFO0_REO_DEST_IND, dst_idx) |
  3059			    FIELD_PREP(RX_MSDU_DESC_INFO0_VALID_SA, 1) |
  3060			    FIELD_PREP(RX_MSDU_DESC_INFO0_VALID_DA, 1);
  3061		msdu0->rx_msdu_info.info0 = msdu_info;
  3062	
  3063		/* change msdu len in hal rx desc */
  3064		msdu_len_offset = (u32 *)&rx_desc->msdu_start;
  3065		*msdu_len_offset &= ~(RX_MSDU_START_INFO1_MSDU_LENGTH);
  3066		*msdu_len_offset |= defrag_skb->len - HAL_RX_DESC_SIZE;
  3067	
  3068		paddr = dma_map_single(ab->dev, defrag_skb->data,
  3069				       defrag_skb->len + skb_tailroom(defrag_skb),
  3070				       DMA_FROM_DEVICE);
  3071		if (dma_mapping_error(ab->dev, paddr))
  3072			return -ENOMEM;
  3073	
  3074		spin_lock_bh(&rx_refill_ring->idr_lock);
  3075		buf_id = idr_alloc(&rx_refill_ring->bufs_idr, defrag_skb, 0,
  3076				   rx_refill_ring->bufs_max * 3, GFP_ATOMIC);
  3077		spin_unlock_bh(&rx_refill_ring->idr_lock);
> 3078		if (buf_id < 0) {
  3079			ret = -ENOMEM;
  3080			goto err_unmap_dma;
  3081		}
  3082	
  3083		ATH11K_SKB_RXCB(defrag_skb)->paddr = paddr;
  3084		cookie = FIELD_PREP(DP_RXDMA_BUF_COOKIE_PDEV_ID, dp->mac_id) |
  3085			 FIELD_PREP(DP_RXDMA_BUF_COOKIE_BUF_ID, buf_id);
  3086	
  3087		ath11k_hal_rx_buf_addr_info_set(msdu0, paddr, cookie, HAL_RX_BUF_RBM_SW3_BM);
  3088	
  3089		/* Fill mpdu details into reo entrace ring */
  3090		srng = &ab->hal.srng_list[ab->dp.reo_reinject_ring.ring_id];
  3091	
  3092		spin_lock_bh(&srng->lock);
  3093		ath11k_hal_srng_access_begin(ab, srng);
  3094	
  3095		reo_ent_ring = (struct hal_reo_entrance_ring *)
  3096				ath11k_hal_srng_src_get_next_entry(ab, srng);
  3097		if (!reo_ent_ring) {
  3098			ath11k_hal_srng_access_end(ab, srng);
  3099			spin_unlock_bh(&srng->lock);
  3100			ret = -ENOSPC;
  3101			goto err_free_idr;
  3102		}
  3103		memset(reo_ent_ring, 0, sizeof(*reo_ent_ring));
  3104	
  3105		ath11k_hal_rx_reo_ent_paddr_get(ab, reo_dest_ring, &paddr, &desc_bank);
  3106		ath11k_hal_rx_buf_addr_info_set(reo_ent_ring, paddr, desc_bank,
  3107						HAL_RX_BUF_RBM_WBM_IDLE_DESC_LIST);
  3108	
  3109		mpdu_info = FIELD_PREP(RX_MPDU_DESC_INFO0_MSDU_COUNT, 1) |
  3110			    FIELD_PREP(RX_MPDU_DESC_INFO0_SEQ_NUM, rx_tid->cur_sn) |
  3111			    FIELD_PREP(RX_MPDU_DESC_INFO0_FRAG_FLAG, 0) |
  3112			    FIELD_PREP(RX_MPDU_DESC_INFO0_VALID_SA, 1) |
  3113			    FIELD_PREP(RX_MPDU_DESC_INFO0_VALID_DA, 1) |
  3114			    FIELD_PREP(RX_MPDU_DESC_INFO0_RAW_MPDU, 1) |
  3115			    FIELD_PREP(RX_MPDU_DESC_INFO0_VALID_PN, 1);
  3116	
  3117		reo_ent_ring->rx_mpdu_info.info0 = mpdu_info;
  3118		reo_ent_ring->rx_mpdu_info.meta_data = reo_dest_ring->rx_mpdu_info.meta_data;
  3119		reo_ent_ring->queue_addr_lo = reo_dest_ring->queue_addr_lo;
  3120		reo_ent_ring->info0 = FIELD_PREP(HAL_REO_ENTR_RING_INFO0_QUEUE_ADDR_HI,
  3121						 FIELD_GET(HAL_REO_DEST_RING_INFO0_QUEUE_ADDR_HI,
  3122							   reo_dest_ring->info0)) |
  3123				      FIELD_PREP(HAL_REO_ENTR_RING_INFO0_DEST_IND, dst_idx);
  3124		ath11k_hal_srng_access_end(ab, srng);
  3125		spin_unlock_bh(&srng->lock);
  3126	
  3127		return 0;
  3128	
  3129	err_free_idr:
  3130		spin_lock_bh(&rx_refill_ring->idr_lock);
  3131		idr_remove(&rx_refill_ring->bufs_idr, buf_id);
  3132		spin_unlock_bh(&rx_refill_ring->idr_lock);
  3133	err_unmap_dma:
  3134		dma_unmap_single(ab->dev, paddr, defrag_skb->len + skb_tailroom(defrag_skb),
  3135				 DMA_FROM_DEVICE);
  3136		return ret;
  3137	}
  3138	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
