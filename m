Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E485A195405
	for <lists+ath10k@lfdr.de>; Fri, 27 Mar 2020 10:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x3VZWq9On+A2sQigmde/9rtu/DquO/obqLTBIUUQYv0=; b=UpXcQ98KGXQXU6
	Sg10G0zXANWHCdCeB4On0Tn9AqhyOzpxPb7KgnBb7u9xIhVdBd7O+MYAOTPydYtBVfS0MIuWSeH5A
	e89wf70bLlCdXqKRyLqFj1vC9ND/DsotB/xut2fG/TwNKRxip5bQGGfoJn3nOe1xubBsKMH2OMe7C
	9MHytyO6gXXaLEGSeNohG5NcJckg7KYzMN8x0VWvkm1Bpv8IpBVg7wpIpzVpneOBsjlz/suhJn38t
	bYLyVabS/pNC/wSGk/a2dSVHXe1kqR6V/tIr1CsZUGXHIgArltZQDeYw41WjyYJxXs1jhpWvBVLkA
	NPYHyMF8m2eiWvdtJ1+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlLS-00065v-SU; Fri, 27 Mar 2020 09:32:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlLP-00065b-7x
 for ath10k@lists.infradead.org; Fri, 27 Mar 2020 09:32:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id g62so11566313wme.1
 for <ath10k@lists.infradead.org>; Fri, 27 Mar 2020 02:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FrVGn23VYzsDDERZRWwDaqgRzOxAa8+ZKJNyG/oodZM=;
 b=wMAECP/eJ6YmkuWS8dgwLfWV2uN+GMPTCagIpgEldKx6tgUhXEN0NdYaqwJiguJ1Pl
 r78n0L+8s/ssmLdDoTlQMse+WlKOPSF6SHpyLGNSW5c09o9SE+O9EPPZ91qw4rjl29f5
 9TdqhZZPctwSFyHbbF0b+nYi6Nn04BrR/t0zYkCMYxIJCSOWXcBVb4fi/GS9CBLWBqRm
 2HhFwkRKzzYwwJQhO0+FXsABswNCO1sC4s4GWfMwzPrQTQclIhsqfHhDpESWxMelxxnx
 xVT/l6QIgFbvGR1U7LWuB3QkZ7Y+UYfRhVdMfegOfDXhLSaYOqr87Vj55UplFVDYLiwF
 rkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FrVGn23VYzsDDERZRWwDaqgRzOxAa8+ZKJNyG/oodZM=;
 b=IQcteLuZKyIhH0qZ0zo1I+NyMIbeNpPEtDwJTQa+XUyM3mp9ZvjahkGoSnX8oTAw6+
 ek61tjeumFy4Wpb0jQyDl2KUKpUzg40FNI9FScqSKVpic7SCxKtLBUR8jB8j5LUR933f
 gvPPXr84WdtJ6tWyc638WlLOtztnZ0aFtz3CbnguzVnHb4EYx5EL/wVNjmMyz/soqjyj
 PLatucK1LRYEZeSuvmoA8O0Fq0Kdbm9wXH9ZDXO07SlYucohirlwD0sw0zOkeB7Xx4f4
 HGt31fZWG168xa7j4kw6E3riaukGhbt2HmLpdD1IFoS8ELo8U3h34LkE9dtNn26RBZcV
 r3GQ==
X-Gm-Message-State: ANhLgQ3OxDecAdpb/GjzGFs3ktAyAsOJS5masKo7sIZ9IAZejMD2xpfR
 hjfLXQwC+lW0B3s0kwg3RWrwPRXtoaBW4Mxrbl/ljXu31LuMXiAoa/R2xKP7kaV5Dr+SxT0tL+U
 6nhvqUdwsEWt9f9IGygTumnVChWbcan9i4mzFFvjxnCUp4n9FokyZ9EbKzI1S14Mi9EcXQu/VUv
 gmQw==
X-Google-Smtp-Source: ADFU+vtiInhl3oYnozOr1pBPf5buWYs7Aw2ZRDDauOAUYk4Xlx4ZI2L1CQ5IKdNPUtCsSSmg2epCLA==
X-Received: by 2002:a1c:a757:: with SMTP id q84mr4123310wme.146.1585301520200; 
 Fri, 27 Mar 2020 02:32:00 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-194.xnet.hr. [88.207.96.194])
 by smtp.googlemail.com with ESMTPSA id a186sm7136780wmh.33.2020.03.27.02.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 02:31:59 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: enable advertising support for channels 32, 68 and 98
Date: Fri, 27 Mar 2020 10:31:47 +0100
Message-Id: <20200327093147.189390-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_023203_304101_852F9F9B 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Robert Marko <robert.marko@sartura.hr>,
 Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Enable advertising support for 5G channels: 32, 68 and 96.
These channels are legal and available for use in ETSI countries.
So lets advertise these and they will be available in accordance with the regulatory domain used.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
 drivers/net/wireless/ath/ath10k/core.h | 2 +-
 drivers/net/wireless/ath/ath10k/mac.c  | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
index 5101bf2b5b15..480efaa1278c 100644
--- a/drivers/net/wireless/ath/ath10k/core.h
+++ b/drivers/net/wireless/ath/ath10k/core.h
@@ -37,7 +37,7 @@
 #define WMI_READY_TIMEOUT (5 * HZ)
 #define ATH10K_FLUSH_TIMEOUT_HZ (5 * HZ)
 #define ATH10K_CONNECTION_LOSS_HZ (3 * HZ)
-#define ATH10K_NUM_CHANS 41
+#define ATH10K_NUM_CHANS 44
 #define ATH10K_MAX_5G_CHAN 173
 
 /* Antenna noise floor */
diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 7fee35ff966b..f98422427b27 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -8363,6 +8363,7 @@ static const struct ieee80211_channel ath10k_2ghz_channels[] = {
 };
 
 static const struct ieee80211_channel ath10k_5ghz_channels[] = {
+	CHAN5G(32, 5160, 0),
 	CHAN5G(36, 5180, 0),
 	CHAN5G(40, 5200, 0),
 	CHAN5G(44, 5220, 0),
@@ -8371,6 +8372,8 @@ static const struct ieee80211_channel ath10k_5ghz_channels[] = {
 	CHAN5G(56, 5280, 0),
 	CHAN5G(60, 5300, 0),
 	CHAN5G(64, 5320, 0),
+	CHAN5G(68, 5340, 0),
+	CHAN5G(96, 5480, 0),
 	CHAN5G(100, 5500, 0),
 	CHAN5G(104, 5520, 0),
 	CHAN5G(108, 5540, 0),
-- 
2.26.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
