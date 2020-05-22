Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315531DE8D9
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 16:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9iHv6x6NBgTVzgkDZ/LneXaepQu1HpTccwE2zEIsz7c=; b=SVho+1LCLkH3OVviOdyBS4yH8
	WJxFYgoh7dapzXLXUk8rvXlKsms0RT2WXoebkjev8iGxYuCW/d/s2Sefx/UrEWm4EzAEBbKtAHKNH
	LRs7YLC2Bp+6bG1z0BYF4YZzAS7AOfyFnvje9CMQSNJslYOdEGHJPOsObko6lkkPOuAm57WohNpUZ
	p98oLT9Wah2oVEl63knkryLjMa1mBEd71vPlsYYNYTOYLIRhLT7l/dR0MroRxQjltzVzrjZfd7UlO
	kUvGXaUQllZoTbmPJ40/HvwNFpa/EQqcHpqV6ZU777kIef4ssFpmPPUPboDzIccKd+aev5/9G6CKc
	nc4inTyAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8dn-0008HV-AU; Fri, 22 May 2020 14:27:15 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8da-00089A-HD
 for ath10k@lists.infradead.org; Fri, 22 May 2020 14:27:04 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:39799
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jc8dR-0005lm-1r; Fri, 22 May 2020 16:26:53 +0200
X-CTCH-RefID: str=0001.0A782F23.5EC7E0CA.00C7, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=DbxJdF/fC0ie2bU2CmMmxB+eVF48vM2t3Frd0ebJjtw=; 
 b=BEym4zkyhgz1ePHt/W3fF+0aJduX36+kSzQH3gTLeg9wMIXM7NlRVbd/+lyuP80uCwHuZ0RvFu5wBFZnsWy5WImI3xV7vZRCDh9OpKeF959xQ6iQiI1YcmSNoCRyhMYrtdqXAmnHtOVrXKq2gea90iqwayAprbQHwtr1NsQzutE=;
Subject: Re: [PATCH v13] ath10k: add LED and GPIO controlling support for
 various chipsets
To: Kalle Valo <kvalo@codeaurora.org>
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <87wo549sas.fsf@codeaurora.org>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <0fd74998-751c-6ae1-3584-fce145ec8f84@dd-wrt.com>
Date: Fri, 22 May 2020 16:26:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <87wo549sas.fsf@codeaurora.org>
X-Received: from [2a01:7700:8040:4000:c77:c0ea:fb54:feed]
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jc8ZN-0004RV-DI; Fri, 22 May 2020 16:22:41 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_072702_985389_B96CC885 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Am 22.05.2020 um 12:29 schrieb Kalle Valo:
> (please don't top post)
>
> Sebastian Gottschall <s.gottschall@dd-wrt.com> writes:
>
>> this code is not in use in its original form for ipq4019. i have seen
>> that his patch is also dropped from ath.git but is still in use by
>> openwrt. could somone clarify the state here and why it was dropped?
> I dropped the patch because of the bug report from openwrt.
can you show me the bug report? and openwrt is still using it as out of 
tree patch which is confusing here.
personally i'm using the patch on qca988x, qca9884 and also ipq40xx 
devices (40xx doesnt make any use of it of course)

any chipset which doesnt make use of the gpio_pin definition is unable 
to make use of it. if there is no trigger set, its also not used (hopefully)

but in any way i'm willig to fix any issue of there is a reproduceable 
issue.

Sebastian

>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
