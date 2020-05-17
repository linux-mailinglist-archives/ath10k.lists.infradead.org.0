Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627FA1D6555
	for <lists+ath10k@lfdr.de>; Sun, 17 May 2020 04:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fFi+b4qFplPrUJNRA+GjOEqplPa3zbOx2VTQHIw7WQg=; b=Iew2sFfZWoeY+u3R8e8iOKmAy
	LnEe/bw4g/aOTfMK+kloHFdbcTy/edYyZV+LK28A/lXLnIOlTVPKwmRdNQ1cFhZpwYEKdKzANIPbC
	0ptRRgLvuusxEdJ5sM+h7FwJ7tFV8L7/cOhZpRrMyOAsTePfj1/UTghcKL34yIuFemxkvkVDdzklK
	vdvsNHby3Ux42rXXDsszoDt7icf8uzVw8gzCaGX8jkSIMPWfyo8jOAqaeu1+KRPlqySP9BQInYoz2
	J2FDrlBxVkxfPQ3yfKmh2J4Gf07gN8TCoKbttv78zCMh+nf4bPwdPGHwxhgLAV9GoLKvdnzA8aTEP
	JcTALqWDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja90J-0004kz-3s; Sun, 17 May 2020 02:26:15 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja90B-0004he-8Y
 for ath10k@lists.infradead.org; Sun, 17 May 2020 02:26:08 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so3004684pjb.3
 for <ath10k@lists.infradead.org>; Sat, 16 May 2020 19:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZwOdLRAvpywpS5KSJQV24hlDOCj/cM29xK3RoHEqVVY=;
 b=QHfVbSEvVEz6DT23mdFerdywNKqNjmjW+DUPMe9eCRBLv5sCICUNznhm1qR14yjVSs
 OXyQYRPUoKIUhJgTXNeD1cpepWktYLKzQKNyl3/zqZWwzWFtRmXbQXEo8BV10hTVWKCV
 sxkp5bKk6XGK33k2TGzoc0IbMEsiJ5bc7XWCZb4GCr5k7XHt/DqqHuSzjhPr+J6LksIr
 0u+7a36Ske87Sv2bmNhypec5xh+VkVySZ7pKI6zrRa+3QRwyzUhJu/tKsI/Ei9UKt4Ft
 6c2yCpg+QCHM5qHsaPRhQhSSY1neseBGCZMPuWsnNtMtsQ6Rl7gWlKIYf0fVz4OE+Qii
 4soA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZwOdLRAvpywpS5KSJQV24hlDOCj/cM29xK3RoHEqVVY=;
 b=jwff4zhtizkkPdODNPBtEkjwKwd3FXspoKBq5Ct4hXkLlNqmZzunxh4H/7vUmoEMcV
 O5r1PrOsmm4afJ0kww/NOKTodjN0fnzjjqkg1rhuMR7CMtEb8c8yK6g3iPbfPdKfqpzs
 9OMpW5d6VNy9LThePI/5a1wjjwgyPe84MM+AlEPakG9b7Lu4aC3bJWMWjQh9u0EBNReG
 MEvLdPbiD/8oQxOyLLEqBAFHMio5AR3wxhTuEiPQ6aPahly8hKGUN+VzquR963TexyhY
 nFYo+WUNy03AJZTasMzZQHocriYy7dDMt2K4+kI3fpc4PyKq4tHvpQKcfvjmXFr9nKAY
 WBnA==
X-Gm-Message-State: AOAM533w7FrL/95m+PnBzlF2GeLc+DLgezzA0aacemIyqKquHS9lMEOI
 q+Q4zw1CQ7OaK+eoyqwoG4I=
X-Google-Smtp-Source: ABdhPJw5rz6JW1vg5rskikvCpfHsEPm/SyVrKCCArYIIjQxYoNV1U+paJ9trzpz1pu2ELsViQmttVQ==
X-Received: by 2002:a17:90a:7046:: with SMTP id
 f64mr10651193pjk.205.1589682366517; 
 Sat, 16 May 2020 19:26:06 -0700 (PDT)
Received: from [10.211.55.7] ([112.209.98.11])
 by smtp.gmail.com with ESMTPSA id n16sm5239127pfq.61.2020.05.16.19.26.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 19:26:06 -0700 (PDT)
Subject: Re: [PATCHv4] ath10k : Fix channel survey dump
To: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 ath10k@lists.infradead.org
References: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
From: John Deere <24601deerej@gmail.com>
Message-ID: <bee1439c-de98-dbf0-ee82-88620ecc560a@gmail.com>
Date: Sun, 17 May 2020 10:26:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_192607_298550_D9E83D3C 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [24601deerej[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


On 5/7/20 11:03 AM, Venkateswara Naralasetty wrote:
> Channel active/busy time are showing incorrect(less than previous or
> sometimes zero) for successive survey dump command.
> 
> example:
> Survey data from wlan0
> 	frequency:                      5180 MHz [in use]
> 	channel active time:            54995 ms
> 	channel busy time:              432 ms
> 	channel receive time:           0 ms
> 	channel transmit time:          59 ms
> Survey data from wlan0
> 	frequency:                      5180 MHz [in use]
> 	channel active time:            32592 ms
> 	channel busy time:              254 ms
> 	channel receive time:           0 ms
> 	channel transmit time:          0 ms
> 
> This patch fix this issue by assigning 'wmi_bss_survey_req_type'
> as 'WMI_BSS_SURVEY_REQ_TYPE_READ' which accumulate survey data in
> FW and send survey data to driver upon the driver request. Wrap around
> is taken care by FW.
> 
> hardware used : QCA9984
> firmware ver  : ver 10.4-3.5.3-00057
> 
> hardware used : QCA988X
> firmware ver  : 10.2.4-1.0-00047
> 
> Tested-by: Markus Theil <markus.theil@tu-ilmenau.de>
> Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
> ---
> v4:
>   * updated signed-off-by
> 
> v3:
>   * Rebased on TOT and added Tested-by
> 
>   drivers/net/wireless/ath/ath10k/mac.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index a1147cc..9330b52 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -7275,7 +7275,7 @@ ath10k_mac_update_bss_chan_survey(struct ath10k *ar,
>   				  struct ieee80211_channel *channel)
>   {
>   	int ret;
> -	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR;
> +	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ;
>   
>   	lockdep_assert_held(&ar->conf_mutex);
>   
> 


I have tested this on a QCA9980 device on a TP-Link Archer A7v5 with the 
firmware version 10.2.4.70.70.

[root@Archer-A7v5 ~]# uptime
  10:18:40 up 7 days,  3:52,  load average: 0.03, 0.01, 0.00


It has been working fine:

Survey data from wlan0
	frequency:			5240 MHz [in use]
	noise:				-101 dBm
	channel active time:		593724580 ms
	channel busy time:		9706985 ms
	channel receive time:		2053580 ms
	channel transmit time:		6473058 ms

Tested-by: John Deere <24601deerej@gmail.com>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
