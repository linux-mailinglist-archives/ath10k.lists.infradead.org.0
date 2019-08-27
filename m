Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3C59DAB2
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 02:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Il0T30ref94Xj5BBbgdPXEuaPG0Aohd878CIBdVc+nE=; b=CllE9d5O/JE/Pz
	d0pFhabtEL/HaDpO9r+RGZAc+af2MibKJmbbwMxLYP/DTYY8e6Utb/vB3nFdfEzIxb45eyBqJjOBg
	VV9uOQX0vP2OBczLpRpKkdlQZPdq0Ffgy1rjBmO5TiKjsJSiaJdKwiv7ygs91Rvqj/tbxBu23SVH/
	xS6W+GXwLqi3NdfO+WAi01QbAPxjYn82xvgG6CwznhL3Ek7xYASKyXSFbi9c7Dc8+cz7posUgO9t9
	8zOtoSmY2y3kcDFzlzY6TQ3AD0kYRy8EVSaIsv8UJfyrF4grH5lVzoq74Z53Esayqoc26VZNQ7/Hx
	f2GUS0cKzAt7pGGCidPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2PRZ-000742-SD; Tue, 27 Aug 2019 00:34:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2PRU-00073H-69
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 00:34:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id w16so12901408pfn.7
 for <ath10k@lists.infradead.org>; Mon, 26 Aug 2019 17:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Vs+TQr7hHy2v8MzMkCOjJVcnNTmLTAgeFS/JpBulfo=;
 b=TbRrANRIH92j2fSmCx5BdSbQOzmBU/XbqoZ7xd1Ww6AaUEz68WzvbdIanurUAl4uCi
 TY5ohivdtzQn+XaVmJg6fPUKxrj24BAg74pSnwI7DkAuOrdvMiXXCrTy2hSlOyRnUj+6
 wtSltIyQcEmY1aect58Y183r1a351O76l3nNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Vs+TQr7hHy2v8MzMkCOjJVcnNTmLTAgeFS/JpBulfo=;
 b=UT1kqNCCFz6y6oUeVcHog2Gi6ZuYoC/N73ThoK1kC05n8VgvfCjHi+R2Ke5GiCztVf
 j96cglS6pP/+n7vqmopFZ6NzrpHltcnDm0eZIz1/222sUxX4IOKgfkmdyE7JFCy5LOxY
 6TNLYwAzmEgpCkaJOnHII31QEiUXu56fidrLxE1zhjIzRY+yoWHswQNVG5XR+54DcRm3
 39BEcBcc+z2iiKPMThsnuAf1J++46rCmhxJe84rOEKHbT9ev8PuokEpKQuJL4pccFhc6
 GavdsxnRDDlrEEttAdMDwwwvRBCO/drf6Q3kyTk5aXvgLD2xTELGfeqkq9/ehTKeMO3J
 3kLw==
X-Gm-Message-State: APjAAAWEoozLwbcs681VijqV9HrcJvkbdJWGImRVNbVI/XaYmGjRqVub
 tKxUaffBXPO61x1dVasFJYEI4g==
X-Google-Smtp-Source: APXvYqyXHySgZZYqvzNM28Yd+pRvNdNbnVHxIZpOA4FgrKCaNtwMUDuAlL2eCKLsx6jrUwC8C3dTJQ==
X-Received: by 2002:a05:6a00:8e:: with SMTP id
 c14mr22563388pfj.241.1566866074901; 
 Mon, 26 Aug 2019 17:34:34 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a23sm9081429pfc.71.2019.08.26.17.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 17:34:34 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH,
 RFC] ath10k: Fix skb->len (properly) in ath10k_sdio_mbox_rx_packet
Date: Tue, 27 Aug 2019 08:33:26 +0800
Message-Id: <20190827003326.147452-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_173436_255018_5735D07C 
X-CRM114-Status: GOOD (  15.24  )
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

(not a formal patch, take this as a bug report for now, I can clean
up depending on the feedback I get here)

There's at least 3 issues here, and the patch fixes 2/3 only, I'm not sure
how/if 1 should be handled.
 1. ath10k_sdio_mbox_rx_alloc allocating skb of a incorrect size (too
    small)
 2. ath10k_sdio_mbox_rx_packet calling skb_put with that incorrect size.
 3. ath10k_sdio_mbox_rx_process_packet attempts to fixup the size, but
    does not use proper skb_put commands to do so, so we end up with
    a mismatch between skb->head + skb->tail and skb->data + skb->len.

Let's start with 3, this is quite serious as this and causes corruptions
in the TCP stack, as the stack tries to coalesce packets, and relies on
skb->tail being correct (that is, skb_tail_pointer must point to the
first byte _after_ the data): one must never manipulate skb->len
directly.

Instead, we need to use skb_put to allocate more space (which updates
skb->len and skb->tail). But it seems odd to do that in
ath10k_sdio_mbox_rx_process_packet, so I move the code to
ath10k_sdio_mbox_rx_packet (point 2 above).

However, there is still something strange (point 1 above), why is
ath10k_sdio_mbox_rx_alloc allocating packets of the incorrect
(too small?) size? What happens if the packet is bigger than alloc_len?
Does this lead to corruption/lost data?

Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

One simple way to test this is this scriplet, that sends a lot of
small packets over SSH:
(for i in `seq 1 300`; do echo $i; sleep 0.1; done) | ssh $IP cat

In my testing it rarely ever reach 300 without failure.

 drivers/net/wireless/ath/ath10k/sdio.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 8ed4fbd8d6c3888..a9f5002863ee7bb 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -381,16 +381,14 @@ static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
 	struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 	bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
 	enum ath10k_htc_ep_id eid;
-	u16 payload_len;
 	u8 *trailer;
 	int ret;
 
-	payload_len = le16_to_cpu(htc_hdr->len);
-	skb->len = payload_len + sizeof(struct ath10k_htc_hdr);
+	/* TODO: Remove this? */
+	WARN_ON(skb->len != le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr));
 
 	if (trailer_present) {
-		trailer = skb->data + sizeof(*htc_hdr) +
-			  payload_len - htc_hdr->trailer_len;
+		trailer = skb->data + skb->len - htc_hdr->trailer_len;
 
 		eid = pipe_id_to_eid(htc_hdr->eid);
 
@@ -637,8 +635,16 @@ static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
 	ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
 				 skb->data, pkt->alloc_len);
 	pkt->status = ret;
-	if (!ret)
+	if (!ret) {
+		/* Update actual length. */
+		/* FIXME: This looks quite wrong, why is pkt->act_len not
+		 * correct in the first place?
+		 */
+		struct ath10k_htc_hdr *htc_hdr =
+			(struct ath10k_htc_hdr *)skb->data;
+		pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
 		skb_put(skb, pkt->act_len);
+	}
 
 	return ret;
 }
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
