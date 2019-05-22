Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFC025B9D
	for <lists+ath10k@lfdr.de>; Wed, 22 May 2019 03:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0n/2CRPj1QkVf6zl8cLkzTpdaFWrmgzBGFqFv/DtPro=; b=s7bEpTa9FqqCnL
	qHse7wU75E+2HRGTfl2OIFkvLC0KSYF2BSDfKPcZ0bpkd4plFeZAPC0fqNQNMz2021xQzHCC1xMYQ
	fxjO5nttgSiTDrdMJ4UIunvY3fgaPyBuubM0z7wNws37aXFU47IJERpFpOvYxFYmGnFUm/liQA3xC
	Rx/5uAcmPC/JwN/+3NOcBNtqVFtiAoaB0hGngXeKja8VCgz49Ta/l85mJu6jhRatqERQ3V/WjmnWY
	5xgiRIhpkiCjEw1J7uch8w/KPRskiLigTOHUVy03bDWNWXQJK84llOHA7epdaMfw7jMUeX1YDsQqx
	m4Tl+wLuT5w8gdPMW02Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTFvm-000613-Tq; Wed, 22 May 2019 01:20:34 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTFvj-00060j-BL
 for ath10k@lists.infradead.org; Wed, 22 May 2019 01:20:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id f12so203977plt.8
 for <ath10k@lists.infradead.org>; Tue, 21 May 2019 18:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CpB65cDLGq7XzI4hbeNnxT0sjgfejrvYYgurc14l3FA=;
 b=foLC0zWFki8g626LWwoIm9P7Y/sPGp9D7pwphRKciHL6EDPV7VvdPAFbJFCRNQzxgt
 4zymNebs1ix8ktIUvErWLhKWi+MG87x45xFAIg6cs61grXFN6YN9iZBRpxBBZPkBWap0
 24e4MeuUEbhdpeTjiFwxzYZh/sVSoLzd7F2WLaf5R10vP0dzeA5IR4zjgU2Dcmrvmyfy
 7zSoYMzfO++/nFWCyuB5c3B0gDizywhcQyAtNP+rigD6o35M6lM32H7v1HpEAyCvoohN
 5MlWcJqnxiPmhT+d7L2R2YuYB5m2TKHxlFWHyaQRJHRk8GGqhPdNXAzFLW78Oa2Ba9nU
 rvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CpB65cDLGq7XzI4hbeNnxT0sjgfejrvYYgurc14l3FA=;
 b=nzygBwfKaEIGk04qlCAmu9GJDl7GE8x0yi5tSbCjrzpxBfCSgUkFCvrgbmq2patuVr
 Y2J6Mro7tWFIaAoaL2Wa6TP2nmoM4tzo8Cag2d2iFM7idgunsjAZyFCUSEwD2n43BS6g
 e5RJa+KVCdsUVM9MeKOEBBpU3u5o6DKB/+J9NtnGC/2qCy/gCCUFXZ9mIZP3PJMwBWwM
 OcI4Bw0tL4gdb1/qEA2TSdNOOgiJfoNKHKb0z/J6IhFmlzadkfz6lvQDqfBpEnBMGW6d
 Q5aXhens33EeNhJIhNhQivWnQdbMPdcCT4yDrb1lMrFu7iUJ8fRdxyhovDJq8lqItU/C
 VQUg==
X-Gm-Message-State: APjAAAWstIDY2mOeLFOPhW9fO/vjfHwVxv6YZV1Lih1PxOUwIWO3AegW
 n6tXdr1j5DY5nO5FhKOB5IA3tw==
X-Google-Smtp-Source: APXvYqyZhWUzzp4/O4aq7qAxGkILoAxGI3ODU/VcMssF5wW4SifccjkV/WVJLbKw8ja9JMyfVqxQKw==
X-Received: by 2002:a17:902:e00f:: with SMTP id
 ca15mr86084238plb.76.1558488029511; 
 Tue, 21 May 2019 18:20:29 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s66sm30146973pfb.37.2019.05.21.18.20.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 18:20:28 -0700 (PDT)
Date: Tue, 21 May 2019 18:20:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH v2 1/1] ath10k: update HOST capability qmi message
Message-ID: <20190522012026.GS31438@minitux>
References: <20190204115555.17052-1-govinds@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190204115555.17052-1-govinds@codeaurora.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_182031_404195_BF3BB241 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon 04 Feb 03:55 PST 2019, Govind Singh wrote:

> HOST capability interface data structures are updated
> in HL3.1 fw version. Update the qmi host capability
> members for compatibility across different firmware
> versions.
> Since this change breaks backward compatibility with
> HL2.0 fw, HL2.0 fw upgrade to WLAN.HL.2.0-01617-QCAHLSWMTPLZ-1
> or later version is required.
> 

Sorry for not objecting earlier, I confused this with the "msa info req
rejected: 90" error that we see on some 845 devices.

