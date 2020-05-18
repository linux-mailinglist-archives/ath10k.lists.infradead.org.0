Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0061D7F67
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 18:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RynV+PLfQDLJh7GW+WAr4DqMrakvUNiJoYmpvZKvY/Q=; b=n/n4SyP0kqxCUI/diJ9pPCehE
	9LwY4IOOVwlh9DLEmRQSnKkxHKCqnseZsAGhv6zYXUd9WKPMCgxgwGwEAwtVfNJAnxvz8svkcgyoy
	XH0hj5BRp3SaiBrJ3BIDGQu8uiKExci8Di568lGi9fc/sWeuxy0KdMmC+7aIBGVT2MfUUl5RtaYGb
	0au24FjweRsbZG8nPhB4Rr0XYdEkqrtkeTadGiQvcqZAfZwiYMf0IEx9ZdIsSKKmptZAk505wzl51
	So2wFxwHH9Spuhmd2fWr4ii3D2m2gnoZ6IgEXOyIfBVKx+f6ssltcwIfPNsX1smBlrDfv5l6kAfyf
	RzV34/QNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj6T-00057J-Dj; Mon, 18 May 2020 16:59:01 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj6P-00056F-7h
 for ath10k@lists.infradead.org; Mon, 18 May 2020 16:58:58 +0000
Received: from [192.168.254.4] (unknown [50.34.197.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id DFE0A13C2B0;
 Mon, 18 May 2020 09:58:53 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com DFE0A13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1589821136;
 bh=6ZIoXbMXxw4WcnY1CZ2nowts+dksxVL0SXCsldVPTmw=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=cZyh3hBAu8T8moMyFlKqCPnzpUBdR7y8+DBRg8oaujckvLRpCCDXOWp8OScV1IHQm
 GLqxMSe21UIlDQO6gJL+/t+/IKiS5KfclPRc/R5dyCipAw9AQAgN7XXp93sgA4xLV1
 qtLwBDyzpjYQZdanGM+aoyiOwHQFYlvaQT7MSZnQ=
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
To: Luis Chamberlain <mcgrof@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <20200518165154.GH11244@42.do-not-panic.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <4ad0668d-2de9-11d7-c3a1-ad2aedd0c02d@candelatech.com>
Date: Mon, 18 May 2020 09:58:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200518165154.GH11244@42.do-not-panic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095857_322235_DD3C948B 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 05/18/2020 09:51 AM, Luis Chamberlain wrote:
> On Sat, May 16, 2020 at 03:24:01PM +0200, Johannes Berg wrote:
>> On Fri, 2020-05-15 at 21:28 +0000, Luis Chamberlain wrote:> module_firmware_crashed
>>
>> You didn't CC me or the wireless list on the rest of the patches, so I'm
>> replying to a random one, but ...
>>
>> What is the point here?
>>
>> This should in no way affect the integrity of the system/kernel, for
>> most devices anyway.
>
> Keyword you used here is "most device". And in the worst case, *who*
> knows what other odd things may happen afterwards.
>
>> So what if ath10k's firmware crashes? If there's a driver bug it will
>> not handle it right (and probably crash, WARN_ON, or something else),
>> but if the driver is working right then that will not affect the kernel
>> at all.
>
> Sometimes the device can go into a state which requires driver removal
> and addition to get things back up.

It would be lovely to be able to detect this case in the driver/system
somehow!  I haven't seen any such cases recently, but in case there is
some common case you see, maybe we can think of a way to detect it?

>
>> So maybe I can understand that maybe you want an easy way to discover -
>> per device - that the firmware crashed, but that still doesn't warrant a
>> complete kernel taint.
>
> That is one reason, another is that a taint helps support cases *fast*
> easily detect if the issue was a firmware crash, instead of scraping
> logs for driver specific ways to say the firmware has crashed.

You can listen for udev events (I think that is the right term),
and find crashes that way.  You get the actual crash info as well.

Thanks,
Ben


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
