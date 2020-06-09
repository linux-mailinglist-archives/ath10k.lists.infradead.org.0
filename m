Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC51F3AFF
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 14:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTAzI/iKrgFh01P9DRc6LwJBSz490SJRhobz6o5fmuw=; b=Tr0gG0EnPHlDn4
	UBjxgxSb9sKO7a0UPor/EgUu1tO5oJ74Y7UTFQEBcywMJs7HSCGSXywiNkj/UrK5V3SImRk8VeXOa
	4y1lCrj3BfPOdalm3hWJVZ6AzLPgG5lHkQDvYy8l/1/CKSsi8+8R5RfOoPxq1O+rVTjpSDI8NPCol
	xeOgnVzxbJvfBpyzy9UU80/zNL72wH8RGIrDvCkpDdmLgR2vgZSB4Yw/zoBClkEO8TcYNrzEoNkPn
	jVYOWNUx10+hs2i4TKB4q8/HRRi7LsNTPa8QxCYFSmQapNFIydFFNlGfDih4yujMjZnFdkI+yjOoL
	fpkc3TPTQs6sl7TVUBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidfE-00021c-O8; Tue, 09 Jun 2020 12:47:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jideE-000116-JX
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 12:46:36 +0000
Received: from Q.local (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net
 [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BF9701227;
 Tue,  9 Jun 2020 14:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591706788;
 bh=jIDnNlqQO8hAVuTBSxCrpbpRndavULdtblkTlqt+A/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WMQo4K5+weFVoq0+O9ilxiYdak5BJs+Zl0EZ4GXf3KB/gljQMgkHUHn9dZC+9GK+K
 bvqRyBw+URwzIVfZa7DNNq2crk9+6BP3ygsbK7ICnHBoERNcBHIYxzp04RPQoQH/Rp
 Ng5LBBrhbT65j0VTMzNMLLNoKR2mBA6zxfnEdxTA=
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 05/17] drivers: net: Fix trivial spelling
Date: Tue,  9 Jun 2020 13:45:58 +0100
Message-Id: <20200609124610.3445662-6-kieran.bingham+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
References: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_054634_803173_95D2C2E7 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Wenwen Wang <wenwen@cs.uga.edu>,
 Jiri Kosina <trivial@kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Martin Habets <mhabets@solarflare.com>,
 "open list:NETWORKING DRIVERS WIRELESS" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER"
 <ath10k@lists.infradead.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-renesas-soc@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jakub Kicinski <kuba@kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The word 'descriptor' is misspelled throughout the tree.

Fix it up accordingly:
    decriptors -> descriptors

Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
---
 drivers/net/wan/lmc/lmc_main.c        | 2 +-
 drivers/net/wireless/ath/ath10k/usb.c | 2 +-
 drivers/net/wireless/ath/ath6kl/usb.c | 2 +-
 drivers/net/wireless/cisco/airo.c     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wan/lmc/lmc_main.c b/drivers/net/wan/lmc/lmc_main.c
index a20f467ca48a..842def21e089 100644
--- a/drivers/net/wan/lmc/lmc_main.c
+++ b/drivers/net/wan/lmc/lmc_main.c
@@ -2063,7 +2063,7 @@ static void lmc_driver_timeout(struct net_device *dev, unsigned int txqueue)
     /*
      * Chip seems to have locked up
      * Reset it
-     * This whips out all our decriptor
+     * This whips out all our descriptor
      * table and starts from scartch
      */
 
diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index b7daf344d012..05a620ff6fe2 100644
--- a/drivers/net/wireless/ath/ath10k/usb.c
+++ b/drivers/net/wireless/ath/ath10k/usb.c
@@ -824,7 +824,7 @@ static int ath10k_usb_setup_pipe_resources(struct ath10k *ar,
 
 	ath10k_dbg(ar, ATH10K_DBG_USB, "usb setting up pipes using interface\n");
 
-	/* walk decriptors and setup pipes */
+	/* walk descriptors and setup pipes */
 	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
 		endpoint = &iface_desc->endpoint[i].desc;
 
diff --git a/drivers/net/wireless/ath/ath6kl/usb.c b/drivers/net/wireless/ath/ath6kl/usb.c
index 53b66e9434c9..5372e948e761 100644
--- a/drivers/net/wireless/ath/ath6kl/usb.c
+++ b/drivers/net/wireless/ath/ath6kl/usb.c
@@ -311,7 +311,7 @@ static int ath6kl_usb_setup_pipe_resources(struct ath6kl_usb *ar_usb)
 
 	ath6kl_dbg(ATH6KL_DBG_USB, "setting up USB Pipes using interface\n");
 
-	/* walk decriptors and setup pipes */
+	/* walk descriptors and setup pipes */
 	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
 		endpoint = &iface_desc->endpoint[i].desc;
 
diff --git a/drivers/net/wireless/cisco/airo.c b/drivers/net/wireless/cisco/airo.c
index 827bb6d74815..e3ad77666ba8 100644
--- a/drivers/net/wireless/cisco/airo.c
+++ b/drivers/net/wireless/cisco/airo.c
@@ -2450,7 +2450,7 @@ static void mpi_unmap_card(struct pci_dev *pci)
 
 /*************************************************************
  *  This routine assumes that descriptors have been setup .
- *  Run at insmod time or after reset  when the decriptors
+ *  Run at insmod time or after reset when the descriptors
  *  have been initialized . Returns 0 if all is well nz
  *  otherwise . Does not allocate memory but sets up card
  *  using previously allocated descriptors.
-- 
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
