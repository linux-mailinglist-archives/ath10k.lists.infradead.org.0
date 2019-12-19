Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE14126360
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 14:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMOvdbPJuM7n+n+Jjmlrff8/ZSXB2ZE2rmSQPbFtZYM=; b=CWH+aiR7Vv87v8
	SUhT51NmQraqbumLS300/IH6KXXgWoLTVp27suKvqAV7EUZ2nRj4p3GXQA9EdN9Eghq7TlpyOWTjA
	+TlMd/3wvu6AK6VtI+L7aiNv2hyeY0D9g0tORkvjnm6sIXq8sbtLyDhmRrtDXzFEr1MFY9jL6tvXw
	lgadm/FK+MierEdRuOUYnx4327rh/kNC6Y7wh9FndLvvpDyFg3rGA+5AdMg0lB0olYALDcbfNSj+v
	q/rHt/f7VSRHp3Tnc56laVvsvIrXeR6ZaOynd4bjQhv1tyBU3RYJ31SIOxRoVLQiGKKiZBVHarKIh
	ILcHOOM3sHpVD87zBLLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvn2-00047r-R2; Thu, 19 Dec 2019 13:24:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvmx-000475-Qr
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 13:24:25 +0000
Received: by mail-ed1-x544.google.com with SMTP id i16so4856310edr.5
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 05:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WcPY2DOnYcilQeR9udjKYbcsm2SYeFm9eHViqPb53Zw=;
 b=Zd+QfflrbWOQrYRJjFg/z6bsfmD77k5rL3ZvM0YgaDvYRLS5DxLLLVh4UKFHFtWRRL
 vs2qOnVa276iQ6wezrdEWkCuso8BRVMtvhJbi0iBQhuUvHroYXAX4TmHENTp77DHIjXQ
 l8SE1yv80yIETnXD4PJhCEdOrttC6tBfJ92O+9oSxtVPYptWbr7rckseN1duEwCdtGvC
 JY8poG+HbUP/8qehMlgxzh67ghpl8qm6LujOb6xEgYhdeovZz8bwJfj7JVDSuZJPFBq7
 91wEbZWLCF+xQl4wj510/bNs5I7x76vadsaQGrqvYnguT0tJgHvKag5ciCeO4c+VWUvb
 ROcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WcPY2DOnYcilQeR9udjKYbcsm2SYeFm9eHViqPb53Zw=;
 b=n4hu+4Zx6uqcMdnIOglr/IgFu9Y2NYIMk/VMsTNOKPClqm6iZ4Jutz2emR8B3RmdN2
 IVUTPsd9rwxp6cutVVpwBN8bZx2a6PgVhi6GwObjxHx3UjxqM8VU2zGma+2hSIAeaH0V
 w2vEZgCTuhIJGYBjHO6V+BrRiHj1cfLz4myI16Tu/8FI/T3WnqvDuBXa/YTPUdWq+179
 sB9iePPnKH+qSF00Fyj+lnSDIOyOuufb92sotmIFsiYhjNsx62Ofx1HBmTWAR/x+2iyp
 dPsAXgiI0wvjl9kqdaHd5DjJ7BXrhLp2bS7IkeMXUXqcoCBGoduRvFqATN1z8FZp6MBp
 2VFw==
X-Gm-Message-State: APjAAAWxnRgfk8bzhRpXKyB2ydR1EipkBxCh8VMs5tgsbcF0vrjXGhqm
 1S2TlNuEdCLZK+y2iO9V7vBRkg==
X-Google-Smtp-Source: APXvYqw2s6q/NPfbe/cw73hwaCHBRODtJnwzmB3wMsgxBRGt63lzJh2FMbaaOA+cvBquVXHeAyrMiw==
X-Received: by 2002:a17:906:3d62:: with SMTP id
 r2mr9197382ejf.150.1576761862623; 
 Thu, 19 Dec 2019 05:24:22 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
 by smtp.gmail.com with ESMTPSA id cw15sm410286edb.44.2019.12.19.05.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 05:24:22 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: kvalo@codeaurora.org,
	akolli@codeaurora.org,
	ath10k@lists.infradead.org
Subject: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG when
 safe
Date: Thu, 19 Dec 2019 13:15:38 +0000
Message-Id: <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_052424_001229_5DF95440 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ath10k_pci_dump_memory_reg() will try to access memory of type
ATH10K_MEM_REGION_TYPE_IOREG however, if a hardware restart is in progress
this can crash a system.

Individual ioread32() time has been observed to jump from 15-20 ticks to >
80k ticks followed by a secure-watchdog bite and a system reset.

Work around this corner case by only issuing the read transaction when the
driver state is ATH10K_STATE_ON.

Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/net/wireless/ath/ath10k/pci.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
index bb44f5a0941b..4822a65f6f3c 100644
--- a/drivers/net/wireless/ath/ath10k/pci.c
+++ b/drivers/net/wireless/ath/ath10k/pci.c
@@ -1604,11 +1604,22 @@ static int ath10k_pci_dump_memory_reg(struct ath10k *ar,
 {
 	struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 	u32 i;
+	int ret;
+
+	mutex_lock(&ar->conf_mutex);
+	if (ar->state != ATH10K_STATE_ON) {
+		ath10k_warn(ar, "Skipping pci_dump_memory_reg invalid state\n");
+		ret = -EIO;
+		goto done;
+	}
 
 	for (i = 0; i < region->len; i += 4)
 		*(u32 *)(buf + i) = ioread32(ar_pci->mem + region->start + i);
 
-	return region->len;
+	ret = region->len;
+done:
+	mutex_unlock(&ar->conf_mutex);
+	return ret;
 }
 
 /* if an error happened returns < 0, otherwise the length */
@@ -1704,7 +1715,11 @@ static void ath10k_pci_dump_memory(struct ath10k *ar,
 			count = ath10k_pci_dump_memory_sram(ar, current_region, buf);
 			break;
 		case ATH10K_MEM_REGION_TYPE_IOREG:
-			count = ath10k_pci_dump_memory_reg(ar, current_region, buf);
+			ret = ath10k_pci_dump_memory_reg(ar, current_region, buf);
+			if (ret < 0)
+				break;
+
+			count = ret;
 			break;
 		default:
 			ret = ath10k_pci_dump_memory_generic(ar, current_region, buf);
-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
