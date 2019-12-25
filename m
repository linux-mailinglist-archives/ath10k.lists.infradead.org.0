Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DD312A7C8
	for <lists+ath10k@lfdr.de>; Wed, 25 Dec 2019 13:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWnpX1t1TTHJV6VreD0OmDaAXDLec3lMRpMRvzlZNdM=; b=oXZR2GlJosLcu4
	INAnPgFXnbUTX83Rqi08verBKCQaS3YSmXwfuKgvmKM/1KeQ6t5NFn/lBdwNd2JFFLtlPi5Y5adol
	03I7u+M9DjUndRgSYAwpHLvBINSEXFv9uwAhb/wpXRxMGjweq6RoVrFeYJoF92f4XYjMDedJnccO0
	WTZPU0apsyNjZ5SAuQoRGuopjukLlRlzTeuUu9a+ctrAfxi46eX9HulT6JwIf58rA+zKz7jUOMZQM
	7O5bQeBMrn8tyGXMULYLkcN/Gzf6hw9Qe+8FrVvbt1uljCZ9flqQWrg6A5KPeNQWF7lHfveyrN1s1
	GZWQn6EHLgsaD1w/p3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik5LP-0004OO-Es; Wed, 25 Dec 2019 12:00:51 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik5LL-0004NR-MO
 for ath10k@lists.infradead.org; Wed, 25 Dec 2019 12:00:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577275245; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=JPG/4QP0y4XmDFSdyriyRj8G4pKIhUocdrodG1kyhZ8=;
 b=p4j9zOYnCAfOVv6E4590abTWrhxjTbvOJS4Yc7o0tsURqnE2fjH+xiLiAVaNmJVDnlNnmRB8
 zp+YWsAZW/rbJazwpJG+imWj4lzjkSyhRTSCeEeMFBd5dGHd4DfmvT6Q/fnCJtM7KefiXemB
 hZjrN2O5fZE/KnwmTxJ54h/4ZVI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e034f67.7f5e985efc38-smtp-out-n01;
 Wed, 25 Dec 2019 12:00:39 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4AFD5C447A9; Wed, 25 Dec 2019 12:00:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 32086C447A6;
 Wed, 25 Dec 2019 12:00:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 32086C447A6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 1/2] ath10k: add refcount for ath10k_core_restart
Date: Wed, 25 Dec 2019 20:00:01 +0800
Message-Id: <20191225120002.11163-2-wgong@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191225120002.11163-1-wgong@codeaurora.org>
References: <20191225120002.11163-1-wgong@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_040047_795505_D56E36ED 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When it has more than one restart_work queued meanwhile, the 2nd
restart_work is very esay to break the 1st restart work and lead
recovery fail.

Add a ref count to allow only one restart work running untill
device successfully recovered.

This patch only effect sdio chips.

Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 8 ++++++++
 drivers/net/wireless/ath/ath10k/core.h | 2 ++
 drivers/net/wireless/ath/ath10k/mac.c  | 1 +
 3 files changed, 11 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 91f131b87efc..4e0e8c86bdd4 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2199,6 +2199,14 @@ static void ath10k_core_restart(struct work_struct *work)
 {
 	struct ath10k *ar = container_of(work, struct ath10k, restart_work);
 	int ret;
+	int restart_count;
+
+	restart_count = atomic_inc_and_test(&ar->restart_count);
+	if (restart_count > 1) {
+		ath10k_warn(ar, "can not restart, count: %d\n", restart_count);
+		atomic_dec(&ar->restart_count);
+		return;
+	}
 
 	set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);
 
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index e57b2e7235e3..810c99f2dc0e 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -982,6 +982,8 @@ struct ath10k {
 	/* protected by conf_mutex */
 	u8 ps_state_enable;
 
+	atomic_t restart_count;
+
 	bool nlo_enabled;
 	bool p2p;
 
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 3856edba7915..bc1574145e66 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7208,6 +7208,7 @@ static void ath10k_reconfig_complete(struct ieee80211_hw *hw,
 		ath10k_info(ar, "device successfully recovered\n");
 		ar->state = ATH10K_STATE_ON;
 		ieee80211_wake_queues(ar->hw);
+		atomic_dec(&ar->restart_count);
 	}
 
 	mutex_unlock(&ar->conf_mutex);
-- 
2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
