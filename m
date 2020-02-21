Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE5B168852
	for <lists+ath10k@lfdr.de>; Fri, 21 Feb 2020 21:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GXoBBhq1/TOwjQ8P2gb+5rRQeM0wRDvIvKhhTREK1ZI=; b=Cts
	hwPg0xEw5/vjCiUEVifzQpF7Uldf6tZ0V9jC1Yy9A5Jo4Q1dpboS8THLfnW9EO97kt9iFYHzdhRdt
	c5fjdkL7t3V4xnj7DntszO+kVekLju/z87bzVxCLdNByfPTWtO86xCa9NkGmmmlAqlM6iKdbA1mR2
	ktIfFNK/SEpAlp2NIWznhZtSf9g7KSi2/9OGorqsp44aBZMoEtlpfs0Lkqj7SH0q11jND/UUlDfuI
	TmxEXzZg1uvntmB2bYvZXpfVwZOu9+brxm+YTBuh3kY7kz9FK23W6xUrM+ZtRiqKo2KT/R9bgag2H
	HZzl7TrMRbUXpdvGKCC1jGj7rAOST4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Eso-0003eg-C1; Fri, 21 Feb 2020 20:26:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Esk-0003eL-VE
 for ath10k@lists.infradead.org; Fri, 21 Feb 2020 20:26:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id n10so3467706wrm.1
 for <ath10k@lists.infradead.org>; Fri, 21 Feb 2020 12:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=oxbFqyFOH5zq5fF5+d0nUIVOeZO5g7Y+Fu/DWCeWJqM=;
 b=WrVpGOjB749UthOimUsWNie+o/Uj5QKTysZReO54oNRNx0twB3kc/bbALQJMbx9WC3
 mDcMb6a7frr1Bv/l5t4p7cmfT3PXyax9xnLHlF7z4vxxayTHyNhOuwp44azOq5j5NNLG
 raX5Ls+nE2kazR+uv4jSqKEh1uDEkVp7rryEW/+Uoxq4oduUemfrI3RgvBvd+0jZZPPn
 W0XcJnQZuA3ct5ife+sEqssnIesRqSHRABsFZuLDqb3d7XG/waASaknxaMVkpU4evAkY
 g64H62gofIYQ/V5PZGh/WZrdoZtArpQOQwwZlS9mF47D5NrcusLimOLT/P75pg1FrzVU
 o4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oxbFqyFOH5zq5fF5+d0nUIVOeZO5g7Y+Fu/DWCeWJqM=;
 b=TkIGH1poqvGj5LKoMxdzXw/Bww4/t24AnFUVuw49IGj2TL3HH4T7Aw8aGAoSJe3eDX
 085XBVZKp8VvTWdy5AiBVEBpLxeGw5rnDYYW3IDk9lLmUtwscy8Zgmg3kcbvpZN40ZOk
 t/g10AialxEDRyMLyXfwa63m1XOq2XEsUGXDJLNq3Nz6joDIpRVjYLfpumC5QqNQa92r
 6Vzx9C11+TqyLK0BKMfWmvEhGnJy0Dh9bNFmekNWH2hDrNYOO4kH8rwL7RtIMKBnB7Rw
 nchib12j7MCWLNRoSZWriyisLMfjtfZV5j87j6QjymERlfKvQ+hNP571X+guArEVOzPA
 D1Qg==
X-Gm-Message-State: APjAAAVG4zaX7HQo5xyOdt1+zhCdL5xdl84XBD63eOx9aTfcOerNBKLy
 i7aWFu44nCap+gLzlX4brYJxNVT/Np02KfMWS44pwae1Ow==
X-Google-Smtp-Source: APXvYqxFPdKkCHpUo++4j6GlEOFbh1r9zGNaN2ziwouEUdQenvgNS4W38ZOZ1sXYsn6S0XVJUkYEeioWcR2evN0ks7o=
X-Received: by 2002:a05:6000:118d:: with SMTP id
 g13mr48185701wrx.141.1582316801038; 
 Fri, 21 Feb 2020 12:26:41 -0800 (PST)
MIME-Version: 1.0
From: Cale Collins <ccollins@gateworks.com>
Date: Fri, 21 Feb 2020 12:26:04 -0800
Message-ID: <CAG2Q2vXt3af3ATRnFNW8bA2BbaQ47fLsS1dL1iJ6JGQg=kbJSQ@mail.gmail.com>
Subject: ath10k_pci rawmode = 1 requires support from firmware
To: kvalo@codeaurora.org, ath10k@lists.infradead.org, kvalo@qca.qualcomm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_122643_031093_4ECE0831 
X-CRM114-Status: UNSURE (   2.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Kalle,

When attempting to bring up my mesh0 interface, I recieve an error and
in "dmesg":

[  901.629999] ath10k_pci 0001:90:00.0: must load driver with
rawmode=1 to add mesh interfaces

I enable this mode by changing my bootargs, appending "ath10k_core.rawmode=1".

On boot "dmesg" reports:

[   12.040581] ath10k_pci 0001:90:00.0: rawmode = 1 requires support
from firmware

Where does this "supported" firmware come from?

I'm using SparkLAN WPEQ-261ACNI(BT) 802.11ac/abgn + BT PCI Express
Mini Card (Half) - Qualcomm QCA6174A-5 chipset, with a mainline 4.20.7
kernel and Ubuntu Bionic root filesystem.

Thank you for looking into this, I'm glad to provide more information if needed.

Best regards,

Cale Collins

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
