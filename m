Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB3CB038A
	for <lists+ath10k@lfdr.de>; Wed, 11 Sep 2019 20:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oopp7EA/tydfo4FmwLs0fOog/V8AtL9Jn/AyqvaTNA=; b=WYHp6C1w8CfQy/
	EfDHxs85yC/047ahWbz5Fgp799pk6a6xmQzoPPJjeYnZGadrly7+CkAFsVfDACTvAEWYcwwJdBdFo
	WGnuL8/6DXWAtO4Kcqaj7S4VXGIl9tUXvasWepNC/i/jgKX3tvbbjyWvQu2nebOAHPs7bJYe1DgcE
	LQ7uuCF4Xs75xCWV9Ax5grz3VeU7NnQA21dVEF1bpNUDPw30Ozu6XKR9ApXLj3Ms5Pf2YzUbJK1kt
	pejciQOUMDI3VGejSrJ69DBexdBABxkoiIMXOffxuY5Tr1dmpe++yJO1sWWSE/qR+EKPDJeixmaEg
	Zp3UaKgmeIdAFHugJh/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87HS-0003Fx-DB; Wed, 11 Sep 2019 18:23:50 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87HN-0003Ew-F1
 for ath10k@lists.infradead.org; Wed, 11 Sep 2019 18:23:46 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i87HD-000795-UV; Wed, 11 Sep 2019 20:23:36 +0200
Message-ID: <383b145b608e0fe3a35ffb0ceb99fdf938d4e2bb.camel@sipsolutions.net>
Subject: Re: WARNING at net/mac80211/sta_info.c:1057
 (__sta_info_destroy_part2())
From: Johannes Berg <johannes@sipsolutions.net>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 11 Sep 2019 20:23:33 +0200
In-Reply-To: <87ef0mlmqg.fsf@tynnyri.adurom.net>
References: <CAHk-=wgBuu8PiYpD7uWgxTSY8aUOJj6NJ=ivNQPYjAKO=cRinA@mail.gmail.com>
 <feecebfcceba521703f13c8ee7f5bb9016924cb6.camel@sipsolutions.net>
 <87ef0mlmqg.fsf@tynnyri.adurom.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_112345_505169_D1B23D29 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

On Wed, 2019-09-11 at 21:19 +0300, Kalle Valo wrote:
> > Looks like indeed the driver gives the device at least *3 seconds* for
> > every command, see ath10k_wmi_cmd_send(), so most likely this would
> > eventually have finished, but who knows how many firmware commands it
> > would still have attempted to send...
> 
> 3 seconds is a bit short but in normal cases it should be enough. Of
> course we could increase the delay but I'm skeptic it would help here.

I was thinking 3 seconds is way too long :-)

> > Perhaps the driver should mark the device as dead and fail quickly once
> > it timed out once, or so, but I'll let Kalle comment on that.
> 
> Actually we do try to restart the device when a timeout happens in
> ath10k_wmi_cmd_send():
> 
>         if (ret == -EAGAIN) {
>                 ath10k_warn(ar, "wmi command %d timeout, restarting hardware\n",
>                             cmd_id);
>                 queue_work(ar->workqueue, &ar->restart_work);
>         }

Yeah, and this is the problem, in a sense, I'd think. It seems to me
that at this point the code needs to tag the device as "dead" and
immediately return from any further commands submitted to it with an
error (e.g. -EIO). You can can actually see in the initial report that
while the restart was triggered, it too is waiting to acquire the RTNL:

>    Workqueue: events_freezable ieee80211_restart_work [mac80211]
>    Call Trace:
>     schedule+0x39/0xa0
>     schedule_preempt_disabled+0xa/0x10
>     __mutex_lock.isra.0+0x263/0x4b0
>     ieee80211_restart_work+0x54/0xe0 [mac80211]
>     process_one_work+0x1cf/0x370
>     worker_thread+0x4a/0x3c0
>     kthread+0xfb/0x130
>     ret_from_fork+0x35/0x40


So basically all this delay is mac80211 and the driver doing stuff with
the device, but every single thing has to time out and probably some
stuff loops etc., and then it just takes long enough with the RTNL held
that everything goes south.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
