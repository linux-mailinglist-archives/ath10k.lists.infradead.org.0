Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BD91B37BD
	for <lists+ath10k@lfdr.de>; Wed, 22 Apr 2020 08:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHacaZlSDZxWmAwuYxn3QNauBsL+t0JBT3Xn51HhNRw=; b=qG6gMvO+WGuQHN
	XJMv8q0z2fIk5O7jta/KUiHx5rVc8T1qQMlyOGfA5G0mQK+tGZ4BAOooNS/TNYGtE6HJuOxLyUYDr
	ktT6Uh582NUE47ObwSNiP93gsNewO+t8fG4mWOSVa7m3d2r5fxlGVxSSpXg/Eh941V9PKNlgDUsLx
	q/9yr/Y1x3y2Y39c9C5uiMrj1E8I+4iv3jRnpsCltPwye5ZRlIZEzpzvy+q/c2JbDLI5sZqAwtmMo
	YqX1tCNTYiYRHrHL/+/dvRIsMCCY3SeMvsHlW56V/INZPXoZubSGRvSqJEeRD73PyzPy8zvtjIhSj
	fEGAjVwXnV9jCbR77z1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR98e-0007Ec-LP; Wed, 22 Apr 2020 06:45:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR98X-0004Re-GE
 for ath10k@lists.infradead.org; Wed, 22 Apr 2020 06:45:37 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587537935; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=a5WDziB/o4Kv75558ynJCP3d5o5ZcZPfSTpt+Q/Amec=;
 b=Ihq0x1itVfI4NfHiZDrUlJqAM2QidMTROnuDM5o6haUYfhFgs8WF4QHMaHBhm/MtKcEYst/C
 a7QMYvw3KUmhX5t0mRYmxPQXSQQE0wBCqjyJ1nAy/A3HUUKVHsF+Rhr5nJFJDp5P0tzljQAi
 ZjG08o1tBQ/l2+ePvRFoGLwGgxo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9fe805.7f59aa287110-smtp-out-n03;
 Wed, 22 Apr 2020 06:45:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 130FFC433F2; Wed, 22 Apr 2020 06:45:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3C9B7C433D2;
 Wed, 22 Apr 2020 06:45:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3C9B7C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add flush tx packets for SDIO chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200415233730.10581-1-wgong@codeaurora.org>
