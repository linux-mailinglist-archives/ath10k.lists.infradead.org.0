Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F016ADD1BB
	for <lists+ath10k@lfdr.de>; Sat, 19 Oct 2019 00:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sucDC3nrYQG24Fg7vpTa6wqOo2A1uDT1Q+XLr11kwrU=; b=gsug3jWn5GvI/g
	plLDol5R0juFTdC3q2sabXuxiWSvsCg9c4KFnoQM5GyZCkXf7jnsXDjRbqgeOK44Hec3phsZFJuhH
	Pv0DqLzguCkwAf+pDT8HBUDqO58cM3tUn7XQ1H/8OoWpZJW7lkBn2Np9z6j1CtuRl7NkKSvyqXeha
	19yzCg+ZYCbiQJBgWuyj8BXH23GaN1rf2Hsru3wDH1AcWWniUyQxPmz2eQXH6dTWEFNA7m73p9P4/
	UFo0seHNThN/VsWYCCCKMuUKVXbWE1yLas4VOKsQB9RznX+rDLkynz9RyNWHPRYl8lQQgeK05gb5N
	/XpV26+quhNIsgpNRLJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLaNv-0002kb-9n; Fri, 18 Oct 2019 22:06:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaNr-0002k9-Rg
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 22:06:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADE16205F4;
 Fri, 18 Oct 2019 22:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571436367;
 bh=EkgPa+/bbt0VO+Jpe6yN+mBPY92zQyr3iwOjdFfnoKQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1r1nQIrbMbr4/+eZXUTxQmsgvZMTlAuCEX1v7m0wYGEn4OHg3Sx3mT0NAWma6IL+H
 yEl/jfQ7eQYTavfTTDshhnnFzSiuorraWJyVEJpvkSXqOJE/Hpk/1Gh7Jp8GQc45Z/
 Q21LNzVReHU8veDChOjV4Cifw4tvL6m1rnwT3bJ0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 022/100] ath10k: assign 'n_cipher_suites = 11'
 for WCN3990 to enable WPA3
Date: Fri, 18 Oct 2019 18:04:07 -0400
Message-Id: <20191018220525.9042-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018220525.9042-1-sashal@kernel.org>
References: <20191018220525.9042-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_150607_911897_3BC0C45A 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Abhishek Ambure <aambure@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Abhishek Ambure <aambure@codeaurora.org>

[ Upstream commit 7ba31e6e0cdc0cc2e60e1fcbf467f3c95aea948e ]

Hostapd uses CCMP, GCMP & GCMP-256 as 'wpa_pairwise' option to run WPA3.
In WCN3990 firmware cipher suite numbers 9 to 11 are for CCMP,
GCMP & GCMP-256.

To enable CCMP, GCMP & GCMP-256 cipher suites in WCN3990 firmware,
host sets 'n_cipher_suites = 11' while initializing hardware parameters.

Tested HW: WCN3990
Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1

Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 5210cffb53440..2791ef2fd716c 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -532,7 +532,7 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
 		.hw_ops = &wcn3990_ops,
 		.decap_align_bytes = 1,
 		.num_peers = TARGET_HL_10_TLV_NUM_PEERS,
-		.n_cipher_suites = 8,
+		.n_cipher_suites = 11,
 		.ast_skid_limit = TARGET_HL_10_TLV_AST_SKID_LIMIT,
 		.num_wds_entries = TARGET_HL_10_TLV_NUM_WDS_ENTRIES,
 		.target_64bit = true,
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
