Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D117C1D5B72
	for <lists+ath10k@lfdr.de>; Fri, 15 May 2020 23:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V64mP1IdLLlWNBhI+3Y8IBK5uVlqcsZNNMBPMqVfsEQ=; b=E3Ud4kKDJg9cnL
	qXXqr9A7m7GeKky7LUDr3xd9iK6C165iKvqmW/dsnabln2C7+e9ZxJp+p9SJcoCN/asf3GFOrDJo+
	afYYYhdtpIZbkfiYKitmon1UWtvRGt91ezOu27T7U5VcnB3hY7V32AbCSVpwjy93KczEDsDb6QCNF
	iWEmOB8r6pnTG9OE2on2q1B6ivb+OSa5iSvepWpVoi99xDI6rqeiW1Gaj6RvVfil6awwBpQlbIEUj
	tFSqwRFftZVntcox/usN3IUDK/cZynQWEJpyAOi7YHqOaGPj/YUjkvu+OC3QvbjW/SHqaKxCKqr7w
	9bd+Ygqw9cyf01R8X/qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhtK-0001YL-1u; Fri, 15 May 2020 21:29:14 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhtE-0001X6-Il
 for ath10k@lists.infradead.org; Fri, 15 May 2020 21:29:11 +0000
Received: by mail-pf1-f194.google.com with SMTP id x2so1596211pfx.7
 for <ath10k@lists.infradead.org>; Fri, 15 May 2020 14:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+C5HUmb0IVN2XUMtCx+958ASlteYAzKSr3n9xtQKd1o=;
 b=t9ydQL7dMTMrUyijVrNaPscDnNXQlO323yS+gxHtC4ypg+ng1sG0u60eCTqZxzYIfe
 t4pSpMCguqkxtNnueo4e9gh3XCuPZY0tUsoq+SSGHMO5iQxhyS1bRF9GZwg53HPDOMr0
 TcvSP9pVRAS9mZsO+9gtgOkd5LNL/HgzMSijrLDmqPFDUW/v162AQCW7fBbCbQFJ8pR6
 pk7GjFz65Lp2kAfcFPAIlx1vsly51adNDxt27WfMLSt/lK3HXDJtrMwU/5Hc4ZWsip8Q
 MDKrTe2Wb1fUjgWfEQewgrZE35Nx7QHf+g6K3kBRsj/LhcaO9vc/XfIGL73QaLu/78GI
 QBGg==
X-Gm-Message-State: AOAM531eqgHgOTFFvWtyYP3u7IK6kE5xjKnxo6xc7qlSDB74gZ77BpYW
 R3fZwgADQK6iytEFrdmWwsc=
X-Google-Smtp-Source: ABdhPJx5aHzvT/Yod67FCxrd/rYpeLz+YvwfHeXEiG+n38C/BUT1hIQZlmj9K6EmCO5IWEzJJXgtBQ==
X-Received: by 2002:a63:ef05:: with SMTP id u5mr4866245pgh.237.1589578144777; 
 Fri, 15 May 2020 14:29:04 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id e18sm2688831pfh.75.2020.05.15.14.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 14:28:56 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 33D1942349; Fri, 15 May 2020 21:28:50 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: jeyu@kernel.org
Subject: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Date: Fri, 15 May 2020 21:28:43 +0000
Message-Id: <20200515212846.1347-13-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200515212846.1347-1-mcgrof@kernel.org>
References: <20200515212846.1347-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_142908_619937_2549A89F 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, akpm@linux-foundation.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This makes use of the new module_firmware_crashed() to help
annotate when firmware for device drivers crash. When firmware
crashes devices can sometimes become unresponsive, and recovery
sometimes requires a driver unload / reload and in the worst cases
a reboot.

Using a taint flag allows us to annotate when this happens clearly.

Cc: linux-wireless@vger.kernel.org
Cc: ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/net/wireless/ath/ath10k/pci.c  | 2 ++
 drivers/net/wireless/ath/ath10k/sdio.c | 2 ++
 drivers/net/wireless/ath/ath10k/snoc.c | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index 1d941d53fdc9..6bd0f3b518b9 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -1767,6 +1767,7 @@ static void ath10k_pci_fw_dump_work(struct work_struct *work)
 		scnprintf(guid, sizeof(guid), "n/a");
 
 	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
+	module_firmware_crashed();
 	ath10k_print_driver_info(ar);
 	ath10k_pci_dump_registers(ar, crash_data);
 	ath10k_ce_dump_registers(ar, crash_data);
@@ -2837,6 +2838,7 @@ static int ath10k_pci_hif_power_up(struct ath10k *ar,
 	if (ret) {
 		if (ath10k_pci_has_fw_crashed(ar)) {
 			ath10k_warn(ar, "firmware crashed during chip reset\n");
+			module_firmware_crashed();
 			ath10k_pci_fw_crashed_clear(ar);
 			ath10k_pci_fw_crashed_dump(ar);
 		}
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index e2aff2254a40..d34ad289380f 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -794,6 +794,7 @@ static int ath10k_sdio_mbox_proc_dbg_intr(struct ath10k *ar)
 
 	/* TODO: Add firmware crash handling */
 	ath10k_warn(ar, "firmware crashed\n");
+	module_firmware_crashed();
 
 	/* read counter to clear the interrupt, the debug error interrupt is
 	 * counter 0.
@@ -915,6 +916,7 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
 	if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
 		ath10k_err(ar, "firmware crashed!\n");
 		queue_work(ar->workqueue, &ar->restart_work);
+		module_firmware_crashed();
 	}
 	return ret;
 }
diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 354d49b1cd45..7cfc123c345c 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1451,6 +1451,7 @@ void ath10k_snoc_fw_crashed_dump(struct ath10k *ar)
 		scnprintf(guid, sizeof(guid), "n/a");
 
 	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
+	module_firmware_crashed();
 	ath10k_print_driver_info(ar);
 	ath10k_msa_dump_memory(ar, crash_data);
 	mutex_unlock(&ar->dump_mutex);
-- 
2.26.2


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
