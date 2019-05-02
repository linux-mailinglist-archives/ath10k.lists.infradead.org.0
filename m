Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549911205B
	for <lists+ath10k@lfdr.de>; Thu,  2 May 2019 18:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpJ8eKSp4Il94I0m/dFewJ3aLm/++C1s+V+ZWAJgiJE=; b=a1Yu0bWwFZHEe8
	bk5dy4QgtYrBjAcPBot8qeAqyu9Oy6Xd9gdZ14A0nRWEqbj9XvtV2TYh2dSs5pBbh4u7Z45Anoio7
	Qsda5uCHLE0wcNJTWVqewI/XMvW12J/2PgsIZwHVwXHc+ImWGKGqK68jCQ06euO6hH1AA5EX0wFsJ
	K5y/6J/nTeewPM1rDYfh9UIPEKHDaVdiJ63/EvowlGDu3MygKLgoCgw5rTX1L2M2K0xk975V5Gv/X
	JezO81+kksuUQwCUkeLI+a+swZe6LldwohDDbLBymjalNyg9T5GDqn6E3/A0YxPpL60osUZmZSCI+
	j6BJsx+EMaRTax57HSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEgy-0005tG-VL; Thu, 02 May 2019 16:36:16 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEgs-0005rl-8p
 for ath10k@lists.infradead.org; Thu, 02 May 2019 16:36:12 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 09:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="320891324"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 May 2019 09:36:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMEgp-00039A-RR; Fri, 03 May 2019 00:36:07 +0800
Date: Fri, 3 May 2019 00:35:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Sathishkumar Muruganandam <murugana@codeaurora.org>
Subject: [RFC PATCH ath6kl] ath11k: ath11k_wmi_pull_pdev_stats_base() can be
 static
Message-ID: <20190502163548.GA11020@lkp-kbuild02>
References: <201905030017.UAWcRaLV%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905030017.UAWcRaLV%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_093610_354109_E00B8B48 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Kalle Valo <kvalo@codeaurora.org>, kbuild-all@01.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Fixes: d25cb35c6f10 ("ath11k: add support for FW stats via WMI")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 wmi.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/wmi.c b/drivers/net/wireless/ath/ath11k/wmi.c
index 8f116ee..1f969c9 100644
--- a/drivers/net/wireless/ath/ath11k/wmi.c
+++ b/drivers/net/wireless/ath/ath11k/wmi.c
@@ -4037,8 +4037,8 @@ int ath11k_pull_peer_assoc_conf_ev(struct ath11k_base *ab, u8 *evt_buf,
 	return 0;
 }
 
-void ath11k_wmi_pull_pdev_stats_base(const struct wmi_pdev_stats_base *src,
-				     struct ath11k_fw_stats_pdev *dst)
+static void ath11k_wmi_pull_pdev_stats_base(const struct wmi_pdev_stats_base *src,
+					    struct ath11k_fw_stats_pdev *dst)
 {
 	dst->ch_noise_floor = src->chan_nf;
 	dst->tx_frame_count = src->tx_frame_count;
@@ -4078,8 +4078,8 @@ ath11k_wmi_pull_pdev_stats_tx(const struct wmi_pdev_stats_tx *src,
 	dst->txop_ovf = src->txop_ovf;
 }
 
-void ath11k_wmi_pull_pdev_stats_rx(const struct wmi_pdev_stats_rx *src,
-				   struct ath11k_fw_stats_pdev *dst)
+static void ath11k_wmi_pull_pdev_stats_rx(const struct wmi_pdev_stats_rx *src,
+					  struct ath11k_fw_stats_pdev *dst)
 {
 	dst->mid_ppdu_route_change = src->mid_ppdu_route_change;
 	dst->status_rcvd = src->status_rcvd;
@@ -4354,7 +4354,7 @@ size_t ath11k_wmi_fw_stats_num_vdevs(struct list_head *head)
 	return num;
 }
 
-size_t ath11k_wmi_fw_stats_num_bcn(struct list_head *head)
+static size_t ath11k_wmi_fw_stats_num_bcn(struct list_head *head)
 {
 	struct ath11k_fw_stats_bcn *i;
 	size_t num = 0;
@@ -5600,7 +5600,7 @@ void ath11k_peer_assoc_conf_event(struct ath11k_base *ab, u8 *evt_buf, u32 len)
 	complete(&ar->peer_assoc_done);
 }
 
-void ath11k_update_stats_event(struct ath11k_base *ab, u8 *evt_buf, u32 len)
+static void ath11k_update_stats_event(struct ath11k_base *ab, u8 *evt_buf, u32 len)
 {
 	ath11k_debug_fw_stats_process(ab, evt_buf, len);
 }

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
