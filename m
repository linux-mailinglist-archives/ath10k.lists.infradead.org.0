Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8481D6554
	for <lists+ath10k@lfdr.de>; Sun, 17 May 2020 04:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fFi+b4qFplPrUJNRA+GjOEqplPa3zbOx2VTQHIw7WQg=; b=bk6Mc1q66Mn0NW50qkPHs+QQa
	H37HoxuP6XXJni25YZK07APAaQLWE3vO3LHc2Bk6krBY1Bx/IOpV9UOkri9A6J7nHPm4yvL1sqlJr
	yDIolwDzOhJZpi46p3550+RBwmldQZywiubNi/WSOT35goIvZ+/JjRJnJzKQ+SGweEu5daVP2aoHQ
	f8Kbu5HEWYExM94vra5Of46/I3IFfAf5+n8pc4UfHZpXWdrxe1J2C0hmlViiW4pp2EVvR1Pjnz7Fq
	qgOjPC+9h2xHZXLujLyTJqtiZqj9FuXu4uAaFJC5/nY+swoZ4WNKUfYDybUHFtqU60SWou81XYPrX
	QGF/1tkog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja90D-0004hz-DC; Sun, 17 May 2020 02:26:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja909-0004h7-J8
 for ath10k@lists.infradead.org; Sun, 17 May 2020 02:26:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id b8so2969892pgi.11
 for <ath10k@lists.infradead.org>; Sat, 16 May 2020 19:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZwOdLRAvpywpS5KSJQV24hlDOCj/cM29xK3RoHEqVVY=;
 b=emhST+MX89k9qmf7vkyGfPWjnfUERVxmnQrAXJkoMulGTi3izdD5RMz+O08lv/V4rc
 3DcyJnkmTwB77yuG6Bgfi8jdU5j8rXVz9iyQgxuyHWcg/FdXeD/FPLRZpcTOUrTvCboR
 HVeE3XW7O0S9rAk04H2ACSF8cvS0QoHmtmHGZyt9xV3rGFGiEZsCO8BzbG1fJTRdf/i+
 tF0GF3vVdosrKHONtPnDQi7kh2mNfz5fESIYYBjGLqNU9aqpaPwgp9p9+Bn7jTSa0V72
 KuT+G1azxyAmBWhc7gLcW9KutX7ZFYC+i+Z1GG8baias4bJMzVBbfIDJ65ciCYDnKN7Q
 +PiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZwOdLRAvpywpS5KSJQV24hlDOCj/cM29xK3RoHEqVVY=;
 b=aaAU4tnT9sVbTTHavINWmxXWdCLnqoaBpSQt5qAUdt4AV7ryiKFIlDi5Mf3rtexCny
 LfmuXy0UI0NMb4rWUDDuEKuQqT+Jov7vD2eJin+uHMk0ALD2SH/WN1MXYJivsTCc846d
 uTv5do81Mf0OerUD8nLwSMdCQjT0Hd2dEt0UqQzxz6erVRo3nmAJfNmx9Q9/YL/m0vX/
 8Vi0gLxyic+GcnzulM/qVA7ExWI/g0rO0s5PpHetO8aWPQM+DyhG2j2W2yuL4rHPWMhh
 +GX9VaqwNuPCusXgMUNHbhlG6tj14yEogut/qVoiJjOjPAIHATMAEcsfb4hb58FDCJOw
 cv6A==
X-Gm-Message-State: AOAM5334HzHC6aWprN2v6joDZbSX3qkJGV+qAAsvaE/1kiWpHW1nipEy
 2iOJ5muaHssSRrpmdgJkbyk=
X-Google-Smtp-Source: ABdhPJzabQluLs+prH8Qg4LrI4YiZfIFvmKIwmbo9yMD46wbwp5cKSY5tGxMeYxLMW+GStz77g88yg==
X-Received: by 2002:a63:3206:: with SMTP id y6mr9407775pgy.68.1589682360058;
 Sat, 16 May 2020 19:26:00 -0700 (PDT)
Received: from [10.211.55.7] ([112.209.98.11])
 by smtp.gmail.com with ESMTPSA id x62sm5159477pfc.46.2020.05.16.19.25.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 19:25:59 -0700 (PDT)
Subject: Re: [PATCHv4] ath10k : Fix channel survey dump
To: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 ath10k@lists.infradead.org
References: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
From: John Deere <24601deerej@gmail.com>
Message-ID: <edbb46d6-d7c1-7317-fc1f-cb06bc850c8a@gmail.com>
Date: Sun, 17 May 2020 10:25:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_192605_685865_99E1165B 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [24601deerej[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
