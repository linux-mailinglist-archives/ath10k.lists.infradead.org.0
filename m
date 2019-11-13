Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC95FBC08
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 23:59:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e22B0lp7lvj+KOCHmbDiuexmWAvxyMi4VsDXEBmvLeE=; b=UuL5B3YkpyPOd2
	yy9vn+jp4VrY3sFmgc22qxRSxkDNoTwe/hA/+/AqjC5zuwBYJOyHw/gReDp7TmAVORaG8JjsvLhjS
	+z50sdcFicaMboxovNMNnmeVnFUD1jbZGRVz64YElzs3HsTPieZFBOptZ1Hk0Ub9fHqpFnYTIPE7s
	3kEWArKrks2JHSJ+s9/oNoel6HKQjAaDH/Qfuufh0Ojd94VJq2Qd6+iZ/JstqByg0ifT6oHO1OGz4
	ZASiB48mbtEaz0b5mr2JST1bC8vBcaVvbEDz19qWrkGD9IJAmNiE1cnutQZ/bu0jU7wS8bNaQIbSV
	IxSqHg70a1/zF+PPR20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1c4-0007Ag-71; Wed, 13 Nov 2019 22:59:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1c0-0007A6-3h
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 22:59:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id n13so2695922pff.1
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 14:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x0ZnUt6kpEl8U4BFQc25DnqaMomOkgg87tNLp5MJobU=;
 b=R0eY7mrKlGW/OVdYhbPMbOVBf7QxU9dLQqSt3WiiDoDKS8ojUQSuj1cJ5zzMazX1hb
 JTqeimnK15zfrigBOGnw0Bq7/sqQhFU7tOw6X+B5iKTiTR7mMr7rGAtEACGGrXe9fPkb
 NkZK+FmDj/EJuSRG5oerEwQbu/cKivtP2hZ5jDuw0hXdKcfw/7q15elq09GfpcEcv4K8
 nOafiv1azzgJ4A5F06hFgXH+xgleCBpIXU0JUe3AqkqfY8rTXWJc/yCQJ3i0pkFvBJ0R
 kTH0JQ6jMtGy9iIKtMI6NdCt3sBNByqTV1Ht2VTohQOqc9LKt4pbZXkupbvBxiGoVq7T
 tRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x0ZnUt6kpEl8U4BFQc25DnqaMomOkgg87tNLp5MJobU=;
 b=bXJOnH2Etb+2U2sQsqNgyADecqTObSbCiZX4ZMBT77jugQ1C9HKxVYKQ145AkuiGYv
 snalWgSA+b+pzVUCNtrXHNRiULHbIX5SgNq2w03mhJ3F4DTsfYCpY2Hr4gCu15ULrbGD
 ABIcwYXDD5Bo6EYtPHW6YXa+fppGhErPvAft/RHdMiymQQe6K8pSvTd2ZMYfFzihRjhe
 hXWpEjdFKiwOF8jwFxa3CaRSGIYVxqMPH7mKD2mJtLM4WDcP1f/ikL0Veis4GfxNz+qH
 kwyXtiUT8MXH1f/yyxaphTIPB9p0TXJM/dknXnW6TJXi6NNEVd6o5jLHgz9IAsA3BRv7
 ddSQ==
X-Gm-Message-State: APjAAAW864pEcb/Ai44qCOYFdyZA/W1VSDS1gIaTk58bjGCHf6cW2UAH
 XeRA/qqWjTmvARFRzsOWfklPQg==
X-Google-Smtp-Source: APXvYqxB6VnLMk6EwZYMzfe4Eo4jDzf5CFGuPJT1iqW0GcmV//9bJ9nx8dCxRAqDYoD6u/PuzXc5Nw==
X-Received: by 2002:a17:90a:3264:: with SMTP id
 k91mr8088584pjb.23.1573685981680; 
 Wed, 13 Nov 2019 14:59:41 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id h13sm4557008pfr.98.2019.11.13.14.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 14:59:41 -0800 (PST)
Date: Wed, 13 Nov 2019 14:59:38 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Handle when FW doesn't support
 QMI_WLFW_HOST_CAP_REQ_V01
Message-ID: <20191113225938.GA3727453@builder>
References: <20191106233130.2169-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106233130.2169-1-jeffrey.l.hugo@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_145944_181209_DA88F63F 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed 06 Nov 15:31 PST 2019, Jeffrey Hugo wrote:

> Firmware with the build id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0.2-XXXX does
> not support the QMI_WLFW_HOST_CAP_REQ_V01 message and will return the
> QMI not supported error to the ath10k driver.  Since not supporting this
> message is not fatal to the firmware nor the ath10k driver, lets catch
> this particular scenario and ignore it so that we can still bring up
> wifi services successfully.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> ---
>  drivers/net/wireless/ath/ath10k/qmi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
> index 545ac1f06997..eb618a2652db 100644
> --- a/drivers/net/wireless/ath/ath10k/qmi.c
> +++ b/drivers/net/wireless/ath/ath10k/qmi.c
> @@ -614,7 +614,9 @@ static int ath10k_qmi_host_cap_send_sync(struct ath10k_qmi *qmi)
>  	if (ret < 0)
>  		goto out;
>  
> -	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
> +	/* older FW didn't support this request, which is not fatal */
> +	if (resp.resp.result != QMI_RESULT_SUCCESS_V01 &&
> +	    resp.resp.error != QMI_ERR_NOT_SUPPORTED_V01) {
>  		ath10k_err(ar, "host capability request rejected: %d\n", resp.resp.error);
>  		ret = -EINVAL;
>  		goto out;
> -- 
> 2.17.1
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
