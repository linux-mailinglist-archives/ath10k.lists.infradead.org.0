Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C71276C0
	for <lists+ath10k@lfdr.de>; Thu, 23 May 2019 09:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O8EoagX7lWEXNHvRwqwdIt2cJfwvCnjwBWrerlzpFUU=; b=bsEYnGKCJfZz/8
	twx4AoO+bSLu0sAMdQnK//at9PaqX8dCJmKSg6994JsqcnoqPqVPb5qxfwqTQAeWhDrT6k41CBHXK
	RdufmnRnSERQf5Hq76upEnnByGCouPRfXEO1d97d3Q1Hf+P+YS0kUgr0bSFwY1j79IAlNCUiWNvdw
	uIYSZSVOKXnVW29x6HaVDgw+gKT0fw26m2xk3DKYVOumlqGAfX+6lvNNEqVeGrCBr17bwiNSTg0Al
	TOZ5Ynhhhk5ea0xA1TDZMgl2fdPYrKmeKFSOiF/XwPl3ixj0tZ12TU9Ah1G4DRJKZbWtSbSnetIun
	jD79+MAy4oqvfTyqhlAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThx1-0006pH-Fl; Thu, 23 May 2019 07:15:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThwx-0006ot-Kb
 for ath10k@lists.infradead.org; Thu, 23 May 2019 07:15:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so2736684pff.4
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 00:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9OT0uMo2PLy/8Ny1z6314ZNN5qG1WmUaXU15heD0YiU=;
 b=k53+//cRJz7YPDv+aEa18jB6qXw903+O5JuPI862LkUkOybM4JYnvmRX1fdzyLEbcl
 Nt1wXS2auGLJkyQcVPddgugt37yG6X7IbbUrca1dLrVZascWqbGiGm3TK8yaARD0kVs2
 7DiQL+1zScCzIAoGzY8TZ12WVUr73KoBt4W7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9OT0uMo2PLy/8Ny1z6314ZNN5qG1WmUaXU15heD0YiU=;
 b=pr2MRSAlrCpwtdbwsVToGknIFBQP1oicoXzuvIx+S63haIZFnBvx2L+JWpXeWv1U0k
 1iUStFyJXGV5JZA2ZzOA7Um0opbYHbccz6pG3BvnXDYQHu/CHXyMhQr4/u24+y86uCMs
 aFiXg792DagSyFDv6H6cxuRg+9e2RFqVYVg9Czm2O57EhAp1dN6skkini6vC4XDxcEYl
 Nxm3M9Ff2POLmRklCyn6J/9tI8WNS+fM36MoujDB4RTrlHXpf7FMZ5iomR7D2Y/sU3Js
 GGzNhUb4nm8l/njLiZ4+N+kN4/+2XsPSHcJDKfQgz9lWXu3159llWylshkMtgVrEWek0
 l/Uw==
X-Gm-Message-State: APjAAAUzvs1Yz05dXcf/gyFF4SmVCIE7z8bemc7rzya/HD/Xyn/UZj12
 EIJOP5LI7KhkQfLsbyZBYUovoA==
X-Google-Smtp-Source: APXvYqwXEqV/cFGWL26K2VAmarTTpWfYld85TN3rtFXREFCWg6WfpZed4VY54Odis9qxvITM5vQxgQ==
X-Received: by 2002:a62:8893:: with SMTP id
 l141mr44178300pfd.261.1558595738659; 
 Thu, 23 May 2019 00:15:38 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id m12sm23566432pgi.56.2019.05.23.00.15.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 00:15:38 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: kvalo@codeaurora.org
Subject: [PATCH] ath10k: add missing error handling
Date: Thu, 23 May 2019 15:15:34 +0800
Message-Id: <20190523071534.254611-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_001539_705074_454454C8 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In function ath10k_sdio_mbox_rx_alloc() [sdio.c],
ath10k_sdio_mbox_alloc_rx_pkt() is called without handling the error cases.
This will make the driver think the allocation for skb is successful and
try to access the skb. If we enable failslab, system will easily crash with
NULL pointer dereferencing.

Call trace of CONFIG_FAILSLAB:
ath10k_sdio_irq_handler+0x570/0xa88 [ath10k_sdio]
process_sdio_pending_irqs+0x4c/0x174
sdio_run_irqs+0x3c/0x64
sdio_irq_work+0x1c/0x28

Fixes: d96db25d2025 ("ath10k: add initial SDIO support")
Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 drivers/net/wireless/ath/ath10k/sdio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
index 9bbd5b54b8ca..4b7f1c6f13e2 100644
--- a/drivers/net/wireless/ath/ath10k/sdio.c
+++ b/drivers/net/wireless/ath/ath10k/sdio.c
@@ -607,6 +607,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
 						    full_len,
 						    last_in_bundle,
 						    last_in_bundle);
+		if (ret) {
+			ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
+			goto err;
+		}
 	}
 
 	ar_sdio->n_rx_pkts = i;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
