Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC7E1E24B9
	for <lists+ath10k@lfdr.de>; Tue, 26 May 2020 16:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UoduOFpl+8X1Au+0rMOxZ95j33K4eBIOK0miyAn7Mo=; b=KTDr3BXrratlSk
	uKYqQsT7W5FRnKGQabH0W+WH8BTeHVDt+IgyqZFy/nJGEzx7n4MCKgdTBEQRYA8dNHJ1azi0zzGEA
	mLOeWQ20FWXyFDczgrArYaNcKDTomGjsrq718oTgu2rVps12fDBS2pjJEaeMny0bB2g+EkMHU+P3m
	T3eJMjaBqK7OMwWqNxcw6ikbRUS9DZ/4qCPcWU5lrNOAsMc7On/a8GJsnWt3n6IRDpMrx5b61eBLB
	jUW1og/9RlvjgKTirXhu0WyPYitPmEZVz2XmIonfZL65AgeVg75x966SUKfS9ZLtvpWunmdwvfS/P
	WzDBAHF9raYyTxqnhEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdb2G-0004fd-CD; Tue, 26 May 2020 14:58:32 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdb2C-0004dV-0X
 for ath10k@lists.infradead.org; Tue, 26 May 2020 14:58:29 +0000
Received: by mail-pj1-f67.google.com with SMTP id z15so64321pjb.0
 for <ath10k@lists.infradead.org>; Tue, 26 May 2020 07:58:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=llTH2n++tTVLBhGsV5Icw97tnABVgUx2YdNChWoYrTA=;
 b=PJh4iXiTlB79vEunKZgIae9+rE0Saf46kVGhbd4rB+aLLGe/J2UH4uiZel6/x/ve0t
 IMWuVaDstbOx99dqkHJRp3Ydtdg6S2oihXxrRmczl1rwaUiHZh19JFtQQytMo/17Vdff
 K2hpZTq0mojMUDnE1w51o0jq89kLgflaO9Ohl8vliwM3N7O5ccsdIuq3HfIZcT/+V73l
 yOy7+IWhvHugH/nbgRmDXqd4oEKPrZ2dbrrn+Rxbuiyg4a0CXUYVp1jZXunTODvGIaJS
 kP/y6/ghlduMgZM4+tfYVt51GWs8HVyfDAicAhI6MvVAAtoLY9AkzVs9lXpraxgK+Olv
 oXPg==
X-Gm-Message-State: AOAM531Q3aA9uHzOZmOejRHPWdGtEnqHEosuN+Pme7y0l0XT6PXvsuu2
 61e3JcLWcgf0NB1R+grRHts=
X-Google-Smtp-Source: ABdhPJwoLk+CzF+2xFPkQVeiYW/eO+NfznDBzk/UqPA2DH3o60G3ZFjzILTFIgeEny9q5YmW6SiO+w==
X-Received: by 2002:a17:90b:1942:: with SMTP id
 nk2mr28015317pjb.54.1590505105597; 
 Tue, 26 May 2020 07:58:25 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id gq19sm79574pjb.5.2020.05.26.07.58.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 07:58:22 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9028741DCA; Tue, 26 May 2020 14:58:18 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: jeyu@kernel.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH v3 5/8] ath10k: use new taint_firmware_crashed()
Date: Tue, 26 May 2020 14:58:12 +0000
Message-Id: <20200526145815.6415-6-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200526145815.6415-1-mcgrof@kernel.org>
References: <20200526145815.6415-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_075828_065148_E2F23842 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com,
 linux-doc@vger.kernel.org, peterz@infradead.org, daniel.vetter@ffwll.ch,
 linux@dominikbrodowski.net, linux-kernel@vger.kernel.org,
 yamada.masahiro@socionext.com, glider@google.com,
 GR-everest-linux-l2@marvell.com, mchehab+samsung@kernel.org, will@kernel.org,
 michael.chan@broadcom.com, robh@kernel.org, paulmck@kernel.org, bhe@redhat.com,
 corbet@lwn.net, mchehab+huawei@kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, ath10k@lists.infradead.org,
 derosier@gmail.com, tiwai@suse.de, mingo@redhat.com, dvyukov@google.com,
 samitolvanen@google.com, yzaikin@google.com, dyoung@redhat.com,
 pmladek@suse.com, elver@google.com, sburla@marvell.com, aelior@marvell.com,
 keescook@chromium.org, arnd@arndb.de, sfr@canb.auug.org.au,
 gpiccoli@canonical.com, rostedt@goodmis.org, fmanlunas@marvell.com, cai@lca.pw,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 johannes@sipsolutions.net, kvalo@codeaurora.org, netdev@vger.kernel.org,
 rdunlap@infradead.org, schlad@suse.de, dianders@chromium.org, vkoul@kernel.org,
 mhiramat@kernel.org, akpm@linux-foundation.org, dchickles@marvell.com,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This makes use of the new taint_firmware_crashed() to help
