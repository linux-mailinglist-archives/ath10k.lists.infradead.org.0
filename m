Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9788FF45E0
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEb8U4oxmno1scQw6+SrbnAI3saOsuAQMwwuIGWJEys=; b=NXFHhqTRLXvD24
	8L2RRPQszZfmQo7M+9VOKVg0YNOKsLh7D+bNyYgAaE9XWroM0h9OEFUiX4Levozh0cGTpoT7k9yQk
	4uqe04es3fpBlGzzvkgHL9ZkmLNPugWapFzCmcfow63sDIqMGPPZIqg2Y9yda/A1Ql1NDiLphRwsj
	MQg5me6N0KAA6nZGO5ptrMT2BB78U5uQbelvQxiHAxCMUsffXWUe1nj1jgAzQBoQj1EXjppuua8wi
	Fh0MdcxFm3Lkvc33xc2wekDUOZD6YJ+KXaPU4h9WywiJYHo3RhUSmNfmeMNQxiu/8KVA4SPpRK4c1
	4fJzzGBJBkvXDgHjEYNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2at-000781-5Y; Fri, 08 Nov 2019 11:38:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2ap-00077I-1o
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 11:38:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2F4B20869;
 Fri,  8 Nov 2019 11:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213098;
 bh=i+9e5uzmPVSTjNnxlthc51AiwO2a9Rqc6wn1xXw9caw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G3j9EksLH+Lei38ldvTgU2g/Rpyh62ihOaPswjF2oVBjKhq5m4n0pqT9G5lssuLud
 N67p4HUkyaIrSPAHlYxtFUSPNNtpXSyOX/ij6jLW57zZ4THYHzfxh9NaGu83xQShmk
 quCjZj4BSG/0epW6aI4YNzuyQJhx4EjW76YjuZow=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 023/205] ath10k: skip resetting rx filter for
 WCN3990
Date: Fri,  8 Nov 2019 06:34:50 -0500
Message-Id: <20191108113752.12502-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_033819_131609_8AD2E7FF 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Rakesh Pillai <pillair@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Rakesh Pillai <pillair@codeaurora.org>

[ Upstream commit 58da3b42307061b71f2dcce2bd1185d578a3aa53 ]

WCN3990 has the MAC_PCU_ADDR1 configured properly
and hence it will not send spurious ack frames
during boot up.

Hence the reset_rx_filter workaround is not needed
for WCN3990. Add a hw_param to indicate if hardware rx
filter reset is needed and skip the reset_rx_filter for
WCN3990.

Tested HW: WCN3990
Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 17 ++++++++++++++++-
 drivers/net/wireless/ath/ath10k/hw.h   |  5 +++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 5210cffb53440..7e64fe426a055 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -91,6 +91,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.rx_ring_fill_level = HTT_RX_RING_FILL_LEVEL,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA988X_HW_2_0_VERSION,
@@ -124,6 +125,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA9887_HW_1_0_VERSION,
@@ -157,6 +159,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA6174_HW_2_1_VERSION,
@@ -189,6 +192,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA6174_HW_2_1_VERSION,
@@ -221,6 +225,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA6174_HW_3_0_VERSION,
@@ -253,6 +258,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA6174_HW_3_2_VERSION,
@@ -288,6 +294,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA99X0_HW_2_0_DEV_VERSION,
@@ -326,6 +333,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA9984_HW_1_0_DEV_VERSION,
@@ -369,6 +377,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA9888_HW_2_0_DEV_VERSION,
@@ -411,6 +420,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA9377_HW_1_0_DEV_VERSION,
@@ -443,6 +453,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA9377_HW_1_1_DEV_VERSION,
@@ -477,6 +488,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = QCA4019_HW_1_0_DEV_VERSION,
@@ -516,6 +528,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = false,
 		.shadow_reg_support = false,
 		.rri_on_ddr = false,
+		.hw_filter_reset_required = true,
 	},
 	{
 		.id = WCN3990_HW_1_0_DEV_VERSION,
@@ -540,6 +553,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.per_ce_irq = true,
 		.shadow_reg_support = true,
 		.rri_on_ddr = true,
+		.hw_filter_reset_required = false,
 	},
 };
 
@@ -2406,7 +2420,8 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 	 * possible to implicitly make it correct by creating a dummy vdev and
 	 * then deleting it.
 	 */
-	if (mode == ATH10K_FIRMWARE_MODE_NORMAL) {
+	if (ar->hw_params.hw_filter_reset_required &&
+	    mode == ATH10K_FIRMWARE_MODE_NORMAL) {
 		status = ath10k_core_reset_rx_filter(ar);
 		if (status) {
 			ath10k_err(ar,
diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
index 977f79ebb4fd5..fac58c3c576a2 100644
--- a/drivers/net/wireless/ath/ath10k/hw.h
+++ b/drivers/net/wireless/ath/ath10k/hw.h
@@ -589,6 +589,11 @@ struct ath10k_hw_params {
 
 	/* Number of bytes to be the offset for each FFT sample */
 	int spectral_bin_offset;
+
+	/* targets which require hw filter reset during boot up,
+	 * to avoid it sending spurious acks.
+	 */
+	bool hw_filter_reset_required;
 };
 
 struct htt_rx_desc;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
