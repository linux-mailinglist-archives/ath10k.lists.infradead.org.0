Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C630682A6
	for <lists+ath10k@lfdr.de>; Mon, 15 Jul 2019 05:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1S4AKxoO86hEC0WlH29utOkP+51xyZk7VU/g49hzh0I=; b=Obr
	4LRu32oT/8dtMtqP09pOI9bdcIQRHuRK0Bmxa05bbSLMilKQWDQxaQzdSYf+yFJnQs2Ewjk04xkRa
	JpH8FOukwPEKYzQhafH8SO5mZ6OR/eQAl+wlugGuNWN9h3MfzHphrJTOSoQpuBu9v9wpPEzchqnjK
	baOdGVPM8dOHOvmqxQeL0nNeN7lg2FhSUdZEwsCbmlDoD5UmmWdkDWOWH20D37snzUfjK6+/hMhXR
	Oy5AWDrgtb7Ub3II1pKUexsDduKZiTFx5DIbOEGogNgMZc1CebmZNEDRqvVMKwFd70XYWcbowRqX8
	J5MqYTm02qqjKaPyjZPcpUZquGOeLOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmrWw-0003NV-Hd; Mon, 15 Jul 2019 03:19:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmrWo-0003NB-Ts
 for ath10k@lists.infradead.org; Mon, 15 Jul 2019 03:19:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so7529828plr.11
 for <ath10k@lists.infradead.org>; Sun, 14 Jul 2019 20:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+B0jx+4muj+M4b7c2kQfV0uSbE8FiTxBXwM9XgPCIac=;
 b=rUrV/W2cFJNaa8vePeI9kEWvofvtQd3wBD4YW63KnfV+rcI+vl/TeWgDn1ZWBbJF+d
 4PhGeWEFU9VVCds7ZsnsSapiOLg8VcaUaz2PBh9LPeEOu3GXL+cnPGQ406XBCMZ1nvqm
 9jfFFnT0DMHGLUz1+sz+FOYuvQ19Nfwvpr822BFWOzV5thNTCtV/hf2qW+3//T6uwDIk
 cyEDHmxDdFtBrIgVGR4P7jiVcksY5TCWKSd2pyYTj0lNNQMyfveZ508iYGk8ICDqmP6Q
 M7690uJe75Qu3fgoe3g2UZefqxultpC2Pncsj/IwKbWZ1ED4qPc2sIwvzbw+TCEF8x9L
 vtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+B0jx+4muj+M4b7c2kQfV0uSbE8FiTxBXwM9XgPCIac=;
 b=L4WLd7VfgwTdU7bM40OQUyNJk6iQhoUw2LXXUMEIZzPOzfSbwrjbRLudCUJOEhECBh
 YbUZ6GjDBUibX6CjYs2etSbYnsYF4727PDK0dM4vxBcM7ycuNnuCPDAtWwq26kWfLaaB
 cTuQWmYA0NgDjuPC55lDEDuB7UZORNxSNJkOutJaW5TeB+s/2b00LH63yo+jp6JnUXJY
 PXGC1fi0K0uaP5XKPPWJFkSl+VquKSuBocQyn2BCdj862sbhZXZ1Ry7NN0hhWXHYNQSV
 jWOYB4tJzHnNsEy3HlF7y6ob3PY/KJExdNhF0lEztwsRMIRWrglRNWDtFI+NptkqNalY
 /dng==
X-Gm-Message-State: APjAAAVDWat3Vzblfyt7RGm1kPp4dmD3ELGRQ6vt4+1EismEomuLVLap
 /ba0aGL+A2tHfc9l//J+0Io=
X-Google-Smtp-Source: APXvYqwQR7EYn7nM9TgFm/nKnIR49M8lFOUn+x0miZZg3gxoz/XgR4qWm5y30xqPSsvlAzLYNlmvmQ==
X-Received: by 2002:a17:902:a612:: with SMTP id
 u18mr25087040plq.181.1563160789988; 
 Sun, 14 Jul 2019 20:19:49 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id 2sm21006045pgm.39.2019.07.14.20.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 20:19:49 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v3 20/24] wireless: Remove call to memset after
 dma_alloc_coherent
Date: Mon, 15 Jul 2019 11:19:41 +0800
Message-Id: <20190715031941.7120-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_201950_964718_6CBD54DC 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Sergey Matyukevich <smatyukevich@quantenna.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Wright Feng <wright.feng@cypress.com>, Fuqian Huang <huangfq.daxian@gmail.com>,
 brcm80211-dev-list@cypress.com, Avinash Patil <avinashp@quantenna.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In commit 518a2f1925c3
("dma-mapping: zero memory returned from dma_alloc_*"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v3:
  - Use actual commit rather than the merge commit in the commit message

 drivers/net/wireless/ath/ath10k/ce.c                     | 5 -----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c  | 2 --
 drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c | 2 --
 drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c | 2 --
 4 files changed, 11 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/ce.c b/drivers/net/wireless/ath/ath10k/ce.c
index eca87f7c5b6c..294fbc1e89ab 100644
--- a/drivers/net/wireless/ath/ath10k/ce.c
+++ b/drivers/net/wireless/ath/ath10k/ce.c
@@ -1704,9 +1704,6 @@ ath10k_ce_alloc_dest_ring_64(struct ath10k *ar, unsigned int ce_id,
 	/* Correctly initialize memory to 0 to prevent garbage
 	 * data crashing system when download firmware
 	 */
-	memset(dest_ring->base_addr_owner_space_unaligned, 0,
-	       nentries * sizeof(struct ce_desc_64) + CE_DESC_RING_ALIGN);
-
 	dest_ring->base_addr_owner_space =
 			PTR_ALIGN(dest_ring->base_addr_owner_space_unaligned,
 				  CE_DESC_RING_ALIGN);
@@ -2019,8 +2016,6 @@ void ath10k_ce_alloc_rri(struct ath10k *ar)
 		value |= ar->hw_ce_regs->upd->mask;
 		ath10k_ce_write32(ar, ce_base_addr + ctrl1_regs, value);
 	}
-
-	memset(ce->vaddr_rri, 0, CE_COUNT * sizeof(u32));
 }
 EXPORT_SYMBOL(ath10k_ce_alloc_rri);
 
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
index 4ea5401c4d6b..5f0437a3fd82 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
@@ -1023,8 +1023,6 @@ brcmf_pcie_init_dmabuffer_for_device(struct brcmf_pciedev_info *devinfo,
 			       address & 0xffffffff);
 	brcmf_pcie_write_tcm32(devinfo, tcm_dma_phys_addr + 4, address >> 32);
 
-	memset(ring, 0, size);
-
 	return (ring);
 }
 
diff --git a/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c b/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
index 3aa3714d4dfd..5ec1c9bc1612 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
@@ -244,8 +244,6 @@ static int pearl_alloc_bd_table(struct qtnf_pcie_pearl_state *ps)
 
 	/* tx bd */
 
-	memset(vaddr, 0, len);
-
 	ps->bd_table_vaddr = vaddr;
 	ps->bd_table_paddr = paddr;
 	ps->bd_table_len = len;
diff --git a/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c b/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
index 9a4380ed7f1b..1f91088e3dff 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
@@ -199,8 +199,6 @@ static int topaz_alloc_bd_table(struct qtnf_pcie_topaz_state *ts,
 	if (!vaddr)
 		return -ENOMEM;
 
-	memset(vaddr, 0, len);
-
 	/* tx bd */
 
 	ts->tx_bd_vbase = vaddr;
-- 
2.11.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
