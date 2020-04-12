Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9114F1A5FC1
	for <lists+ath10k@lfdr.de>; Sun, 12 Apr 2020 20:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RBFcpTMXrtNHbyhukIbEhR3GSTfSCZX9dcaGbOxMuAY=; b=gwF
	ZiJVolgw2MVbZV7/00yx8yqfKxMUR1deUKegoUPtNh9bEyudlo9pj25rQorccZwqmtxoeRE+JBIfn
	hQDDd5dCXgTaRBQ8TiLE8dG8qSYKtqd5ys3Bjg3JFWYaFkNutQO21r5Ss2Cvf11kAgavEkxKuFcBJ
	+7/JpU0MRvr3xnQxMO2i1bPkIzuuaSlJrdTNjFzV1J60TrCmeLhTgLygI3mqYXxcH9dzL7cvfrqkm
	Py8E9dblxMdpRQI7XhRUzt/4RGo6e/LhEhhe0/cMUwRQhVQRv+CfbzMvOUO5iF2NvUy91926EkCi0
	Qhf871i7t/xeiDHdalPb9LoZ4Hr93jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNhI3-0002bl-67; Sun, 12 Apr 2020 18:25:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNhHy-0001kz-Q7
 for ath10k@lists.infradead.org; Sun, 12 Apr 2020 18:25:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so1581011pgg.2
 for <ath10k@lists.infradead.org>; Sun, 12 Apr 2020 11:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PVvAuZcC+jYSt4UujoVoHghzUI+WSaJdhVbDp2XqxPI=;
 b=Yp8a5C+Qw8pwBbmYhbDMkyGdjAJ6fFf4WxqMQiR7gQEkGUTe3clYE1tp4TbsB8QUIe
 2fmHHnMsEAw1oWOC8wx/3oHJbrOXFn1IJheIyW62J+yxssMEY3N1zLI4tAWktRtp0SEH
 UYrAlExJh24/YFW8HaZfDfb6moDU/b/N3U30D50dGc0VjG83tvLKGhPWSQjCBZdMlzdW
 df0fUeQk5K9Sq9xt6HTODzAiTI7qFhkiZyyrnSM0Up2zrnHAaFxOTv24QZSsrSf/L/Zg
 +hxlz3Uj7Lz5xnDHTyHLe40Tu5MLi17CY7/0kMNlv4o5FJaR838cyl4xAN9wa73jZ7pK
 offQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PVvAuZcC+jYSt4UujoVoHghzUI+WSaJdhVbDp2XqxPI=;
 b=iKCFwsBe2IRVNFejXGYCjlYYiLEK6rhQ8CZR3c68wQJuVyMkZoPXOHd7RNShwVn2rA
 vcnP59Bkbn0kYWjtJakP0t80ibrmLvjRLSZsH/p4gP6UR23n5sL5wmZJ/Kdq5w32hFfn
 e8jStLI3DIbIOAERy3lwvGkQJpIbxePsOlAAeyjeZh/3crh/tqcCkpvq3M5u2IjVlgOD
 Dqa5YBVuRHrwenkYqjEnfeJMLc1REMmqMrNj+VrF+ltYLMVg7dD2LEwts14ydHZzS/Sz
 MfN9VhGOzaNRPe8hfMqW9jADGC/1I1kBo+At4NARjNP0pOvqSM3Ky5/woIBp0mPvYV/p
 zU/A==
X-Gm-Message-State: AGi0PuYPn3by7ZLbZnaePlS06P81JMn+SG0yz9ZSOBe/UnGc/Exb1XmE
 sfD86ZWZpssjSKWnGtskpO9XZ96H
X-Google-Smtp-Source: APiQypJNMCunUad9ZOy2DbCZLMLc4XhwjB6MBvwd1z9uRQhIFYVKE9n8bYA02JhzRk7U18bxp7aKzQ==
X-Received: by 2002:a63:1415:: with SMTP id u21mr7470882pgl.452.1586715898235; 
 Sun, 12 Apr 2020 11:24:58 -0700 (PDT)
Received: from localhost.localdomain ([203.187.233.102])
 by smtp.googlemail.com with ESMTPSA id x76sm6406956pfc.190.2020.04.12.11.24.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 11:24:57 -0700 (PDT)
From: Mamatha Telu <telumamatha36@gmail.com>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: Fix typo in warning messages
Date: Sun, 12 Apr 2020 23:54:35 +0530
Message-Id: <1586715875-5182-1-git-send-email-telumamatha36@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_112502_901148_761CC33D 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [telumamatha36[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [telumamatha36[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mamatha Telu <telumamatha36@gmail.com>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fix some typo:
  s/fnrom/from
  s/pkgs/pkts/
  s/AMSUs/AMSDUs/

Signed-off-by: Mamatha Telu <telumamatha36@gmail.com>
---
 drivers/net/wireless/ath/ath10k/debug.c | 2 +-
 drivers/net/wireless/ath/ath10k/sdio.c  | 2 +-
 drivers/net/wireless/ath/ath10k/wmi.c   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index f811e69..69139c2 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -778,7 +778,7 @@ static ssize_t ath10k_mem_value_read(struct file *file,
 
 	ret = ath10k_hif_diag_read(ar, *ppos, buf, count);
 	if (ret) {
-		ath10k_warn(ar, "failed to read address 0x%08x via diagnose window fnrom debugfs: %d\n",
+		ath10k_warn(ar, "failed to read address 0x%08x via diagnose window from debugfs: %d\n",
 			    (u32)(*ppos), ret);
 		goto exit;
 	}
diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 5a0db34..943db9f 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -542,7 +542,7 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 	int pkt_cnt = 0;
 
 	if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
-		ath10k_warn(ar, "the total number of pkgs to be fetched (%u) exceeds maximum %u\n",
+		ath10k_warn(ar, "the total number of pkts to be fetched (%u) exceeds maximum %u\n",
 			    n_lookaheads, ATH10K_SDIO_MAX_RX_MSGS);
 		ret = -ENOMEM;
 		goto err;
diff --git a/drivers/net/wireless/ath/ath10k/wmi.c b/drivers/net/wireless/ath/ath10k/wmi.c
index 4a3a698..a81a1ab 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.c
+++ b/drivers/net/wireless/ath/ath10k/wmi.c
@@ -8336,7 +8336,7 @@ ath10k_wmi_fw_pdev_rx_stats_fill(const struct ath10k_fw_stats_pdev *pdev,
 	len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
 			 "MPDUs delivered to stack", pdev->loc_mpdus);
 	len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
-			 "Oversized AMSUs", pdev->oversize_amsdu);
+			 "Oversized AMSDUs", pdev->oversize_amsdu);
 	len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
 			 "PHY errors", pdev->phy_errs);
 	len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
