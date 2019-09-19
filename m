Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65934B74B5
	for <lists+ath10k@lfdr.de>; Thu, 19 Sep 2019 10:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vekas/8SaxYaJTTRzZ0p8Whwe9wiMDX8i7RlsXvIu/Y=; b=S4LVNpstolBIqzFKaLEKwd+1J
	NQGhAB70w89XEbfQ8rgalHxL1qYa1wtQM+f8N4V6elSncaX48wtZdtg7tAOtD/2aDE2rtDHR6kO+Y
	aVkq+ZCro1dD4uany6xH85zNBr5imMk+i92A2WIJ854j+Ve5/Gm4xtV/TJhsKaf/pVOY3fx3M3veD
	zoS+oMsQzF/Fk/puH2r5JKvszgtIo4X9/ld0PvR9QSZ/BL2Ec0UX+vRpIMAJEtyDRFUYkBX4hiZzQ
	gb1ih4sgebQdzizkG9Zp9GYnXiygmnwe2MY3BSstqN57XlZZWkTJS63P/KG0WmQ37pAtOz4Kze1BV
	I+SOftc+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArQQ-0006Md-0w; Thu, 19 Sep 2019 08:04:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArQB-0006MB-Gc
 for ath10k@lists.infradead.org; Thu, 19 Sep 2019 08:04:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8857561418; Thu, 19 Sep 2019 08:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568880250;
 bh=v81AAN/4fGy4vxfKKmCU4QkX73pgYLMSvEz9benzOec=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GjsaAo/vnYpu67vXZoW77i33KBqwcyq3HSk6gu6WYwVr4oNfzP9IW6EVfCT/11Q5e
 blCQYV7PgqyXl9f6hiTpQ0u+1REyxEq2ov/SywUhn2Zgr7/UTQAfzrXDNXmiQTuyoI
 qiGCWKiGN9dnI5od1e5EuSrO0HnZvQ5SrRMFmboI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id F07CF6016D;
 Thu, 19 Sep 2019 08:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568880247;
 bh=v81AAN/4fGy4vxfKKmCU4QkX73pgYLMSvEz9benzOec=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WcPDO8eOlP+saWLywmJGjJGIAjLPPDuiZ/RKWjEvAxiDUqw9FZqQWckXcfMfzDPWU
 hHwIfj0v7B0Br1GZn1/RxcWc8Mx/ba8OhlSpotm8lym0SBqJ396jUDikYrKikIQaRR
 lPbzvhO9EIyETnqIuGybNW9k38e/b6FuVqC0hero=
MIME-Version: 1.0
Date: Thu, 19 Sep 2019 13:34:06 +0530
From: Balaji Pothunoori <bpothuno@codeaurora.org>
To: Bob Copeland <me@bobcopeland.com>
Subject: Re: [PATCH v4 3/3] ath10k: add support for controlling tx power to a
 station
In-Reply-To: <20190919002100.GA28186@localhost>
References: <1553856587-21611-1-git-send-email-bpothuno@codeaurora.org>
 <20190402223709.GB8910@localhost> <871rwdbu1p.fsf@kamboji.qca.qualcomm.com>
 <20190919002100.GA28186@localhost>
Message-ID: <7fbdeb414ce3b03c57fb6fa86cdf8dc5@codeaurora.org>
X-Sender: bpothuno@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_010411_580016_75A72A6A 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: johannes@sipsolutions.net, Ashok Raj Nagarajan <arnagara@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-19 05:51, Bob Copeland wrote:
> On Wed, Sep 18, 2019 at 04:41:54PM +0300, Kalle Valo wrote:
>> Bob Copeland <me@bobcopeland.com> writes:
>> > - on A, changed the global tx power limit to 1 dBm
>> >   -> result: signal level dropped to ~ -95 dBm
>> >
>> > Reading the description above, now I'm wondering if the txpower is
>> > max(sta-power,global-power)?  If so, that seems a bit unintuitive to me,
>> > or at least isn't what I hoped for.  I'd prefer to have per-sta power
>> > setting override the global power.
>> 
>> Balaji, please reply to Bob's questions. I missed this thread while
>> applying v5, sorry Bob.
> 
> Just to follow-up, I ran more experiments since writing the above
> email and it didn't look like it was doing max() either -- at least
> on my hardware/firmware combo it had no effect at all that I could 
> tell.
> 

For QCA9984 allowed tx power range values from 6 to 23,
Same info mentioned in : https://patchwork.kernel.org/patch/10968517/

> I did verify that the wmi update went through to the firmware.
> 
> I can't remember now, but I may have been testing mesh mode in case
> that makes a difference.

We gave fix for tx power configuration in firmware 10.4-3.9.0.2-00046 .

Can you try with that ?


Regards,
Balaji.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
