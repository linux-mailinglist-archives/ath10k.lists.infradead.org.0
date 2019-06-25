Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0A554F7D
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfmvahMOgt6GdXhCq8FIXk426bNFcIfi5+skOE2pMdE=; b=ZgysHNbIDC4KrN
	RnGnpJJCdg6FEPbk1Qzq+f2Zw6JKoFBOr8Tr9CqQc0j7qj4xojTg5jvl3jBslza+3J1enSBMTu/6M
	h5FNKxo1MwTaQUxqJ31LXPuMJjxptudZXbDevY51qL78+VXu6e92x0OyFc4B3qu4BqapJnlVz7601
	Ol39HgJDwkfP0IkMWfdIW+n1ULg9/h/GSwnzuV09BT10k2UeG1piiJMhSajVdDVnKUrvEvX5REGh0
	100Yx1pwQ2Mq1obbPPZRg8OB/0lAR/LuIeZrvaTfjJoetzdxWqM6rW6PgjdV5NyBqp8Nhr0FtfcW2
	oGTPGPCetPMrpabosHwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl3D-0007BN-Is; Tue, 25 Jun 2019 12:59:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl39-0007Ab-DM
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:59:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1A2BA606DC; Tue, 25 Jun 2019 12:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467591;
 bh=ZhKgz7fozsVXBvdm3X+dNXKO/VMC2NiAgSRnAoANBEA=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Qm00+QY4zQx6LxyDof6X0AwTHwI0o7y8aypTP/VEqLKpcipBoxo5WGev/fx55fLE8
 enEJFKcDuglUt8A9c3cvefLhuu1zJEEH2xnHKNgO19G82+LVYjx6C8qXM0+q69dwVG
 IaEefmJ9FeeMlIiKRWgoUUksznjJhPoMyUjAJ4B0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7CBFA601B4;
 Tue, 25 Jun 2019 12:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467590;
 bh=ZhKgz7fozsVXBvdm3X+dNXKO/VMC2NiAgSRnAoANBEA=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=AQmfT+qJlh/CyjaQM1LWEQCeZfu0aenMpVmUQtRnJ8X2Znh2wmlSB0mr6YmSmLaJv
 U9k0+v+aGtqjNdglU7MRO8dbkRrHsdgU5i1pjbilrmlIzWit1RQur/pYRWdecq4faS
 GxHK9qYcq4mEs3Prh56Q1eAH8AZ4ps6DkXgmjTgY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7CBFA601B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: fix fw crash by moving chip reset after napi
 disabled
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1558667782-10998-1-git-send-email-miaoqing@codeaurora.org>
References: <1558667782-10998-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125951.1A2BA606DC@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:59:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055952_106435_9E646D67 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> On SMP platform, when continuously running wifi up/down, the napi
> poll can be scheduled during chip reset, which will call
> ath10k_pci_has_fw_crashed() to check the fw status. But in the reset
> period, the value from FW_INDICATOR_ADDRESS register will return
> 0xdeadbeef, which also be treated as fw crash. Fix the issue by
> moving chip reset after napi disabled.
> 
> ath10k_pci 0000:01:00.0: firmware crashed! (guid 73b30611-5b1e-4bdd-90b4-64c81eb947b6)
> ath10k_pci 0000:01:00.0: qca9984/qca9994 hw1.0 target 0x01000000 chip_id 0x00000000 sub 168c:cafe
> ath10k_pci 0000:01:00.0: htt-ver 2.2 wmi-op 6 htt-op 4 cal otp max-sta 512 raw 0 hwcrypto 1
> ath10k_pci 0000:01:00.0: failed to get memcpy hi address for firmware address 4: -16
> ath10k_pci 0000:01:00.0: failed to read firmware dump area: -16
> ath10k_pci 0000:01:00.0: Copy Engine register dump:
> ath10k_pci 0000:01:00.0: [00]: 0x0004a000   0   0   0   0
> ath10k_pci 0000:01:00.0: [01]: 0x0004a400   0   0   0   0
> ath10k_pci 0000:01:00.0: [02]: 0x0004a800   0   0   0   0
> ath10k_pci 0000:01:00.0: [03]: 0x0004ac00   0   0   0   0
> ath10k_pci 0000:01:00.0: [04]: 0x0004b000   0   0   0   0
> ath10k_pci 0000:01:00.0: [05]: 0x0004b400   0   0   0   0
> ath10k_pci 0000:01:00.0: [06]: 0x0004b800   0   0   0   0
> ath10k_pci 0000:01:00.0: [07]: 0x0004bc00   1   0   1   0
> ath10k_pci 0000:01:00.0: [08]: 0x0004c000   0   0   0   0
> ath10k_pci 0000:01:00.0: [09]: 0x0004c400   0   0   0   0
> ath10k_pci 0000:01:00.0: [10]: 0x0004c800   0   0   0   0
> ath10k_pci 0000:01:00.0: [11]: 0x0004cc00   0   0   0   0
> 
> Tested HW: QCA9984,QCA9887,WCN3990
> 
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

08d80e4cd27b ath10k: fix fw crash by moving chip reset after napi disabled

-- 
https://patchwork.kernel.org/patch/10959057/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