References: <20200415233730.10581-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200422064524.130FFC433F2@smtp.codeaurora.org>
Date: Wed, 22 Apr 2020 06:45:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_234535_709518_1009024D 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> When station connected to AP, and run TX traffic such as TCP/UDP, and
> system enter suspend state, then mac80211 call ath10k_flush with set
> drop flag, recently it only send wmi peer flush to firmware and
> firmware will flush all pending TX packets, for PCIe, firmware will
> indicate the TX packets status to ath10k, and then ath10k indicate to
> mac80211 TX complete with the status, then all the packets has been
> flushed at this moment. For SDIO chip, it is different, its TX
> complete indication is disabled by default, and it has a tx queue in
> ath10k, and its tx credit control is enabled, total tx credit is 96,
> when its credit is not sufficient, then the packets will buffered in
> the tx queue of ath10k, max packets is TARGET_TLV_NUM_MSDU_DESC_HL
> which is 1024, for SDIO, when mac80211 call ath10k_flush with set drop
> flag, maybe it have pending packets in tx queue of ath10k, and if it
> does not have sufficient tx credit, the packets will stay in queue
> untill tx credit report from firmware, if it is a noisy environment,
> tx speed is low and the tx credit report from firmware will delay more
> time, then the num_pending_tx will remain > 0 untill all packets send
> to firmware. After the 1st ath10k_flush, mac80211 will call the 2nd
> ath10k_flush without set drop flag immediately, then it will call to
> ath10k_mac_wait_tx_complete, and it wait untill num_pending_tx become
> to 0, in noisy environment, it is esay to wait about near 5 seconds,
> then it cause the suspend take long time.
> 
> 1st and 2nd callstack of ath10k_flush
> [  303.740427] ath10k_sdio mmc1:0001:1: ath10k_flush drop:1, pending:0-0
> [  303.740495] ------------[ cut here ]------------
> [  303.740739] WARNING: CPU: 1 PID: 3921 at /mnt/host/source/src/third_party/kernel/v4.19/drivers/net/wireless/ath/ath10k/mac.c:7025 ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.740757] Modules linked in: bridge stp llc ath10k_sdio ath10k_core rfcomm uinput cros_ec_rpmsg mtk_seninf mtk_cam_isp mtk_vcodec_enc mtk_fd mtk_vcodec_dec mtk_vcodec_common mtk_dip mtk_mdp3 videobuf2_dma_contig videobuf2_memops v4l2_mem2mem videobuf2_v4l2 videobuf2_common hid_google_hammer hci_uart btqca bluetooth dw9768 ov8856 ecdh_generic ov02a10 v4l2_fwnode mtk_scp mtk_rpmsg rpmsg_core mtk_scp_ipi ipt_MASQUERADE fuse iio_trig_sysfs cros_ec_sensors_ring cros_ec_sensors_sync cros_ec_light_prox cros_ec_sensors industrialio_triggered_buffer
> [  303.740914]  kfifo_buf cros_ec_activity cros_ec_sensors_core lzo_rle lzo_compress ath mac80211 zram cfg80211 joydev [last unloaded: ath10k_core]
> [  303.741009] CPU: 1 PID: 3921 Comm: kworker/u16:10 Tainted: G        W         4.19.95 #2
> [  303.741027] Hardware name: MediaTek krane sku176 board (DT)
> [  303.741061] Workqueue: events_unbound async_run_entry_fn
> [  303.741086] pstate: 60000005 (nZCv daif -PAN -UAO)
> [  303.741166] pc : ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.741244] lr : ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.741260] sp : ffffffdf080e77a0
> [  303.741276] x29: ffffffdf080e77a0 x28: ffffffdef3730040
> [  303.741300] x27: ffffff907c2240a0 x26: ffffffde6ff39afc
> [  303.741321] x25: ffffffdef3730040 x24: ffffff907bf61018
> [  303.741343] x23: ffffff907c2240a0 x22: ffffffde6ff39a50
> [  303.741364] x21: 0000000000000001 x20: ffffffde6ff39a50
> [  303.741385] x19: ffffffde6bac2420 x18: 0000000000017200
> [  303.741407] x17: ffffff907c24a000 x16: 0000000000000037
> [  303.741428] x15: ffffff907b49a568 x14: ffffff907cf332c1
> [  303.741476] x13: 00000000000922e4 x12: 0000000000000000
> [  303.741497] x11: 0000000000000001 x10: 0000000000000007
> [  303.741518] x9 : f2256b8c1de4bc00 x8 : f2256b8c1de4bc00
> [  303.741539] x7 : ffffff907ab5e764 x6 : 0000000000000000
> [  303.741560] x5 : 0000000000000080 x4 : 0000000000000001
> [  303.741582] x3 : ffffffdf080e74a8 x2 : ffffff907aa91244
> [  303.741603] x1 : ffffffdf080e74a8 x0 : 0000000000000024
> [  303.741624] Call trace:
> [  303.741701]  ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.741941]  __ieee80211_flush_queues+0x1dc/0x358 [mac80211]
> [  303.742098]  ieee80211_flush_queues+0x34/0x44 [mac80211]
> [  303.742253]  ieee80211_set_disassoc+0xc0/0x5ec [mac80211]
> [  303.742399]  ieee80211_mgd_deauth+0x720/0x7d4 [mac80211]
> [  303.742535]  ieee80211_deauth+0x24/0x30 [mac80211]
> [  303.742720]  cfg80211_mlme_deauth+0x250/0x3bc [cfg80211]
> [  303.742849]  cfg80211_mlme_down+0x90/0xd0 [cfg80211]
> [  303.742971]  cfg80211_disconnect+0x340/0x3a0 [cfg80211]
> [  303.743087]  __cfg80211_leave+0xe4/0x17c [cfg80211]
> [  303.743203]  cfg80211_leave+0x38/0x50 [cfg80211]
> [  303.743319]  wiphy_suspend+0x84/0x5bc [cfg80211]
> [  303.743335]  dpm_run_callback+0x170/0x304
> [  303.743346]  __device_suspend+0x2dc/0x3e8
> [  303.743356]  async_suspend+0x2c/0xb0
> [  303.743370]  async_run_entry_fn+0x48/0xf8
> [  303.743383]  process_one_work+0x304/0x604
> [  303.743394]  worker_thread+0x248/0x3f4
> [  303.743403]  kthread+0x120/0x130
> [  303.743416]  ret_from_fork+0x10/0x18
> 
> [  303.743812] ath10k_sdio mmc1:0001:1: ath10k_flush drop:0, pending:0-0
> [  303.743858] ------------[ cut here ]------------
> [  303.744057] WARNING: CPU: 1 PID: 3921 at /mnt/host/source/src/third_party/kernel/v4.19/drivers/net/wireless/ath/ath10k/mac.c:7025 ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.744075] Modules linked in: bridge stp llc ath10k_sdio ath10k_core rfcomm uinput cros_ec_rpmsg mtk_seninf mtk_cam_isp mtk_vcodec_enc mtk_fd mtk_vcodec_dec mtk_vcodec_common mtk_dip mtk_mdp3 videobuf2_dma_contig videobuf2_memops v4l2_mem2mem videobuf2_v4l2 videobuf2_common hid_google_hammer hci_uart btqca bluetooth dw9768 ov8856 ecdh_generic ov02a10 v4l2_fwnode mtk_scp mtk_rpmsg rpmsg_core mtk_scp_ipi ipt_MASQUERADE fuse iio_trig_sysfs cros_ec_sensors_ring cros_ec_sensors_sync cros_ec_light_prox cros_ec_sensors industrialio_triggered_buffer kfifo_buf cros_ec_activity cros_ec_sensors_core lzo_rle lzo_compress ath mac80211 zram cfg80211 joydev [last unloaded: ath10k_core]
> [  303.744256] CPU: 1 PID: 3921 Comm: kworker/u16:10 Tainted: G        W         4.19.95 #2
> [  303.744273] Hardware name: MediaTek krane sku176 board (DT)
> [  303.744301] Workqueue: events_unbound async_run_entry_fn
> [  303.744325] pstate: 60000005 (nZCv daif -PAN -UAO)
> [  303.744403] pc : ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.744480] lr : ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.744496] sp : ffffffdf080e77a0
> [  303.744512] x29: ffffffdf080e77a0 x28: ffffffdef3730040
> [  303.744534] x27: ffffff907c2240a0 x26: ffffffde6ff39afc
> [  303.744556] x25: ffffffdef3730040 x24: ffffff907bf61018
> [  303.744577] x23: ffffff907c2240a0 x22: ffffffde6ff39a50
> [  303.744598] x21: 0000000000000000 x20: ffffffde6ff39a50
> [  303.744620] x19: ffffffde6bac2420 x18: 000000000001831c
> [  303.744641] x17: ffffff907c24a000 x16: 0000000000000037
> [  303.744662] x15: ffffff907b49a568 x14: ffffff907cf332c1
> [  303.744683] x13: 00000000000922ea x12: 0000000000000000
> [  303.744704] x11: 0000000000000001 x10: 0000000000000007
> [  303.744747] x9 : f2256b8c1de4bc00 x8 : f2256b8c1de4bc00
> [  303.744768] x7 : ffffff907ab5e764 x6 : 0000000000000000
> [  303.744789] x5 : 0000000000000080 x4 : 0000000000000001
> [  303.744810] x3 : ffffffdf080e74a8 x2 : ffffff907aa91244
> [  303.744831] x1 : ffffffdf080e74a8 x0 : 0000000000000024
> [  303.744853] Call trace:
> [  303.744929]  ath10k_flush+0x54/0x104 [ath10k_core]
> [  303.745098]  __ieee80211_flush_queues+0x1dc/0x358 [mac80211]
> [  303.745277]  ieee80211_flush_queues+0x34/0x44 [mac80211]
> [  303.745424]  ieee80211_set_disassoc+0x108/0x5ec [mac80211]
> [  303.745569]  ieee80211_mgd_deauth+0x720/0x7d4 [mac80211]
> [  303.745706]  ieee80211_deauth+0x24/0x30 [mac80211]
> [  303.745853]  cfg80211_mlme_deauth+0x250/0x3bc [cfg80211]
> [  303.745979]  cfg80211_mlme_down+0x90/0xd0 [cfg80211]
> [  303.746103]  cfg80211_disconnect+0x340/0x3a0 [cfg80211]
> [  303.746219]  __cfg80211_leave+0xe4/0x17c [cfg80211]
> [  303.746335]  cfg80211_leave+0x38/0x50 [cfg80211]
> [  303.746452]  wiphy_suspend+0x84/0x5bc [cfg80211]
> [  303.746467]  dpm_run_callback+0x170/0x304
> [  303.746477]  __device_suspend+0x2dc/0x3e8
> [  303.746487]  async_suspend+0x2c/0xb0
> [  303.746498]  async_run_entry_fn+0x48/0xf8
> [  303.746510]  process_one_work+0x304/0x604
> [  303.746521]  worker_thread+0x248/0x3f4
> [  303.746530]  kthread+0x120/0x130
> [  303.746542]  ret_from_fork+0x10/0x18
> 
> one sample's debugging log: it wait 3190 ms(5000 - 1810).
> 
> 1st ath10k_flush, it has 120 packets in tx queue of ath10k:
> <...>-1513  [000] .... 25374.786005: ath10k_log_err: ath10k_sdio mmc1:0001:1 ath10k_flush drop:1, pending:120-0
> <...>-1513  [000] ...1 25374.788375: ath10k_log_warn: ath10k_sdio mmc1:0001:1 ath10k_htt_tx_mgmt_inc_pending htt->num_pending_mgmt_tx:0
> <...>-1500  [001] .... 25374.790143: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:121
> 
> 2st ath10k_flush, it has 121 packets in tx queue of ath10k:
> <...>-1513  [000] .... 25374.790571: ath10k_log_err: ath10k_sdio mmc1:0001:1 ath10k_flush drop:0, pending:121-0
> <...>-1513  [000] .... 25374.791990: ath10k_log_err: ath10k_sdio mmc1:0001:1 ath10k_mac_wait_tx_complete state:1 pending:121-0
> <...>-1508  [001] .... 25374.792696: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:46
> <...>-1508  [001] .... 25374.792700: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:46
> <...>-1508  [001] .... 25374.792729: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:121
> <...>-1508  [001] .... 25374.792937: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:88, count:32, len:49792
> <...>-1508  [001] .... 25374.793031: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:75, count:14, len:21784
> kworker/u16:0-25773 [003] .... 25374.793701: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx complete, eid:1, pending complete count:46
> <...>-1881  [000] .... 25375.073178: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:24
> <...>-1881  [000] .... 25375.073182: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:24
> <...>-1881  [000] .... 25375.073429: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:75
> <...>-1879  [001] .... 25375.074090: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx complete, eid:1, pending complete count:24
> <...>-1881  [000] .... 25375.074123: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:51, count:24, len:37344
> <...>-1879  [001] .... 25375.270126: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:26
> <...>-1879  [001] .... 25375.270130: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:26
> <...>-1488  [000] .... 25375.270174: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:51
> <...>-1488  [000] .... 25375.270529: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:25, count:26, len:40456
> <...>-1879  [001] .... 25375.270693: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx complete, eid:1, pending complete count:26
> <...>-1488  [001] .... 25377.775885: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:12
> <...>-1488  [001] .... 25377.775890: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:12
> <...>-1488  [001] .... 25377.775933: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:25
> <...>-1488  [001] .... 25377.776059: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:13, count:12, len:18672
> <...>-1879  [001] .... 25377.776100: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx complete, eid:1, pending complete count:12
> <...>-1488  [001] .... 25377.878079: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:15
> <...>-1488  [001] .... 25377.878087: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:15
> <...>-1879  [000] .... 25377.878323: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:13
> <...>-1879  [000] .... 25377.878487: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx status:0, eid:1, req count:0, count:13, len:20228
> <...>-1879  [000] .... 25377.878497: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx complete, eid:1, pending complete count:13
> <...>-1488  [001] .... 25377.919927: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit update: delta:11
> <...>-1488  [001] .... 25377.919932: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 credit total:13
> <...>-1488  [001] .... 25377.919976: ath10k_log_dbg: ath10k_sdio mmc1:0001:1 bundle tx work, eid:1, count:0
> <...>-1881  [000] .... 25377.982645: ath10k_log_warn: ath10k_sdio mmc1:0001:1 HTT_T2H_MSG_TYPE_MGMT_TX_COMPLETION status:0
> <...>-1513  [001] .... 25377.982973: ath10k_log_err: ath10k_sdio mmc1:0001:1 ath10k_mac_wait_tx_complete time_left:1810, pending:0-0
> 
> Flush all pending TX packets for the 1st ath10k_flush reduced the wait
> time of the 2nd ath10k_flush and then suspend take short time.
> 
> This Patch only effect SDIO chips.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

dd7fc5545bba ath10k: add flush tx packets for SDIO chip

-- 
https://patchwork.kernel.org/patch/11492115/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
