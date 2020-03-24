Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67AA190D13
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 13:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6yc2ir5jwlmyqfGBdU9v2UVUgFYvUfNS/yPF38W7pA=; b=NY96J0G6yVnBp0
	Ayu9ZqFcIezAKWGFHpnZXiY/7rJCgSYnX2admgKboSJmkomFcGe4uYsDTFFpmivblxnYprgMH1I9d
	+dxg1in2B+/dRKLJwjNEBh2sgNiQ8Oz6kt4LeUKF2GHLctSoeNCEouB3neOXPmiQxXRGzrQE5vlIH
	hQ2fOh38pdP437WeWfMLtxPk2D4/EQJcx6LomKRyTdCZa1Ve6nrbRkCmrphpduo880l725YnSXmDq
	3pVNokYvQYKmJsbF1NreYTJegZtl+7UKI8g3PlmrNBXxpa84F6yo3DQyGge0GeMzoQFceMa/9OElb
	WJK8OFiMpH2p4zW/9V4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiOC-0004cd-EF; Tue, 24 Mar 2020 12:10:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiO5-0004c1-4v
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 12:10:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585051832; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=h9JT6wwAl+4ZrCl34tW403VaZnl/LWG/H1TfdWkoy14=;
 b=MCRqX33FOgTqSsDVnX8Qwg7eAR5pNVz0z9kpl+6MrYnNAHBVMSx0ubvxCATVPKLv6ZUhThmn
 ad82cgZHzknX7XhEXjApERqjeRavqQ3ktHS2BVN6VVQq2v602eoTYJeh6/U8pPNqENXfGCP8
 r/T0ZKYSRRxBDO1Ub44MtvmKLyI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e79f8ac.7f772384d3e8-smtp-out-n04;
 Tue, 24 Mar 2020 12:10:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1AEB8C433BA; Tue, 24 Mar 2020 12:10:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DC736C433CB;
 Tue, 24 Mar 2020 12:10:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DC736C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Cale Collins <ccollins@gateworks.com>
Subject: Re: ath10k_pci rawmode = 1 requires support from firmware
References: <CAG2Q2vXt3af3ATRnFNW8bA2BbaQ47fLsS1dL1iJ6JGQg=kbJSQ@mail.gmail.com>
Date: Tue, 24 Mar 2020 14:10:16 +0200
In-Reply-To: <CAG2Q2vXt3af3ATRnFNW8bA2BbaQ47fLsS1dL1iJ6JGQg=kbJSQ@mail.gmail.com>
 (Cale Collins's message of "Fri, 21 Feb 2020 12:26:04 -0800")
Message-ID: <87ftdy7y3b.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_051032_751384_18FA75F4 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Cale Collins <ccollins@gateworks.com> writes:

> When attempting to bring up my mesh0 interface, I recieve an error and
> in "dmesg":
>
> [  901.629999] ath10k_pci 0001:90:00.0: must load driver with
> rawmode=1 to add mesh interfaces
>
> I enable this mode by changing my bootargs, appending "ath10k_core.rawmode=1".
>
> On boot "dmesg" reports:
>
> [   12.040581] ath10k_pci 0001:90:00.0: rawmode = 1 requires support
> from firmware
>
> Where does this "supported" firmware come from?
>
> I'm using SparkLAN WPEQ-261ACNI(BT) 802.11ac/abgn + BT PCI Express
> Mini Card (Half) - Qualcomm QCA6174A-5 chipset, with a mainline 4.20.7
> kernel and Ubuntu Bionic root filesystem.
>
> Thank you for looking into this, I'm glad to provide more information if needed.

Not all firmware branches support raw mode. The firmware will have
raw-mode feature bit enabled if it support raw mode, you can check it
like this:

$ ath10k-fwencoder --info firmware-6.bin_WLAN.RM.4.4.1.c3-00059 | grep Features
Features: wowlan,ignore-otp-result,no-nwifi-decap-4addr-padding,raw-mode,mfp-support

For QCA6174 with raw mode I recommend using 4.4.1.c3 branch:

https://github.com/kvalo/ath10k-firmware/tree/master/QCA6174/hw3.0/4.4.1.c3

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
