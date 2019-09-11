Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44795B03E1
	for <lists+ath10k@lfdr.de>; Wed, 11 Sep 2019 20:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaZsMaXMd8j0Q3EcM8ZViAXdcT6LntdapFphqWO/Fb8=; b=k4S/W7ZGfz87Cg
	vo4HFFDGN697yoWZPW33WRfZAgIYdaZNG4psGtpa8cGc79E+0CBBxt+cS9C9e2jw/zd2KXubBMsZZ
	Ttb+DNe5XG75oFsQOUhqLuCiG2UcGvwEJgMf4hcH5jVdLlkUR8iazpxtIV/C++89xx+zNgjuT27eZ
	PYUnQl2ieBceo8Th82xenF7f3AmnpI3WabQcRFGc8E8ZCJ98DhpZ4B2NfUDfLOP4izRvHFD1kW1jC
	YjIKYOW8k2+9h4oYRgwxREgOtesb0yjpiksVhM192QuUjRCDqfZU/GN23pYO74hUT/jmgvVTLiSkR
	r7V6NkpwoDGwOJn+WUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87fC-0005Sx-9i; Wed, 11 Sep 2019 18:48:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87f5-0005Sc-DP
 for ath10k@lists.infradead.org; Wed, 11 Sep 2019 18:48:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EDB9760A60; Wed, 11 Sep 2019 18:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568227694;
 bh=fqLyZWfORQEC6v2+nP26Sy1WzgSPYbYDAMK27hsI/aM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ELVDQ4yBwmWuMQqmVGmxRYOhTtlyRU6jCwAb3UnUg0v9ooHc0HPskOWE89vdnBX8c
 4eFlpirL9TxhLpPpLbUhMzNgtwIR3iCm8UGMDqdPlni9ZRfN8TbtNlstGC1/lXFnmK
 /qKvzz3JVyycQejo+UVgQZ1uvFkEJzaWP6DdAEjA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6633560256;
 Wed, 11 Sep 2019 18:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568227694;
 bh=fqLyZWfORQEC6v2+nP26Sy1WzgSPYbYDAMK27hsI/aM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ELVDQ4yBwmWuMQqmVGmxRYOhTtlyRU6jCwAb3UnUg0v9ooHc0HPskOWE89vdnBX8c
 4eFlpirL9TxhLpPpLbUhMzNgtwIR3iCm8UGMDqdPlni9ZRfN8TbtNlstGC1/lXFnmK
 /qKvzz3JVyycQejo+UVgQZ1uvFkEJzaWP6DdAEjA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6633560256
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
 <87ef0mlmqg.fsf@tynnyri.adurom.net>
 <383b145b608e0fe3a35ffb0ceb99fdf938d4e2bb.camel@sipsolutions.net>
Date: Wed, 11 Sep 2019 21:48:09 +0300
In-Reply-To: <383b145b608e0fe3a35ffb0ceb99fdf938d4e2bb.camel@sipsolutions.net>
 (Johannes Berg's message of "Wed, 11 Sep 2019 20:23:33 +0200")
Message-ID: <87zhjak6ty.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_114815_488575_E0838BF3 
X-CRM114-Status: GOOD (  16.70  )
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> On Wed, 2019-09-11 at 21:19 +0300, Kalle Valo wrote:
>> > Looks like indeed the driver gives the device at least *3 seconds* for
>> > every command, see ath10k_wmi_cmd_send(), so most likely this would
>> > eventually have finished, but who knows how many firmware commands it
>> > would still have attempted to send...
>> 
>> 3 seconds is a bit short but in normal cases it should be enough. Of
>> course we could increase the delay but I'm skeptic it would help here.
>
> I was thinking 3 seconds is way too long :-)

Heh :)

>> > Perhaps the driver should mark the device as dead and fail quickly once
>> > it timed out once, or so, but I'll let Kalle comment on that.
>> 
>> Actually we do try to restart the device when a timeout happens in
>> ath10k_wmi_cmd_send():
>> 
>>         if (ret == -EAGAIN) {
>>                 ath10k_warn(ar, "wmi command %d timeout, restarting hardware\n",
>>                             cmd_id);
>>                 queue_work(ar->workqueue, &ar->restart_work);
>>         }
>
> Yeah, and this is the problem, in a sense, I'd think. It seems to me
> that at this point the code needs to tag the device as "dead" and
> immediately return from any further commands submitted to it with an
> error (e.g. -EIO).

Yeah, ath10k_core_restart() is supposed change to state
ATH10K_STATE_RESTARTING but very few mac80211 ops in ath10k_ops are
checking for it, and to me it looks like quite late even. I think a
proper fix for ops which can sleep is to check ar->state is
ATH10K_STATE_ON and for ops which cannot sleep check
ATH10K_FLAG_CRASH_FLUSH.

But of course this just fixes the symptoms, the root cause for timeouts
needs to be found as well.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
