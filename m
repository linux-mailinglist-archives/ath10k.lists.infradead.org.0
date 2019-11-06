Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D754EF22A7
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 00:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QRcZjLiYnWDHio6ig717fHKFY4fUbhhfr3yrNuP4lrY=; b=HDn
	AkjkukTsxMRVehJnq9HoGHCJ/uDDuHtC0ytnvHoPRuWkMd+7QXaIgc5JQGgBR9tQR7yzOSaqiz7my
	Ut+fWviSMdLvgMItKU6gpOiKrtGEZjPctfIhAzjWjTYMKxrv4fr/CB5HlQ2LMMFxZ1pxcOfS1UwKd
	c2ypmL0HKDcgm9hqMM1bVmuxxNkyLrJoizt5jQneZ/hMP0Ma+hxknv8qgFjquxb5DQ70rJA/MyFf9
	BRjGc3LUSvdFkyNMGfEjmga6JDRDsQQ8lWUSnn7ZZzSUXQO/rbFyiQNkm4YzcvLvyosbYljXy9/Cl
	E1mwBh09IjZPIqgmD0GyqmDyiEZQh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUm4-0004sf-VV; Wed, 06 Nov 2019 23:31:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUm1-0004rV-5L
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 23:31:38 +0000
Received: by mail-pl1-x641.google.com with SMTP id k7so5563pll.1
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 15:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XQlBjJQQjlLiOw6f2ULlsVGlJrKy32umFggc4zmnopc=;
 b=gwQTp+0U9NUDWWwM66Vo43vKr5F6kMz6YnYStCt7FNFJHX+scw5dGwfAbuEShRbc8v
 XcmX1D+eSJZYvdO0k9WgO/00JGvL5kjTxBS3D/FLPLBDgT2lLsa6Gho9KRe04ezZreU7
 ttLGuXono0x8uy6S0YxD0shypeQWo1wKv5Z08VuRXS0KnWBtOCZwzJPgnDzTEWTuq18j
 azzWsYkZWIWokwnvKfvCfdBwDww9XJV8XRquLpogRYv8WMBwwo5SUBM1XZNZVmzI/Tez
 1OSlIqNp3kGEIeR9fRxGBHKxWT9pIGy2pEzMpOU+X5UCTFQrjf/QBMNRR9EsM0929Ccd
 z4zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XQlBjJQQjlLiOw6f2ULlsVGlJrKy32umFggc4zmnopc=;
 b=AE0RI9Raj3qHXJQD3fgdPOIzPAdbnv5NFks9eiibRgxjP3An6RzlFyNgpw+5E9HiVH
 N3jdE+COej6h/PwcJ1oVr47AfCotDR32l4cHYG1Mpq6xWy6xSc9vPOewz6eDoNXxAZCe
 gaHpt+qXqIigPrDBHH/eTA53vxwzIqgUukqATVcd3FZhfnfawbHAp2AHkO7scGlYC73l
 igcrk40wlXkSMSYmfztL65oG1PAEgPpT1tX7tWS/vQOhXy1puaFHHEVWc2Y4AaNuaTSH
 gIBBacSS0bXcrvoyl2knXZ4xEpwH+akqJosMT1/qUaubSSXEplwICHcZaWWPdTC6rYS+
 609A==
X-Gm-Message-State: APjAAAWmKWqEoG0t7Qv8OkERKKEvilGd5uAvjC64GMuQWKjSBfGu7Pff
 qwTApCKevDnM1pSSpOKKpAY=
X-Google-Smtp-Source: APXvYqyxj6AvcxSxTZ1uXkDQ4TdMBL4b+00frqdfXS3bHWC4a2N3B+rJNl7uiZQ1SRrjJzBidWs0oQ==
X-Received: by 2002:a17:902:b10c:: with SMTP id
 q12mr239799plr.97.1573083094431; 
 Wed, 06 Nov 2019 15:31:34 -0800 (PST)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id f7sm70667pfa.150.2019.11.06.15.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:31:34 -0800 (PST)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH] ath10k: Handle when FW doesn't support
 QMI_WLFW_HOST_CAP_REQ_V01
Date: Wed,  6 Nov 2019 15:31:30 -0800
Message-Id: <20191106233130.2169-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_153137_202255_9EC906FD 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Firmware with the build id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0.2-XXXX does
not support the QMI_WLFW_HOST_CAP_REQ_V01 message and will return the
QMI not supported error to the ath10k driver.  Since not supporting this
message is not fatal to the firmware nor the ath10k driver, lets catch
this particular scenario and ignore it so that we can still bring up
wifi services successfully.

Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 545ac1f06997..eb618a2652db 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -614,7 +614,9 @@ static int ath10k_qmi_host_cap_send_sync(struct ath10k_qmi *qmi)
 	if (ret < 0)
 		goto out;
 
-	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
+	/* older FW didn't support this request, which is not fatal */
+	if (resp.resp.result != QMI_RESULT_SUCCESS_V01 &&
+	    resp.resp.error != QMI_ERR_NOT_SUPPORTED_V01) {
 		ath10k_err(ar, "host capability request rejected: %d\n", resp.resp.error);
 		ret = -EINVAL;
 		goto out;
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
