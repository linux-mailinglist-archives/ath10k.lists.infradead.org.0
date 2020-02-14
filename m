Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBBD15D1BE
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 06:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YkgCbpqnevdGfn9ROit8Wjib6FG9bwJtI4RH+4f6iC8=; b=BX+JSRhG0ezE9mW+zPBPqmFod
	5uVOXWBUEUbjyBMWF6ecMNPaxrZyP7jRAZw1mLWKN1uSCoHA/xu9M60gf9bbtaD/9U4XrVPxGOWMs
	+8+d9EUQnTXMZiBrHKFMcqm6HLdRohSVypP8HStS6lXqnK9rjOGTS+pd5bdEXJ4zbiEciraFrlRNm
	VV+rdZEapAGb792GoEXiXRYBmashCy9pqTSD84Q3H0jPQ8mJ5MpvTvHgJttVkfYPxoWTWILvbaN0Z
	qfTifPGy+D/XyvAmYNjaR+chQMfrhe5X0oghIAy6cuzUBGzt3DE3NiQgVG/Sy6qsT6mayYVNfTYx5
	nYsfTJ2Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ToB-0005Jp-M0; Fri, 14 Feb 2020 05:46:35 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2To8-0005JF-Ji
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 05:46:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581659191; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=vCNfsv+IxSspdzcRH0QvkQtkHuzPYVw4qQQP7xcBxt4=;
 b=lyVToiA4O4IQvkd/sB+hMzuH5kMjRVg33BPci/cev53/7BRZ0Cehm9qMabxF4KMR9tAZdMtw
 qgJzoNe6nvFGlupAsbRVshaB/0Vf2522DD8FuEvE+D/MYALXwgvZTyaC/qXLBQTrCGr1L1ne
 mNTyaMo/+RUhn/0nDB3llPkmHhs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e463435.7fb71036f458-smtp-out-n03;
 Fri, 14 Feb 2020 05:46:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A46E6C433A2; Fri, 14 Feb 2020 05:46:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2A96CC43383;
 Fri, 14 Feb 2020 05:46:29 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 11:16:29 +0530
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: avoid consecutive OTP download to reduce boot time
In-Reply-To: <87pnei7exs.fsf@codeaurora.org>
References: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
 <f1b4007f9d7e882c4ed2db67dc64cc96@codeaurora.org>
 <87pnei7exs.fsf@codeaurora.org>
Message-ID: <0a3ff5df5e16e2657f76214d1448d0ad@codeaurora.org>
X-Sender: mkenna@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_214632_712871_B90AF59F 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vikas Patel <vikpatel@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-13 19:43, Kalle Valo wrote:
> Maharaja Kennadyrajan <mkenna@codeaurora.org> writes:
> 
>> On 2020-01-07 11:53, Maharaja Kennadyrajan wrote:
>> 
>> [Maha]: Please ignore/drop this duplicate patch as I sent it already.
>> Regret for inconvenience caused.
> 
> Are you sure I should drop this? In the first patch I think you forgot
> to CC linux-wireless and that's why I didn't see it. But this second
> patch was CCed to linux-wireless and I see it on patchwork. So my plan
> is to put this back to my queue, please let me know if I have
> misunderstood.

[Maha]: Hi Kalle, I sent the same patch twice. So I asked to ignore one 
duplicate patch.
You can pick up this patch to put it in your queue and please ignore the 
duplicate patch.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
