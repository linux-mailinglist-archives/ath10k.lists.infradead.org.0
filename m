Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0479863E
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 23:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:MIME-Version:From:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OZugIin5JHXuRRBTcrWXOUFV8CN4Whyhm5FgWNnV7KA=; b=M3KOKgKyrvVYzPpZOhx+A1fEi
	f2HZ3xxcUrCIDTzaMFwhabzIv4fTS3FcpAvdgxYIvOdLiw5/KDK88TXI3Lph5V2zjhwbST9TVNzhw
	+ryAs9IwxEBIpLR3SIHK+v+aEX9Rn7BeQLvolSv0HbTKVneNjrIiXMjmus7ubN50WTijOdBBM0lQM
	EFEw7ICzx4sjZaO5hhPI8mRYNKzHbadNpG4dtn7zH6kDbq1TNK1ATcVD7qz/KoUQBoNClJgyoRwRq
	Z0xE6orzUKVY7oCFPYCPco4zO3lAcKWRdFlaWpRTJrffkjyP+wr199x+4G8ik/PD+7Yj0xjfzA3kb
	JwjymtITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XoF-0003qu-2A; Wed, 21 Aug 2019 21:06:23 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XoB-0003qU-GZ
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 21:06:20 +0000
Received: from [172.31.98.117] (unknown [4.30.140.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 7E40865934;
 Wed, 21 Aug 2019 14:06:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 7E40865934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1566421575;
 bh=n8ajot96VwwX6KlgJUIkCuyb/gxaAjFRu5p7efgkoxA=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=DRmyP2kI5mXCP8pl6gFRTSpB+Hn1ucMGKfXwpO7v6Amo9Bb+hxbsKEBCCzUBo9VRG
 RqHAYI3+jjPvcC2Wj/p3U5b2hf5wy6i9iuFJbYvxbeuRkVJkrUdvLOLXz15SmlfZCc
 lAaLatwF3Kp+LIxLKnss2jk3Vgu+Mtt6HjMynB/Q=
Message-ID: <5D5DB246.7040402@candelatech.com>
Date: Wed, 21 Aug 2019 14:06:14 -0700
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: ath10k <ath10k@lists.infradead.org>, pillair@codeaurora.org, 
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: Regression with commit "ath10k: fill the channel survey results
 for WCN3990 correctly"
References: <5D5DAFE4.6080706@candelatech.com>
In-Reply-To: <5D5DAFE4.6080706@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_140619_574807_069B30A2 
X-CRM114-Status: GOOD (  18.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 08/21/2019 01:56 PM, Ben Greear wrote:
> Hello,
>
> I just noticed in 5.2.7+ kernel than this commit below appears to break WMI
> message for my 10.1 firmware, and based on code inspection, 10.2 will be broken
> as well.
>
> 10.1 struct ends with cycle_count, and 10.2 ends with one 32-bit number
> after that, but which is not chan_tx_pwr_range.
>
> I guess you need to create your own wmi msg for the WCN3990.
>
> The change to 10.4 chan_info event is also wrong for my relatively
> new version of 10.4 code, so likely breaks firmware in use.  last member
> in that struct in my 10.4 fw src is 'A_UINT32 rx_11b_mode_data_duration;'

Sorry, I mis-read this 10.4 part of the patch, it was not changing the wmi event
itself, so probably that part is fine.

Thanks,
Ben

>
>
> commit 13104929d2ec32aec0552007d55b9e15bc07176b
> Author: Rakesh Pillai <pillair@codeaurora.org>
> Date:   Wed Oct 17 16:50:03 2018 +0530
>
>      ath10k: fill the channel survey results for WCN3990 correctly
>
>
>
> diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
> index 4971d61..58e33ab 100644
> --- a/drivers/net/wireless/ath/ath10k/wmi.h
> +++ b/drivers/net/wireless/ath/ath10k/wmi.h
> @@ -6442,6 +6442,14 @@ struct wmi_chan_info_event {
>          __le32 noise_floor;
>          __le32 rx_clear_count;
>          __le32 cycle_count;
> +       __le32 chan_tx_pwr_range;
> +       __le32 chan_tx_pwr_tp;
> +       __le32 rx_frame_count;
> +       __le32 my_bss_rx_cycle_count;
> +       __le32 rx_11b_mode_data_duration;
> +       __le32 tx_frame_cnt;
> +       __le32 mac_clk_mhz;
> +
>   } __packed;
>
>
>
> Thanks,
> Ben
>


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
