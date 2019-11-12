Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E28F8B55
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 10:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnOGs7K3vK2vpYfn2UxbY/mdkgcYQp7P4N1DzsT4FJo=; b=HD8VUJxcPLQzoP
	+5tafzZQhOXFP7uEQKsQL1P7a9mH5ftfMJSVdcg+xu0Mhkz/IGEYSIR11eiDnrSuX74Kn/KXz1jFA
	MbtuZNfXTBYqx8gYJUtYWYc019bckrEl2M8KYbhMO2c3xS+5Il23Dl5L2cjLm+sHokEpamCHvQM/T
	OAd8t+AnZMfX4bPP0WGNqGmIhyUgym8PdwshqjhtEmJ9/stRgu9a4hK2N6ZSIjRToWGixZ5C1cQoN
	8wY5VO4ewIz6/HtAXfiMl6Bdq7pG1szwCdw8U79+9GSarwUFH98Cw3ib9OjIN5VN6if9KRQt607ip
	EBP5Ek2rjSrsMsMSiHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS6X-0000To-60; Tue, 12 Nov 2019 09:04:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS6T-0000T9-SY
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 09:04:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so2053614wmj.2
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 01:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y+xqaA+PPE83+8NKlD/ArjFhQQS4KR3/VLoI8CbMHTQ=;
 b=OrhbC81KkHxApm8Cyz6wofLkMe30UUYrZ7SAIxLPpbWOQjNRJ+9i1INbWFIyA56cLo
 +BPL+Bu+q910hA2jR8t+LHkEUJg2RtT1luLd+cTyw1q6vBbZW+00jX28LiDUftYcJcNz
 pr7RWL8NXHx8ktgGMGhfU5ikoMwf2CapBm6n8L8DxBPB/Km+TB9z7aLDt2FfNr+yauBM
 QnSiiLl9ZxWQ0RT6f/bEBdg/14II3kFpNt7QQ9dJFZRnddNZqxa4EcFIdKdtAIriqmKY
 FF/bK5CEC1RZK71LX2MpRDEw7FcfVrB+k27pH+ptjJ3xINLTCK/2TbYmctl9G565MNs4
 7rQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y+xqaA+PPE83+8NKlD/ArjFhQQS4KR3/VLoI8CbMHTQ=;
 b=crC2xCroMYVwWxMd8h2TLGx4JAOig5EErL8qWPAxrDoSzs+ntPT6GHJIt75OZWi0Iq
 PajrtQ5IXocVcGIHq7oT2CPqRsxSXKoiVh/ogMqeYGRLLrANsmDG4RluXtNya1v6Fqqd
 QoOqAqV16eO24Tjl8xgS97KWh/6jkq/vox4Tifr1PJ6qIvysvfeoJ1mGiPEokZ08tiH4
 C6QppqSCeu1Nj0bJJzjOhGnRph9jz0P1RLm2IyyzJt0uzkRTVzy4QMx2PbA7W4Duh5Dh
 NyOPaPk4axP/BBuOvjy5BItRGuXvodBs3sy8sW5gY09z9iTal1GotD5C5zt+iSNt6hfn
 L0ow==
X-Gm-Message-State: APjAAAVPTXtVqZq64oIRxWOwTqZSRyhOnv0Ba24uF6zZnCcNXHQ5AkZg
 3NFXcpuGFFo2inFxaGYXRoXdaQ==
X-Google-Smtp-Source: APXvYqzAugh1NnuNK1H/GCm69vuRvJ84ZPDmwfNcjCKH7OcWchiOigPgyE3JxWJgXjnInQMy6zlEMg==
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr2715803wmj.106.1573549486843; 
 Tue, 12 Nov 2019 01:04:46 -0800 (PST)
Received: from netronome.com ([2001:982:756:703:d63d:7eff:fe99:ac9d])
 by smtp.gmail.com with ESMTPSA id b17sm20011773wru.36.2019.11.12.01.04.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 01:04:46 -0800 (PST)
Date: Tue, 12 Nov 2019 10:04:45 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
Message-ID: <20191112090444.ak2xu67eawfgpdgb@netronome.com>
References: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010449_922466_18239B29 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:47:12PM -0800, Jeffrey Hugo wrote:
> When the BDF download QMI message has the end field set to 1, it signals
> the end of the transfer, and triggers the firmware to do a CRC check.  The
> BDFs for msm8998 devices fail this check, yet the firmware is happy to
> still use the BDF.  It appears that this error is not caught by the
> downstream drive by concidence, therefore there are production devices
> in the field where this issue needs to be handled otherwise we cannot
> support wifi on them.  So, attempt to detect this scenario as best we can
> and treat it as non-fatal.
> 
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> ---
>  drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> index eb618a2652db..5ff8cfc93778 100644
> --- a/drivers/net/wireless/ath/ath10k/qmi.c
> +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> @@ -265,10 +265,13 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
>  			goto out;
>  
>  		if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
> -			ath10k_err(ar, "failed to download board data file: %d\n",
> -				   resp.resp.error);
> -			ret = -EINVAL;
> -			goto out;
> +			if (!(req->end == 1 &&
> +			      resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {

Would it make sense to combine the inner and outer condition,
something like this (completely untested) ?

		if (resp.resp.result != QMI_RESULT_SUCCESS_V01 &&
		    !(req->end == 1 &&
		      resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {

> +				ath10k_err(ar, "failed to download board data file: %d\n",
> +					   resp.resp.error);
> +				ret = -EINVAL;
> +				goto out;
> +			}
>  		}
>  
>  		remaining -= req->data_len;
> -- 
> 2.17.1
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
