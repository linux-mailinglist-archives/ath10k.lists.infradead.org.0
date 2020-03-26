Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDC61941DF
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 15:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WEUsxCZY1Px7PrvBfjNP2EEHtc31+rW+tgcBYDL0Bpw=; b=Rjk3FMUaLaqs5bfKyPA2Eq4v1
	aFiTsD5KUNnJIWe73AmiuoFi0E7NOfDYbDezAon6KRxn1cJWq85YvxA3cymZfC/NSh5a/wUE/r0kQ
	VDSEJHuUQNuIsN4xRhQ7nvLGjilD/sPDGxz+61LZYewVaVzpliNkAOUGB4paJx7aRU9KvpezI3/J5
	kpQeznQo4ia18pE6nFftzN4zRP3tM5yUfTwzp0YCjokK0zRbOIj4GgPUkQ+3NxdsPQ1sEpCAkAR2K
	DlJPyDnr150g0aSFY4Xz2/izxha2d7G3E4ZLfXh+94RI6h/yuHr/Lfl5tYHeusbqOEvsCDk/Hiyef
	ylBGaoyNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTnT-0002ot-VT; Thu, 26 Mar 2020 14:47:51 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTnM-0002cB-SG
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 14:47:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585234068; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=gJypkRBMTN5AeLQ5YUl1fTy/Tw2JI3Ibd/npijA4wvQ=;
 b=YAmRGtwQ9Vc5GKO16GSg4IDI9r8yxJT6aH2hMaDhwZLEaAl4ZNOxx0ij6ea1gZgbcJv6VJ2P
 0DO8KOCfrhxg2q9z+ithdc+zIAWrlD8zta53oElNjUqM9AclQzOnMJ/MBTbNLT3f5Jm0WYo5
 zZAgqE1dPmCk7dH1JV97b9lB68g=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7cc08d.7f8cbd32d3b0-smtp-out-n01;
 Thu, 26 Mar 2020 14:47:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4B2B3C433F2; Thu, 26 Mar 2020 14:47:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C40A6C433BA;
 Thu, 26 Mar 2020 14:47:39 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 20:17:39 +0530
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH] ath11k: add pktlog checksum in trace events to support
 pktlog
In-Reply-To: <1585234044-30362-1-git-send-email-mkenna@codeaurora.org>
References: <1585234044-30362-1-git-send-email-mkenna@codeaurora.org>
Message-ID: <6a4d557a6bb5ef9f9f243c01e67be090@codeaurora.org>
X-Sender: mkenna@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_074748_559397_CF90124E 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

Please ignore this patch. Sent to wrong mailing list. Regret for the 
inconvenience caused.

Regards,
Maha


