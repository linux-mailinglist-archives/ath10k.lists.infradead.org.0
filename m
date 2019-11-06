Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00857F22D9
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 00:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eBpzN2IvNBe9FdVUb1f7M0T0D4iIZIxyXgM5dgyB2Is=; b=tpB
	a+ZdnzxDpZUcsRoGTh2Cr0hAmJiYwDgU3wS+yr2R8bQP0wBps1Lz0kqJWAW9XUo0Dc9qzLuBoY7K+
	M2qbqBl7qzTaMdaYLgvETN2i4Wk1ino3fO4hRGJvMuJu62kXuR4sscVg16DbK3I+yrJPaio7ucxMI
	jOq93mStv61MUkE6t26uclYffJ1TDFSG7DCTFrRxChi32o3ldNddf4Og1dQselPeY5f/AVT34ykMx
	Hkbdz1FKti/Hzzvgn13nbOgoG6Ld3XDDIHjMwbQ8Toso+wVK8tCV2z3kiu5MU9OzeYZTk7kJ94su5
	vxXlkRswMynDPt8cWxNwqv2dK/9yZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSV1g-0002ZN-QY; Wed, 06 Nov 2019 23:47:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSV1N-0002KS-Pv
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 23:47:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so467885pfq.8
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 15:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IITHycz/tKeCtcoGS9oSqQaaGm3H0ejbd50X22z8NiA=;
 b=QBM+UW+9MI+uREWzRjPCDMTdRcJ1Qg9A1mV9chE5KjhqRQK8ZTlnzavCFuKjvmApo0
 dLMC9dCKtbzlyt2F0etYRl9F6hMMAl2ZWhnqk+1qjKTziWxKwfA9tYuxgHLUtNXUaQFY
 OAtGyQlApB2naKonvaurwkRT8u5RsF2+hJd6dXgnsZvq4NSYZPju1+8F+8zPDs9+pZ+J
 S2gwQtppNc/DtmGJz6rSAq4SJ5J4LjD/1ZNAluTfXjvV++shwxekEoJIQcMKzFiTHlL7
 BPRzlUZ8gf1gO6+TvpexhzXi4VNnhOwwrCMQwpY24IymcCjHxGV2MjWegPyqB5uBNd1g
 xyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IITHycz/tKeCtcoGS9oSqQaaGm3H0ejbd50X22z8NiA=;
 b=XSUrPrxfNpXrEXmVnqRHcqXlxAD6Volu1TypYyO78zS5Vk+U5etI6X/ta15OAiEelV
 jOg1XcvxTCjGgxhifzhUBf/Pwtj14TTOv9K+PSzPY7uV27msBkloCjv0c0gPBeaC4kVw
 10JWKqo6ooqwfU9lnSJRo2MFfApve1qdBu22oKqgK6ywxF9buRl2QesK89I67hC28zOa
 +wLUUDb8ENRdUeYWGjBMX8bIQUsfZ5C9Y+UaZc+hHhnzJUBHbK8S85aH2rnPYbcorDFq
 NUI/yGLYBRaYRBgO1byB3BKy1PCs8yD66YtV0WLZV/87rdjl5PJ5Wvq4ZJFNflI76xpy
 bUZw==
X-Gm-Message-State: APjAAAXRoeqABL5cIuQzDG3mZG6zD+OKcGbumC9Z/jXrFBoJLBKSqPPu
 Ri9IayEnNJC2j33KlAyfy0c=
X-Google-Smtp-Source: APXvYqxUKtpDTnctikFB0dQsxG/rxh3cI4BqhqNcmERqcbnbqreW4bT2lTMAT4Iu/13iDxCfITTTBQ==
X-Received: by 2002:a63:ed17:: with SMTP id d23mr620290pgi.125.1573084049060; 
 Wed, 06 Nov 2019 15:47:29 -0800 (PST)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id y26sm104198pfo.76.2019.11.06.15.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:47:28 -0800 (PST)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
Date: Wed,  6 Nov 2019 15:47:12 -0800
Message-Id: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_154729_866211_5692C1C0 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

When the BDF download QMI message has the end field set to 1, it signals
the end of the transfer, and triggers the firmware to do a CRC check.  The
BDFs for msm8998 devices fail this check, yet the firmware is happy to
still use the BDF.  It appears that this error is not caught by the
downstream drive by concidence, therefore there are production devices
in the field where this issue needs to be handled otherwise we cannot
support wifi on them.  So, attempt to detect this scenario as best we can
and treat it as non-fatal.

Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index eb618a2652db..5ff8cfc93778 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -265,10 +265,13 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
 			goto out;
 
 		if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
-			ath10k_err(ar, "failed to download board data file: %d\n",
-				   resp.resp.error);
-			ret = -EINVAL;
-			goto out;
+			if (!(req->end == 1 &&
+			      resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
+				ath10k_err(ar, "failed to download board data file: %d\n",
+					   resp.resp.error);
+				ret = -EINVAL;
+				goto out;
+			}
 		}
 
 		remaining -= req->data_len;
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
