Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814AF1AC143
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 14:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJY21XSW8DXFxVfie1kvZDTMSjfQFVocS7mXhQlyi+8=; b=brG4uTuHY6vUm0
	wXRwQAAI6wgSmQ4oBegNjyBMG/dToatxIfUEWQr0gupJFNcLITZxdhur/Eb9GRWwF1gRxYQTvzjWN
	LNWGgknatCnlIGzY+BDiB15rQ4S3h4YZ7+2uvBYyEDBuQHCIe2UH4qX5v4gISLVFr3KS/6SNVhBN+
	lVt03xyul2Sedpjtk1Mu+DB+1lquDdBPiQYW32OTkfb+SOHfKDDj8I+Dq6YATBDtl/l8VDBbiARYh
	bf8gko1amW5eYIBXUy8weBPRQb4iKtKL3L4zkcTJ11FC4Erdqh0s3a8IfPNM4pKrf7ed4WLmwQZ7D
	uFxyLtZ8bJC8XQOH1TQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3gx-0002YM-Co; Thu, 16 Apr 2020 12:32:27 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3gu-0002Xx-4g
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 12:32:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587040343; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Sv9X8l4iA6VHf1QnMx+QHigKI8FR5lS3Hzj4XKr+Byc=;
 b=qVx867Gxz9axoZOwI33AuMsXS08bi3Hng9IIUYh/XkBaZdeRuvFxQUJ2Zi3+FmK4D7u+u3s7
 5ED2StjS4h8h6NxItIh88ulvCqnEOY3b4ihJAa1PzwtLdaG0ICbgA3CW05K7oaTPuM8Nj6Cx
 zfltxAePuvAst9+paB8liFe2wPA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e985055.7f933f843500-smtp-out-n05;
 Thu, 16 Apr 2020 12:32:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 542C8C433CB; Thu, 16 Apr 2020 12:32:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B9193C433F2;
 Thu, 16 Apr 2020 12:32:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B9193C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: svp <svpm@yandex.ru>
Subject: Re: Compex WLE600VX AP mode 5GHz doesn't work since kernel 5.6
References: <5971a327-d11a-35e6-8295-8dfb8ae3a434@yandex.ru>
Date: Thu, 16 Apr 2020 15:32:16 +0300
In-Reply-To: <5971a327-d11a-35e6-8295-8dfb8ae3a434@yandex.ru> (svp's message
 of "Sun, 12 Apr 2020 12:10:15 +0300")
Message-ID: <87k12fr4q7.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_053224_242109_9A104B1D 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

svp <svpm@yandex.ru> writes:

> I need help with my softAP installation.
> Compex WLE600VX miniPCIe card can't start at 5GHz AP mode after update
> to kernel 5.6 on ArchLinux
> With kernel 5.5.x and LTS all is OK
> Some logs and details is in this ArchLinux forum topic
> https://bbs.archlinux.org/viewtopic.php?id=254535

So if I read the link correctly this commit causes the regression (which
was introduced in v5.6-rc1):

commit 2dc016599cfa9672a147528ca26d70c3654a5423
Author:     Wen Gong <wgong@codeaurora.org>
AuthorDate: Fri Nov 29 07:34:09 2019 +0000
Commit:     Kalle Valo <kvalo@codeaurora.org>
CommitDate: Mon Dec 2 12:08:01 2019 +0200

    ath: add support for special 0x0 regulatory domain

Wen, please take a look. Should I revert this commit? Regressions are
not ok.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
