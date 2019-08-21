Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072E098661
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 23:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:MIME-Version:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2B2dkwZ9cqyQBdIuOrjMCYsU5f4xlSQgp07hkD35Oow=; b=QHZZC/KNNjrpMxDQhwdpxifJe
	z7+X1OnOhXoKSQVnkmbvvAfdn3u7eq5temiIpEp/0dr7wg6JM0WOBPVQI1KZxALn3EiEnHfH/63zW
	46NIbU2iKhTtu8WVPPnDiiKVrc03hr4SEMXgHuLADKvK8VC5C1yCF2lMbicAEZlcEt0A2SdmpJX9U
	k+LdkDDt/SiDbFZVwF9gTwGEa302fWM8AmNXDJPDqCrywV1/IU8PWe6Qz7Rd2zGm6dBmk9FLFz8Gl
	zGjpCfhGhy9LFpNtcoXPi2PJDOLpJ6txixRuLmKevjVr9/h1JjknXJETVG62VPbBI2Cym60MpomFo
	IMfBA5p1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xx1-0008KW-I9; Wed, 21 Aug 2019 21:15:27 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xwv-0008Fv-Qb
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 21:15:23 +0000
Received: from [172.31.98.117] (unknown [4.30.140.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 92E8665934;
 Wed, 21 Aug 2019 14:15:20 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 92E8665934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1566422121;
 bh=B4Y9XTKNmDEmozuFGDcpQRF554bmUwrrknXc8d037DE=;
 h=Date:From:To:CC:Subject:References:In-Reply-To:From;
 b=h0eEkX/EY5kFm3OEwJ0SS9Q09CploYy0KVfBi0HpfI+mL3fTKFVC+3mWXSPJj02ab
 E9d88JrZ7oYWRrKQ+19Kg9v+g8zG8jlJUnFB59fq5rge3czn9sQbmaSeIq1wh+K9v/
 2Oz1Z11il+xkc30VNIFmZ06pxuKG+V6Q5Et0Ok+M=
Message-ID: <5D5DB467.4000007@candelatech.com>
Date: Wed, 21 Aug 2019 14:15:19 -0700
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: Regression with commit "ath10k: fill the channel survey results
 for WCN3990 correctly"
References: <5D5DAFE4.6080706@candelatech.com>
 <5D5DB246.7040402@candelatech.com>
 <c77c271a3d77d990b8de67cdbd8ea8c7@codeaurora.org>
In-Reply-To: <c77c271a3d77d990b8de67cdbd8ea8c7@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141522_113406_9BED20DF 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Looks like it should work.

Why is this rotting in patchwork?

Thanks
Ben

On 08/21/2019 02:12 PM, Rakesh Pillai wrote:
> Hi Ben,
> Can you please check https://patchwork.kernel.org/patch/10844513/ ?
> This change fixes the below mentioned regression. A different structure is made for tlv specific event handling.
>
> Thanks,
> Rakesh Pillai.
>
>
> On 2019-08-21 14:06, Ben Greear wrote:
>> On 08/21/2019 01:56 PM, Ben Greear wrote:
>>> Hello,
>>>
>>> I just noticed in 5.2.7+ kernel than this commit below appears to break WMI
>>> message for my 10.1 firmware, and based on code inspection, 10.2 will be broken
>>> as well.
>>>
>>> 10.1 struct ends with cycle_count, and 10.2 ends with one 32-bit number
>>> after that, but which is not chan_tx_pwr_range.
>>>
>>> I guess you need to create your own wmi msg for the WCN3990.
>>>
>>> The change to 10.4 chan_info event is also wrong for my relatively
>>> new version of 10.4 code, so likely breaks firmware in use.  last member
>>> in that struct in my 10.4 fw src is 'A_UINT32 rx_11b_mode_data_duration;'
>>
>> Sorry, I mis-read this 10.4 part of the patch, it was not changing the wmi event
>> itself, so probably that part is fine.
>>
>> Thanks,
>> Ben
>>
>>>
>>>
>>> commit 13104929d2ec32aec0552007d55b9e15bc07176b
>>> Author: Rakesh Pillai <pillair@codeaurora.org>
>>> Date:   Wed Oct 17 16:50:03 2018 +0530
>>>
>>>      ath10k: fill the channel survey results for WCN3990 correctly
>>>
>>>
>>>
>>> diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
>>> index 4971d61..58e33ab 100644
>>> --- a/drivers/net/wireless/ath/ath10k/wmi.h
>>> +++ b/drivers/net/wireless/ath/ath10k/wmi.h
>>> @@ -6442,6 +6442,14 @@ struct wmi_chan_info_event {
>>>          __le32 noise_floor;
>>>          __le32 rx_clear_count;
>>>          __le32 cycle_count;
>>> +       __le32 chan_tx_pwr_range;
>>> +       __le32 chan_tx_pwr_tp;
>>> +       __le32 rx_frame_count;
>>> +       __le32 my_bss_rx_cycle_count;
>>> +       __le32 rx_11b_mode_data_duration;
>>> +       __le32 tx_frame_cnt;
>>> +       __le32 mac_clk_mhz;
>>> +
>>>   } __packed;
>>>
>>>
>>>
>>> Thanks,
>>> Ben
>>>
>


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
