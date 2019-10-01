Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46528C3519
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 15:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ3PlA5aD2wQosp5lWY8CrkJJrrd0zKt85rXvN0eekc=; b=foNmJ0uqlN0jCb
	eyxG/jgII51Ps877WLuydRYOWLLwQsrOAV1sp1BtPc6RWgkmUUDGHHfS2dVfavB2HyIg4o3TDWm2O
	BytyCsTb308bFyMicq0ra/JqVSG3MzK17uu0LNV5RjV+GvqxkzYUWJKqIigkSIb+sATgRwSmqIjTm
	x7ihDa/aaE8qYt3iiSOXS6KZFiVG9ZIz7abwJ8J6KZ19UlyZX71X13LzHb9OWKAT5a53oLWMT2lAS
	Vq6585APHo0BUMk9hvSjpSxzUiwCxdkWcvxl3/RvzMAV9np1eaAunMjGjqvdARqCJK0cb7lvbW9K/
	R02lEaaDgNY72qfWKMsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHoH-00034i-FG; Tue, 01 Oct 2019 13:03:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHoD-00033y-4N
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 13:03:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E5591608CE; Tue,  1 Oct 2019 13:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569934992;
 bh=p4zIXu+5rfpDbgBWTXAcpuxmgvNJNnfGR3EsbUfdxqY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=UwnADJT9d3kTy1cRpDf/NZweKi/UuHE8ZWN+5JpsiluPSA4wyF5bFr1D2fuNRG01F
 +oarxmdidbzB/acjfM5ptNI+doZPd0eekMgHTuynZhJjeVLHCKj9GSi0UVdkIuOXIu
 yeTKeDnst0X3d5iGRpzK4a29u8xYPTOpvxhEoZMU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1DCDD601D4;
 Tue,  1 Oct 2019 13:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569934992;
 bh=p4zIXu+5rfpDbgBWTXAcpuxmgvNJNnfGR3EsbUfdxqY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=UwnADJT9d3kTy1cRpDf/NZweKi/UuHE8ZWN+5JpsiluPSA4wyF5bFr1D2fuNRG01F
 +oarxmdidbzB/acjfM5ptNI+doZPd0eekMgHTuynZhJjeVLHCKj9GSi0UVdkIuOXIu
 yeTKeDnst0X3d5iGRpzK4a29u8xYPTOpvxhEoZMU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1DCDD601D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Christian Lamparter <chunkeey@gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190917064412.C2E0D61572@smtp.codeaurora.org>
 <2099574.gZacamft7q@debian64>
Date: Tue, 01 Oct 2019 16:03:08 +0300
In-Reply-To: <2099574.gZacamft7q@debian64> (Christian Lamparter's message of
 "Fri, 20 Sep 2019 19:19:06 +0200")
Message-ID: <87imp84nzn.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_060317_217612_4590D0FA 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?Q?Micha=C5=82?= Kazior <kazikcz@gmail.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Christian Lamparter <chunkeey@gmail.com> writes:

> On Tuesday, September 17, 2019 8:44:12 AM CEST Kalle Valo wrote:
>> Christian Lamparter <chunkeey@gmail.com> wrote:
>> 
>> > This patch restores the old behavior that read
>> > the chip_id on the QCA988x before resetting the
>> > chip. This needs to be done in this order since
>> > the unsupported QCA988x AR1A chips fall off the
>> > bus when resetted. Otherwise the next MMIO Op
>> > after the reset causes a BUS ERROR and panic.
>> > 
>> > Cc: stable@vger.kernel.org
>> > Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
>> > Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>> 
>> I'll drop this as there's no plan to support QCA988X hw1.0.
>
> Kalle,
>
> I'm surprised about this. And your justification "no plan to support
> QCA988X hw1.0" seems very odd in this context, because this patch does
> not add any support for the QCA988X hw1.0.

No wonder my comment was odd, it seems I had completely misunderstood :)
I assumed this is for preparation in adding QCA988X hw1.0 support, which
is clearly wrong.

> But, I could see how the mails/replies from Tom Psyborg derailed the
> topic here. Though, I'm not sure if this is the case or not.
>
> So let set the record straight and show you the result of having that
> patch applied and load ath10k_pci with a QCA9880 v1 AR1A:
>
> [ 1491.622282] ath10k_pci 0000:00:00.0: device 003c with chip_id
> 043200ff isn't supported
>
> (System is all good!)
>
> And without the patch:
>
> [  900.320000] Data bus error, epc == 86a9a1b0, ra == 86a9a4b0

[...]

> Notice the DATA BUS Error! The router is unusable at that point and no
> longer "working".

Thanks, this clear for me now. I added this back to my queue and clarify
the commit log a bit.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
