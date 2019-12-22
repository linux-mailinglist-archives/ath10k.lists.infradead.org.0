Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8AB128C3A
	for <lists+ath10k@lfdr.de>; Sun, 22 Dec 2019 03:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PSEH1LeJxHaI9alE4ihgJw+Qx1fqg21zpf/Bs+N6MRQ=; b=djR66QscOBCcp+
	gAlCOH+uJ+Kky3OmSVuKQb/PAYCJ0CGV4WGoB3MAoxKfYj6G1fDo4E2bmEK2vyHwMbukhs1ZAt+2X
	RMtYobtT6WO0pMpYUFSIMVYVZ0HWdu7UEZFZrv0lT0QAjbl/oHf37BRzvLlpdec69pWn0Q3NuKrtb
	9mSHdrkVONbZMaLZoQ0gd9X1ifIqjEgrXjFXI7QdFwEDY1DtoLh0fmci433bmExmbc9l/17ApZmoG
	cm3baLq5IWf2J7KvTrBtpPXJ2Nvh0s44fCdp43VKFxWXMQlMt06ToW9+5LBZUoH9lz6bNBUOOoU5c
	jgvTTbRBUOl9UwHB/zJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiqbu-0007GU-J9; Sun, 22 Dec 2019 02:04:46 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiqbq-0007GA-D9
 for ath10k@lists.infradead.org; Sun, 22 Dec 2019 02:04:44 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 18:04:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,342,1571727600"; d="scan'208";a="206920519"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2019 18:04:40 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iiqbo-000FPE-39; Sun, 22 Dec 2019 10:04:40 +0800
Date: Sun, 22 Dec 2019 10:03:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Carl Huang <cjhuang@codeaurora.org>
Subject: [ath6kl:ath11k-qca6390-mhi 36/48]
 drivers/net/wireless/ath/ath11k/dp_rx.c:332:17: sparse: sparse: incorrect
 type in assignment (different base types)
Message-ID: <201912221055.TWnEFB1s%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_180442_456641_200F1AE9 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
Cc: kbuild-all@lists.01.org, Kalle Valo <kvalo@codeaurora.org>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git ath11k-qca6390-mhi
head:   dc3ad30e8022e5f833d4ae26935f03aff6d1f733
commit: 2836722907d15b06d3e3ce9339f9f3cb2ab5da4e [36/48] ath11k: enable second mac related ring setup
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        git checkout 2836722907d15b06d3e3ce9339f9f3cb2ab5da4e
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/wireless/ath/ath11k/dp_rx.c:332:17: sparse: sparse: incorrect type in assignment (different base types)
   drivers/net/wireless/ath/ath11k/dp_rx.c:332:17: sparse:    expected struct dp_rxdma_ring *rx_ring
   drivers/net/wireless/ath/ath11k/dp_rx.c:332:17: sparse:    got struct dp_rxdma_ring ( * )[1]

vim +332 drivers/net/wireless/ath/ath11k/dp_rx.c

