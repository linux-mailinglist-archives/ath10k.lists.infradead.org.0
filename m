Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BA01E4B2A
	for <lists+ath10k@lfdr.de>; Wed, 27 May 2020 18:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMtpBm6YuuXSiU+wmHifjt06qL4ATMxDl/ce+cou9GA=; b=Q9kuedxy8i91LL
	3atjiw6JgeXGt68ftmX95419+2B6IzoE1XyWiYjDNIFzM5Zu/jCGOUJY+U3dx/IBdMz9jheG4Ulbt
	4WBU4jDdB+rmdRmweoIAvL8L2af0M54bFf/ed+QsEZm2eRfH7xMXr0CcIUlq1hfNN1Wu/VCgQd+A+
	QxBGE1RqDScGHR7Xj1AvmkDEG5I+TFAXgbKQdftI5i6SQi+l4tEUwqjuuHI7SGQ8IhkNOTRK2czV7
	fqvTtP4PndH1r0XbIFK6x23TMZitW/4hItzeimQiTj0aJEI1vGDtIc/2GOMQiLEEjY/5a7d1FJChE
	Wb8vhUnIHEJRGRAQ9ClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzND-0008UM-Vu; Wed, 27 May 2020 16:57:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzN9-0008TV-De
 for ath10k@lists.infradead.org; Wed, 27 May 2020 16:57:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id k2so723977pjs.2
 for <ath10k@lists.infradead.org>; Wed, 27 May 2020 09:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWPRa3kcV7dHK3sr3IH2Glel3aMfKYoMnIduKqYeTNo=;
 b=DOPnF2Ut7cEJ7K2Xb6Y2Hq4IuCooIbhfWPKf+5i+gas4rdLOhy10q+Pogvx8rAtXOk
 alWAH5LdFykoexEfG0SZYyJkILeAkNuJAB/duRacHeHIzoFLkckdsksSNgbCYHwnPB/m
 v5y7siWrfi4mcTKLakMGlDHY5NQjySa22V3Jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWPRa3kcV7dHK3sr3IH2Glel3aMfKYoMnIduKqYeTNo=;
 b=qf0ACIIgN8cIyW1hg0IUQ09On6ANIhPKTd++vp0kAqeaklhj4eZ7qzpwF+m8mOogVE
 8NHq0S/ZmGCGKaIHOHJ8j8xWV5XdgmXXX12gs5ZzIfqxtfoLhNu2Zx+0lkUQjFjbXoBM
 dVEQSncqUa7ryL2/FbxnAY1bzekFq97Hz3tPCBczEO42J+/4teJH12zu8EXTv8IKVO1V
 7buFm+NQo6L8FjLI3U2pVcntFyFEKo3TT4AQPBv0soxynJ5DdrH8KGbAvCSEO3wbo4jx
 v8nzEu3AWknjIM+9hnJFDl2RI8p/OqFEU1pub6avda2ZkiQbGh14QX4TXSr+hPk5V7jI
 JsBg==
X-Gm-Message-State: AOAM5326rmcUB5W25WigcOJN86XzMECPcK8TT3yuHgWoyzP4UQRdXp/j
 XznCFTjshzSbmZp30JBmqEglZnyPU20=
X-Google-Smtp-Source: ABdhPJzZCdWzARlTkkKCwUXMyf44S8pb9ACQrw4RiO+5MwqURsgvVmvJ0u5JwwN7oRQazLF1sJlpsA==
X-Received: by 2002:a17:90a:4e07:: with SMTP id
 n7mr6410317pjh.34.1590598661609; 
 Wed, 27 May 2020 09:57:41 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:534:b7c0:a63c:460c])
 by smtp.gmail.com with ESMTPSA id x12sm2601829pfo.72.2020.05.27.09.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 09:57:40 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] Revert "ath: add support for special 0x0 regulatory domain"
Date: Wed, 27 May 2020 09:57:18 -0700
Message-Id: <20200527165718.129307-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095743_459728_5DD95BD1 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This reverts commit 2dc016599cfa9672a147528ca26d70c3654a5423.

Users are reporting regressions in regulatory domain detection and
channel availability.

The problem this was trying to resolve was fixed in firmware anyway:

    QCA6174 hw3.0: sdio-4.4.1: add firmware.bin_WLAN.RMH.4.4.1-00042
    https://github.com/kvalo/ath10k-firmware/commit/4d382787f0efa77dba40394e0bc604f8eff82552

Link: https://bbs.archlinux.org/viewtopic.php?id=254535
Link: http://lists.infradead.org/pipermail/ath10k/2020-April/014871.html
Link: http://lists.infradead.org/pipermail/ath10k/2020-May/015152.html
Fixes: 2dc016599cfa ("ath: add support for special 0x0 regulatory domain")
Cc: <stable@vger.kernel.org>
Cc: Wen Gong <wgong@codeaurora.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 drivers/net/wireless/ath/regd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/regd.c b/drivers/net/wireless/ath/regd.c
index bee9110b91f3..20f4f8ea9f89 100644
--- a/drivers/net/wireless/ath/regd.c
+++ b/drivers/net/wireless/ath/regd.c
@@ -666,14 +666,14 @@ ath_regd_init_wiphy(struct ath_regulatory *reg,
 
 /*
  * Some users have reported their EEPROM programmed with
- * 0x8000 or 0x0 set, this is not a supported regulatory
- * domain but since we have more than one user with it we
- * need a solution for them. We default to 0x64, which is
- * the default Atheros world regulatory domain.
+ * 0x8000 set, this is not a supported regulatory domain
+ * but since we have more than one user with it we need
+ * a solution for them. We default to 0x64, which is the
+ * default Atheros world regulatory domain.
  */
 static void ath_regd_sanitize(struct ath_regulatory *reg)
 {
-	if (reg->current_rd != COUNTRY_ERD_FLAG && reg->current_rd != 0)
+	if (reg->current_rd != COUNTRY_ERD_FLAG)
 		return;
 	printk(KERN_DEBUG "ath: EEPROM regdomain sanitized\n");
 	reg->current_rd = 0x64;
-- 
2.27.0.rc0.183.gde8f92d652-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