Given that the wlan firmware is signed there's no way for people in the
community to upgrade their firmware, until such version has propagated
through the official channels for the specific device.
As such this patch inhibits the ability of bringing up wifi on devices
such as the Lenovo Yoga C630.


Is there any way we can detect if we're using the "old" firmware?

Regards,
Bjorn

> Testing:
>         Tested on QCS404 platform(WCN3990 HW).
>         Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1,
>                    WLAN.HL.2.0-01617-QCAHLSWMTPLZ-1
> ---
>  .../net/wireless/ath/ath10k/qmi_wlfw_v01.c    | 229 +++++++++++++++++-
>  .../net/wireless/ath/ath10k/qmi_wlfw_v01.h    |  34 ++-
>  2 files changed, 257 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
> index ba79c2e4aed6..4102f7b0b5c3 100644
> --- a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
> +++ b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.c
> @@ -1763,14 +1763,239 @@ struct qmi_elem_info wlfw_host_cap_req_msg_v01_ei[] = {
>  					   daemon_support_valid),
>  	},
>  	{
> -		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.data_type      = QMI_UNSIGNED_4_BYTE,
>  		.elem_len       = 1,
> -		.elem_size      = sizeof(u8),
> +		.elem_size      = sizeof(u32),
>  		.array_type     = NO_ARRAY,
>  		.tlv_type       = 0x10,
>  		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
>  					   daemon_support),
>  	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x11,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   wake_msi_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_4_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u32),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x11,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   wake_msi),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x12,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   gpios_valid),
> +	},
> +	{
> +		.data_type      = QMI_DATA_LEN,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u32),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x12,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   gpios_len),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_4_BYTE,
> +		.elem_len       = QMI_WLFW_MAX_NUM_GPIO_V01,
> +		.elem_size      = sizeof(u32),
> +		.array_type     = VAR_LEN_ARRAY,
> +		.tlv_type       = 0x12,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   gpios),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x13,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   nm_modem_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x13,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   nm_modem),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x14,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   bdf_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x14,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   bdf_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x15,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   bdf_cache_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x15,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   bdf_cache_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x16,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   m3_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x16,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   m3_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x17,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   m3_cache_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x17,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   m3_cache_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x18,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_filesys_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x18,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_filesys_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x19,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_cache_support_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x19,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_cache_support),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1A,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_done_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1A,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   cal_done),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1B,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   mem_bucket_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_4_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u32),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1B,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   mem_bucket),
> +	},
> +	{
> +		.data_type      = QMI_OPT_FLAG,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1C,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   mem_cfg_mode_valid),
> +	},
> +	{
> +		.data_type      = QMI_UNSIGNED_1_BYTE,
> +		.elem_len       = 1,
> +		.elem_size      = sizeof(u8),
> +		.array_type     = NO_ARRAY,
> +		.tlv_type       = 0x1C,
> +		.offset         = offsetof(struct wlfw_host_cap_req_msg_v01,
> +					   mem_cfg_mode),
> +	},
>  	{}
>  };
>  
> diff --git a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
> index c5e3870b8871..ff668f5d8afd 100644
> --- a/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
> +++ b/drivers/net/wireless/ath/ath10k/qmi_wlfw_v01.h
> @@ -553,12 +553,38 @@ struct wlfw_mac_addr_resp_msg_v01 {
>  #define WLFW_MAC_ADDR_RESP_MSG_V01_MAX_MSG_LEN 7
>  extern struct qmi_elem_info wlfw_mac_addr_resp_msg_v01_ei[];
>  
> +#define QMI_WLFW_MAX_NUM_GPIO_V01 32
>  struct wlfw_host_cap_req_msg_v01 {
>  	u8 daemon_support_valid;
> -	u8 daemon_support;
> -};
> -
> -#define WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN 4
> +	u32 daemon_support;
> +	u8 wake_msi_valid;
> +	u32 wake_msi;
> +	u8 gpios_valid;
> +	u32 gpios_len;
> +	u32 gpios[QMI_WLFW_MAX_NUM_GPIO_V01];
> +	u8 nm_modem_valid;
> +	u8 nm_modem;
> +	u8 bdf_support_valid;
> +	u8 bdf_support;
> +	u8 bdf_cache_support_valid;
> +	u8 bdf_cache_support;
> +	u8 m3_support_valid;
> +	u8 m3_support;
> +	u8 m3_cache_support_valid;
> +	u8 m3_cache_support;
> +	u8 cal_filesys_support_valid;
> +	u8 cal_filesys_support;
> +	u8 cal_cache_support_valid;
> +	u8 cal_cache_support;
> +	u8 cal_done_valid;
> +	u8 cal_done;
> +	u8 mem_bucket_valid;
> +	u32 mem_bucket;
> +	u8 mem_cfg_mode_valid;
> +	u8 mem_cfg_mode;
> +};
> +
> +#define WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN 189
>  extern struct qmi_elem_info wlfw_host_cap_req_msg_v01_ei[];
>  
>  struct wlfw_host_cap_resp_msg_v01 {
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