annotate when firmware for device drivers crash. When firmware
crashes devices can sometimes become unresponsive, and recovery
sometimes requires a driver unload / reload and in the worst cases
a reboot.

Using a taint flag allows us to annotate when this happens clearly.

I have run into this situation with this driver with the latest
firmware as of today, May 21, 2020 using v5.6.0, leaving me at
a state at which my only option is to reboot. Driver removal and
addition does not fix the situation. This is reported on kernel.org
bugzilla korg#207851 [0]. But this isn't the first firmware crash reported,
others have been filed before and none of these bugs have yet been
addressed [1] [2] [3].  Including my own I see these firmware crash
reports:

  * korg#207851 [0]
  * korg#197013 [1]
  * korg#201237 [2]
  * korg#195987 [3]

[0] https://bugzilla.kernel.org/show_bug.cgi?id=207851
[1] https://bugzilla.kernel.org/show_bug.cgi?id=197013
[2] https://bugzilla.kernel.org/show_bug.cgi?id=201237
[3] https://bugzilla.kernel.org/show_bug.cgi?id=195987

Cc: linux-wireless@vger.kernel.org
Cc: ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>
Acked-by: Rafael Aquini <aquini@redhat.com>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/net/wireless/ath/ath10k/pci.c  | 2 ++
 drivers/net/wireless/ath/ath10k/sdio.c | 2 ++
 drivers/net/wireless/ath/ath10k/snoc.c | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 1d941d53fdc9..818c3acc2468 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -1767,6 +1767,7 @@ static void ath10k_pci_fw_dump_work(struct work_struct *work)
 		scnprintf(guid, sizeof(guid), "n/a");
 
 	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
+	taint_firmware_crashed();
 	ath10k_print_driver_info(ar);
 	ath10k_pci_dump_registers(ar, crash_data);
 	ath10k_ce_dump_registers(ar, crash_data);
@@ -2837,6 +2838,7 @@ static int ath10k_pci_hif_power_up(struct ath10k *ar,
 	if (ret) {
 		if (ath10k_pci_has_fw_crashed(ar)) {
 			ath10k_warn(ar, "firmware crashed during chip reset\n");
+			taint_firmware_crashed();
 			ath10k_pci_fw_crashed_clear(ar);
 			ath10k_pci_fw_crashed_dump(ar);
 		}
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index e2aff2254a40..8b2fc0b89be4 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -794,6 +794,7 @@ static int ath10k_sdio_mbox_proc_dbg_intr(struct ath10k *ar)
 
 	/* TODO: Add firmware crash handling */
 	ath10k_warn(ar, "firmware crashed\n");
+	taint_firmware_crashed();
 
 	/* read counter to clear the interrupt, the debug error interrupt is
 	 * counter 0.
@@ -915,6 +916,7 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
 	if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
 		ath10k_err(ar, "firmware crashed!\n");
 		queue_work(ar->workqueue, &ar->restart_work);
+		taint_firmware_crashed();
 	}
 	return ret;
 }
diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 354d49b1cd45..071ee7607a4c 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1451,6 +1451,7 @@ void ath10k_snoc_fw_crashed_dump(struct ath10k *ar)
 		scnprintf(guid, sizeof(guid), "n/a");
 
 	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
+	taint_firmware_crashed();
 	ath10k_print_driver_info(ar);
 	ath10k_msa_dump_memory(ar, crash_data);
 	mutex_unlock(&ar->dump_mutex);
-- 
2.26.2


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
