Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4D315D0C6
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 04:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KyauE2Ltc7+EzAmnF0zIslHQuLQOnMNfbRAgj1nJp60=; b=tGc/vZQkA6SrZQ
	vk3npEat/8t8CS2UPaS4IfeREneSASj1SOAjC7xhXM3YCFPld2WgGPgi0DdPs8M5s65IucFLEhRRZ
	LYEA7nHz3iNMaThpbVqT83oqDvV74YaLYzF4ViH6HPLyIxcucvwnav/cEccDQ7N+MGncrik5EOvoI
	EJAAE6RNLNgnSecoj2l+thXsx1gnevLF4tqgpAVn8eCNi5QuO8ZI/N9lGLvN/PXIDMsnEykoqPgAU
	G1ZXwPHmAQ8fEXlueIMe4Qn/VZydKnJ35LwU1w+tyTgzF3PDkBflCedgsTlqp6w06glx3/t5pZUnk
	MLoYLQYAseWF1EmQi3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2S5g-0000fv-Nh; Fri, 14 Feb 2020 03:56:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2S5d-0000fS-5E
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 03:56:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581652588; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=tVtPtPyxo7xHAoMpw/E8tVhShR3B9Zdc816oVViSjCY=;
 b=C7yg0hOpNsl7EleokhRlBqK+GZwF5Acv1cvXtwL1rD3Wohqg2AEzaTtmRaOYUZtMLcVZUwv9
 iDPiBWb957d8hV2XJ24teVi4zllP1w4SeENxvSQ4KL7AxQHhaIdBkpqx5pIjUfF4+T9cG2WE
 hi3YhOoke8e+lXetfaKUCK2fpR8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e461a6b.7fe0fc7740a0-smtp-out-n03;
 Fri, 14 Feb 2020 03:56:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DCE48C433A2; Fri, 14 Feb 2020 03:56:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3D21FC43383;
 Fri, 14 Feb 2020 03:56:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3D21FC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [RFC] ath10k: change to do napi_enable and napi_disable when insmod
 and rmmod for sdio
Date: Fri, 14 Feb 2020 11:55:55 +0800
Message-Id: <20200214035555.24762-1-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_195629_260728_97B1F2C2 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

It happened "Kernel panic - not syncing: hung_task: blocked tasks" when
test simulate crash and ifconfig down/rmmod meanwhile.

Test steps:

1.Test commands
echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash;sleep 0.05;ifconfig wlan0 down
echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash;rmmod ath10k_sdio

2. dmesg:
[ 5622.548630] ath10k_sdio mmc1:0001:1: simulating soft firmware crash
[ 5622.655995] ieee80211 phy0: Hardware restart was requested
[ 5776.355164] INFO: task shill:1572 blocked for more than 122 seconds.
[ 5776.355687] INFO: task kworker/1:2:24437 blocked for more than 122 seconds.
[ 5776.359812] Kernel panic - not syncing: hung_task: blocked tasks
[ 5776.359836] CPU: 1 PID: 55 Comm: khungtaskd Tainted: G        W         4.19.86 #137
[ 5776.359846] Hardware name: MediaTek krane sku176 board (DT)
[ 5776.359855] Call trace:
[ 5776.359868]  dump_backtrace+0x0/0x170
[ 5776.359881]  show_stack+0x20/0x2c
[ 5776.359896]  dump_stack+0xd4/0x10c
[ 5776.359916]  panic+0x12c/0x29c
[ 5776.359937]  hung_task_panic+0x0/0x50
[ 5776.359953]  kthread+0x120/0x130
[ 5776.359965]  ret_from_fork+0x10/0x18
[ 5776.359986] SMP: stopping secondary CPUs
[ 5776.360012] Kernel Offset: 0x141ea00000 from 0xffffff8008000000
[ 5776.360026] CPU features: 0x0,2188200c
[ 5776.360035] Memory Limit: none

command "ifconfig wlan0 down" or "rmmod ath10k_sdio" will be blocked
callstack of ifconfig:
[<0>] __switch_to+0x120/0x13c
[<0>] msleep+0x28/0x38
[<0>] ath10k_sdio_hif_stop+0x24c/0x294 [ath10k_sdio]
[<0>] ath10k_core_stop+0x50/0x78 [ath10k_core]
[<0>] ath10k_halt+0x120/0x178 [ath10k_core]
[<0>] ath10k_stop+0x4c/0x8c [ath10k_core]
[<0>] drv_stop+0xe0/0x1e4 [mac80211]
[<0>] ieee80211_stop_device+0x48/0x54 [mac80211]
[<0>] ieee80211_do_stop+0x678/0x6f8 [mac80211]
[<0>] ieee80211_stop+0x20/0x30 [mac80211]
[<0>] __dev_close_many+0xb8/0x11c
[<0>] __dev_change_flags+0xe0/0x1d0
[<0>] dev_change_flags+0x30/0x6c
[<0>] devinet_ioctl+0x370/0x564
[<0>] inet_ioctl+0xdc/0x304
[<0>] sock_do_ioctl+0x50/0x288
[<0>] compat_sock_ioctl+0x1b4/0x1aac
[<0>] __se_compat_sys_ioctl+0x100/0x26fc
[<0>] __arm64_compat_sys_ioctl+0x20/0x2c
[<0>] el0_svc_common+0xa4/0x154
[<0>] el0_svc_compat_handler+0x2c/0x38
[<0>] el0_svc_compat+0x8/0x18
[<0>] 0xffffffffffffffff

