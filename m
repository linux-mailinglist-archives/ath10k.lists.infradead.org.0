Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B3B63F6
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 15:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tM/PtdkCuiSsa+Er2kEv2nXBvf9OmPP/Osxtg6C5YEM=; b=Kd4Evx7zkspEpImDgQs8wNdn4
	rJJXxxKktzCU8Cal/bzvV4OASrBl1MWfKZ6kWUH+eA30nXyaDQB0rD8DoL45uRGligvx694ok0XRX
	dkjFeyZJRqL7cKk6dQFYJpCJ6oVWa7wjratQ4p1H3m5Z59HZwsSLiT1cSXSAQQNt7ualRFbvz8Efk
	k+XHeIUFzaliD7LGXnsWdc+0UZKied0iI0pGlRAItt3JGrHedQr2niq861iXHca6vc1y31WQN0D00
	2KI2ccXxGZrxcSRn0YGx/636R96nf2N14RcTCjZouYCjW5QYrcvib0xwQSGA6zqUKx0KS9Quvth20
	EenDiJZog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZZ3-0005jV-5C; Wed, 18 Sep 2019 13:00:09 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZXp-0004bw-D8
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 12:58:55 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 06ED913C2BA;
 Wed, 18 Sep 2019 05:58:48 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 06ED913C2BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1568811530;
 bh=swWESwF5RdUiGeJMFtJC0GLZlrgKFNyGYpmONj/yXXI=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=flAv1dzIuCNspzBo6gxOGFA3X9qj9ZjRH9WbyrdKsUmUR/f4DuDKv+FrAgoy2CKuV
 Qq/k5Dv6R6LmbbaN0ni3NknsmNZObKWeEtFlgguRfheDvARZ8DwAL8Swv6K1cT/a3Q
 sbEKja0Sv5Q6mtByGH8tvXPfztULE2MRZoEBJOt4=
Subject: Re: [PATCH] cfg80211: Add cumulative channel survey dump support.
To: Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org,
 sw@simonwunderlich.de
References: <1526980556-26707-1-git-send-email-vnaralas@codeaurora.org>
 <ebf1c95acb34649b3d2a5435142dc06a@codeaurora.org>
 <2083094.mFhUXK7yzB@bentobox> <18458963.ukFM9YuvQx@bentobox>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <b24ec622-8510-d8e4-bbc4-86a34c1dd32b@candelatech.com>
Date: Wed, 18 Sep 2019 05:58:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <18458963.ukFM9YuvQx@bentobox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055853_489308_61DECFD6 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, slakkavalli@datto.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 09/18/2019 01:46 AM, Sven Eckelmann wrote:
> On Tuesday, 17 September 2019 19:27:50 CEST Sven Eckelmann wrote:
> [...]
>> So whatever the firmware does when it gets a
>> WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR -  it is not a CLEAR after read. And they
>> also don't simply wrap around but there all values have to get some kind of
>> "fix" like the active time one shown in ath10k_hw_fill_survey_time.
>> Just that the actual "fixes" for them are unknown. To me it looks like
>> firmware ATH10K_HW_CC_WRAP_SHIFTED_ALL have busy and rx interlinked with
>> the overflow of total. But the tx and rx_bss are actually cleared.
>>
>> Other than that, the counters are wrapping every ~14-30 seconds. So we
>> also need also some worker for ath10k which every couple of seconds
>> requests new values for all the channel from the firmware. Which already
>> sounds problematic because I get
>> "ath10k_pci 0000:00:00.0: bss channelsurvey timed out" all the time
>> when requesting surveys manually.
>
> I've just tested it on 10.4 (wave-2) cards and it seems like it is cleared as
> expected on them. So the change I posted earlier (with a minor fix for
> ath10k_hw_fill_survey_time) returns now useful (accumulated) values. This can
> be seen in
> https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86749f4d60&fullscreen&panelId=5&from=1568782046974&to=1568807068706
> (after the reboot at 10:15 UTC+2)
>
> So as Ben Greear said, the 10.4 firmware version is fixed and 10.2.* (for
> the wave-1 cards) is still broken and we need a QCA firmware engineer to
> fix it. Or to work around it by polling every couple of seconds and
> manually do the cleanup of the values from the firmware.

Have you tried probing very fast, like every 100ms, to see if returned values
look sane?  I seem to recall that there was some firmware issue with this, like
it only updates internal counters every second or so.

Polling slow would have the same off-by-a-second's-worth-of-data, but you would not
easily notice it at slower polling intervals.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
