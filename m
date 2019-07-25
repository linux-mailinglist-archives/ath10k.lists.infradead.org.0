Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9957472C
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 08:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ibqpp3JZ19ErcjEk5/2W2UBRw8RBedr5b6AV7f55N+Y=; b=hot
	959FPT5fI6J/1lRfBJBLFLsnNfM+uSWpBXXEqLOxaRQKG/zFG14VAln4q6L26xArdBDPWVfCLaZa5
	B9V4NbEevZ9b1YVCqZlO3zk2ZvD3MEd7I53BTkPURx8a7QZR4e++easTYSe1cfMwhhxC99mta5SS/
	mqGngdU4xveQyASt0pkCQQK87IEtar9B/h/2ZB9mkkBCfBty+4z4GhY0T5Eu9TCs4UX6a/DcbQsao
	ByEritS3j9XJSZk/JDpKcPBx+LsyzOiuoseg0q6iDsaMaciK5WTkMYziDpsS6fjmmtu+MEq4Kng9p
	PcOV3k5QpmdN/+FpD3UnajO3oIgWHyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqXHe-00088N-0w; Thu, 25 Jul 2019 06:31:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqXHV-00087m-KJ
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 06:31:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so22895052pls.8
 for <ath10k@lists.infradead.org>; Wed, 24 Jul 2019 23:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8XFmRxjQUZHfVuRq3opWFethuoNp09CnP8B4IXsgP2g=;
 b=lDvH4bOZdi3rf06kd04Z6/z7aZTM9n3BDjMG1P4MiI9U2bq4ihnjOdRiMDojZC3cdQ
 wQVDtkyW1W70wY/r0o/WnUlce5m9eCRRyGMdpQ4C2L0z/2p2CMuMdijk7f2tAaaJa6MO
 Di5KFe+egyDw/zmlP597M+we8ZV9NleQEAOlCUnTEEEuClbE37sd0XDyZy/6kzhu15IE
 rB+OziPI0jqEn9heW52ZFS9rJC/mc8iS9f/OPH+vLM/DQVuniiQGxBZpcCSszPNt8CZc
 QF943y7g3Cn55w26SgFH4CQGfT0pPyz2G9P4yZ+5x+2pbuhPDtDJRrqtxFuQ+BYDAZWf
 iiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8XFmRxjQUZHfVuRq3opWFethuoNp09CnP8B4IXsgP2g=;
 b=VuGAXPSPb94JJa/wKSDvACYOBDfI0YqTIUuvQjWI5qOdXajSMFNWC3MhXp2m8qYqBf
 vzAFpUfESee+lKGQLzg256bfGAnok6Eb97t02lLxYIHi5TJmVajSUsBsMf9HTI6HrkR7
 OmE/x+cz98eX2KusoJaC4oCcpRdM0RoIUOUpIxgTTnneK4Sdi8blVW6g1PJRXiZ/oQ6N
 Wa+VTt+I/D3T1Ep6Rag2fluhZOOpbcY1P8LsElkTAUjHXj3gyRyuWjEotl3rDIKSRI2w
 XJ10Plz8kQg5U8w2WoeOQhovRfSWGpcC6rV7MkkKb1x+axqwZitUnhD8Wm+rPDHsOSLe
 51gw==
X-Gm-Message-State: APjAAAWuRgbMKO8lEIDeD8rtZh5L8E5PDl6jJ8dQy2PMuC/Ojpqsh8CA
 D+1rPOoTdJAFVY5zSEO7lI72OQ==
X-Google-Smtp-Source: APXvYqz6+fZBBApCPKsAaDn53hy/LvF1r11aSW4WKDF6l32eyUiF7aK+w6f4RqwdNS/8CTcIi1LqWg==
X-Received: by 2002:a17:902:7c90:: with SMTP id
 y16mr90845841pll.238.1564036272112; 
 Wed, 24 Jul 2019 23:31:12 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w18sm61226317pfj.37.2019.07.24.23.31.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 23:31:11 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ath10k: Fix HOST capability QMI incompatibility
