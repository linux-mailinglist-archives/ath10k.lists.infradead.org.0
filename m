Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E65B88F6
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 03:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TgqIPzTUSDBMffxK6MmqtQ+I81SfWmrbmWLuWLbhwV8=; b=bhs
	KgarKUaVoFaf/6TPo+T+LIemPUgT0DioZ9Aa4cXD7m02vV5SrBodW911B9amgDGQ4ipx7UyAgOokS
	QqumgU8MLbC9VEmDHseDYkrMDJvPAVL/+Ou5bAAoDDa4G14hJi1RWh5lsdIJBMKmjMI9KcW7qFdEj
	eQ6JBoJXliaYp31BoAPEbyBnG4b8RQxO6wT9wA+/Bs8gR8bBQN9Wjo7zsIKHobQbKfAXTTRwn46dt
	J7kt19264hkIv2Dr3UQc7W8kYL09TmllYFjEGYTOuGFEOoHlejt6CpbUnh0mdPtDggPPxsQ+e/f/h
	0dGNUqgR/L7R5/70DbHnF24DnXzwfQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7qw-0006An-LA; Fri, 20 Sep 2019 01:36:54 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7qr-0006A2-PC
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 01:36:51 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so12531160iop.2
 for <ath10k@lists.infradead.org>; Thu, 19 Sep 2019 18:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2vkYM2Vw9GpvccAiSSIMhifEzfuK8Ld4R3bwXVgh1ps=;
 b=nljLTTHaQr3RenMHyxOGrtAwE/I0ES0GK9UJLdYkS7iEalzRrwu+/ygif0A/YnEFuE
 fMLFG5zBRN2I7SpqvTBqaxAYJbA+a5Nnb5ymeV3s6Ef+CcGHE165IRfi+4dxEt/RvV3k
 4CjBDTDWGnnBO1wfDcS0WW9TqjJEoxFKWNCL+8oAzUyMten4zs8XPRUPlZVc5dHnkqC9
 LmLWnaSBjm2g5JG0GJKSrT8KrYP2mv4yGUR0HaWruQWwfQQ8NJc2RyXm1Ml99KZkoU73
 TG98jQSy2dcHrVqaNRfpAtyj0WEwXdLqMfT1ggk69p1ZfC7ol/7QEQxzgDIU0EFn2r59
 owvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2vkYM2Vw9GpvccAiSSIMhifEzfuK8Ld4R3bwXVgh1ps=;
 b=h6uidvjJA/lvtevOi6n+lWV9vjtx5XM1d7kRlAFgObUBjJMIap329Jxa7uA0de8dx/
 4ANBCQj9/8psgTYwWqBv0bJH+7IC+ewxZb2m3z1dMYwsFp8coTyMryaBVWb4trh0My3B
 XT2OseKTL0iAiy35/SDbWV/5FljTuVmto5Jgglq6lB3uPpQVIGu46UY8kNKwuIdNseow
 y4r+4w82KCHMoANJmlEPlFYb7xnmENPIdx0ZITs6ISjjvTICaf8nyA3OgqPCI5l3/DCb
 3plewsEuTwGiFXPqJx2ldY3gIwfH8D7w1MLxadUUL6o2fDRt0ZjFbJuUk/tiX/EM5MOL
 W3dQ==
X-Gm-Message-State: APjAAAWIX+IMQ2tM7gV9yX2n6iqisUO1ysXCEYfl/P1BcWwlYgTk8xNq
 /djn9P594uwGss08Ku8JA9E=
X-Google-Smtp-Source: APXvYqzLPqJkNUviwDSfcaSYJH+eUFOLc0fBeZpgji797e/U5UAY6XAi9Cq7iKldElsnElvAmFWNCw==
X-Received: by 2002:a6b:8f15:: with SMTP id r21mr3490587iod.259.1568943406715; 
 Thu, 19 Sep 2019 18:36:46 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id x12sm335602ioh.76.2019.09.19.18.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 18:36:45 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] ath10k: fix memory leak
Date: Thu, 19 Sep 2019 20:36:26 -0500
Message-Id: <20190920013632.30796-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_183649_845813_A1A80F7F 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, emamd001@umn.edu, smccaman@umn.edu,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>, Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In ath10k_usb_hif_tx_sg the allocated urb should be released if
usb_submit_urb fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/wireless/ath/ath10k/usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index e1420f67f776..730ed22e08a0 100644
--- a/drivers/net/wireless/ath/ath10k/usb.c
+++ b/drivers/net/wireless/ath/ath10k/usb.c
@@ -435,6 +435,7 @@ static int ath10k_usb_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
 			ath10k_dbg(ar, ATH10K_DBG_USB_BULK,
 				   "usb bulk transmit failed: %d\n", ret);
 			usb_unanchor_urb(urb);
+			usb_free_urb(urb);
 			ret = -EINVAL;
 			goto err_free_urb_to_pipe;
 		}
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
