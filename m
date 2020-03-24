Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF4A190D28
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 13:17:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIhEY2LSJ2jH3BVt9aAm3UVOXkzZXATpth3buj7Buuk=; b=IueOQmzfyNywSz
	Y2M39NpibRjkKCSoE8Qakabu2cYock98KZETq3+CFypU+q2qmS/Lu3hk81T0U40T1Z+4ObnJKGk89
	qN91b5tBC6DPj6NdtFdnhocXoKbY4hs/UIDz/mMaddgNzHdELQxNh5U2gmW/82VJgS+Hn/SyzqGis
	AnQSOFcjQfQ5+BHlYXG3vA6Ej4l4Hms8SGJR4wpt/U+5oga4IwJIyRsbf3q7miWKSZv8KVNZWNm61
	Co92qw7ClllFqRUqJ6B3RrTU61FvqTfRiQ0GtZ//LZCW+UFzhF7PS4rVtlfH0Itk0wVFsD8QIzq8m
	8yVGHmHFo3QdSNsqr6oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiUx-0006kU-GM; Tue, 24 Mar 2020 12:17:35 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiUt-0006jx-R4
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 12:17:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585052251; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=9VevlVmP3sRNSuIMFXfMH8evhzaXJf5qX1+iHpww0SA=;
 b=TgOD1Nd6I6g6gHIKP0v3MjxjaoZxOsoprLEsVX5l6K76R+1usGYJIO1SK18RbuAHwKghOI2h
 LHPFRX3+6ibkwAVQXCzZiK7aewhCJ7EU/kX0n6qBn+IYG1XfbSo7rM2yHR5CbokFs7Q9mvb7
 qLpx1XRIqewvtSAiYHyUD2gNZxU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e79fa5b.7f9ace620a40-smtp-out-n02;
 Tue, 24 Mar 2020 12:17:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 294EDC432C2; Tue, 24 Mar 2020 12:17:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EBC27C433CB;
 Tue, 24 Mar 2020 12:17:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EBC27C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Tim Klicks <tim.klicks@gmail.com>
Subject: Re: QCA6174 - failed to fetch board data
References: <b10a2a73-b6a2-8ed5-95f9-600b7c7710db@gmail.com>
Date: Tue, 24 Mar 2020 14:17:25 +0200
In-Reply-To: <b10a2a73-b6a2-8ed5-95f9-600b7c7710db@gmail.com> (Tim Klicks's
 message of "Thu, 19 Mar 2020 19:43:38 +0100")
Message-ID: <87blom7xre.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_051731_938374_61276B9B 
X-CRM114-Status: GOOD (  15.74  )
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

Tim Klicks <tim.klicks@gmail.com> writes:

> I am running Fedora 31 on my Redmibook 14 and I am facing a problem
> regarding the wifi.
> The wifi is not working when using any linux-firmware package provided.
> Neither the one coming via the official update channel nor cloning the
> git repo and using the master branch is helping.
> The only way to get it to work was by following this Gentoo Linux KB
> article:
> https://wiki.gentoo.org/wiki/Qualcomm_Atheros_QCA6174
> Which is pointing to this github pull request:
> https://github.com/kvalo/ath10k-firmware/pull/3
>
> Although wifi is working with this workaround, could you please check
> how much work it would be to integrate this fix into the mainline
> package?

Sorry, no time to check the details on your problem but if this is about
a missing board file please submit them using these instructions:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/boardfiles

Do note that I have like 20 board file submissions pending, but I'll get
to them eventually.

I don't deal with pull requests as it's very hard to diff binary file
changes, I wish I could disable the pull request feature on github
altogether but have not figured out how to do that.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
