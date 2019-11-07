Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB5CF272B
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 06:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wdU34MnJbl7sx1HT+eHNfHwuqvi3jNr54zFYKQHrGJo=; b=AxqSnZ2oJ8IQhGZNwmr9Me5m2
	oIPegJF4QgYPb8LWFDRag5AVDXIYH2rhr6xzDMooZeIWhZiY3CuI3OJ15LoVWy1H9LttFRAMuiZhs
	hcnwoOT4vdqeuHk2DfpUqDD7McLRXNa4fVmeJrfxTH7j/roXhjKi1xa/BMmpkkQFMvzM/st0+/soz
	xsnUvYZjveTmzwMi3Ud3vCNQqCV7j8fCh1DDTl6//442oGVuKihruz0mwDdc2Ydp9Zl8SyeKOW7Ef
	EDQ2t+Kduz2nxmEfU8sA/ZQ3+jxJc37+rwR3y0ciJf7TdV2+/g4LXzzSuI9pNxyKRFUYEx0wm8b4H
	xOVV08BlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaSN-0007n8-2o; Thu, 07 Nov 2019 05:35:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaSJ-0007mT-57
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 05:35:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 107B76030B; Thu,  7 Nov 2019 05:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573104938;
 bh=26ykYDqmtDxoAycqng84TtKK+rxROkJb5Fp3DS74CAY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Isxu0JSfBqjsviah5iXwttdM53JQlBRv/6yxrb8qNCPBhzzlldJZ5FtteEJLJzx5W
 vBCc8RsTGRh5Al78XILMlMIN5s9V5VfNhRPfIuqrMC1dIhzSHhXE7XHu5Ud4GyR5nL
 nrciUp4BZa78+MsZ8sQYAY6qY2p+sIwAQGDpL0kc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9343060610;
 Thu,  7 Nov 2019 05:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573104937;
 bh=26ykYDqmtDxoAycqng84TtKK+rxROkJb5Fp3DS74CAY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cCwpznkRQ5/Zv7Qkqg3WBYpCSW08sWxTbvIpnQah1dSf/zhf9mIV5uGCCpkSamQ1F
 H8geSjEaxHEGsebTgueiwnpM66O5ChsN9Pylf1aM0pAOUnInNne8OyEjoj1LRZMUe+
 vARkRwkiqUGXy5Xy28KbD/eZU145Tovcx0afL0aM=
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 13:35:37 +0800
From: zhichen@codeaurora.org
To: Tom Psyborg <pozega.tomislav@gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
In-Reply-To: <CAKR_QVL9QLE72y0HBD_miLYAD4qx73u3FK33=oNCHp_S8H6JOw@mail.gmail.com>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <CAKR_QVLDFBVMDDP4mPYVNdpT9TA3podNeQMpVJQwE7A5eG=0kA@mail.gmail.com>
 <9bb484b94c43f7c9aa08345ad89d7b2c@codeaurora.org>
 <CAKR_QVL9QLE72y0HBD_miLYAD4qx73u3FK33=oNCHp_S8H6JOw@mail.gmail.com>
Message-ID: <a60168b26275f4400434e72fabac244b@codeaurora.org>
X-Sender: zhichen@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_213539_214893_ECC1D395 
X-CRM114-Status: UNSURE (   6.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2019-11-06 18:01, Tom Psyborg wrote:
> On 30/10/2019, zhichen@codeaurora.org <zhichen@codeaurora.org> wrote:
>> On 2019-10-22 18:07, Tom Psyborg wrote:
>> 
>>> What about main and 10x firmware branch?
>> 
>> There is no code changes in firmware. It's a configuration change of
>> host memory access.
>> 
>> Zhi
>> 
> 
> Please change it for main and 10x branch too. Dumping hw1.0 regs with
> QCA driver shows DMA burst value set to 1

Looks some old chips have different definitions of DMA burst size. We 
are discussing internally to change it for 10.4 only because we only 
tested 10.4.  On the other hand we are waiting for HW team to explain 
the differences.

Zhi

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
