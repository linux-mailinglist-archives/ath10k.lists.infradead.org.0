Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE1FD567B
	for <lists+ath10k@lfdr.de>; Sun, 13 Oct 2019 16:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5f8zBQucO3gWHlbV4PZenE/NlR0KEjMJW/lhPcOLLl8=; b=GQ9gMHszdGcMgE
	MxbHrjT5uvztK4m2YrP94is3fZcmTnHS1tnoi7QfpG2XUoU9uivvH90ofoH2PtL1MG+xisrkTrT/e
	GcTt0zRhhkYKArpplYi5/DlZAJYUfcDrxgzQxn8NvWwv5AUiypbPnZWZtLpA9Fn7Ep93NaXimsSdQ
	Jza7hv7UNyTJdovN/v3iDtFKD58048jTqs0vgSU+p6KXkvHt4vceliRK1mABfSFw9uK0X7rH8p0uM
	B1xllQCxiUDqN9a6+DwJobNlk5dpay4Vvpky3dC3cgea2T4gz3KpM42GocYpN/dukvP8UOm3Gsrkc
	kFjH0/v39VG+2KEDwY2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJejX-0006r7-Qs; Sun, 13 Oct 2019 14:20:31 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJejP-0006qE-ML
 for ath10k@lists.infradead.org; Sun, 13 Oct 2019 14:20:28 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 6E7122216E;
 Sun, 13 Oct 2019 10:20:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 13 Oct 2019 10:20:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pks.im; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=UBATMjiyRwriyy3gT3jJWdlqUj
 BGlS6GXCTBbiY9fhk=; b=QHl0rRIyWS/fpllJ/rp43mn67DsR+04OGGNwz73UoS
 5UWA+mgVZk1715PRulwh12cQ/KI0s6fHlDJdtCftz3xfvPDdYsSlIOIh9uNqmkjR
 O8ait3wjpKxPAJXfd4NEgK+ok6AdXaBTjSNGECGTfQeHeO7NrX+PvAW/iMlG3d9O
 4LKCJj0YxlTbupn62ABRRqnqtftPLfRZHFIjW3QuHyWI3QV3xqBDpqEXCaCvdLUm
 fBOj0gMRLFgdixVyOAlfnDjb64PZ8GIWf5vVRU70+2Z9UCDeemOae9aswCYq4AQf
 op4/JwRvoJ8dfqrOZ+vewshp7+wTihO6Czwb/PbuH9og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UBATMjiyRwriyy3gT
 3jJWdlqUjBGlS6GXCTBbiY9fhk=; b=ImBY+5DuhnXVkpMI04ayJBJ33hbnl4mww
 VbS8zeqa/QdQxdBkf8m0rI4xoVUfeyQHqrl/qZV3qsG2WHv66CbmYf88QYrosd2P
 cqFeXO7g8anlG3P23IKYcFkhC+pM6BEHSo3MJixMh9ct0WKNashTKP4UWYr6NbIY
 TtKzFS0RX7pZJ3ghN0JCFbpPo2nu/u7RXKexdSHgXIv9xNUoRnyFu/uj3AansMw3
 lUZ5vsag9X0G4DCp5ZU25IRzoW0XtqtiC7IPJfPC6ukkFM+CgJf5mGrD426U+dDz
 maECtXhri7j816KGJPRodfq4SQbHssFsVa/wrfeMTQLfOTw0HzS3A==
X-ME-Sender: <xms:nTKjXf4ztKVqtSvOERhZV9Ai7dJJd1IC5lZqPM8fNFE6dk6MT3GY4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrieelgdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheprfgrthhrihgtkhcu
 ufhtvghinhhhrghrughtuceophhssehpkhhsrdhimheqnecukfhppeejkedrheegrdeghe
 drvdefieenucfrrghrrghmpehmrghilhhfrhhomhepphhssehpkhhsrdhimhenucevlhhu
 shhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:nTKjXY7R4L71kEBg4db58zCeWPs_Iv8qy5yzkTPVEc5DdRLygsPJLQ>
 <xmx:nTKjXVgECJJLGthACBWSyKwjzYrTA3mhtCjrzoNggdtHViXERh3YZw>
 <xmx:nTKjXR5gU02bWiNNQhLyIcoCu2RgbB2wSYLsD5E7FRQ7ozX9YZYVEw>
 <xmx:njKjXZF6u8c3r2mZZfgpi0MkA2j5gou0dNJfmthcdPYp8qsq7V6SAQ>
Received: from NSJAIL (x4e362dec.dyn.telefonica.de [78.54.45.236])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6F5B380065;
 Sun, 13 Oct 2019 10:20:12 -0400 (EDT)
Received: from localhost (10.192.0.11 [10.192.0.11])
 by NSJAIL (OpenSMTPD) with ESMTPSA id 2190664d
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Sun, 13 Oct 2019 14:20:10 +0000 (UTC)
From: Patrick Steinhardt <ps@pks.im>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix disabling of UART debugging
Date: Sun, 13 Oct 2019 16:20:08 +0200
Message-Id: <d492617ed38eb7953401c3171bb3e08c48b7b431.1570976384.git.ps@pks.im>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_072024_056061_B98C75D3 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick Steinhardt <ps@pks.im>, Kalle Valo <kvalo@codeaurora.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Starting with v5.3.0, it was observed that throughput of an access point
with QCA988x-based wireless chip is severely degraded from at least
10MB/s to roughly 200KB/s. A bisect of the issue points to commit
4504f0e5b571 (ath10k: sdio: workaround firmware UART pin configuration
bug, 2019-04-19), which employs a workaround for a firmware bug in some
QCA6174 SDIO devices.

If UART debugging is disabled via the "ath10k.uart_print" module
parameter, then the UART initialization code is skipped. With the new
workaround introduced in the mentioned commit, devices that need the
workaround will also re-set the UART pin of the device to avoid a
failing SDIO interrupt. But in fact, the change effectively removed the
early return for all devices that do not use the workaround, and as a
result UART debugging is now unconditionally turned on disregarding the
value of "ath10k.uart_print", causing the decrease in throughput.

Fix the issue by re-introducing the early return for all devices again,
independent of the UART pin workaround. Tests show that throughput is
back to normal levels again with this fix.

Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
Signed-off-by: Patrick Steinhardt <ps@pks.im>
---
 drivers/net/wireless/ath/ath10k/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index dc45d16e8d21..8e4ca231634d 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2125,9 +2125,10 @@ static int ath10k_init_uart(struct ath10k *ar)
 			ath10k_warn(ar, "failed to set UART TX pin: %d", ret);
 			return ret;
 		}
+	}
 
+	if (!uart_print)
 		return 0;
-	}
 
 	ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin, ar->hw_params.uart_pin);
 	if (ret) {
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
