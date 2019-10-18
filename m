Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3037CDC62C
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 15:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SP82PHNfdAy1G6v1clUp+gh3ZqEobuRWtg2QKxegP5U=; b=HOG
	/dKbjJHGOAtySRm5qiPOloyajHL/3bPzCPpw1K113u1u0r5AY84BQfiM2L9ygGUHoSSnYLtqEZaVj
	IfQ1Y1y4ptGKzMN/NAJOMMot1nWVUwu/o/JvCn9uiQsqXckExnJdrEkcqDYdE1YWlVyHl09v3O+Q2
	qd90tK+0tXEhl6nMuIUjNTqLGuWS8dQ86vXuQlNfASE3LGcJZlT9+FgA5aiPSLbxbdqLm5McfvRKB
	e7v3kYbJP61RznCC5QaIhvLTSpqZW/dtlKv6iv/4ExODxNQLB+ay93xi5+dZYtwxmPvdaBX8mhZ7N
	Lq0fvOcOKXBmUYWduVgQKtPDghV8gdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSPd-0006BQ-JI; Fri, 18 Oct 2019 13:35:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSPa-0006Az-6S
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 13:35:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id u12so2855022pls.12
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 06:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=SsJsXFic4Ds6Lk73dimunU2ietWwXXmu0ej5RwXC+UA=;
 b=GISxMSmdHRoQ6ishW/ilP5//aMCHUDDAFH5E/LaO4lJAnU3lQ+UjGv86+RCZt4Bud/
 XGtM8zFFSIfgylwzLsT/lTUeVau2ZDrnvdfZ99U7iRL3KEDI2J0Eiranv9SYdiD/tZ5r
 jNbVgAoBgA7NvN74bvp3RsnuOUdOlzgRAZ2jHINcxPdqpDlNfQ8pBaR9yd2yZ190P6Cv
 +KpMMHwryvuA5tWM5uQNjTjHQlhyI7nQO0NcW0cFJNLuOaW+dkt3f/LTAwzPi3VxhRXl
 jrdXlFLNy+NQkwlb1u2Sv0KwwAWBecE6T1jUYOvSfCtrp2ECfoKgrv3oecszHw1MnX5a
 bDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=SsJsXFic4Ds6Lk73dimunU2ietWwXXmu0ej5RwXC+UA=;
 b=ocAlj6X2I8f9gbGjobsLw5YNWHy2Y6Tr+QqyptogkPINzzJ15cpgwQSjKPe5bPFrf4
 rTSC9NB5f8dVa7l+K76GHxE5Hi8OUl5dd8efPRnNRw+ELsTphpQsgUAN0TjJncmzSpRv
 H5sd24OiF8f/kH0WbjGZONtsho5iBTKnTMvbsYOIzyhCq/pd/RtoGCuSbwyVb2bchGpt
 j450psoEQrGh8h+9YDKz1jNIl6Kbh08jjU4+xTmJnXIF/WkztWt2g859rsChnf1sBK2y
 HEtePPd40PEzbCT34vKFV4FhRuG8+gCy/Y8sYdVbgbwc1iSD/ovDVPYDGr/CsYDHnbJu
 ud5A==
X-Gm-Message-State: APjAAAXyGJOmMySIduJ8rTvDyFUGi4aXbVMDwcuozCb2MviNyT7qfRuo
 kVt1HubNw24XJYIcxd2HqAo=
X-Google-Smtp-Source: APXvYqwhWW+3kGLhJnDO7JbFfbTPaSBWfQxSxgmG2d8fwyCNuvqp0qF2VBxOO19wBJfV3FxDLDt6iA==
X-Received: by 2002:a17:902:2e:: with SMTP id 43mr10283792pla.55.1571405721031; 
 Fri, 18 Oct 2019 06:35:21 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k66sm6163232pjb.11.2019.10.18.06.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 06:35:19 -0700 (PDT)
From: Guenter Roeck <linux@roeck-us.net>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v2] ath10k: Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
Date: Fri, 18 Oct 2019 06:35:16 -0700
Message-Id: <20191018133516.12606-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_063522_264154_D9ED7335 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Hui Peng <benquike@gmail.com>, Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Hui Peng <benquike@gmail.com>

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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
[groeck: Add driver tag to subject, fix build warning]
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
v2: Fix build warning, add "ath10k:" to subject

 drivers/net/wireless/ath/ath10k/usb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index e1420f67f776..9ebe74ee4aef 100644
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
+		return;
+
 	spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
 
 	pipe->urb_cnt++;
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
