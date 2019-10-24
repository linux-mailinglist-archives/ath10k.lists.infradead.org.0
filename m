Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E36AE3146
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 13:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MlNxCw292p5nfFWCdSa1a+BJVcyb60bH+5Cg827fcow=; b=VVWaNkY6Bmfmm9UMhWIbdSVrw
	fsey5t6aaQenrJni3XSRAQad7a0AgXJa0tr9rZffISeDB7L2JR1mGpi696p85Q0aykr7j0vgmOhwO
	OqV42bmq5Kzdd8sQC6XLsXNYa4ul86RypkO5WdIHRqB6jCIbWfchm+pcsAL9dXfYlaszrvsUxO0+J
	i9NWBNDUpX0NDfj6oaTavnyentrfMXRlE/n6SE702xqHacu0YBwd5pAa8yv6MrTP7E7LBNQGISJ4h
	olI0zHxFG06F3uTgu0PAOsWbVKe98CnHtPCadQDiAYXUxwoYLT3Veetng7zcgfH3v9OFU/raGX5fr
	4Z0isf0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbaq-0001Vs-Cs; Thu, 24 Oct 2019 11:47:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbam-0001VW-J6
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 11:47:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1873D60DA6; Thu, 24 Oct 2019 11:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571917667;
 bh=LfGiwVxrMzUStWIoM2oBebXlGcBXWkl0A8nDI7xnslg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mkSeH+CGx8aBdO+1OZORj4Jd1CAJctEqPYRCwiRzxgFH0FBPoFCE3KGSXbgKZY7ho
 n8yAf4Bkh8LQhOXW2iI3QPF4spJX8NB+acLFvWi03XlWn0piQb9n4vGPEBaf8GjIRM
 vrx31DGt9bEhQGRHbRKcwfP09D0ABcbHfvRcx3sQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 32EBB60DA6;
 Thu, 24 Oct 2019 11:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571917666;
 bh=LfGiwVxrMzUStWIoM2oBebXlGcBXWkl0A8nDI7xnslg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E13VwwwLrN5VNZ/Vnp9mQPhOOHN91m5Uq45ahgnyZJJ8mxQKhxYUFqwOhrKX6xlna
 7Fa1d0YnsLLKz+MTJ1EmGYDoFGTO0rA5KR380LpNFC4AljT8i5tkgtVesAsJeMUUsf
 uSLW86A56zouCTQ16ArjB4Q3KCiRVpdzuB4ra6qE=
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 17:17:46 +0530
From: Govind Singh <govinds@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 1/2] dt: bindings: add dt entry flag to skip SCM call for
 msa region
In-Reply-To: <87a79qk431.fsf@codeaurora.org>
References: <20191023094014.28683-1-govinds@codeaurora.org>
 <20191023094014.28683-2-govinds@codeaurora.org>
 <87a79qk431.fsf@codeaurora.org>
Message-ID: <94b02ec85c272d9d195572c40fcc3c09@codeaurora.org>
X-Sender: govinds@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_044748_658814_175A9067 
X-CRM114-Status: UNSURE (   5.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

On 2019-10-24 12:44, Kalle Valo wrote:
> Govind Singh <govinds@codeaurora.org> writes:
> 
>> Add boolean context flag to disable SCM call for statically
>> mapped msa region.
>> 
>> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> 
> Oddly this didn't apply, but 3-way merge did work. Please double check
> the result in the pending branch:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=master-pending&id=6f308524cf602ed9a0dbb0b0b50ba625b9091879

Change looks good to me.


BR,
Govind

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
