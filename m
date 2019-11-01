Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A15FEBED1
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 09:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dZlrmb9M6EqE+g3YkmDPGsTBMSTZ2H+8fRuI86V/r2g=; b=oqE5P5Na7FPK4FiiIO0yn3f0U
	hDVsqX8tQnncsjXuRiZwzzdqSID6O5U2QNnppy/EL6SaS30/2mc6IVr0JuGDspGsgBQFid7t8ayUP
	eik/K2s9/dCw+kRb/WwEAT8Jkzij+M/ff1SEp1az/KunRZ8lbKbWDY6vviVIF+AvCY7kESZ6Dh3UB
	dh0TE+pdG398rwYdXOCUwv7FOxjuheWnApZ0kiQKImi5dkai56LNabOMBI3CBfUzxFIwP6j8KLFIW
	sfCA1d5xp/k+4hxPKGsX3WtJeljC5KKPPVJohaxt2h0cgbQh0fOIp819F96LYqx3qRSIs+efVe6VU
	eSpAbFAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRrJ-0007Ew-6P; Fri, 01 Nov 2019 08:00:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRrF-0007ET-9U
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 08:00:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 58F2F60D93; Fri,  1 Nov 2019 08:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572595232;
 bh=o5FfWkhParaDzFTMG7QMjzfSFztCVis7qeCkhTGKqic=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RStF9AFHIG5DNjjKJu4NNMwrrvSpzFx0SXOkCRfUYJusgM7PzmQnLa6CwVcG0FHdu
 ORoqozMq60FrtQuWl0HG4Imitsekc8sEzhBoC6yMgjca2VENq8BLYg3s9i/WiaVMno
 6VTKfPNlFuAhlDP4hAoNRQsSIpz9IY8hC+lZmpqI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 762B960D83;
 Fri,  1 Nov 2019 08:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572595231;
 bh=o5FfWkhParaDzFTMG7QMjzfSFztCVis7qeCkhTGKqic=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Jv0JiUirv6+1j3ad47BfG0V343JayrH0Kzh+naJ6DTs3tDDXjlMcsg5Ypv3T2LLFn
 o8lMroLDHqhHYq+/5cIMyrgl1vcnXNORPLpzNVx1pOBMZNP8AwbsGUv0qp/jnXddkw
 ts093ZisGzJL7F4f+5VmRTYtrUKz2DPXvdV8hSr0=
MIME-Version: 1.0
Date: Fri, 01 Nov 2019 16:00:31 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6] ath10k: enable napi on RX path for sdio
In-Reply-To: <87tv7p1cz1.fsf@kamboji.qca.qualcomm.com>
References: <20191014114753.7459-1-wgong@codeaurora.org>
 <87tv7p1cz1.fsf@kamboji.qca.qualcomm.com>
Message-ID: <e9db35228a09ccc14ac0ec31e9a10552@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_010033_373789_BB3E4440 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-31 17:27, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 
>> For tcp RX, the quantity of tcp acks to remote is 1/2 of the quantity
>> of tcp data from remote, then it will have many small length packets
>> on TX path of sdio bus, then it reduce the RX packets's bandwidth of
>> tcp.
>> 
>> This patch enable napi on RX path, then the RX packet of tcp will not
>> feed to tcp stack immeditely from mac80211 since GRO is enabled by
>> default, it will feed to tcp stack after napi complete, if rx bundle
>> is enabled, then it will feed to tcp stack one time for each bundle
>> of RX. For example, RX bundle size is 32, then tcp stack will receive
>> one large length packet, its length is neary 1500*32, then tcp stack
>> will send a tcp ack for this large packet, this will reduce the tcp
>> acks ratio from 1/2 to 1/32. This results in significant performance
>> improvement for tcp RX.
>> 
>> Tcp rx throughout is 240Mbps without this patch, and it arrive 390Mbps
>> with this patch. The cpu usage has no obvious difference with and
>> without NAPI.
> 
> I have not done thorough review yet, but few quick questions:
> 
> This adds a new skb queue ar->htt.rx_indication_head to RX path, but on
> one of your earlier patches you also add another skb queue
> ar_sdio->rx_head. Is it really necessary to have two separate queues in
> RX path? Sounds like extra complexity to me.
it is because the ar_sdio->rx_head is for all rx of sdio bus, include 
wmi event, fw log event,
pkt log event, htt event... and ar_sdio->rx_head is a lower layer of 
stack,
but the NAPI it to improve htt rx data's performance, it is only for htt 
rx, also pcie has the same
queue in ath10k_htt for napi, but it only used for low latency.
> 
> The way I have understood that NAPI is used as a mechanism to disable
> interrupts on the device and gain throughput from that. But in your
> patch the poll function ath10k_sdio_napi_poll() doesn't touch the
> hardware at all, it just processes packets from
> ar->htt.rx_indication_head queue until budget runs out. I'm no NAPI
> expert so I can't claim it's wrong, but at least it feels odd to me.
The difference of this sdio NAPI and pcie NAPI is PCIE's napi_schedule 
is called in isr,
and sdio is called in indication_work of sdio rx, because ath10k's isr 
is not a real isr, it is
owned by sdio host, and actually it is a thread.
When napi_schedule called, it will raise a soft irq in the same context, 
it will block current thread
but not block current isr, in order not to block sdio host thread, so 
called napi_schedule in indication_work of sdio rx is the best choise.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
