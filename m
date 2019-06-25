Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C779754F82
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAnTpzHEWc8gmNVot+qlvxY+VmlmjhZ/CYtMuLRTrLQ=; b=YLokw3dv8iee0G
	Nr6BR60/dLdTe1X/FXljXCVbNqQY3ODq7u7sx9fJJ1xlc0QcurIw6SF6pwcoThjEcAy5BvlLAOxAS
	JAZUnhZdIHzBhyJdT+2p4Dk91Q6FJRdDctH+SmYGOM92qh5O/uvZf0jSPTs8nL2yN+ax+El2NgCc7
	1BvMhso8eZrbZCB5+hR2KxXTVXJQ4wLxLPGmW0+IwJXJrXhzrYnmh41DhSAfJ4mIz4wuDm/uRYQKq
	YoGsWg3m4K8evlqZZ/KMTnOGVT/QdEC6F25xImQ+j4vanCb6pMADCAZaWf/JytR5sSR6gdIU4YizH
	tW5HSyiGBbsNaGbYsVYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl47-000059-Hu; Tue, 25 Jun 2019 13:00:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl42-0008W9-QB
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:00:48 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 57209606DC; Tue, 25 Jun 2019 13:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467645;
 bh=l1ftwfLHJSnmxo9eNQhQI7nfLkar2T3uSvhlFW2ynL4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=WcCZVsvhDeatju/DcxVxe+2WffICy1m0yPEl+cKmpAfr6Jpd39QhY6sggYGaBAt6x
 dC5AWPOdS+82dLoW0mibvk7NsBSTyr622yoKZGG8R8xoY6jHo/ItnbIGoWJxXav0W0
 y17ojP4qCS4BP3Pyf3JgEKRot6anJDwk6nUEqX20=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A00916019D;
 Tue, 25 Jun 2019 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467645;
 bh=l1ftwfLHJSnmxo9eNQhQI7nfLkar2T3uSvhlFW2ynL4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=gNemgL90Yn1+T04AKPx0XrSd2vGag8XT0zAwDzrkYSx3q9PxF7X33LKBVfX0nK3ma
 /mb4o/UvIMbmi6uqQ1jPrc3l+h2fWYUzWgqQMzu4DsWjvlliyvi+WtqWosbpGGjavZ
 wfd5rZ97oczVlhjIpGOmneUi88oKRdRRzK00lbU0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A00916019D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Change the warning message string
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190509121500.4730-1-festevam@gmail.com>
References: <20190509121500.4730-1-festevam@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625130045.57209606DC@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:00:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060046_869763_1F204250 
X-CRM114-Status: UNSURE (   6.51  )
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
Cc: andreyknvl@google.com, Fabio Estevam <festevam@gmail.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fabio Estevam <festevam@gmail.com> wrote:

> The "WARNING" string confuses syzbot, which thinks it found
> a crash [1].
> 
> Change the string to avoid such problem.
> 
> [1] https://lkml.org/lkml/2019/5/9/243
> 
> Reported-by: syzbot+c1b25598aa60dcd47e78@syzkaller.appspotmail.com
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

265df32eae58 ath10k: Change the warning message string

-- 
https://patchwork.kernel.org/patch/10937077/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
