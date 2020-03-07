Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE9B17D0A0
	for <lists+ath10k@lfdr.de>; Sun,  8 Mar 2020 00:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tVxuFJDQ+MPUGHKg30Zbd84B3+A6IpF9BInODi+m6E=; b=D64mqwW4qN3Gtc
	lktla8wXcoiS0iDqWA+FBxMzFwJn4BJ/QXunLYj5zcQ/JJzn+t+/OhB8XnHeVJQavTZScrE92KvE+
	MN8/O1B2f9jj0EkGxH0hOacPsARhFACAqAEle06iYaAnMJXY4pvflR4SnU1tFuALpI/jCZBqSbQly
	pJzoXCeiCux+2s6wxUSgKgQBrFSlbkxloTq/bGbBZlupTs5NeJTMQ+CgOgIcPocEdqThD1xvtJivz
	+S0gU/W2TmzeEx3rPXbOeW7SDSqUAHVFEA4rXfE1UgD7S/VHmndQSGStRx8yZvHbIjUzJVqCu5o2H
	YVFVP6rtUmhEVVNXLMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAiqH-0003gN-3B; Sat, 07 Mar 2020 23:26:49 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAiqD-0003g5-MD
 for ath10k@lists.infradead.org; Sat, 07 Mar 2020 23:26:47 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Mar 2020 15:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,527,1574150400"; d="scan'208";a="230495502"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 07 Mar 2020 15:26:41 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jAiq8-0000E8-Pe; Sun, 08 Mar 2020 07:26:40 +0800
Date: Sun, 8 Mar 2020 07:26:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Manikanta Pubbisetty <mpubbise@codeaurora.org>
Subject: [ath6kl:pending 21/34]
 drivers/net/wireless/ath/ath11k/dp_rx.c:65:30: sparse: sparse: incorrect
 type in return expression (different base types)
Message-ID: <202003080728.koIGEO5E%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_152645_737671_0E320CDF 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-174-g094d5a94-dirty
        git checkout 481e5890884c05226b129e9cae2dca58b22c1a4f
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/wireless/ath/ath11k/dp_rx.c:65:30: sparse: sparse: incorrect type in return expression (different base types) @@    expected unsigned short @@    got resunsigned short @@
   drivers/net/wireless/ath/ath11k/dp_rx.c:65:30: sparse:    expected unsigned short
   drivers/net/wireless/ath/ath11k/dp_rx.c:65:30: sparse:    got restricted __le16
   drivers/net/wireless/ath/ath11k/dp_rx.c:2784:6: sparse: sparse: symbol 'ath11k_dp_rx_frag_timer' was not declared. Should it be static?

vim +65 drivers/net/wireless/ath/ath11k/dp_rx.c

    59	
    60	static u16 ath11k_dp_rx_h_mpdu_start_frag_no(struct sk_buff *skb)
    61	{
    62		struct ieee80211_hdr *hdr;
    63	
    64		hdr = (struct ieee80211_hdr *)(skb->data + HAL_RX_DESC_SIZE);
  > 65		return hdr->seq_ctrl & cpu_to_le16(IEEE80211_SCTL_FRAG);
    66	}
    67	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
