Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD41FB64E3
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 15:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuYJj1lLz51e8jbNeBV5mF10t7cTN8w1M0CmVvLuY2k=; b=K6BkWhkgGh3dFt
	eQiBligKxulolU/7DS+iiEkyckLjvIQBYvcKhiLEIkdGxkYLZnVM0s9ZBmJmZOtc9rgCZHyOMsutN
	qJg3FnADbNlJWlJ03cMoGtId7fc0SY5zchQpjb8YoLf1zzSkdh+w5I85glU54sYkIg6yvQyzr7Lbe
	14WpfYIWwPtrpRe82LQ0TeWq9UIR9h10iTfOLRxSAFkki9JgLRrl3sGgZ0M0nw5h+Wsd97wzPGxhZ
	8dwmyfCkc79VRHsOlc6vykWddftwHo3DFMefsQ33aNT7InEeiiZy/ELIWkq/9Jo3Myf4/x4Bq8r93
	Ozd8m7KQOWk6JUe+GHyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaDc-0007Q1-Ny; Wed, 18 Sep 2019 13:42:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaDY-0007Pc-CM
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 13:42:01 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2292D614DC; Wed, 18 Sep 2019 13:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568814119;
 bh=EBe0S3RdVZqmtXYYAvgIsB4ZA32+LQjM+vdV4XS17ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=FJIvB/dUW90/btwI+whKfuvw6tjAoQpohT+XewD+STTnnJ7GI6bY8RveAnzsCL0L0
 LABMOjc9IM7WedA9SppG5gY9oaN2k65YdVmROoEaaEvPzaAHCFdEWdXHyGTkgHsx78
 Ky1A/QXRaw1G2KATFKBQz07o8f7ppGcaUWcJ3L4o=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8AFB26133A;
 Wed, 18 Sep 2019 13:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568814118;
 bh=EBe0S3RdVZqmtXYYAvgIsB4ZA32+LQjM+vdV4XS17ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YgEMAMVKxVtajKykYJHc+9RNhbmc0kVzqFF3QkdCq4pOc34RQpjWC+ohu48/eHdyT
 5IxVxLbXjhHfUmKiSkHKK6pG7vcHBlxoXQzI023WhhB4mBNtheDqdrR7+mpLO9OJJf
 MVa/PY+XdGm380QcVlC10d5II0DRvodes4RGgi9Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8AFB26133A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bob Copeland <me@bobcopeland.com>
Subject: Re: [PATCH v4 3/3] ath10k: add support for controlling tx power to a
 station
References: <1553856587-21611-1-git-send-email-bpothuno@codeaurora.org>
 <20190402223709.GB8910@localhost>
Date: Wed, 18 Sep 2019 16:41:54 +0300
In-Reply-To: <20190402223709.GB8910@localhost> (Bob Copeland's message of
 "Tue, 2 Apr 2019 18:37:09 -0400")
Message-ID: <871rwdbu1p.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_064200_461769_30E1B67B 
X-CRM114-Status: GOOD (  17.35  )
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>, johannes@sipsolutions.net,
 Ashok Raj Nagarajan <arnagara@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bob Copeland <me@bobcopeland.com> writes:

> On Fri, Mar 29, 2019 at 04:19:47PM +0530, Balaji Pothunoori wrote:
>> From: Ashok Raj Nagarajan <arnagara@codeaurora.org>
>> 
>> This patch will add the support to control the transmit power for traffic
>> to a station associated with the AP.
>> 
>> Underlying firmware will enforce that the maximum tx power will be based
>> on the regulatory requirements. If the user given transmit power is greater
>> than the allowed tx power in the given channel, then the firmware will use
>> the maximum tx power in the same channel.
>> 
>> When 0 is sent to the firmware as tx power, it will revert to the default
>> tx power for the station.
>> 
>> Tested Hardware : QCA9984
>> Tested Firmware : 10.4-3.9.0.1-00013
>
> I tried this on qca9984 with 10.4-3.9.0.2-00040, which claims to support
> this feature, and it didn't seem to work:
>
> - with global tx power limit set to 30 dBm, I started an iperf from station
>   A -> B
>
> - while iperf underway, I did tcpdump on a monitor on B and looked at signal
>   level in radiotap, in this case around -75 dBm
>
> - on A, changed the per-sta txpwr limit for B to something (tried as low as
>   1 dBm).  verified via printk that it went through to the driver / firmware
>   command and reported no error
>   -> result: signal level unchanged
>
> - on A, changed the global tx power limit to 1 dBm
>   -> result: signal level dropped to ~ -95 dBm
>
> Reading the description above, now I'm wondering if the txpower is
> max(sta-power,global-power)?  If so, that seems a bit unintuitive to me,
> or at least isn't what I hoped for.  I'd prefer to have per-sta power
> setting override the global power.

Balaji, please reply to Bob's questions. I missed this thread while
applying v5, sorry Bob.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