d5c65159f28953 Kalle Valo 2019-11-23  306  
d5c65159f28953 Kalle Valo 2019-11-23  307  static int ath11k_dp_rxdma_buf_ring_free(struct ath11k *ar,
d5c65159f28953 Kalle Valo 2019-11-23  308  					 struct dp_rxdma_ring *rx_ring)
d5c65159f28953 Kalle Valo 2019-11-23  309  {
2836722907d15b Carl Huang 2019-12-12  310  #ifdef CONFIG_ATH11K_AHB
d5c65159f28953 Kalle Valo 2019-11-23  311  	struct ath11k_pdev_dp *dp = &ar->dp;
2836722907d15b Carl Huang 2019-12-12  312  #endif
d5c65159f28953 Kalle Valo 2019-11-23  313  	struct sk_buff *skb;
d5c65159f28953 Kalle Valo 2019-11-23  314  	int buf_id;
d5c65159f28953 Kalle Valo 2019-11-23  315  
d5c65159f28953 Kalle Valo 2019-11-23  316  	spin_lock_bh(&rx_ring->idr_lock);
d5c65159f28953 Kalle Valo 2019-11-23  317  	idr_for_each_entry(&rx_ring->bufs_idr, skb, buf_id) {
d5c65159f28953 Kalle Valo 2019-11-23  318  		idr_remove(&rx_ring->bufs_idr, buf_id);
d5c65159f28953 Kalle Valo 2019-11-23  319  		/* TODO: Understand where internal driver does this dma_unmap of
d5c65159f28953 Kalle Valo 2019-11-23  320  		 * of rxdma_buffer.
d5c65159f28953 Kalle Valo 2019-11-23  321  		 */
d5c65159f28953 Kalle Valo 2019-11-23  322  		dma_unmap_single(ar->ab->dev, ATH11K_SKB_RXCB(skb)->paddr,
d5c65159f28953 Kalle Valo 2019-11-23  323  				 skb->len + skb_tailroom(skb), DMA_FROM_DEVICE);
d5c65159f28953 Kalle Valo 2019-11-23  324  		dev_kfree_skb_any(skb);
d5c65159f28953 Kalle Valo 2019-11-23  325  	}
d5c65159f28953 Kalle Valo 2019-11-23  326  
d5c65159f28953 Kalle Valo 2019-11-23  327  	idr_destroy(&rx_ring->bufs_idr);
d5c65159f28953 Kalle Valo 2019-11-23  328  	spin_unlock_bh(&rx_ring->idr_lock);
d5c65159f28953 Kalle Valo 2019-11-23  329  
2836722907d15b Carl Huang 2019-12-12  330  	//below code seems very buggy as double free.
2836722907d15b Carl Huang 2019-12-12  331  #ifdef CONFIG_ATH11K_AHB
d5c65159f28953 Kalle Valo 2019-11-23 @332  	rx_ring = &dp->rx_mon_status_refill_ring;
d5c65159f28953 Kalle Valo 2019-11-23  333  
d5c65159f28953 Kalle Valo 2019-11-23  334  	spin_lock_bh(&rx_ring->idr_lock);
d5c65159f28953 Kalle Valo 2019-11-23  335  	idr_for_each_entry(&rx_ring->bufs_idr, skb, buf_id) {
d5c65159f28953 Kalle Valo 2019-11-23  336  		idr_remove(&rx_ring->bufs_idr, buf_id);
d5c65159f28953 Kalle Valo 2019-11-23  337  		/* XXX: Understand where internal driver does this dma_unmap of
d5c65159f28953 Kalle Valo 2019-11-23  338  		 * of rxdma_buffer.
d5c65159f28953 Kalle Valo 2019-11-23  339  		 */
d5c65159f28953 Kalle Valo 2019-11-23  340  		dma_unmap_single(ar->ab->dev, ATH11K_SKB_RXCB(skb)->paddr,
d5c65159f28953 Kalle Valo 2019-11-23  341  				 skb->len + skb_tailroom(skb), DMA_BIDIRECTIONAL);
d5c65159f28953 Kalle Valo 2019-11-23  342  		dev_kfree_skb_any(skb);
d5c65159f28953 Kalle Valo 2019-11-23  343  	}
d5c65159f28953 Kalle Valo 2019-11-23  344  
d5c65159f28953 Kalle Valo 2019-11-23  345  	idr_destroy(&rx_ring->bufs_idr);
d5c65159f28953 Kalle Valo 2019-11-23  346  	spin_unlock_bh(&rx_ring->idr_lock);
2836722907d15b Carl Huang 2019-12-12  347  #endif
d5c65159f28953 Kalle Valo 2019-11-23  348  	return 0;
d5c65159f28953 Kalle Valo 2019-11-23  349  }
d5c65159f28953 Kalle Valo 2019-11-23  350  

:::::: The code at line 332 was first introduced by commit
:::::: d5c65159f2895379e11ca13f62feabe93278985d ath11k: driver for Qualcomm IEEE 802.11ax devices

:::::: TO: Kalle Valo <kvalo@codeaurora.org>
:::::: CC: Kalle Valo <kvalo@codeaurora.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