callstack of rmmod:
[<0>] __switch_to+0x120/0x13c
[<0>] msleep+0x28/0x38
[<0>] ath10k_sdio_hif_stop+0x294/0x31c [ath10k_sdio]
[<0>] ath10k_core_stop+0x50/0x78 [ath10k_core]
[<0>] ath10k_halt+0x120/0x178 [ath10k_core]
[<0>] ath10k_stop+0x4c/0x8c [ath10k_core]
[<0>] drv_stop+0xe0/0x1e4 [mac80211]
[<0>] ieee80211_stop_device+0x48/0x54 [mac80211]
[<0>] ieee80211_do_stop+0x678/0x6f8 [mac80211]
[<0>] ieee80211_stop+0x20/0x30 [mac80211]
[<0>] __dev_close_many+0xb8/0x11c
[<0>] dev_close_many+0x70/0x100
[<0>] dev_close+0x4c/0x80
[<0>] cfg80211_shutdown_all_interfaces+0x50/0xcc [cfg80211]
[<0>] ieee80211_remove_interfaces+0x58/0x1a0 [mac80211]
[<0>] ieee80211_unregister_hw+0x40/0x100 [mac80211]
[<0>] ath10k_mac_unregister+0x1c/0x44 [ath10k_core]
[<0>] ath10k_core_unregister+0x38/0x7c [ath10k_core]
[<0>] ath10k_sdio_remove+0x8c/0xd0 [ath10k_sdio]
[<0>] sdio_bus_remove+0x48/0x108
[<0>] device_release_driver_internal+0x138/0x1ec
[<0>] driver_detach+0x6c/0xa8
[<0>] bus_remove_driver+0x78/0xa8
[<0>] driver_unregister+0x30/0x50
[<0>] sdio_unregister_driver+0x28/0x34
[<0>] cleanup_module+0x14/0x6bc [ath10k_sdio]
[<0>] __arm64_sys_delete_module+0x1e0/0x22c
[<0>] el0_svc_common+0xa4/0x154
[<0>] el0_svc_compat_handler+0x2c/0x38
[<0>] el0_svc_compat+0x8/0x18
[<0>] 0xffffffffffffffff

The test command run simulate_fw_crash firstly and it call into
ath10k_sdio_hif_stop from ath10k_core_restart, then napi_disable
is called and bit NAPI_STATE_SCHED is set. After that, function
ath10k_sdio_hif_stop is called again from ath10k_stop by command
"ifconfig wlan0 down" or "rmmod ath10k_sdio", then command blocked.

It is blocked by napi_synchronize, napi_disable will set bit with
NAPI_STATE_SCHED, and then napi_synchronize will enter dead loop
becuase bit NAPI_STATE_SCHED is set by napi_disable.

function of napi_synchronize
static inline void napi_synchronize(const struct napi_struct *n)
{
	if (IS_ENABLED(CONFIG_SMP))
		while (test_bit(NAPI_STATE_SCHED, &n->state))
			msleep(1);
	else
		barrier();
}

function of napi_disable
void napi_disable(struct napi_struct *n)
{
	might_sleep();
	set_bit(NAPI_STATE_DISABLE, &n->state);

	while (test_and_set_bit(NAPI_STATE_SCHED, &n->state))
		msleep(1);
	while (test_and_set_bit(NAPI_STATE_NPSVC, &n->state))
		msleep(1);

	hrtimer_cancel(&n->timer);

	clear_bit(NAPI_STATE_DISABLE, &n->state);
}

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 7b894dcaad2e..b71499b171c6 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -1756,8 +1756,6 @@ static int ath10k_sdio_hif_start(struct ath10k *ar)
 	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 	int ret;
 
-	napi_enable(&ar->napi);
-
 	/* Sleep 20 ms before HIF interrupts are disabled.
 	 * This will give target plenty of time to process the BMI done
 	 * request before interrupts are disabled.
@@ -1884,7 +1882,6 @@ static void ath10k_sdio_hif_stop(struct ath10k *ar)
 	spin_unlock_bh(&ar_sdio->wr_async_lock);
 
 	napi_synchronize(&ar->napi);
-	napi_disable(&ar->napi);
 }
 
 #ifdef CONFIG_PM
@@ -2121,6 +2118,7 @@ static int ath10k_sdio_probe(struct sdio_func *func,
 
 	netif_napi_add(&ar->napi_dev, &ar->napi, ath10k_sdio_napi_poll,
 		       ATH10K_NAPI_BUDGET);
+	napi_enable(&ar->napi);
 
 	ath10k_dbg(ar, ATH10K_DBG_BOOT,
 		   "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
@@ -2235,6 +2233,7 @@ static void ath10k_sdio_remove(struct sdio_func *func)
 
 	ath10k_core_unregister(ar);
 
+	napi_disable(&ar->napi);
 	netif_napi_del(&ar->napi);
 
 	ath10k_core_destroy(ar);
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
