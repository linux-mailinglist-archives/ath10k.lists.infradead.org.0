Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5D81C3EC4
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 17:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2OPv8YAHTGKA1OOPoT53ctjCmV9GKbBGLdzOcoZqMes=; b=Qs8o/AuTVqK/sk
	6SdPvE9rmMx4ywqJooHfaZEzEhR/5MkSZtDzuvM8Om7nxXn7D8QVOzPSoR0uwlg/ACnUvxcIt0Cox
	L4p11wrlOqtDXGnpN8B2k6+x0rTDheOaje8+QkrifTQaSe9va4LjAF/IGB46UFU6/FSvtI2EAh+Bl
	1vmEgptUDkNugufj1ityJbJAD7PmqwMHjNTPBPfDLvqLFh9ydfId9uf5NPBTs35UiLMi24W+hx4z/
	o/d+mEWdR1nUeB7c5qoJ5DSAobJ5EMTsNEHJD43OS2ss0849azLf2ZdWnlHuQYcr78qIW0kFyYz8/
	+zbaYmYCgx3JOMXoeLkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdDw-00060j-GX; Mon, 04 May 2020 15:41:40 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdDq-0005wf-5c; Mon, 04 May 2020 15:41:35 +0000
Received: from legolas.fritz.box (unknown [87.147.56.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id EA08E580065;
 Mon,  4 May 2020 17:41:23 +0200 (CEST)
From: Markus Theil <markus.theil@tu-ilmenau.de>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 1/2] ath10k: use cumulative survey statistics
Date: Mon,  4 May 2020 17:41:21 +0200
Message-Id: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_084134_362539_68C0D059 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Theil <markus.theil@tu-ilmenau.de>, ath10k@lists.infradead.org,
 kvalo@codeaurora.org, ath11k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k currently reports survey results for the last interval between each
invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
can lead to unexpectedly small results, e.g. when hostapd uses survey
data and iw survey dump is invoked in parallel. Fix this by returning
cumulative results, that don't depend on the last invocation. Other
drivers, e.g. ath9k or mt76 also use this behavior.

Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
---
 drivers/net/wireless/ath/ath10k/wmi.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index a81a1ab2de19..451c8275d07b 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -5802,16 +5802,16 @@ static int ath10k_wmi_event_pdev_bss_chan_info(struct ath10k *ar,
 
 	survey = &ar->survey[idx];
 
-	survey->noise     = noise_floor;
-	survey->time      = div_u64(total, cc_freq_hz);
-	survey->time_busy = div_u64(busy, cc_freq_hz);
-	survey->time_rx   = div_u64(rx_bss, cc_freq_hz);
-	survey->time_tx   = div_u64(tx, cc_freq_hz);
-	survey->filled   |= (SURVEY_INFO_NOISE_DBM |
-			     SURVEY_INFO_TIME |
-			     SURVEY_INFO_TIME_BUSY |
-			     SURVEY_INFO_TIME_RX |
-			     SURVEY_INFO_TIME_TX);
+	survey->noise      = noise_floor;
+	survey->time      += div_u64(total, cc_freq_hz);
+	survey->time_busy += div_u64(busy, cc_freq_hz);
+	survey->time_rx   += div_u64(rx_bss, cc_freq_hz);
+	survey->time_tx   += div_u64(tx, cc_freq_hz);
+	survey->filled    |= (SURVEY_INFO_NOISE_DBM |
+			      SURVEY_INFO_TIME |
+			      SURVEY_INFO_TIME_BUSY |
+			      SURVEY_INFO_TIME_RX |
+			      SURVEY_INFO_TIME_TX);
 exit:
 	spin_unlock_bh(&ar->data_lock);
 	complete(&ar->bss_survey_done);
-- 
2.26.2


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
