Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672D1C8F92
	for <lists+ath10k@lfdr.de>; Wed,  2 Oct 2019 19:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=um77DRzXYeIDRiWoWD2vS0BO/4k/lPNHxvWGu2PK7C8=; b=Hb/r26HJgrdiwA
	Zp5a+Dq7aS8HYw9xqLOdcw4nYcAhJ2Fami/mEuTY5/KtsCSXQkD9ePhXe1mQfoso8tEJErCprMgY+
	FPk2Fl2OL0+XwdZJ/1aH8E4F5ublm4OiIowOz85hSXzdf79q4ugaVW0nKJWMHg8MN/uu0HHjNhP5l
	pAzvuqAkcOkX28eoE5zIyH0RVudWn0i/qrpkvDj5XSTmKEACAcBH2UjnjhpghRBcKrgHDsHl+2V/7
	N0MtqTBFLDtE59aSrJ0qTe1bguIiKDJs9rxeIAX6lzWt1Cna5jIfWtA8slrdR3J9a4dBYIx5ccUGW
	tSTIBUOapOPPy7oVBlYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiGI-00082S-A7; Wed, 02 Oct 2019 17:18:02 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiGE-00081s-UJ
 for ath10k@lists.infradead.org; Wed, 02 Oct 2019 17:18:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 121E760AD9; Wed,  2 Oct 2019 17:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036678;
 bh=wWnOggerler6dJ9pkdG54S8RTXnBrTKOSC+ryeyS81A=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=LeKi3Lc2rcODYYst5V7fsfNLa6hPLqSJPuPNew9XuWoq4AGSrcmawmK+6f93Mb5CP
 Pmx7b7voQnmT5sgIeCEuCW8cwreEuDdgi6ujw+sOdj4dC+oD4dK+CwMKP61XSltyCJ
 sSNX/OFZu/C7yDzrM5T09JAHLY3vCoxTorPFWv6E=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 644C860790;
 Wed,  2 Oct 2019 17:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570036677;
 bh=wWnOggerler6dJ9pkdG54S8RTXnBrTKOSC+ryeyS81A=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=QJbT69z8rrlt2f7T8EDGK271yboIJayzLAbdot5ZmyyNDT/R+my8NHsSNYL0yBsxv
 kBGMhxd1eUs88eEJ0IP12/AEoKJ7H+m3t7yArcAyOnReZZgzmbuLQFDPFhdBE7tj/f
 XQBmWTAgibPF2Nk3M3BPHdHNL0bFISl7o/f0nViw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 644C860790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix offchannel tx failure when
 noath10k_mac_tx_frm_has_freq
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1508284992-3574-1-git-send-email-greearb@candelatech.com>
References: <1508284992-3574-1-git-send-email-greearb@candelatech.com>
To: greearb@candelatech.com
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191002171758.121E760AD9@smtp.codeaurora.org>
Date: Wed,  2 Oct 2019 17:17:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_101759_016994_C52A40B7 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

greearb@candelatech.com wrote:

> Offchannel management frames were failing:
> 
> [18099.253732] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
> [18102.293686] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
> [18105.333653] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
> [18108.373712] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3780
> [18111.413687] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e36c0
> [18114.453726] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3f00
> [18117.493773] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e36c0
> [18120.533631] ath10k_pci 0000:01:00.0: timed out waiting for offchannel skb cf0e3f00
> 
> This bug appears to have been added between 4.0 (which works for us),
> and 4.4, which does not work.
> 
> I think this is because the tx-offchannel logic gets in a loop when
> ath10k_mac_tx_frm_has_freq(ar) is false, so pkt is never actually
> sent to the firmware for transmit.
> 
> This patch fixes the problem on 4.9 for me, and now HS20 clients
> can work again with my firmware.
> 
> Antonio: tested with 10.4-3.5.3-00057 on QCA4019 and QCA9888
> 
> Signed-off-by: Ben Greear <greearb@candelatech.com>
> Tested-by: Antonio Quartulli <antonio.quartulli@kaiwoo.ai>
> [kvalo@codeaurora.org: improve commit log, remove unneeded parenthesis]
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

cc6df017e557 ath10k: fix offchannel tx failure when no ath10k_mac_tx_frm_has_freq

-- 
https://patchwork.kernel.org/patch/10013117/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
