Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF0412631E
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 14:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VTK3NtwmvOBmCmEL2GPqCLZ9vKV8rRNd4xRjVoaKFcE=; b=RkWxe399WX6lJy
	gdhQQdST5yhZQj7mk6gSGBLCIWGfcCUY672V4oo3gj3ogg3StbWNcT+EZCkIRYc5rcEZ8oUxBizAN
	qR7WUtdIxHEfwSSVvD+fYnOzez8k2Xn9NFobxWgJoxwHQ5nvN09mQT52X07v0St3sp6z4XbwlLmbz
	atJHH39s1c7LoSYQeYElHP5sR9VYcehTnAwkdCyBg2fUi69Hzz90+JRsGctsKC+xPaG8k7RtPjnBU
	kAOHkS19cRNbrQkousZkPRgzVy7yWyy4tb9gjr6ZKveG+u+/RXDC6WDk/ORzjQzY02XA3I4uzfOq0
	pelBhfDlRzkS7Qy6r4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihveK-00026s-RB; Thu, 19 Dec 2019 13:15:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihveG-00026E-IX
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 13:15:25 +0000
Received: by mail-ed1-x544.google.com with SMTP id f8so4844603edv.2
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 05:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+Ei4HzxmBsPDZTHsP8DZ9d6KPTrEHJVVPZdhv56adw=;
 b=awGrenJDW7xKsLpiPGeIRrNo2A6uiQq9t9EbV7eHgKbZd1UBgDN85SFMihKdxt44j+
 McN6qtLM1968DRzpP0a3v1ukyOodwO29cpQTXazvDOHdqsYuLciQ55UDCyfH+YdBIzMq
 e49/fSYwOLqpnkDyCM7423wQOymJVFx9tuO+4fdWihvKsrcHQOtw/Z//n47v3AOFLdi8
 brJY7pAPzOpBHP2CpfB/576DEtHzcWed93QDWBBfdlUSxAchDeMGW4TcBgkotPbzDVsG
 ndCmD8SioCy8XIc/BYIZKmVa4g5oVP+OhjkzBlqEJOiSJPmIpaQoNw4E9LQYgfptBYm3
 Y6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+Ei4HzxmBsPDZTHsP8DZ9d6KPTrEHJVVPZdhv56adw=;
 b=HUd0RbmBndDNn5bu8VlmkRtAHbBX3eaNIJh7xCi/ykCuDBUzgdS3DRQrPCZak3QQpo
 VOG2TS7poUwu16Y3+c1SPwtUVwzA32nGUw5FSupa+S7u5zwAz0lLPfFWxbrQD8lTmr4r
 w9ZlAH5s3mVt1lksHeDbSgDvFNb9rZdem0PwsqRc1k94IYufLNfQW1OQPV5qIBf3/zI4
 cj82BQ0b48cynI1GgMdFkZ0hDsRbh9HEnFZf1qorB575TV3O50qeEMH4YiXZ53tzhdEA
 ExLGd6n2iM+M45CdjAAbP01mbqFnfbWefTUvyQUmV+tBQaZX0td7dcZN69l3hh0nm6BD
 mYOw==
X-Gm-Message-State: APjAAAVKVT1KoNqwh3Xxm94sMC5ikgG4Gagr2QigT5Y4Rkn+9KXJtrgp
 cQDnFc2/vV0cjcAAgDzqxV8XsrP3rLM=
X-Google-Smtp-Source: APXvYqymawJmDlguUa+XbUmftPeGxh/G8AqwTN3gz+ZSDE2nbWk2kcAbb2U2kwmtlKldOU5GpAIRBg==
X-Received: by 2002:a17:906:19ca:: with SMTP id
 h10mr9395261ejd.282.1576761321093; 
 Thu, 19 Dec 2019 05:15:21 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
 by smtp.gmail.com with ESMTPSA id cw15sm410286edb.44.2019.12.19.05.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 05:15:20 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: kvalo@codeaurora.org,
	akolli@codeaurora.org,
	ath10k@lists.infradead.org
Subject: [PATCH 0/2] ath10k: pci: Two PCI related fixups
Date: Thu, 19 Dec 2019 13:15:37 +0000
Message-Id: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_051524_611457_A1D91B22 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
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

This set addresses two issues one a contrived but real corner-case crash
scenario and the other a simple typo.

Debugging on a QCS405 which has an ath10k attached to PCIe its been found
that a loop similar to the below [1] will cause.

1. A significant slow-down in the time it takes an individual ioread32()
   to complete.
2. A secure watchdog bite.

This is as a result of the restart routine and the dump register routine
running in parallel and a period of time during restart where dumping
registers is unstable.

The second patch is a simple fix to an apparent copy/paste error describing
the behavior of a similar dump function.

[1] Reset method
while $1
do
echo hw-restart > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash
echo hard >  /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash
done;

Bryan O'Donoghue (2):
  ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG when safe
  ath10k: pci: Fix comment on ath10k_pci_dump_memory_sram

 drivers/net/wireless/ath/ath10k/pci.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

-- 
2.24.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
