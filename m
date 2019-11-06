Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268B6F2270
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 00:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GC/nbZyW8Jp5bdTFi/Fo1jFBx+m2PXnNcabmu2+dWpY=; b=pMB
	Cm+k2IDkrmccYAKP+10wulrD+iJQ5Xg1x38DZF8k4g1q/6OGWv2Tby2ElYUKU0sR3ULDYzlQ+iVO1
	Uo8xKSQXmVttV8dzEdtW+y3v97xeKH8Ok1Yi83DpNGBscVlCfdjozjFfTXet7up80tA56ZRuClpiH
	CtXAaD0fcNF8sf35fPf5p0nP5pk/VKYk01djcoDDO7TZko9AyowPg04C6Ta9QVgAwBGCb+QmkZF5Q
	x5hOT/q343aQMZr5L5lvlwy/vfwxYyedc+eYhJQCJ1NzflvapfvBs3glQhvK0jAO3DNSL/WUe4G9B
	No6Fy0LqLP82euDdRX8A2oUcyBEo5lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUXr-0006X2-TY; Wed, 06 Nov 2019 23:16:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUXn-0006Vh-Rm
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 23:16:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id h27so203458pgn.0
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 15:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PEEwQUwm/mtCk8pRNL9DiIeL71bqH+DtmpEDVuEb4+U=;
 b=neaEdK/p5ar2I/xlFi4UuC6GILTW3Ks2guXTHYrzRYhhB5GJHWuYAmHteeS9QtXB38
 vpLKCrRcrgDtne+sUmpqEZdWMZsLWa5Ssry3hRvPt+l5AUgBe8AMaGUA2siXrzL8Tt84
 1eEY/yBnhOu6s1Y2lrffcUanSuXEiTYu3WyAp+so6Q1eXsx3jz708LQ6Mdq1uvSN8Vo7
 JJGPN6spp11oAjv6GnrPV+rZqhqQj9G6EdHNJEhFT0mtH6Yql9JJ7SVvWG6TjRr7Umk6
 c3P7nc+lnjR33OrTvZC29nfkOE2IsU3Xy0BVcshSmyKnj79HzS1hNJh1d56jWAFEUuZj
 ixbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PEEwQUwm/mtCk8pRNL9DiIeL71bqH+DtmpEDVuEb4+U=;
 b=NZP1X113LNT1tHU+9vQLUXSp79Q7bshuApq1l0xN1kGzEbLHyQLAnXPVesocYM5oqb
 pq4cSw9+VZStkOAPpwdBD7dVmtu4E3tP7m3IT/S2L/ewgX/JAQlUAB0bQIh5mWePWijY
 UK50YkQrEa4FaN596gw7uvtTpBLdiFpdIg3ssGmCA8HaDsSRb6v8km2irdeeUXMGMUGQ
 xg61shsxao1Twh9h94jdSG5msPGE52z6VpsmZ8aIsHe3/yLzutZcgZUVe01/DGjZPde7
 iDeedKQjKXAO11vxEW4jSLF5Tiy2SzAt3L6ycRAhBPLIfs1qI4GT4p/EY0jiNe/mDB/T
 8n8w==
X-Gm-Message-State: APjAAAUONuuLfejzfcrF0QFzmRO6JlU9Ud9D7DrMKZ5MAf6kK1S/Kxt0
 4+Ho488Y+88dQxIAsy+5qzU=
X-Google-Smtp-Source: APXvYqy2/Y5pxVKOfsNfYmz4miHXZKCw3E8Ru4bwJEpq+vIruTB5jjvQyXI8vZKkp+EORx5jL/IDYA==
X-Received: by 2002:a17:90a:cd03:: with SMTP id
 d3mr506186pju.137.1573082214787; 
 Wed, 06 Nov 2019 15:16:54 -0800 (PST)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id d139sm49075pfd.162.2019.11.06.15.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:16:54 -0800 (PST)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH] ath10k: Fix qmi init error handling
Date: Wed,  6 Nov 2019 15:16:50 -0800
Message-Id: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_151655_933496_FA9AE1C3 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

When ath10k_qmi_init() fails, the error handling does not free the irq
resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
(re-)register irqs which are already registered.

Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index fc15a0037f0e..f2a0b7aaad3b 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1729,7 +1729,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
 	ret = ath10k_qmi_init(ar, msa_size);
 	if (ret) {
 		ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
-		goto err_core_destroy;
+		goto err_free_irq;
 	}
 
 	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc probe\n");
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
