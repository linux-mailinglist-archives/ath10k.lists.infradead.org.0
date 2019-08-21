Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5776698651
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 23:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6gKbv2Cwi5LOeu/fRtWO9DUmSpThkVpYgK71jF2gkQo=; b=W2t7c9RcbBYSF/25AGJCiBf9h
	91fWi74crgU0SJ55XWf7toGp8zXZPGBar8bsT4+YtP5ew1ucLHi+APX4uSmXByszYPlS5w9E0mC2V
	+Prp9Qt4vTiGfjsF2jxA7GGuLCB1LrNZ/i0iicNQxLZWN4lcvKJOKRPoDUXMk9UX+/KNBzLeJJNEF
	4EWhmA2OUVxga0SbUk1OglZszyIbHiSvsXgYUXbjMhqJHI2nI0ru2lJ/ho5h62zR4JUIL6GVwDhfU
	JnykvEnoUU0chGywPTUgMKKb8vgiwL9+g0v7y3d95CcHaZI0700qBPuJO//EvBsMpaiZ4RvEG3upZ
	ULh1+Zfpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XuD-00065k-PO; Wed, 21 Aug 2019 21:12:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xu9-0005tU-V5
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 21:12:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C4FD060E3F; Wed, 21 Aug 2019 21:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566421947;
 bh=PBUYbv9JTZoU/c7AFVuRWv956Nc4PY4ZLwMmETMSG0o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NI3PBqBjEFtdzB19Cycx3NdfY1aQB1XKsiXO+xfeXoepW9xbFSeRXECCUUOe3FO1P
 2vfr0inMvsJQlWeI9P2vfaoXj1Kf7sgX2Lw/NKVZqJGYxPmkWCXtXPrJ9qessW4hhH
 ZHgUg4wNyxQcOOwxmf1gEebkrwkO9Vs5thzojX7w=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 269546030D;
 Wed, 21 Aug 2019 21:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566421947;
 bh=PBUYbv9JTZoU/c7AFVuRWv956Nc4PY4ZLwMmETMSG0o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NI3PBqBjEFtdzB19Cycx3NdfY1aQB1XKsiXO+xfeXoepW9xbFSeRXECCUUOe3FO1P
 2vfr0inMvsJQlWeI9P2vfaoXj1Kf7sgX2Lw/NKVZqJGYxPmkWCXtXPrJ9qessW4hhH
 ZHgUg4wNyxQcOOwxmf1gEebkrwkO9Vs5thzojX7w=
MIME-Version: 1.0
Date: Wed, 21 Aug 2019 14:12:27 -0700
From: Rakesh Pillai <pillair@codeaurora.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: Regression with commit "ath10k: fill the channel survey results
 for WCN3990 correctly"
In-Reply-To: <5D5DB246.7040402@candelatech.com>
References: <5D5DAFE4.6080706@candelatech.com>
 <5D5DB246.7040402@candelatech.com>
Message-ID: <c77c271a3d77d990b8de67cdbd8ea8c7@codeaurora.org>
X-Sender: pillair@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141230_059327_CA4968EE 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Ben,
Can you please check https://patchwork.kernel.org/patch/10844513/ ?
This change fixes the below mentioned regression. A different structure 
is made for tlv specific event handling.

Thanks,
Rakesh Pillai.


On 2019-08-21 14:06, Ben Greear wrote:
> On 08/21/2019 01:56 PM, Ben Greear wrote:
>> Hello,
>> 
>> I just noticed in 5.2.7+ kernel than this commit below appears to 
>> break WMI
>> message for my 10.1 firmware, and based on code inspection, 10.2 will 
>> be broken
>> as well.
>> 
>> 10.1 struct ends with cycle_count, and 10.2 ends with one 32-bit 
>> number
>> after that, but which is not chan_tx_pwr_range.
>> 
>> I guess you need to create your own wmi msg for the WCN3990.
>> 
>> The change to 10.4 chan_info event is also wrong for my relatively
>> new version of 10.4 code, so likely breaks firmware in use.  last 
>> member
>> in that struct in my 10.4 fw src is 'A_UINT32 
>> rx_11b_mode_data_duration;'
> 
> Sorry, I mis-read this 10.4 part of the patch, it was not changing the 
> wmi event
> itself, so probably that part is fine.
> 
> Thanks,
> Ben
> 
>> 
>> 
>> commit 13104929d2ec32aec0552007d55b9e15bc07176b
>> Author: Rakesh Pillai <pillair@codeaurora.org>
>> Date:   Wed Oct 17 16:50:03 2018 +0530
>> 
>>      ath10k: fill the channel survey results for WCN3990 correctly
>> 
>> 
>> 
>> diff --git a/drivers/net/wireless/ath/ath10k/wmi.h 
>> b/drivers/net/wireless/ath/ath10k/wmi.h
>> index 4971d61..58e33ab 100644
>> --- a/drivers/net/wireless/ath/ath10k/wmi.h
>> +++ b/drivers/net/wireless/ath/ath10k/wmi.h
>> @@ -6442,6 +6442,14 @@ struct wmi_chan_info_event {
>>          __le32 noise_floor;
>>          __le32 rx_clear_count;
>>          __le32 cycle_count;
>> +       __le32 chan_tx_pwr_range;
>> +       __le32 chan_tx_pwr_tp;
>> +       __le32 rx_frame_count;
>> +       __le32 my_bss_rx_cycle_count;
>> +       __le32 rx_11b_mode_data_duration;
>> +       __le32 tx_frame_cnt;
>> +       __le32 mac_clk_mhz;
>> +
>>   } __packed;
>> 
>> 
>> 
>> Thanks,
>> Ben
>> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
