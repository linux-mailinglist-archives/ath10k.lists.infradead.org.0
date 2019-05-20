Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA837238FA
	for <lists+ath10k@lfdr.de>; Mon, 20 May 2019 15:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C7OqoO3j4XLY/g7jN/OZWVxZjdKydZ/ODZCOXfpAOTQ=; b=Epv2YHQrvSZIT83gjdPQT1sxL
	WbHwRQnJ8cE16o0gh4uFXTeeB6WSoR77gO3oKBpfGsZLU9FRu5EzXlWVoJLh8iLZfpIHkNy4xFOA9
	mdoBhLPLGSXdC3u1t4Mp4JdEYN1WFDql2oPr/QCvzB15T7VBvFanxIxg6RwHhDUGW2jqO0GCYevhq
	nr8S9Cy0PsSxCuCIM+g+DCWgchcUqh78dWVLP5OB/GA4GMAJ+mGNscAxUYN7N5w9HVPzbOt0+Jf5X
	/9Gcw7LicxKtkgZop6JE+k/puKLQmNAi5R5yJuXXmXstAqCleoapJKvS4vyFDOQcnZxWz5EFhjwE0
	6l3omCzJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSimh-0007S1-Ha; Mon, 20 May 2019 13:56:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSimd-0007Ra-IK
 for ath10k@lists.infradead.org; Mon, 20 May 2019 13:56:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DA9F160AA2; Mon, 20 May 2019 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558360614;
 bh=lpzkQhinW+CdE25UU6vfCZ3VEc/mSbUJunMa0yH8T5s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hIN1t4bf+a4iCa5bHQJ+PdKtgzf6jkbUoe6bTbMDhbxNrDSiVooc8aA3vWjbOUKo0
 c+lknMkzpOq57UnHm4O2Yhb0HDxFSNzz1E0eVPkJ9q3muAw4LepXYTjS4Roxjpqs1z
 mYrmrRHMufGpd6EgC+SeBloKPENbdaMkZIJOi/dg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9A6B2608D4;
 Mon, 20 May 2019 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558360612;
 bh=lpzkQhinW+CdE25UU6vfCZ3VEc/mSbUJunMa0yH8T5s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QyI6EFyC2jURPnStsICFWd1yeggqoqz7a/uzXQharivrl+6S5tQnXKzUTdIoyjzwE
 nbec4VFr4oDvh18pVKeVYKMF11riOvCKmSspPU/L74D627/AV0zDcUWAdGLIo54ylW
 kovjqkPyga01sCJMqy9EvSLStnHAAkgPMoiHC+Hc=
MIME-Version: 1.0
Date: Mon, 20 May 2019 21:56:52 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
In-Reply-To: <ea87337c24666355059488b42d97ee22711ce7b8.camel@sipsolutions.net>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
 <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
 <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
 <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
 <8eacb8e107c854b64a0c6116fca9731ddd99dcac.camel@sipsolutions.net>
 <730d3664-488d-7d57-04d5-1a57e91fa070@candelatech.com>
 <ea87337c24666355059488b42d97ee22711ce7b8.camel@sipsolutions.net>
Message-ID: <bbfd69ccb4289ba3f1767c1066f61ee1@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_065655_626515_17076A0A 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Zhi Chen <zhichen@codeaurora.org>, Ben Greear <greearb@candelatech.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-05-15 02:57, Johannes Berg wrote:
> On Tue, 2019-05-14 at 11:54 -0700, Ben Greear wrote:
>> 
>> Here is the info I have in my commit that changed this to 
>> WARN_ON_ONCE.
>> I never posted it because I had to hack ath10k to get to this state, 
>> so maybe
>> this is not a valid case to debug.
>> 
>> 
>> Maybe Yibo Zhao has a better example.
>> 
>>      mac80211: don't spam kernel logs when chantx is null.
>> 
>>      I set up ath10k to be chandef based again in order to test
>>      WDS.  My WDS stations are not very functional yet, and
>>      when ethtool stats are queried, there is a WARN_ON splat
>>      generated.  Change this to WARN_ON_ONCE so that there is
>>      less kernel spam.
> 
> I'm totally fine with WARN_ON_ONCE, FWIW.
> 
> Sounds like different bugs though. You're talking about WDS here, and
> Yibo was talking about something with AP interfaces prematurely
> accepting frames or so.

Yes, they might be different bugs that hit the same point. Looks like 
others found this too many warnings issue as well. Then I believe 
WARN_ON_ONCE() seems to be our solution for now.

> 
> johannes

-- 
Yibo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
