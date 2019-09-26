Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4FABF4FD
	for <lists+ath10k@lfdr.de>; Thu, 26 Sep 2019 16:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=spOMaMbRfHcgryCqOp64oFKv8/SGWqhi/TAKs5p3UNU=; b=fvT
	WJshd1hGY2Bho/hrwM6CeAOUlY9H4vAYZF5OgYTiMIornmY9c/8q2ZdCxccckOL7UBF00NV9cvBQA
	sj5JIC0QhGfDf6Bui9v2L8mPT6YhsjKM4PNGpoaMF6d1QOlAkOtWLP4R+c6QDp9jcB4FxJrXsgXqf
	uCgLLs2uMrcnzHNdo+Hb+ttfGP9MWmGSOIgxHJ5bBwHxXrPCAzct7da4h9G2BkCirJes5MWzojWZP
	mn4aUIgOieEaLDLKL+9gmcoxSY2K0hZuYxuwaI57Q2v/9bd8V3CSyIl0TE521phIhA2bLxUEyA3g0
	qwHiapV6tIf24//tcuEAUcSm/1bakyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUhA-0008VT-4G; Thu, 26 Sep 2019 14:24:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUh6-0008V6-0n
 for ath10k@lists.infradead.org; Thu, 26 Sep 2019 14:24:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 98A3160BE8; Thu, 26 Sep 2019 14:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569507871;
 bh=GCODvtjbhDXDVVj83RHxr17KUIFLZZfOpgfXP2PVhBU=;
 h=From:To:Cc:Subject:Date:From;
 b=Pz1/FkEYiXOJkXQ2DFT38g0TpCCyZQue/M+cEDyz32iirIjvfd98kcRutEWhBd908
 lFWzAf7dY703q9UjbKVE5kCzp11UbNSInkM6u1PNYWoBrdCYGSkCImoDz0/3gGLYwb
 D3Gyb09nygMJJ9jnly5lKZ0mfXVNdXGdsnkrvnss=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 41EAF609F3;
 Thu, 26 Sep 2019 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569507871;
 bh=GCODvtjbhDXDVVj83RHxr17KUIFLZZfOpgfXP2PVhBU=;
 h=From:To:Cc:Subject:Date:From;
 b=Pz1/FkEYiXOJkXQ2DFT38g0TpCCyZQue/M+cEDyz32iirIjvfd98kcRutEWhBd908
 lFWzAf7dY703q9UjbKVE5kCzp11UbNSInkM6u1PNYWoBrdCYGSkCImoDz0/3gGLYwb
 D3Gyb09nygMJJ9jnly5lKZ0mfXVNdXGdsnkrvnss=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 41EAF609F3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH RFT] ath10k: add QCA9377 sdio hw_param item
Date: Thu, 26 Sep 2019 17:24:27 +0300
Message-Id: <1569507867-19547-1-git-send-email-kvalo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_072432_107605_686CE0A2 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Erik Stromdahl <erik.stromdahl@gmail.com>

Add hardware parameters for QCA9377 sdio devices, it's now properly supported.

Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
---

I don't have any working QCA9377 SDIO hardware so I would appreciate any
test reports. This should apply cleanly to ath.git master branch (at least to
tag ath-201909230832):

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/log/?h=master

 drivers/net/wireless/ath/ath10k/core.c | 27 +++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/hw.h   |  3 +++
 2 files changed, 30 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 36c62d66c19e..e5572d4b6ae9 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -539,6 +539,33 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.tx_stats_over_pktlog = false,
 	},
 	{
+		.id = QCA9377_HW_1_1_DEV_VERSION,
+		.dev_id = QCA9377_1_0_DEVICE_ID,
+		.bus = ATH10K_BUS_SDIO,
+		.name = "qca9377 hw1.1 sdio",
+		.patch_load_addr = QCA9377_HW_1_0_PATCH_LOAD_ADDR,
+		.uart_pin = 19,
+		.otp_exe_param = 0,
+		.channel_counters_freq_hz = 88000,
+		.max_probe_resp_desc_thres = 0,
+		.cal_data_len = 8124,
+		.fw = {
+			.dir = QCA9377_HW_1_0_FW_DIR,
+			.board = QCA9377_HW_1_0_BOARD_DATA_FILE,
+			.board_size = QCA9377_BOARD_DATA_SZ,
+			.board_ext_size = QCA9377_BOARD_EXT_DATA_SZ,
+		},
+		.hw_ops = &qca6174_ops,
+		.hw_clk = qca6174_clk,
+		.target_cpu_freq = 176000000,
+		.decap_align_bytes = 4,
+		.n_cipher_suites = 8,
+		.num_peers = TARGET_QCA9377_HL_NUM_PEERS,
+		.ast_skid_limit = 0x10,
+		.num_wds_entries = 0x20,
+		.uart_pin_workaround = true,
+	},
+	{
 		.id = QCA4019_HW_1_0_DEV_VERSION,
 		.dev_id = 0,
 		.bus = ATH10K_BUS_AHB,
diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 2ae57c1de7b5..ddb1d23ec6de 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -768,6 +768,9 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
 #define TARGET_HL_TLV_AST_SKID_LIMIT		16
 #define TARGET_HL_TLV_NUM_WDS_ENTRIES		2
 
+/* Target specific defines for QCA9377 high latency firmware */
+#define TARGET_QCA9377_HL_NUM_PEERS		15
+
 /* Diagnostic Window */
 #define CE_DIAG_PIPE	7
 
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
