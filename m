Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E032149B07
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 15:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mouKm5FrBqH6+GSQl7zludfILMHYkjZp8uVRIiTEl7I=; b=f6bVISCgJ577O8
	+i4IlwJ6dTOpYYH7ValZsdpdGBhX6d6yatC69LYpMjq+Q4kkP2c4x+AVxSGv+8L7mYP1vvJO7qkta
	x0BzuYai3yCUaeqKAkDEUCWqd1J6pbrroyeYgE4HGCDvRsHeui1WcKITQMm1kX/B/5yJXKZdISSHJ
	gb7P2uTil7AIUCxoaaG3ODS2b4e/sl1N+oJOaW3FF1XkUJjdEfmybNoRYwD/YFdz7uCstPZwEiYsc
	U+E7QcvyUuUC8ggYsHJ6ecwrjlg8OAywikFoY1sLFOoN2GMY3KlZegCvdzG1POYjUTOnHHWx2ZVam
	T4sZs5475wpFUVT5N/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iviqj-00082N-RJ; Sun, 26 Jan 2020 14:25:17 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviqg-000825-Vy
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 14:25:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580048714; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=DzhIXU+qv1ciGaNGzExa6n/8OGLjYzAcP3i90CedJAI=;
 b=IHGOUu91HNN47dZwbQY21cUeaR8RJhU5uLld8IIopFTL4IYh6czY05Ne3D4N2h0qO//b6O7J
 Mif5Wqefd1M6NDyZ5EqfUEREmuDGVr/CfMucK9jR626tnC4ssm/Vnu9XDIPgMrzs5474i/WY
 0GWE3X5fC2R8mCLwDGgvJ+Q6Bqw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2da147.7fee88c25ca8-smtp-out-n02;
 Sun, 26 Jan 2020 14:25:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A57D1C433A2; Sun, 26 Jan 2020 14:25:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B35A3C43383;
 Sun, 26 Jan 2020 14:25:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B35A3C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH] ath10k: Use device_get_match_data() to simplify code
References: <20200123232944.39247-1-swboyd@chromium.org>
 <CAMrEMU-e55q7uvd220+1kuYJ4Xa-4ckz5CvYezCj2ahn_K8t9w@mail.gmail.com>
Date: Sun, 26 Jan 2020 16:25:07 +0200
In-Reply-To: <CAMrEMU-e55q7uvd220+1kuYJ4Xa-4ckz5CvYezCj2ahn_K8t9w@mail.gmail.com>
 (Justin Capella's message of "Sat, 25 Jan 2020 20:18:40 -0800")
Message-ID: <87o8uqcn24.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_062515_090232_A578994C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, ath10k <ath10k@lists.infradead.org>,
 Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Justin Capella <justincapella@gmail.com> writes:

> Maybe use dev here as well?
>
>>                 dev_err(&pdev->dev, "failed to find matching device tree id\n");

I changed that. And also fixed a checkpatch warning:

drivers/net/wireless/ath/ath10k/snoc.c:1483: Please don't use multiple blank lines

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
