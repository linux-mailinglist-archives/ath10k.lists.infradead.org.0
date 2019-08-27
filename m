Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224039DE49
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 08:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzQg6gHxzDK4B41MShyjjSgE0U3i/3m4hPh0rAo59Ws=; b=GJJb308TtmdTHh
	fkmQ0KYCBKCnlo4T4CUDBqzcm52rjJEJDmCKjxur1mPIOnaVup9Kq+fifXBj1Ebde7RiXDGA//Hwg
	6tA7goDlHIfijybGltL2PMJ09tdVm4xl12QbzkYw6fP0cg514jw5HGuTpuxthAPyBA8iB3HgICbdM
	aXeHPcNy50Gn18tyrJf5CVGdQtNm+ipGMJwfQk217karMsFOOITMcZWCQkyM7uwWwDqGRqoU6BRBp
	8UJFbGenRloJEBNXSbuARuEWEEQWJ/8pxTHMh+1IrEqaHJ4RMQBVSQSbDQamL3NY+lvbgmVHACMn+
	5fx786hDjsqntNeByO2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VQl-0004Cj-2x; Tue, 27 Aug 2019 06:58:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VQf-0004Bv-8T
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 06:58:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id i30so13471184pfk.9
 for <ath10k@lists.infradead.org>; Mon, 26 Aug 2019 23:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2SjzIbZ5hnYu3S33EBe7j6jLOK8CzX1GOqeIXZJFsQM=;
 b=cr05cDWOBWMlN9xmzk2396gJ0Yv94+bAhseFR8515+ucd/o5PzyR/Hy1HLNvvG4mlF
 epI6WjmKO+EmWvr1mmHggLoQeumqrcjTfcv9/g7pP3GVeuhyanzhZ8C6kReraq9af7Le
 eEY6gmqa+5F1NI3y85owS2gUSlSKv4A2ue3HQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2SjzIbZ5hnYu3S33EBe7j6jLOK8CzX1GOqeIXZJFsQM=;
 b=Xllh8r35UBzrq2AqT3aONRWKoaAOOj+34En/IXCiRSP+3hqUdObiFU5j6h0wUw0jZF
 yaMXwZZdNNX/+/Vbr3mUUmON61pG49ylMS7twFFLJif8W2pkc20J/1pYtJlHHOuqnLfl
 74hTQAg69jqLvUsYt9qIDjN7Y3/B3fXrunzq3e5gFYGWGJgAqylHTKmLxbNgkuv+XRI0
 U9HtlL+WdhceofpTLO3bv8PWvYssCSf52MhRXqy6JOyvKsduw4k/pXWUjyuzyPMJjvRZ
 Gh11vSKj7Bn1tBCurG6rUACs4daLV2EVc+tPxxeZcpsgJojXvlCko53OfG27mqaVD/ad
 FGAQ==
X-Gm-Message-State: APjAAAXQdHNLF7J3MyFCbL621jQ7ZiOPjiN/almmpvyadrhiIpyK9yBk
 6elWOWA8rJuu/8blFLM2ZjsUzQ==
X-Google-Smtp-Source: APXvYqzcZ7kf4YnloLL8kQIiSagsepOrKO60rVy/s+xMJPjlrHUuOYXWh8kMuZiF4AL8PzdR9RlVTg==
X-Received: by 2002:a65:5082:: with SMTP id r2mr19450345pgp.170.1566889087335; 
 Mon, 26 Aug 2019 23:58:07 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b19sm12537347pgs.10.2019.08.26.23.58.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 23:58:06 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v2] ath10k: Adjust skb length in ath10k_sdio_mbox_rx_packet
Date: Tue, 27 Aug 2019 14:58:02 +0800
Message-Id: <20190827065802.167677-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_235810_056645_DE6931D2 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alagu Sankar <alagusankar@silex-india.com>, netdev@vger.kernel.org,
 briannorris@chromium.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, wgong@codeaurora.org,
 Niklas Cassel <niklas.cassel@linaro.org>, tientzu@chromium.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When the FW bundles multiple packets, pkt->act_len may be incorrect
as it refers to the first packet only (however, the FW will only
bundle packets that fit into the same pkt->alloc_len).

Before this patch, the skb length would be set (incorrectly) to
pkt->act_len in ath10k_sdio_mbox_rx_packet, and then later manually
adjusted in ath10k_sdio_mbox_rx_process_packet.

The first problem is that ath10k_sdio_mbox_rx_process_packet does not
use proper skb_put commands to adjust the length (it directly changes
skb->len), so we end up with a mismatch between skb->head + skb->tail
and skb->data + skb->len. This is quite serious, and causes corruptions
in the TCP stack, as the stack tries to coalesce packets, and relies
on skb->tail being correct (that is, skb_tail_pointer must point to
the first byte_after_ the data).

Instead of re-adjusting the size in ath10k_sdio_mbox_rx_process_packet,
this moves the code to ath10k_sdio_mbox_rx_packet, and also add a
bounds check, as skb_put would crash the kernel if not enough space is
available.

Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

One simple way to reproduce this issue is this scriplet, that sends a
lot of small packets over SSH (it usually fails before reaching 300):
(for i in `seq 1 300`; do echo $i; sleep 0.1; done) | ssh $IP cat

I was not able to check the original use case why the code was added
(packets > 1500 bytes), as the FW on my board crashes when sending
such large packets.

 drivers/net/wireless/ath/ath10k/sdio.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 8ed4fbd8d6c3888..0a3ac44a13698c1 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -381,16 +381,11 @@ static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
 	struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 	bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
 	enum ath10k_htc_ep_id eid;
-	u16 payload_len;
 	u8 *trailer;
 	int ret;
 
-	payload_len = le16_to_cpu(htc_hdr->len);
-	skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
-
 	if (trailer_present) {
-		trailer = skb->data + sizeof(*htc_hdr) +
-			  payload_len - htc_hdr->trailer_len;
+		trailer = skb->data + skb->len - htc_hdr->trailer_len;
 
 		eid = pipe_id_to_eid(htc_hdr->eid);
 
@@ -636,9 +631,23 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
 
 	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
 				 skb->data, pkt->alloc_len);
+	if (!ret) {
+		/* Update actual length. The original length may be incorrect,
+		 * as the FW will bundle multiple packets as long as their sizes
+		 * fit within the same aligned length (pkt->alloc_len).
+		 */
+		struct ath10k_htc_hdr *htc_hdr =
+			(struct ath10k_htc_hdr *)skb->data;
+		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
+		if (pkt->act_len <= pkt->alloc_len) {
+			skb_put(skb, pkt->act_len);
+		} else {
+			ath10k_warn(ar, "rx_packet too large (%d > %d)\n",
+				    pkt->act_len, pkt->alloc_len);
+			ret = -EMSGSIZE;
+		}
+	}
 	pkt->status = ret;
-	if (!ret)
-		skb_put(skb, pkt->act_len);
 
 	return ret;
 }
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
