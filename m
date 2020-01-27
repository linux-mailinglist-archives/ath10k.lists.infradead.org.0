Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A283E14AA5F
	for <lists+ath10k@lfdr.de>; Mon, 27 Jan 2020 20:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t+ev3Vza+rI13PUzkJ64AS3I7y0wHOzwiDHkxY1ZrDQ=; b=cJZVAzsX5/Q0yIa1t19eTGX5ep
	wZ4QUUeJ907dKWQ5f6chrr3WxfY3gseu4jAIEhtjWE7cC+TbpHwMAWo8CkP8w6xzmOgLm0tRWgkWj
	hTzjvoXzIZUXalBI7gPBi8pV1IZUbwZ4lpq2wtFgODMpSl50y2kW5xkIEZa1rgjUpf7VYZcfw3wTA
	PpxelZeib981FohU06fOSk4f3jmNl8QguA8Vt7Amla7+obgAsR79EcUTUqEEgUeSnUSr6U0kVNWAa
	1dodhGGsoKQSFtHf2eCHsxHyvj4aBchOMpGGSaLC3S4cT8uHlD5ejJ4RdteqEi2JzljtBryLhemES
	NJwWIPQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9v0-0005nQ-7g; Mon, 27 Jan 2020 19:19:30 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9ut-0005k7-HQ
 for ath10k@lists.infradead.org; Mon, 27 Jan 2020 19:19:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580152765; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=SBxmIcskq7u6o43vWY8w27wO0NL30R6/MIFBwXQVI+U=;
 b=vvFLH7KZXR3LSCnJsJeZT15UVMwAiv0lU66k52mK7X+Mx76GLR7O5Ej3nhOLw4PAL20m6QVx
 JJEcNNwCUmPheUojzaw1I/UU7vTOlAEu5rElfGKCm1lHCdbOUiX3HreWcXeCiZvtHD0Ez2cS
 R2do3o334LQfQ0m8Qkat33boECg=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2f37b5.7fe44de98810-smtp-out-n02;
 Mon, 27 Jan 2020 19:19:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6FBB4C433A2; Mon, 27 Jan 2020 19:19:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from cheath10p342229-lin.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tamizhr)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E540C4479C;
 Mon, 27 Jan 2020 19:19:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6E540C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh Chelvam <tamizhr@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCHv2 2/2] ath10k: Add support to read btcoex related data from DT
Date: Tue, 28 Jan 2020 00:48:56 +0530
Message-Id: <1580152736-18654-2-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
References: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_111925_997740_6A12F2CE 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 Tamizh Chelvam <tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

BTCOEX feature is not supported by all QCA4019 chipsets.
Since btcoex enabled by default in firmware, host needs to
enable COEX support depends on the hardware. Enabling it
by default in unsupported hardware will cause some
feature disabled in hardware.
This patch will read btcoex_support flag and
wlan priority gpio pin number from DT. Depends on the
btcoex_support flag value host will expose BTCOEX support
and wlan priority gpio pin number to target.

Testing:
	* Tested HW : QCA4019
	* Tested FW : 10.4-3.2.1.1-00017

Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
---
v2:
  * Changed coex_support to bool type

 drivers/net/wireless/ath/ath10k/core.c  | 44 ++++++++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/core.h  |  3 +++
 drivers/net/wireless/ath/ath10k/debug.c |  3 +++
 drivers/net/wireless/ath/ath10k/mac.c   |  3 ++-
 drivers/net/wireless/ath/ath10k/wmi.c   |  2 +-
 5 files changed, 52 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 5ec16ce..5712e28 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2119,6 +2119,40 @@ static int ath10k_download_cal_data(struct ath10k *ar)
 	return 0;
 }
 
