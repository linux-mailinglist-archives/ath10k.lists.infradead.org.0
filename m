Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443941941D6
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 15:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gKAGUKX/9t2GS4xrPP2u3KqxtA0ydR0obVlhCxVb4gE=; b=EDP
	3D0F8tBH64XnLDICZKK/VyGvMftZCYuCsIf1yiZXw2l8xN4o2ZfKqDSxnQvZpWyZ7tDu24Bip5Vd1
	MeDUFzh1tbWyX6n80bS0AojdPYahW1v8kXLDWMjt6WFSL6P/6r0L/RsFkuiRiZnAGcw5Cck4C0jCH
	f42YPLi6IHTG1Deb/anJ274ODEPXyOW9a8myXUyaEIXQjA1yxbbWGK8Ixz0zjlsqiQ9FvsfrHTxgD
	nZFQmhxpe73sfFhiYOgrb7hhYKbd65iytuS+nsuiWBmLb+VEWQ6JHgr70vJvYq0ZisGgPbnMOK2sz
	UGGYNQEcPLUwEVPQoPiy7FaMH8Ug9Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTmB-0002de-MD; Thu, 26 Mar 2020 14:46:31 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTm6-0002cB-Kv
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 14:46:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585233986; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=iizag96MxErTyaViQP0FeIPhgRagQU+ZzbuTZdLn3xA=;
 b=lnE2yOF9ITvQlisPS023kZzNGaBoDFBvo1a6UqVvfQ0U7YCcSSHhyFUL9hSyNSPbtaoBiHC1
 onDmemr0HoMlEGjDwdBQ6SHpv7t8+OGd4SgHjMR17jACtovW4mbjACor0ngukPMKfpR1LvBg
 WQvz1gpck4BD4gznThQHVjbfkfk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7cc03d.7fd395adfdf8-smtp-out-n03;
 Thu, 26 Mar 2020 14:46:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1C5ACC433BA; Thu, 26 Mar 2020 14:46:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from che-swdbs-01.qca.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4C0B9C433F2;
 Thu, 26 Mar 2020 14:46:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4C0B9C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkenna@codeaurora.org
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath11k: add pktlog checksum in trace events to support pktlog
Date: Thu, 26 Mar 2020 20:17:24 +0530
Message-Id: <1585234044-30362-1-git-send-email-mkenna@codeaurora.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_074626_875689_E931F2E7 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Pktlog data are different among the chipset & chipset versions.
As part of enhancing the user space script to decode the pktlog
trace events generated, it is desirable to know which chipset or
which chipset version has provided the events and thereby decode
the pktlogs appropriately.

Pktlog checksum helps to determine the chipset variant which is
given by the firmware in the struct wmi_ready_event.

Pktlog checksums are computed during the firmware build.
So, adding that pktlog checksum in the pklog trace events.

Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
---
 drivers/net/wireless/ath/ath11k/core.h  |  1 +
 drivers/net/wireless/ath/ath11k/dp_rx.c |  3 ++-
 drivers/net/wireless/ath/ath11k/trace.h | 12 ++++++++----
 drivers/net/wireless/ath/ath11k/wmi.c   | 21 +++++++++++++--------
 drivers/net/wireless/ath/ath11k/wmi.h   |  8 +++++++-
 5 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/core.h b/drivers/net/wireless/ath/ath11k/core.h
index 6e7b8ec..a1e29f3 100644
--- a/drivers/net/wireless/ath/ath11k/core.h
+++ b/drivers/net/wireless/ath/ath11k/core.h
@@ -650,6 +650,7 @@ struct ath11k_base {
 		/* protected by data_lock */
 		u32 fw_crash_counter;
 	} stats;
+	u32 pktlog_defs_checksum;
 };
 
 struct ath11k_fw_stats_pdev {
diff --git a/drivers/net/wireless/ath/ath11k/dp_rx.c b/drivers/net/wireless/ath/ath11k/dp_rx.c
index f74a0e7..a3f2c76 100644
--- a/drivers/net/wireless/ath/ath11k/dp_rx.c
+++ b/drivers/net/wireless/ath/ath11k/dp_rx.c
@@ -1491,7 +1491,8 @@ static void ath11k_htt_pktlog(struct ath11k_base *ab, struct sk_buff *skb)
 		return;
 	}
 
