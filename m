Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010FA6D5CD
	for <lists+ath10k@lfdr.de>; Thu, 18 Jul 2019 22:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KlnxQJMdijDN0A+1/GMg++xNnM//8pu+D1vnw5iY+74=; b=V1f
	Gqp4uuaRkoEOqPN8IpB5RZK6gY/tv/oNNUqqTcz6eNHpQiURZh74a0tKLV6NRyGDtSdrzMzj9kcKf
	UT1I8m9pTBiQgsOJOQ1rf39v+D/iWgeQv2GfVCjAk5HxV7OD8NJ0t7sxlH/1H2GEIDSUAW5MNiY7w
	4xawkxf55u5Jl9rxTga+lV96Abg3OP1BfUXvxWq7P78ziKN4gPKjXBgF6K1N/BzLHdv4O7APYcpBu
	u39fjZnpjS8oVmQRnsp5yiRYPCHU9A6RnEID1IJwVRkl1+wH+jmUuUq1J3IxDIh14x6MMjUo0u/Fp
	cfGvbFh3obDPYCt9QtFWmq3gyiMRtqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoD3T-0002Jj-Fu; Thu, 18 Jul 2019 20:31:07 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoD3O-0002Iu-5f
 for ath10k@lists.infradead.org; Thu, 18 Jul 2019 20:31:03 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so28638116ljg.5
 for <ath10k@lists.infradead.org>; Thu, 18 Jul 2019 13:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5uFK7MqKRb+oFVKD89Io/malOAroV84oVCRoYwQTVLs=;
 b=ByuNj8jVyAGVVYdET8ktdlDqRCowxA9phMWJ7m0Sg/hw15WKOcetKCoYWFrQQJQRKo
 LtEcfREetsclcT4WkgGXcEBP0H8PXdH/UinOi0mrnbXCaG1uU7JZ/TSnEnww/R4X/mTz
 oY9MWuFdVzOuJB5eaML5omcF2fQwGzk4Q2mCo4iQ+VdUEQ8P4ArKNmYpxQn4VQnZcBIm
 tZibUPoWhfIJRuQA9XBnVICH4JPqmb7LBSilxOxr8Kol1LQFKxRHzVLNBPcYd0GBe9qK
 UJK5HYVWYrK9uQ2rjRIQICntWRhJ/+09hxemcPaQHi7E/J8jQ2HvL+W709oR5yYvVCaO
 1FkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5uFK7MqKRb+oFVKD89Io/malOAroV84oVCRoYwQTVLs=;
 b=uY3GnyrysWPwJd4cEhaO6OVLJ9qp5OM4DtDcb2op1yXqdmBz72nyzjvwUlEG2DKBd2
 z1pSvqSw+l5/px+c9BMRKxtRpsWWNEFzFig42AAon2bRY140ctgExvUhGEb4noYC88Iv
 /TWSsVE4A6JkTdIBtxkuNWeIsRqq+SPKgv+FGb+P5ZCiw7QmCCFGgPlWr2z6cO0xH2og
 pUAS7D/uVfjnKoSMOYoSeoG7WJfL3oZeH+ICkhMC0wq2O99grzDohXbk7uj7g9GKP81L
 fNorgXNcDsHLr5sZ2dHWCFqtZXtiUciKc4YGV6I4HOEpE5BCPw/OVR2xTB8cKdaMJXLM
 re8Q==
X-Gm-Message-State: APjAAAXH9z1MlUpYcb3fAgzPOkwRLNrJ+K5cumCr8DzTVaiPuqTEzQpW
 5poZd4zUwVWNgwTvn/Eig4Q=
X-Google-Smtp-Source: APXvYqzYOuKKYg4wEuoB/Wrmt94ndQPSqKVzWpoKOkFOelXaVESsDwy8xn8HcjyigaNiphMBNBSVag==
X-Received: by 2002:a2e:9a13:: with SMTP id o19mr26037315lji.102.1563481858169; 
 Thu, 18 Jul 2019 13:30:58 -0700 (PDT)
Received: from ul001888.eu.tieto.com ([91.90.160.140])
 by smtp.gmail.com with ESMTPSA id d16sm5229387ljc.96.2019.07.18.13.30.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 13:30:57 -0700 (PDT)
From: Vasyl Gomonovych <gomonovych@gmail.com>
To: kvalo@codeaurora.org, davem@davemloft.net, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org
Subject: [PATCH] ath10k: Use ARRAY_SIZE
Date: Thu, 18 Jul 2019 22:30:32 +0200
Message-Id: <20190718203032.15528-1-gomonovych@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_133102_239686_67686FDB 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gomonovych[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Vasyl Gomonovych <gomonovych@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

fix coccinelle warning, use ARRAY_SIZE

Signed-off-by: Vasyl Gomonovych <gomonovych@gmail.com>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index b491361e6ed4..49fc04412e9b 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -976,8 +976,7 @@ static int ath10k_snoc_wlan_enable(struct ath10k *ar,
 				  sizeof(struct ath10k_svc_pipe_cfg);
 	cfg.ce_svc_cfg = (struct ath10k_svc_pipe_cfg *)
 		&target_service_to_ce_map_wlan;
-	cfg.num_shadow_reg_cfg = sizeof(target_shadow_reg_cfg_map) /
-					sizeof(struct ath10k_shadow_reg_cfg);
+	cfg.num_shadow_reg_cfg = ARRAY_SIZE(target_shadow_reg_cfg_map);
 	cfg.shadow_reg_cfg = (struct ath10k_shadow_reg_cfg *)
 		&target_shadow_reg_cfg_map;
 
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
