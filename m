Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8B668BDE
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 15:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t30nUUKxEa243BYpg4/elrnhkDMUF0Zgey9gnF8pL7g=; b=R9zmB42D23v3X7
	Qq1efHGriiZDviCPLOzuR6JYUFyyn8rKdMG1yzJj3XM+crY6yd+8zdAz/EtyZBZ9py7YewGjk0DWO
	SQ+lU1UuOqdafwjAMGune7qHAwbRRQzTcDakOHj9b/LBfd3yP/r3vawlKrWFXruC50y2jJQqmrYKK
	c4DLZq9BBYSgggontcUzbzfn1yoDKJA8nJZkYnsKMmFD9HpV/UUqw+h44dC51F5244fEInk6qtIIL
	OXZsqXI19f2vqIaUY/2babWGfB3jD6T6teYlB3AoKkTPHRqZ5blOdtjK+UHmbuc0FEbksZOjmpHR1
	RIyG+W/NsV1u1SveyPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1KH-0001Rl-GP; Mon, 15 Jul 2019 13:47:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1K9-0001Nj-04
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 13:47:26 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E69D22086C;
 Mon, 15 Jul 2019 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563198444;
 bh=1G7KjC91RtjcBKsDM3By3WOUgi19PQ09IvvPLlwt2kk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RpsH7RTPH8FbiqVpJV9nlAjSIntdnlLJm7/m5atxTtNFsdsFWYPXv9FL3ko0ianpc
 aMPGgoWXoexOHlFZGdFER4cWtUZYELzzB1V7hBk2u5d9GTNn3P+xqWgQJeiI2z8z3C
 FpAsfW/zUadH8qPZysCOEerX537zgilBA+cx+hSs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 009/249] ath10k: Fix the wrong value of enums for
 wmi tlv stats id
Date: Mon, 15 Jul 2019 09:42:54 -0400
Message-Id: <20190715134655.4076-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_064725_206739_554B3CF7 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Kalle Valo <kvalo@codeaurora.org>, Surabhi Vishnoi <svishnoi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Surabhi Vishnoi <svishnoi@codeaurora.org>

[ Upstream commit 9280f4fc06f44d0b4dc9e831f72d97b3d7cd35d3 ]

The enum value for WMI_TLV_STAT_PDEV, WMI_TLV_STAT_VDEV
and WMI_TLV_STAT_PEER is wrong, due to which the vdev stats
are not received from firmware in wmi_update_stats event.

Fix the enum values for above stats to receive all stats
from firmware in WMI_TLV_UPDATE_STATS_EVENTID.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1

Fixes: f40a307eb92c ("ath10k: Fill rx duration for each peer in fw_stats for WCN3990)
Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/ath10k/wmi.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index e1c40bb69932..12f57f9adbba 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -4535,9 +4535,10 @@ enum wmi_10_4_stats_id {
 };
 
 enum wmi_tlv_stats_id {
-	WMI_TLV_STAT_PDEV	= BIT(0),
-	WMI_TLV_STAT_VDEV	= BIT(1),
-	WMI_TLV_STAT_PEER	= BIT(2),
+	WMI_TLV_STAT_PEER	= BIT(0),
+	WMI_TLV_STAT_AP		= BIT(1),
+	WMI_TLV_STAT_PDEV	= BIT(2),
+	WMI_TLV_STAT_VDEV	= BIT(3),
 	WMI_TLV_STAT_PEER_EXTD  = BIT(10),
 };
 
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
