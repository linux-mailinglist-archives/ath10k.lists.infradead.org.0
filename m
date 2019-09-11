Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749A7B0377
	for <lists+ath10k@lfdr.de>; Wed, 11 Sep 2019 20:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZRpsUfCrmRK7x8i9K9LexrqKMNvKiAIxyx+cnVL2/M=; b=Pwf2MiWHufozdJ
	ZOBhtjDfH5fW8pTdY84BUFxIRqSCydlNUbczg2N3OnroBl9SKxB8TilraWuD5WuETkmWzGQDaXv8E
	0XbPweNmqw0+0yc74aut5iAwe6fPSgAxcHZlBlT1L2vg5oRTaNAfto6Nuva1AhOVig1lFJ90wN+c4
	qTy8Jtwypz0/V4O0EF1FjoDH2CA1gPNW+WJa+o5QsIGwntyBWKa7XkU2OoH6uH2VB89HfWgFw1nlZ
	fZJjN+oMC/mS88Qk681UsYTT+ojbQZwysqy0kCX92BqiWFBxglPO1x/vGt2Ut6kt9GYMUxk7LWJfV
	QMH0JIxZH+GMZT65VTAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87DE-0001bD-Na; Wed, 11 Sep 2019 18:19:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87DA-0001at-Ee
 for ath10k@lists.infradead.org; Wed, 11 Sep 2019 18:19:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1132360791; Wed, 11 Sep 2019 18:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568225964;
 bh=Cq8dA5RuJNCfEAowmhvZuC5y4iuFy5mhIPmTToluUMs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=D4aSuyuLCh3pJmHnnFpuTZCHcgVPaPoy16SYi1IkAD2LGzeyMkb1mf4M04VdRUEsl
 deUcjNc05bsek504fYmwIDZbrG6EDW1lu3lpUtBPeCdZqQkJ68cukQl+Hzlsp1p82J
 wny+cIg6vd2kG6sSC7EPTgNfqTVcbu96E3ggKVSY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 933CF602BC;
 Wed, 11 Sep 2019 18:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568225963;
 bh=Cq8dA5RuJNCfEAowmhvZuC5y4iuFy5mhIPmTToluUMs=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=oPoyWpwWaYG6gmpB5EbPPo9zZG4bz8pA8hQ3l4p8ZV5bp+GMzxvD0tduXjlV+A/vn
 4PvOsNNH3umELX67JiyoIbxDx+wsjMi3kYHic0fJIv+3qNnM2tnVsy/YnztgZjQHat
 egYPG4zlizRYUB9g1n3e9+jHAuwVloSa1avaEzGg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 933CF602BC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: WARNING at net/mac80211/sta_info.c:1057
 (__sta_info_destroy_part2())
References: <CAHk-=wgBuu8PiYpD7uWgxTSY8aUOJj6NJ=ivNQPYjAKO=cRinA@mail.gmail.com>
 <feecebfcceba521703f13c8ee7f5bb9016924cb6.camel@sipsolutions.net>
Date: Wed, 11 Sep 2019 21:19:19 +0300
In-Reply-To: <feecebfcceba521703f13c8ee7f5bb9016924cb6.camel@sipsolutions.net>
 (Johannes Berg's message of "Wed, 11 Sep 2019 12:26:32 +0200")
Message-ID: <87ef0mlmqg.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_111924_544598_D9C0CE32 
X-CRM114-Status: GOOD (  13.68  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Netdev <netdev@vger.kernel.org>, linux-wireless@vger.kernel.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

>>    ath10k_pci 0000:02:00.0: wmi command 16387 timeout, restarting hardware
>>    ath10k_pci 0000:02:00.0: failed to set 5g txpower 23: -11
>>    ath10k_pci 0000:02:00.0: failed to setup tx power 23: -11
>>    ath10k_pci 0000:02:00.0: failed to recalc tx power: -11
>>    ath10k_pci 0000:02:00.0: failed to set inactivity time for vdev 0: -108
>>    ath10k_pci 0000:02:00.0: failed to setup powersave: -108
>> 
>> That certainly looks like something did try to set a power limit, but
>> eventually failed.
>
> Yeah, that does seem a bit fishy. Kalle would have to comment for
> ath10k.
>
>> Immediately after that:
>> 
>>    wlp2s0: deauthenticating from 54:ec:2f:05:70:2c by local choice
>> (Reason: 3=DEAUTH_LEAVING)
>
> I don't _think_ any of the above would be a reason to disconnect, but it
> clearly looks like the device got stuck at this point, since everything
> just fails afterwards.

Yeah, to me it looks anything ath10k tries to do with the devie fails,
even resetting the device.

> Looks like indeed the driver gives the device at least *3 seconds* for
> every command, see ath10k_wmi_cmd_send(), so most likely this would
> eventually have finished, but who knows how many firmware commands it
> would still have attempted to send...

3 seconds is a bit short but in normal cases it should be enough. Of
course we could increase the delay but I'm skeptic it would help here.

> Perhaps the driver should mark the device as dead and fail quickly once
> it timed out once, or so, but I'll let Kalle comment on that.

Actually we do try to restart the device when a timeout happens in
ath10k_wmi_cmd_send():

        if (ret == -EAGAIN) {
                ath10k_warn(ar, "wmi command %d timeout, restarting hardware\n",
                            cmd_id);
                queue_work(ar->workqueue, &ar->restart_work);
        }
                        

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
