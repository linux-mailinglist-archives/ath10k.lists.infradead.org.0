Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95341808BA
	for <lists+ath10k@lfdr.de>; Sun,  4 Aug 2019 02:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R62MeeS+0rdzBAGivckzNjpyw1NjWRjmS1Lj/zUXYSU=; b=GWC3a4NmzUMuXU
	LBIf4GoXsDzpwOcfKFrZU61TAdskrW78iSi1Mh3LkyU6DXJpk8a3rGLV3M9OgqMqFN3oRVYjOO+gN
	anEfRdylfdmfm8JHnygwN/Q6acblYtrXdtK3WGNxVEoklNIyVPp7UpI62Gy562iUxlSURW3HxTDhn
	llxmBDFwVXqVrmG8zxUuq7o8jcoL/wXZ9hQQhfqdWOVO6C8DjmozMnjUC82RHcaQ2iJ68h0Cdklz2
	Wt2C+2Qum5tdeWyVPKRze9Q5SSCqlJLaNz2ty+7GOaDirsYhu8CLi1dRsBnMssT06S7h8XMj1wEEd
	gKwy0hG46Z1Af+QIR7MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu4Qg-0007pn-3Z; Sun, 04 Aug 2019 00:31:18 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu4QY-0007p1-Es
 for ath10k@lists.infradead.org; Sun, 04 Aug 2019 00:31:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so160267966iot.1
 for <ath10k@lists.infradead.org>; Sat, 03 Aug 2019 17:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mRZqAf00TpYOcC6bW+lbGU9YVHInZQbHpXUrVaIGSGA=;
 b=mE/gEiH7NhTRmWW7ly2DdFH/VIcQpG/K8k4kGRAuVrjdjWq9QYBkrhThwHk9C5luCt
 WFt0wfieUiwXrr7IBreIXNgZGMZ2OBhfKJDdglZFvEMDLGNoLhQJo8fCbxK1aKSw0L9i
 TcxEQHKXNvL+sLHTjG9QhHEs78lu34r11on9cKitCI+dQ7jh+eIOxghkFiuUf3XqmUDd
 nPti0umEif0fDgK5FxhmYC2TApQOk33FWzW4mBGcKheaXsLFti78/ayb1MCr40pl73j0
 k5xfmRE7/4X8ltd7AjDv1Y1iFyw0SCzMCzTfiRh/z9rnA37uFxSn1KhFKulSBli3KHku
 yrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mRZqAf00TpYOcC6bW+lbGU9YVHInZQbHpXUrVaIGSGA=;
 b=Bn1obw/O16FsqewPtHPiboNkJVz4I4mVy7FIuOq68EH77tn16IqdZfqrmwOeNCcybc
 D+Lb/1R64qjZ7sGNUB5JddT5qihnQRnG7un24WZsn8N7n0fKRxYlgAer4aorFJ4NkcxF
 XjG8TP636vjJOaciJJ71tNbfWNlU+XeSjku85+Qc6jZt3ARghpaAf+1+ZxaiwoFGdWWJ
 IaHkiMAeuIEBOuKJV+s6L6wHqfeuXl6cyuexKViWo53gDQdGHTync6oY7CbkhvRwb376
 /vJ7k6FFXOPeUc1PcttPWhU+bhZF/xLYiGebYGUX8itciDdX9yg+5rilR+kRoDjSStit
 K7cg==
X-Gm-Message-State: APjAAAXMdrdw++1yVbinpjH6Q4sT/y20J6g0y/NjqT1Spm5kTd3L25K8
 OBdH07NMZSrOtkK5prkvhZE=
X-Google-Smtp-Source: APXvYqyIUI7fSNQp8L6VocRfRHB4oSQN81MaPNSESXmH+6nxzWBATVq9Gk86g1g8CJNtBZIb6Xsg/g==
X-Received: by 2002:a02:22c6:: with SMTP id o189mr54760745jao.35.1564878667834; 
 Sat, 03 Aug 2019 17:31:07 -0700 (PDT)
Received: from peng.science.purdue.edu (cos-128-210-107-27.science.purdue.edu.
 [128.210.107.27]) by smtp.googlemail.com with ESMTPSA id
 s10sm171146661iod.46.2019.08.03.17.31.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 17:31:07 -0700 (PDT)
From: Hui Peng <benquike@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH 2/2] Fix a NULL-ptr-deref bug in ath10k_usb_alloc_urb_from_pipe
Date: Sat,  3 Aug 2019 20:31:01 -0400
Message-Id: <20190804003101.11541-1-benquike@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_173110_501146_F6DE1E09 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (benquike[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathias Payer <mathias.payer@nebelwelt.net>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Hui Peng <benquike@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
are initialized to point to the containing `ath10k_usb` object
according to endpoint descriptors read from the device side, as shown
below in `ath10k_usb_setup_pipe_resources`:

for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
        endpoint = &iface_desc->endpoint[i].desc;

        // get the address from endpoint descriptor
        pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
                                                endpoint->bEndpointAddress,
                                                &urbcount);
        ......
        // select the pipe object
        pipe = &ar_usb->pipes[pipe_num];

        // initialize the ar_usb field
        pipe->ar_usb = ar_usb;
}

The driver assumes that the addresses reported in endpoint
descriptors from device side  to be complete. If a device is
malicious and does not report complete addresses, it may trigger
NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
`ath10k_usb_free_urb_to_pipe`.

This patch fixes the bug by preventing potential NULL-ptr-deref.

Signed-off-by: Hui Peng <benquike@gmail.com>
Reported-by: Hui Peng <benquike@gmail.com>
Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
---
 drivers/net/wireless/ath/ath10k/usb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index e1420f67f776..14d86627b47f 100644
--- a/drivers/net/wireless/ath/ath10k/usb.c
+++ b/drivers/net/wireless/ath/ath10k/usb.c
@@ -38,6 +38,10 @@ ath10k_usb_alloc_urb_from_pipe(struct ath10k_usb_pipe *pipe)
 	struct ath10k_urb_context *urb_context = NULL;
 	unsigned long flags;
 
+	/* bail if this pipe is not initialized */
+	if (!pipe->ar_usb)
+		return NULL;
+
 	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
 	if (!list_empty(&pipe->urb_list_head)) {
 		urb_context = list_first_entry(&pipe->urb_list_head,
@@ -55,6 +59,10 @@ static void ath10k_usb_free_urb_to_pipe(struct ath10k_usb_pipe *pipe,
 {
 	unsigned long flags;
 
+	/* bail if this pipe is not initialized */
+	if (!pipe->ar_usb)
+		return NULL;
+
 	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
 
 	pipe->urb_cnt++;
-- 
2.22.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