+static void ath10k_core_fetch_btcoex_dt(struct ath10k *ar)
+{
+	struct device_node *node;
+	u8 coex_support = 0;
+	int ret;
+
+	node = ar->dev->of_node;
+	if (!node)
+		goto out;
+
+	ret = of_property_read_u8(node, "qcom,coexist-support", &coex_support);
+	if (ret) {
+		ar->coex_support = true;
+		goto out;
+	}
+
+	if (coex_support) {
+		ar->coex_support = true;
+	} else {
+		ar->coex_support = false;
+		ar->coex_gpio_pin = -1;
+		goto out;
+	}
+
+	ret = of_property_read_u32(node, "qcom,coexist-gpio-pin",
+				   &ar->coex_gpio_pin);
+	if (ret)
+		ar->coex_gpio_pin = -1;
+
+out:
+	ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot coex_support %d coex_gpio_pin %d\n",
+		   ar->coex_support, ar->coex_gpio_pin);
+}
+
 static int ath10k_init_uart(struct ath10k *ar)
 {
 	int ret;
@@ -2696,14 +2730,22 @@ int ath10k_core_start(struct ath10k *ar, enum ath10k_firmware_mode mode,
 		if (test_bit(WMI_SERVICE_BSS_CHANNEL_INFO_64, ar->wmi.svc_map))
 			val |= WMI_10_4_BSS_CHANNEL_INFO_64;
 
+		ath10k_core_fetch_btcoex_dt(ar);
+
 		/* 10.4 firmware supports BT-Coex without reloading firmware
 		 * via pdev param. To support Bluetooth coexistence pdev param,
 		 * WMI_COEX_GPIO_SUPPORT of extended resource config should be
 		 * enabled always.
+		 *
+		 * We can still enable BTCOEX if firmware has the support
+		 * eventhough btceox_support value is
+		 * ATH10K_DT_BTCOEX_NOT_FOUND
 		 */
+
 		if (test_bit(WMI_SERVICE_COEX_GPIO, ar->wmi.svc_map) &&
 		    test_bit(ATH10K_FW_FEATURE_BTCOEX_PARAM,
-			     ar->running_fw->fw_file.fw_features))
+			     ar->running_fw->fw_file.fw_features) &&
+		    ar->coex_support)
 			val |= WMI_10_4_COEX_GPIO_SUPPORT;
 
 		if (test_bit(WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY,
diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 5101bf2..edf314e 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -1222,6 +1222,9 @@ struct ath10k {
 	struct ath10k_bus_params bus_param;
 	struct completion peer_delete_done;
 
+	bool coex_support;
+	int coex_gpio_pin;
+
 	/* must be last */
 	u8 drv_priv[0] __aligned(sizeof(void *));
 };
diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index e000677..3894b77 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -1978,6 +1978,9 @@ static ssize_t ath10k_write_btcoex(struct file *file,
 	if (strtobool(buf, &val) != 0)
 		return -EINVAL;
 
+	if (!ar->coex_support)
+		return -EOPNOTSUPP;
+
 	mutex_lock(&ar->conf_mutex);
 
 	if (ar->state != ATH10K_STATE_ON &&
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 7fee35f..ac3ad5c 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -4982,7 +4982,8 @@ static int ath10k_start(struct ieee80211_hw *hw)
 	param = ar->wmi.pdev_param->enable_btcoex;
 	if (test_bit(WMI_SERVICE_COEX_GPIO, ar->wmi.svc_map) &&
 	    test_bit(ATH10K_FW_FEATURE_BTCOEX_PARAM,
-		     ar->running_fw->fw_file.fw_features)) {
+		     ar->running_fw->fw_file.fw_features) &&
+	    ar->coex_support) {
 		ret = ath10k_wmi_pdev_set_param(ar, param, 0);
 		if (ret) {
 			ath10k_warn(ar,
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 61885d4..e76e365 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -8787,7 +8787,7 @@ static int ath10k_wmi_10_4_op_get_vdev_subtype(struct ath10k *ar,
 	cmd = (struct wmi_ext_resource_config_10_4_cmd *)skb->data;
 	cmd->host_platform_config = __cpu_to_le32(type);
 	cmd->fw_feature_bitmap = __cpu_to_le32(fw_feature_bitmap);
-	cmd->wlan_gpio_priority = __cpu_to_le32(-1);
+	cmd->wlan_gpio_priority = __cpu_to_le32(ar->coex_gpio_pin);
 	cmd->coex_version = __cpu_to_le32(WMI_NO_COEX_VERSION_SUPPORT);
 	cmd->coex_gpio_pin1 = __cpu_to_le32(-1);
 	cmd->coex_gpio_pin2 = __cpu_to_le32(-1);
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
