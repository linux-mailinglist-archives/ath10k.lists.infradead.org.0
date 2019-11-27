Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F4A10B2AB
	for <lists+ath10k@lfdr.de>; Wed, 27 Nov 2019 16:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfvDPopbopBa49X4igWMUlARGEnY8r6rG476yhCxqvY=; b=rByULpa3HCWgWQ
	JQeo/MSwoi32vB7myXoA7d0UZlIL6eVC04XvS/PatY8EqQbARYJO/cf1coKVG0Rb2gdggWT72J+w5
	8coMijwY3kx3wOfrPARn9tw0tHJu3oMjtG1T8NfM431tiyrRpB1pYkIyMcimiIS32AXSFDpSiNazu
	vw2k8GiwfppW0JTQZnMDpDuqFuQoqQKhYoV99nZbLyztKqajpmB1eWxKM/GCVvw2E+F5QC+gvHUYH
	T3zFiYo7gCkOCQXPgvjDjYvjWLfw/+teWwI6Ftl/91zV5I4LL/I6tuIxiNG+9ZcAQU/gtuyxJuSsI
	fq8NxUlPP6QNJxLCRrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzYS-0005yg-Mq; Wed, 27 Nov 2019 15:48:36 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzYP-0005yN-NO
 for ath10k@lists.infradead.org; Wed, 27 Nov 2019 15:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574869710;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=pzRruOwd1ze/PptjNjX3dTKuWCUaUGYGq/k4eGP1+kU=;
 b=gZOXaVCKedzaoFygLLPSG11GYftGTOPVPy89aG7vmQpfbLM82lvvOwjgYFqbKeG6
 JPgcfjz3M3oRPYCUQV5vUPynpuEmxG1a2LlgwwbTrCPS+JvGwBgr9OZF6sG/oRKDAGp
 Sk34+sGWaggszO9OvblBEN4h4OtRyFAqlryCNf8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574869710;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=pzRruOwd1ze/PptjNjX3dTKuWCUaUGYGq/k4eGP1+kU=;
 b=eBtOEeVjEskCyKYLqA7ca0s4mbAczx/DAEmRzWARA0AywhD+TFiXuBQclcj9kTTv
 FAOVj2q0qKqdVhmUz+u8sksrLxs1Ut7bbUw1X6as6/ZtZhNQNQJ7r+QgxFkC0+xOAGo
 ma4wMb9iEFGBksWzWYfBqZwMOlPacB/fgcNOt/uk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B8ADFC447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: move non-fatal warn logs to dbg level
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016ea2aee542-7e69e860-2ad6-4897-959f-e934f1a459bb-000000@us-west-2.amazonses.com>
References: <0101016ea2aee542-7e69e860-2ad6-4897-959f-e934f1a459bb-000000@us-west-2.amazonses.com>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ead8cb6e9-5c4cd3d9-9a7c-4fe8-bbbb-5a3a67a4b481-000000@us-west-2.amazonses.com>
Date: Wed, 27 Nov 2019 15:48:30 +0000
X-SES-Outgoing: 2019.11.27-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_074833_785202_06E78C1D 
X-CRM114-Status: UNSURE (   4.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> During driver load below warn logs are printed in the console if
> firmware doesn't support some optional HTC services, ex:pktlog.
> It is likely some older fw version may not support PKTLOG HTC
> service as legacy fw uses HTC DATA service  for pktlog.
> Move this log to debug level to remove un-necessary warn message
> on console.
> 
> htc.c:803:  ath10k_warn(ar, "unsupported HTC service id: %d\n",
> htc.c:881:  ath10k_warn(ar, "unsupported HTC service id: %d\n",
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

ef39ac1b0d9f ath10k: move non-fatal warn logs to dbg level

-- 
https://patchwork.kernel.org/patch/11260371/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
