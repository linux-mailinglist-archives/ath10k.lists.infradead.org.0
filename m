Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69DB1C8001
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 04:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MMR3SbDz9h/f2UIbzkDJzA7yvLaM8Q1YGAos4QlC4IU=; b=nax
	iQmDEKGw0QW0i+0rn03tlvDmSwFs02E4M0vgN2iUDz2ROiWnSP3sj1dZhGlBRKv2sHwlFUNQhwmuy
	D7oo+r9Ui25HF9MRMK6TQ//9E6ZBSAESFn6XYX5/EyDr4Fm2JAV0NLT/qF+KcR16WV4d/VMJJGUgm
	nGBgXdgjfu9p0P52Ks4zSq/mooZy7jxx33b+vqUEcCvsNfI1YgojKTdsgY8pODu93ME/XiEIvKAqS
	5YYvP3viRXSzeGKp+UpxKOyefkH0sfrDPMkhcTvkpX2q2m7yjefOSZvjlQ6x/ZtGZjiyXKAqUQC5Y
	3hhGAKX4/uSy0RCzj2i5RUtv+Q/7jlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWWJV-0004pP-1J; Thu, 07 May 2020 02:31:05 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWWJO-0004oo-5n
 for ath10k@lists.infradead.org; Thu, 07 May 2020 02:31:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588818660; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=HNg0pbQFUOtmhNwlDL7Xthqpz6JyL7S4j3faozymgnY=;
 b=hhZm8Fe2bNo5fA1fuynxSI9NRlxOyRCFiMYzNDJzZ4vo+t7cRQasnyXTc9WSbwWmq34QGSl5
 AY5ScFbyN5k05syTqoky97UlNUq/Kbae+/2CVdQyW6CF8F7cDV23IDrOoaijtoER0s9ipZfN
 7twc5QbRRB9EaqTEHa2cbnTcJ+4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A0341C43637; Thu,  7 May 2020 02:30:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from vnaralas-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vnaralas)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EF7CBC433BA;
 Thu,  7 May 2020 02:30:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EF7CBC433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnaralas@codeaurora.org
From: Venkateswara Naralasetty <vnaralas@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCHv3] ath10k : Fix channel survey dump
Date: Thu,  7 May 2020 08:00:34 +0530
Message-Id: <1588818634-10624-1-git-send-email-vnaralas@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_193100_842244_B947CDC6 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org, Markus Theil <markus.theil@tu-ilmenau.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Channel active/busy time are showing incorrect(less than previous or
sometimes zero) for successive survey dump command.

example:
Survey data from wlan0
	frequency:                      5180 MHz [in use]
	channel active time:            54995 ms
	channel busy time:              432 ms
	channel receive time:           0 ms
	channel transmit time:          59 ms
Survey data from wlan0
	frequency:                      5180 MHz [in use]
	channel active time:            32592 ms
	channel busy time:              254 ms
	channel receive time:           0 ms
	channel transmit time:          0 ms

This patch fix this issue by assigning 'wmi_bss_survey_req_type'
as 'WMI_BSS_SURVEY_REQ_TYPE_READ' which accumulate survey data in
FW and send survey data to driver upon the driver request. Wrap around
is taken care by FW.

hardware used : QCA9984
firmware ver  : ver 10.4-3.5.3-00057

hardware used : QCA988X
firmware ver  : 10.2.4-1.0-00047

Tested-by: Markus Theil <markus.theil@tu-ilmenau.de>
Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
---
v3:
 * Rebased on TOT and added Tested-by

 drivers/net/wireless/ath/ath10k/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index a1147cc..9330b52 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7275,7 +7275,7 @@ ath10k_mac_update_bss_chan_survey(struct ath10k *ar,
 				  struct ieee80211_channel *channel)
 {
 	int ret;
-	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR;
+	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ;
 
 	lockdep_assert_held(&ar->conf_mutex);
 
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
