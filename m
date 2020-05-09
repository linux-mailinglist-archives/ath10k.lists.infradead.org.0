Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08291CBD8B
	for <lists+ath10k@lfdr.de>; Sat,  9 May 2020 06:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS4zaV+wkY3VC6uBTrUIDztclTJw17N8984aWlOG1mo=; b=GoQcRScZnQj1Zx
	9WFvMzt++Ud2Mx8f+32XwQYeEBW8bySI99uR/3PscgbCmgNidmc+QHJVviQL1jZl0SgkbWkoIHt/c
	qy7IjjqCil7FdLuNHNficZw1EpkSMuK3xFzF0H03vF5LNB3LhJLeoZ4MxUonWTr4Q0XyArAPv25NW
	936rQGz7waOwhnZW3Yk584QJ1Wrgv1p3cI5gurY7DgeBZtwRA0WYFWGaSNfoCfMx+4uX5YTKHzvdZ
	DcvOvR9tApUpqoT0SmoLzJq76Kuh3kBM+jRVozZq7N0RcUdjA505lRrhXC/1Ab2ERvs5EWbgUZR8u
	iUT2PnYTCdR4HmursbTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXHMw-0002qN-Ue; Sat, 09 May 2020 04:45:46 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXHMu-0002pu-0D
 for ath10k@lists.infradead.org; Sat, 09 May 2020 04:45:45 +0000
Received: by mail-pj1-f65.google.com with SMTP id k7so234490pjs.5
 for <ath10k@lists.infradead.org>; Fri, 08 May 2020 21:45:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=npAHADQxLDEpywMh/GQmSV8cKhjaz9uo2pCJ37X1d7Q=;
 b=jY7iUxwhyXZemU7nXmmD7u/dM1YBzUTOhX9zK58pccHSbkMyDA2Phc2kA/uJBU5ux0
 1tIU17FZkrj19MKAkGAiXppyn8y1kVp1qOukfeEuuGiIqgrsOSFazDHaWMvDF8dF7Z2m
 U1TjuveDX+nnDgwP4xG32exvWZFRLMXrdWnW1DMWzctMgm570JpP3AcD8w4LgBL7vvwZ
 6vyh17aZkeatBEX1aehE2fnP5dpaTjDCSJ9ktpbr2zg483ZmtU9zkLh8yp57maUxLK/x
 mMrsfuYju6Fd+xl2hSm0KzV4/fTPsI6P4HpmJ+qY8YzkNqc9KrBgicA1CkIgRnVz8j9h
 82EQ==
X-Gm-Message-State: AGi0PuZMmr+R69COEjRTZPU/eeDYehWapCdLv6u1jcp/xz8LwvyOjA6g
 IT3fxwLy/i1n1VBhiVq+WQs=
X-Google-Smtp-Source: APiQypLw6+nO2U4QWAJVDVbU2UVUQLz4x2Pd3twtzhhiEU7+VFbAvujZRZehlC9onWqGj3VvwxWp/A==
X-Received: by 2002:a17:902:ff09:: with SMTP id
 f9mr5748286plj.236.1588999542861; 
 Fri, 08 May 2020 21:45:42 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id h13sm2547498pgm.69.2020.05.08.21.45.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 21:45:41 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 54DB142337; Sat,  9 May 2020 04:36:01 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: jeyu@kernel.org
Subject: [PATCH 12/15] ath10k: use new module_firmware_crashed()
Date: Sat,  9 May 2020 04:35:49 +0000
Message-Id: <20200509043552.8745-13-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200509043552.8745-1-mcgrof@kernel.org>
References: <20200509043552.8745-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_214544_045317_EA16168C 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
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
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