Date: Wed, 24 Jul 2019 23:31:08 -0700
Message-Id: <20190725063108.15790-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_233113_734731_F16A390D 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, ath10k@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The introduction of 768ec4c012ac ("ath10k: update HOST capability QMI
message") served the purpose of supporting the new and extended HOST
capability QMI message.

But while the new message adds a slew of optional members it changes the
data type of the "daemon_support" member, which means that older
versions of the firmware will fail to decode the incoming request
message.

There is no way to detect this breakage from Linux and there's no way to
recover from sending the wrong message (i.e. we can't just try one
format and then fallback to the other), so a quirk is introduced in
DeviceTree to indicate to the driver that the firmware requires the 8bit
version of this message.

Cc: stable@vger.kernel.org
Fixes: 768ec4c012ac ("ath10k: update HOST capability qmi message")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../bindings/net/wireless/qcom,ath10k.txt     |  6 +++++
 drivers/net/wireless/ath/ath10k/qmi.c         | 13 ++++++++---
 .../net/wireless/ath/ath10k/qmi_wlfw_v01.c    | 22 +++++++++++++++++++
 .../net/wireless/ath/ath10k/qmi_wlfw_v01.h    |  1 +
 drivers/net/wireless/ath/ath10k/snoc.c        | 11 ++++++++++
 drivers/net/wireless/ath/ath10k/snoc.h        |  1 +
 6 files changed, 51 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index ae661e65354e..f9499b20d840 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -81,6 +81,12 @@ Optional properties:
 	Definition: Name of external front end module used. Some valid FEM names
 		    for example: "microsemi-lx5586", "sky85703-11"
 		    and "sky85803" etc.
+- qcom,snoc-host-cap-8bit-quirk:
+	Usage: Optional
+	Value type: <empty>
+	Definition: Quirk specifying that the firmware expects the 8bit version
+		    of the host capability QMI request
+
 
 Example (to supply PCI based wifi block details):
 
diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 3b63b6257c43..545ac1f06997 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -581,22 +581,29 @@ static int ath10k_qmi_host_cap_send_sync(struct ath10k_qmi *qmi)
 {
 	struct wlfw_host_cap_resp_msg_v01 resp = {};
 	struct wlfw_host_cap_req_msg_v01 req = {};
+	struct qmi_elem_info *req_ei;
 	struct ath10k *ar = qmi->ar;
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 	struct qmi_txn txn;
 	int ret;
 
 	req.daemon_support_valid = 1;
 	req.daemon_support = 0;
 
-	ret = qmi_txn_init(&qmi->qmi_hdl, &txn,
-			   wlfw_host_cap_resp_msg_v01_ei, &resp);
+	ret = qmi_txn_init(&qmi->qmi_hdl, &txn, wlfw_host_cap_resp_msg_v01_ei,
+			   &resp);
 	if (ret < 0)
 		goto out;
 
+	if (test_bit(ATH10K_SNOC_FLAG_8BIT_HOST_CAP_QUIRK, &ar_snoc->flags))
+		req_ei = wlfw_host_cap_8bit_req_msg_v01_ei;
+	else
+		req_ei = wlfw_host_cap_req_msg_v01_ei;
+
 	ret = qmi_send_request(&qmi->qmi_hdl, NULL, &txn,
 			       QMI_WLFW_HOST_CAP_REQ_V01,
 			       WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN,
-			       wlfw_host_cap_req_msg_v01_ei, &req);
+			       req_ei, &req);
 	if (ret < 0) {
 		qmi_txn_cancel(&txn);
 		ath10k_err(ar, "failed to send host capability request: %d\n", ret);
diff --git a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
index 1fe05c6218c3..86fcf4e1de5f 100644
--- a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
+++ b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
@@ -1988,6 +1988,28 @@ struct qmi_elem_info wlfw_host_cap_req_msg_v01_ei[] = {
 	{}
 };
 
+struct qmi_elem_info wlfw_host_cap_8bit_req_msg_v01_ei[] = {
+	{
+		.data_type      = QMI_OPT_FLAG,
+		.elem_len       = 1,
+		.elem_size      = sizeof(u8),
+		.array_type     = NO_ARRAY,
+		.tlv_type       = 0x10,
+		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
+					   daemon_support_valid),
+	},
+	{
+		.data_type      = QMI_UNSIGNED_1_BYTE,
+		.elem_len       = 1,
+		.elem_size      = sizeof(u8),
+		.array_type     = NO_ARRAY,
+		.tlv_type       = 0x10,
+		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
+					   daemon_support),
+	},
+	{}
+};
+
 struct qmi_elem_info wlfw_host_cap_resp_msg_v01_ei[] = {
 	{
 		.data_type      = QMI_STRUCT,
diff --git a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
index bca1186e1560..4d107e1364a8 100644
--- a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
+++ b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
@@ -575,6 +575,7 @@ struct wlfw_host_cap_req_msg_v01 {
 
 #define WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN 189
 extern struct qmi_elem_info wlfw_host_cap_req_msg_v01_ei[];
+extern struct qmi_elem_info wlfw_host_cap_8bit_req_msg_v01_ei[];
 
 struct wlfw_host_cap_resp_msg_v01 {
 	struct qmi_response_type_v01 resp;
diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index b491361e6ed4..fc15a0037f0e 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1261,6 +1261,15 @@ static int ath10k_snoc_resource_init(struct ath10k *ar)
 	return ret;
 }
 
+static void ath10k_snoc_quirks_init(struct ath10k *ar)
+{
+	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
+	struct device *dev = &ar_snoc->dev->dev;
+
+	if (of_property_read_bool(dev->of_node, "qcom,snoc-host-cap-8bit-quirk"))
+		set_bit(ATH10K_SNOC_FLAG_8BIT_HOST_CAP_QUIRK, &ar_snoc->flags);
+}
+
 int ath10k_snoc_fw_indication(struct ath10k *ar, u64 type)
 {
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
@@ -1678,6 +1687,8 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 	ar->ce_priv = &ar_snoc->ce;
 	msa_size = drv_data->msa_size;
 
+	ath10k_snoc_quirks_init(ar);
+
 	ret = ath10k_snoc_resource_init(ar);
 	if (ret) {
 		ath10k_warn(ar, "failed to initialize resource: %d\n", ret);
diff --git a/drivers/net/wireless/ath/ath10k/snoc.h b/drivers/net/wireless/ath/ath10k/snoc.h
index d62f53501fbb..9db823e46314 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.h
+++ b/drivers/net/wireless/ath/ath10k/snoc.h
@@ -63,6 +63,7 @@ enum ath10k_snoc_flags {
 	ATH10K_SNOC_FLAG_REGISTERED,
 	ATH10K_SNOC_FLAG_UNREGISTERING,
 	ATH10K_SNOC_FLAG_RECOVERY,
+	ATH10K_SNOC_FLAG_8BIT_HOST_CAP_QUIRK,
 };
 
 struct ath10k_snoc {
-- 
2.18.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