-	trace_ath11k_htt_pktlog(ar, data->payload, hdr->size);
+	trace_ath11k_htt_pktlog(ar, data->payload, hdr->size,
+				ar->ab->pktlog_defs_checksum);
 }
 
 static void ath11k_htt_backpressure_event_handler(struct ath11k_base *ab,
diff --git a/drivers/net/wireless/ath/ath11k/trace.h b/drivers/net/wireless/ath/ath11k/trace.h
index 8700a62..66d0aae 100644
--- a/drivers/net/wireless/ath/ath11k/trace.h
+++ b/drivers/net/wireless/ath/ath11k/trace.h
@@ -21,14 +21,16 @@
 #define TRACE_SYSTEM ath11k
 
 TRACE_EVENT(ath11k_htt_pktlog,
-	    TP_PROTO(struct ath11k *ar, const void *buf, u16 buf_len),
+	    TP_PROTO(struct ath11k *ar, const void *buf, u16 buf_len,
+		     u32 pktlog_checksum),
 
-	TP_ARGS(ar, buf, buf_len),
+	TP_ARGS(ar, buf, buf_len, pktlog_checksum),
 
 	TP_STRUCT__entry(
 		__string(device, dev_name(ar->ab->dev))
 		__string(driver, dev_driver_string(ar->ab->dev))
 		__field(u16, buf_len)
+		__field(u32, pktlog_checksum)
 		__dynamic_array(u8, pktlog, buf_len)
 	),
 
@@ -36,14 +38,16 @@
 		__assign_str(device, dev_name(ar->ab->dev));
 		__assign_str(driver, dev_driver_string(ar->ab->dev));
 		__entry->buf_len = buf_len;
+		__entry->pktlog_checksum = pktlog_checksum;
 		memcpy(__get_dynamic_array(pktlog), buf, buf_len);
 	),
 
 	TP_printk(
-		"%s %s size %hu",
+		"%s %s size %hu pktlog_checksum %d",
 		__get_str(driver),
 		__get_str(device),
-		__entry->buf_len
+		__entry->buf_len,
+		__entry->pktlog_checksum
 	 )
 );
 
diff --git a/drivers/net/wireless/ath/ath11k/wmi.c b/drivers/net/wireless/ath/ath11k/wmi.c
index e7ce369..ad88efe 100644
--- a/drivers/net/wireless/ath/ath11k/wmi.c
+++ b/drivers/net/wireless/ath/ath11k/wmi.c
@@ -87,8 +87,8 @@ struct wmi_tlv_rdy_parse {
 		= { .min_len = sizeof(struct wmi_pdev_bss_chan_info_event) },
 	[WMI_TAG_VDEV_INSTALL_KEY_COMPLETE_EVENT]
 		= { .min_len = sizeof(struct wmi_vdev_install_key_compl_event) },
-	[WMI_TAG_READY_EVENT]
-		= {.min_len = sizeof(struct wmi_ready_event) },
+	[WMI_TAG_READY_EVENT] = {
+		.min_len = sizeof(struct wmi_ready_event_min) },
 	[WMI_TAG_SERVICE_AVAILABLE_EVENT]
 		= {.min_len = sizeof(struct wmi_service_available_event) },
 	[WMI_TAG_PEER_ASSOC_CONF_EVENT]
@@ -4851,7 +4851,7 @@ static int ath11k_wmi_tlv_rdy_parse(struct ath11k_base *ab, u16 tag, u16 len,
 				    const void *ptr, void *data)
 {
 	struct wmi_tlv_rdy_parse *rdy_parse = data;
-	struct wmi_ready_event *fixed_param;
+	struct wmi_ready_event fixed_param;
 	struct wmi_mac_addr *addr_list;
 	struct ath11k_pdev *pdev;
 	u32 num_mac_addr;
@@ -4859,11 +4859,16 @@ static int ath11k_wmi_tlv_rdy_parse(struct ath11k_base *ab, u16 tag, u16 len,
 
 	switch (tag) {
 	case WMI_TAG_READY_EVENT:
-		fixed_param = (struct wmi_ready_event *)ptr;
-		ab->wlan_init_status = fixed_param->status;
-		rdy_parse->num_extra_mac_addr = fixed_param->num_extra_mac_addr;
-
-		ether_addr_copy(ab->mac_addr, fixed_param->mac_addr.addr);
+		memset(&fixed_param, 0, sizeof(fixed_param));
+		memcpy(&fixed_param, (struct wmi_ready_event *)ptr,
+		       min_t(u16, sizeof(fixed_param), len));
+		ab->wlan_init_status = fixed_param.ready_event_min.status;
+		rdy_parse->num_extra_mac_addr =
+			fixed_param.ready_event_min.num_extra_mac_addr;
+
+		ether_addr_copy(ab->mac_addr,
+				fixed_param.ready_event_min.mac_addr.addr);
+		ab->pktlog_defs_checksum = fixed_param.pktlog_defs_checksum;
 		ab->wmi_ready = true;
 		break;
 	case WMI_TAG_ARRAY_FIXED_STRUCT:
diff --git a/drivers/net/wireless/ath/ath11k/wmi.h b/drivers/net/wireless/ath/ath11k/wmi.h
index 510f9c6..58f9098 100644
--- a/drivers/net/wireless/ath/ath11k/wmi.h
+++ b/drivers/net/wireless/ath/ath11k/wmi.h
@@ -2345,7 +2345,7 @@ struct wmi_mac_addr {
 	} __packed;
 } __packed;
 
-struct wmi_ready_event {
+struct wmi_ready_event_min {
 	struct wmi_abi_version fw_abi_vers;
 	struct wmi_mac_addr mac_addr;
 	u32 status;
@@ -2355,6 +2355,12 @@ struct wmi_ready_event {
 	u32 num_extra_peers;
 } __packed;
 
+struct wmi_ready_event {
+	struct wmi_ready_event_min ready_event_min;
+	u32 max_ast_index;
+	u32 pktlog_defs_checksum;
+} __packed;
+
 struct wmi_service_available_event {
 	u32 wmi_service_segment_offset;
 	u32 wmi_service_segment_bitmap[WMI_SERVICE_SEGMENT_BM_SIZE32];
-- 
1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
