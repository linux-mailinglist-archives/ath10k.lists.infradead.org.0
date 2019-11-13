Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB5EFB3E3
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 16:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AOBtLQi2dBMPNroFrk87Mh23/FTnBGMMukv9plGqdOs=; b=nGB
	7R6s3dPV1RcFvKXBl6AyPz5jikwsLgG96duhoqxC4UovZ2PWui/N6WRy2WsL4+TEMexhPnlnnkPRM
	AAYRx2Y6hlPJFJtXXYNbrel5t9m0u0EySsQ3U//7obGdF0CbDqCcYyDSa22N8hindcG85u1D6dzhY
	UJ5vckBELKeACzSaK1YZi0M7tNJpDobw5SfzSk7l2nrB0NeEZQ7gx/rYkxSM68vMsyEUl+1zdCljx
	gqhy6Nrtoy7Ia8VCdwJ4sSTdj6zj9J6PT1fBwJDt9OmFbYPy2liFX6c82QxIel4WC013X3hrK9M/Z
	fNweYDLIqY2gJ4vzZiMahmPTne4j2GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUukq-0000Qp-Na; Wed, 13 Nov 2019 15:40:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUukn-0000QS-L7
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 15:40:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id n13so1923722pff.1
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 07:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ki1SPD44lh1SNybw/5rgBcA9dSnsxmRipdKWolsiTPQ=;
 b=ldo4ffH/lXYIRRC9tzF8JwFZccS5LE1eNAXXtU1VS/5IB4wnVJb7htBqIKuKI8178C
 tO9TJGxlsknv5aUpJySM+Wem8RH82ICkpo3nAenXYrfA3W6c9rUby7YKTlE6RJAC+fef
 +Vqi2ABeS++Z6YTbuqfZ4XBVt1uRMel9RyjDYlCAOnzEFPh4ikQRyJ7ZtDPm2XzKbLCk
 0XvxdQphfr5HEwRpCp95eJ8HHjMwXFOB83ep+96dGDqMu6lwB1BQp90HYfRnqAoTFsMu
 70ciVkQJS00t2lYlajUIKEOc2C6gWu0mrj8z/hQMDmoUShmuHCGmicWJLKfFgkuaAiVp
 pCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ki1SPD44lh1SNybw/5rgBcA9dSnsxmRipdKWolsiTPQ=;
 b=COq3tQrPK2ub+KntOgL7j0Oe422zInx5zbsQVnTgAHShrdJtPzQVEXx6hQlPXW2FkD
 8rHvx4H02ltfij0uy8Jrn8mLD/ohSN8DnV0ZYJ1IZjcdC/wD7pNPnG6uZJpxHky6ATm/
 721p3LsWO5TE2OlZxKfhOSeh/MMRAqSOB/q4xoiW5PHEuF7WyYFoHIGK8sUwe3pjNu4j
 xYMoKVv0+4gFF36KP0opKa+mGl9YXvsWGzsXLcXXkVkh22Z4x2yIl3zCnLk+kX09cACR
 LQecLHOcDYQS9zBVhtPVesf+jZnPTfC3TvO8y1Ua2o+1gXMBNVcD6xMbzrQqWCr+QnyV
 kXMg==
X-Gm-Message-State: APjAAAU721YC54vhJrfoLy2EB85Z2iwRZJY/UXAytkqbCapxITO5PAf+
 0MSPVekR6eRDuhsTzWLVXL8=
X-Google-Smtp-Source: APXvYqzV4a9iYr/kLopHbCKtDwEFBpFCvcaVBZZ4KkPQvS54XiRuxUSsvQNuQJEpJnmCLUzjZnLo6w==
X-Received: by 2002:a63:db15:: with SMTP id e21mr4399962pgg.21.1573659620998; 
 Wed, 13 Nov 2019 07:40:20 -0800 (PST)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id q8sm2911407pgg.15.2019.11.13.07.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 07:40:20 -0800 (PST)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH v2] ath10k: Fix qmi init error handling
Date: Wed, 13 Nov 2019 07:40:16 -0800
Message-Id: <20191113154016.42836-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_074021_743784_C39D9376 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When ath10k_qmi_init() fails, the error handling does not free the irq
resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
(re-)register irqs which are already registered.

Fix this by doing a power off since we just powered on the hardware, and
freeing the irqs as error handling.

Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---

v2:
-Call power_off() as well

 drivers/net/wireless/ath/ath10k/snoc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index cd22c8654aa9..50b3d443ad37 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1563,13 +1563,16 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 	ret = ath10k_qmi_init(ar, msa_size);
 	if (ret) {
 		ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
-		goto err_core_destroy;
+		goto err_power_off;
 	}
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc probe\n");
 
 	return 0;
 
+err_power_off:
+	ath10k_hw_power_off(ar);
+
 err_free_irq:
 	ath10k_snoc_free_irq(ar);
 
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
