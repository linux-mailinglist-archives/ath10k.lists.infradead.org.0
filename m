Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B0A83CF
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 15:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7FauduL4lqUgLzcOwrE1YRjDL2eQJQHHmX6ITbtsN0=; b=HZW3l5WJAaOdf0
	AV2TQCBNrEX7zvLAkktfZ341tcnCjZEPWyaYyRDXfaadyBncHz9r2q8cs/kA5mkwa1EBMXZryYenv
	rfMWd04pVpbKuKWYUF7Ennwc2FvRhiQeSp+tJ6i35c4P2Ue8QsBDyiXNWvy3BAQFmKrTysx+R1iz0
	Kde6jicRO8L4vsYjkEiDENsAxyDqED4cei/ZEwJknDwHC6frfeNVM8qx+8aBxd3X8/0W8LUtdjVkN
	Hl6HFpp+V5B7Z2c9kT7ApZRv53faa+4GNCmf1fOb+NtwtG760abDCN7vwoWqOIc8V1Chm36dIZDfr
	TuWe30tRImfisuLcXenQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VQx-0002Bh-4K; Wed, 04 Sep 2019 13:34:51 +0000
Received: from mail.taht.net ([2a01:7e00::f03c:91ff:feae:7028])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VQr-0002BE-9S
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 13:34:47 +0000
Received: from dancer.taht.net (unknown
 [IPv6:2603:3024:1536:86f0:eea8:6bff:fefe:9a2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.taht.net (Postfix) with ESMTPSA id 71D9F22898;
 Wed,  4 Sep 2019 13:34:42 +0000 (UTC)
From: Dave Taht <dave@taht.net>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <87k1apnyyo.fsf@taht.net>
 <259d8d7f8c2a4c428ae14ff211c83c1a@aptaiexm02f.ap.qualcomm.com>
Date: Wed, 04 Sep 2019 06:34:29 -0700
In-Reply-To: <259d8d7f8c2a4c428ae14ff211c83c1a@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Wed, 4 Sep 2019 04:43:21 +0000")
Message-ID: <87lfv4chi2.fsf@taht.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_063445_456593_499E9D69 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: Dave Taht <dave@taht.net>
>> Sent: Wednesday, September 4, 2019 12:10 AM
>> To: Wen Gong <wgong@qti.qualcomm.com>; ath10k@lists.infradead.org;
>> linux-wireless@vger.kernel.org
>> Subject: [EXT] Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to
>> 32 for sdio
>> 
>> 
>> In terms of deeply grokking what increasing buffering to achieve high
>> bandwidth on a testbench, vs what it can do to clobber latency in the
>> real world at low bandwidths, I tend to point folk at:
>> 
>> https://www.youtube.com/watch?v=Rb-UnHDw02o&t=25m40s
>> 
>> where I got a whole bunch of hackers to stand up and act like packets
>> in an aggregating FIFO wifi queue.
>> 
>> This key section is only 8 minutes long, and I promise, y'all laugh
>> at least 3 times at the demonstration.
>> 
>> At the time, also, the ath10k was so overbuffered that on one test
>> I could try to start 100 flows, and only get five.
>> 
>> https://lwn.net/Articles/705884/
>> 
>> and on my slides:
>> 
>> https://blog.linuxplumbersconf.org/2016/ocw//system/presentations/3963/
>> original/linuxplumbers_wifi_latency-3Nov.pdf
>> 
> Hi Dave,
> So your mean is change 8  to 32 will impact latency? It will increase latency of rx?

Heh. for rx, in this case, probably not!

I just get twitchy every time folk fiddle with buffer sizes. In one
recent case someone had fiddled with the interrupt polling interval on
something, going from 1ms to 10ms - it saved on cpu, but...
... just trying to make sure folk grok the tradoffs with a bit of
laughter.

carry on!

>
>> 
>> 0xFFFEFFFF

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