On 2020-03-26 20:17, Maharaja Kennadyrajan wrote:
> Pktlog data are different among the chipset & chipset versions.
> As part of enhancing the user space script to decode the pktlog
> trace events generated, it is desirable to know which chipset or
> which chipset version has provided the events and thereby decode
> the pktlogs appropriately.
> 
> Pktlog checksum helps to determine the chipset variant which is
> given by the firmware in the struct wmi_ready_event.
> 
> Pktlog checksums are computed during the firmware build.
> So, adding that pktlog checksum in the pklog trace events.
> 
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath11k/core.h  |  1 +
>  drivers/net/wireless/ath/ath11k/dp_rx.c |  3 ++-
>  drivers/net/wireless/ath/ath11k/trace.h | 12 ++++++++----
>  drivers/net/wireless/ath/ath11k/wmi.c   | 21 +++++++++++++--------
>  drivers/net/wireless/ath/ath11k/wmi.h   |  8 +++++++-
>  5 files changed, 31 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath11k/core.h
> b/drivers/net/wireless/ath/ath11k/core.h
> index 6e7b8ec..a1e29f3 100644
> --- a/drivers/net/wireless/ath/ath11k/core.h
> +++ b/drivers/net/wireless/ath/ath11k/core.h
> @@ -650,6 +650,7 @@ struct ath11k_base {
>  		/* protected by data_lock */
>  		u32 fw_crash_counter;
>  	} stats;
> +	u32 pktlog_defs_checksum;
>  };
> 
>  struct ath11k_fw_stats_pdev {
> diff --git a/drivers/net/wireless/ath/ath11k/dp_rx.c
> b/drivers/net/wireless/ath/ath11k/dp_rx.c
> index f74a0e7..a3f2c76 100644
> --- a/drivers/net/wireless/ath/ath11k/dp_rx.c
> +++ b/drivers/net/wireless/ath/ath11k/dp_rx.c
> @@ -1491,7 +1491,8 @@ static void ath11k_htt_pktlog(struct ath11k_base
> *ab, struct sk_buff *skb)
>  		return;
>  	}
> 
> -	trace_ath11k_htt_pktlog(ar, data->payload, hdr->size);
> +	trace_ath11k_htt_pktlog(ar, data->payload, hdr->size,
> +				ar->ab->pktlog_defs_checksum);
>  }
> 
>  static void ath11k_htt_backpressure_event_handler(struct ath11k_base 
> *ab,
> diff --git a/drivers/net/wireless/ath/ath11k/trace.h
> b/drivers/net/wireless/ath/ath11k/trace.h
> index 8700a62..66d0aae 100644
> --- a/drivers/net/wireless/ath/ath11k/trace.h
> +++ b/drivers/net/wireless/ath/ath11k/trace.h
> @@ -21,14 +21,16 @@
>  #define TRACE_SYSTEM ath11k
> 
>  TRACE_EVENT(ath11k_htt_pktlog,
> -	    TP_PROTO(struct ath11k *ar, const void *buf, u16 buf_len),
> +	    TP_PROTO(struct ath11k *ar, const void *buf, u16 buf_len,
> +		     u32 pktlog_checksum),
> 
> -	TP_ARGS(ar, buf, buf_len),
> +	TP_ARGS(ar, buf, buf_len, pktlog_checksum),
> 
>  	TP_STRUCT__entry(
>  		__string(device, dev_name(ar->ab->dev))
>  		__string(driver, dev_driver_string(ar->ab->dev))
>  		__field(u16, buf_len)
> +		__field(u32, pktlog_checksum)
>  		__dynamic_array(u8, pktlog, buf_len)
>  	),
> 
> @@ -36,14 +38,16 @@
>  		__assign_str(device, dev_name(ar->ab->dev));
>  		__assign_str(driver, dev_driver_string(ar->ab->dev));
>  		__entry->buf_len = buf_len;
> +		__entry->pktlog_checksum = pktlog_checksum;
>  		memcpy(__get_dynamic_array(pktlog), buf, buf_len);
>  	),
> 
>  	TP_printk(
> -		"%s %s size %hu",
> +		"%s %s size %hu pktlog_checksum %d",
>  		__get_str(driver),
>  		__get_str(device),
> -		__entry->buf_len
> +		__entry->buf_len,
> +		__entry->pktlog_checksum
>  	 )
>  );
> 
> diff --git a/drivers/net/wireless/ath/ath11k/wmi.c
> b/drivers/net/wireless/ath/ath11k/wmi.c
> index e7ce369..ad88efe 100644
> --- a/drivers/net/wireless/ath/ath11k/wmi.c
> +++ b/drivers/net/wireless/ath/ath11k/wmi.c
> @@ -87,8 +87,8 @@ struct wmi_tlv_rdy_parse {
>  		= { .min_len = sizeof(struct wmi_pdev_bss_chan_info_event) },
>  	[WMI_TAG_VDEV_INSTALL_KEY_COMPLETE_EVENT]
>  		= { .min_len = sizeof(struct wmi_vdev_install_key_compl_event) },
> -	[WMI_TAG_READY_EVENT]
> -		= {.min_len = sizeof(struct wmi_ready_event) },
> +	[WMI_TAG_READY_EVENT] = {
> +		.min_len = sizeof(struct wmi_ready_event_min) },
>  	[WMI_TAG_SERVICE_AVAILABLE_EVENT]
>  		= {.min_len = sizeof(struct wmi_service_available_event) },
>  	[WMI_TAG_PEER_ASSOC_CONF_EVENT]
> @@ -4851,7 +4851,7 @@ static int ath11k_wmi_tlv_rdy_parse(struct
> ath11k_base *ab, u16 tag, u16 len,
>  				    const void *ptr, void *data)
>  {
>  	struct wmi_tlv_rdy_parse *rdy_parse = data;
> -	struct wmi_ready_event *fixed_param;
> +	struct wmi_ready_event fixed_param;
>  	struct wmi_mac_addr *addr_list;
>  	struct ath11k_pdev *pdev;
>  	u32 num_mac_addr;
> @@ -4859,11 +4859,16 @@ static int ath11k_wmi_tlv_rdy_parse(struct
> ath11k_base *ab, u16 tag, u16 len,
> 
>  	switch (tag) {
>  	case WMI_TAG_READY_EVENT:
> -		fixed_param = (struct wmi_ready_event *)ptr;
> -		ab->wlan_init_status = fixed_param->status;
> -		rdy_parse->num_extra_mac_addr = fixed_param->num_extra_mac_addr;
> -
> -		ether_addr_copy(ab->mac_addr, fixed_param->mac_addr.addr);
> +		memset(&fixed_param, 0, sizeof(fixed_param));
> +		memcpy(&fixed_param, (struct wmi_ready_event *)ptr,
> +		       min_t(u16, sizeof(fixed_param), len));
> +		ab->wlan_init_status = fixed_param.ready_event_min.status;
> +		rdy_parse->num_extra_mac_addr =
> +			fixed_param.ready_event_min.num_extra_mac_addr;
> +
> +		ether_addr_copy(ab->mac_addr,
> +				fixed_param.ready_event_min.mac_addr.addr);
> +		ab->pktlog_defs_checksum = fixed_param.pktlog_defs_checksum;
>  		ab->wmi_ready = true;
>  		break;
>  	case WMI_TAG_ARRAY_FIXED_STRUCT:
> diff --git a/drivers/net/wireless/ath/ath11k/wmi.h
> b/drivers/net/wireless/ath/ath11k/wmi.h
> index 510f9c6..58f9098 100644
> --- a/drivers/net/wireless/ath/ath11k/wmi.h
> +++ b/drivers/net/wireless/ath/ath11k/wmi.h
> @@ -2345,7 +2345,7 @@ struct wmi_mac_addr {
>  	} __packed;
>  } __packed;
> 
> -struct wmi_ready_event {
> +struct wmi_ready_event_min {
>  	struct wmi_abi_version fw_abi_vers;
>  	struct wmi_mac_addr mac_addr;
>  	u32 status;
> @@ -2355,6 +2355,12 @@ struct wmi_ready_event {
>  	u32 num_extra_peers;
>  } __packed;
> 
> +struct wmi_ready_event {
> +	struct wmi_ready_event_min ready_event_min;
> +	u32 max_ast_index;
> +	u32 pktlog_defs_checksum;
> +} __packed;
> +
>  struct wmi_service_available_event {
>  	u32 wmi_service_segment_offset;
>  	u32 wmi_service_segment_bitmap[WMI_SERVICE_SEGMENT_BM_SIZE32];

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
