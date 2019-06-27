Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F2B58917
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 19:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hXY9zh1u1UiUj0DW8ep+d3x/tbVA4dw3QC0v7faYy2k=; b=fjy
	vVh3NVBG+tNpym21gkx/11LWeaLPjMH7E1P/pPM+XFmlxDFXws5IDVuolKlBQbgbcBzxWew7cY88R
	pO0DF+vajW9vskkop/9MPj0XeZwKKrLISNfwU1Iw3nVDHsf6dyjWEr8HvzakddRDkD2NtZkgcZt9O
	Us+dadgcJEaqUN0JBB4M6sWa3v+r9kRNfE4Ml1if5tvoghnEnkXcahES+ke9o99NO+n53fayM3ly2
	IC7VVQUcuZB+psAd3/ZmgKq/pE+xBUXwQ6oAI6SqTeHQvm45NmyDaiww6Ua7Xsm2RD9a243rq+FwC
	mfX0jrRcmvgcP0Tb6fQa5x1EGkT+KrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYSu-00087g-9N; Thu, 27 Jun 2019 17:45:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYSm-00086v-7p
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 17:45:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh12so1679900plb.4
 for <ath10k@lists.infradead.org>; Thu, 27 Jun 2019 10:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YcrOIML8x2OsusC75WoEHjxhMdfGqgM3ZNHf/dMTePc=;
 b=jf7n5fH2A5HNpS8PTM3S811DsWred9JfeFur4PDK5+BudkEiGv0uONGRk5LPBKX5G1
 igwiiPl5vGHIZPuIqoEe5l0Qs+cin2RFFIMudj7GJPW0mPr66sKSrbwTUKz249EJoPSn
 8Hs7tWuLze0yhunJHSGizmLFFeiJw1o1IfQxO04RFUiW4KlfMkSZlJD6Z6L4W7C9ei4U
 X1li4zYSgq37mTn1irKNa1ka/hTFpj0qgHUsNHsiM9uMWD1hSSpiGrnJ9rOHWYQwnOeh
 B1pYgzlYTDmPbk2zt7ht/oTG6uJ34b/ldweUXOBJXiIDRBLwMqAA0fdEwR8lwPbU8Q7o
 /IZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YcrOIML8x2OsusC75WoEHjxhMdfGqgM3ZNHf/dMTePc=;
 b=ZRlgNdQc0wKPI0yGCd+qb+i4h5N/0SuR79Xga1RPBL0k1FycMtZDs3bVb+TLmTiarS
 XgsZ4SrdiW00Lw+ttcZDiE6AZ+m+5MyfOvZTZXg4bwKMlTMIv5v3QGJVPX4Hk1vqAwMH
 AeeC8VX/mAZa7aL45kOt4vd6FeYzIi9mI43xr1BJ1cJgK89uSE/Zsy5GlfohGUAWTCOR
 r6p/6ELKdB6d1vjDMbgi54lrDN+y1uBokXwoHG0ro43yieL48G2vqoy3HxAFbRMuk11O
 2948aw/DhgYc2vlOAzMQSB6JjTrqNRe5z2fafn533t0R/uFZ4ViBueyTzEdSoPByzQqO
 /a/A==
X-Gm-Message-State: APjAAAVSU3bjNYHsgzhwcYqjjgw+XGTIr3f/aQKAaJOYYgL6yn0u33Ha
 mEhc6BOqcqqXgzK88t4Mlcc=
X-Google-Smtp-Source: APXvYqzbE72vwOnzbiDPERLuny3jJnLY2gpyWJh7MxzsMwmFnRrKeXVhleKt5228V1zkdGf43LmBdw==
X-Received: by 2002:a17:902:110b:: with SMTP id
 d11mr6279856pla.213.1561657535820; 
 Thu, 27 Jun 2019 10:45:35 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id t7sm4641393pjq.15.2019.06.27.10.45.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:45:35 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 78/87] wireless: ath10k: remove memset after dma_alloc_coherent
Date: Fri, 28 Jun 2019 01:45:27 +0800
Message-Id: <20190627174527.5987-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_104536_289047_974E212A 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/net/wireless/ath/ath10k/ce.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/ce.c b/drivers/net/wireless/ath/ath10k/ce.c
index eca87f7c5b6c..294fbc1e89ab 100644
--- a/drivers/net/wireless/ath/ath10k/ce.c
+++ b/drivers/net/wireless/ath/ath10k/ce.c
@@ -1704,9 +1704,6 @@ ath10k_ce_alloc_dest_ring_64(struct ath10k *ar, unsigned int ce_id,
 	/* Correctly initialize memory to 0 to prevent garbage
 	 * data crashing system when download firmware
 	 */
-	memset(dest_ring->base_addr_owner_space_unaligned, 0,
-	       nentries * sizeof(struct ce_desc_64) + CE_DESC_RING_ALIGN);
-
 	dest_ring->base_addr_owner_space =
 			PTR_ALIGN(dest_ring->base_addr_owner_space_unaligned,
 				  CE_DESC_RING_ALIGN);
@@ -2019,8 +2016,6 @@ void ath10k_ce_alloc_rri(struct ath10k *ar)
 		value |= ar->hw_ce_regs->upd->mask;
 		ath10k_ce_write32(ar, ce_base_addr + ctrl1_regs, value);
 	}
-
-	memset(ce->vaddr_rri, 0, CE_COUNT * sizeof(u32));
 }
 EXPORT_SYMBOL(ath10k_ce_alloc_rri);
 
-- 
2.11.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
