Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A10F995E
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 20:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bb8FogGJk4HvU0Gop0ZPe2/8qJkMyMxTdzbQig2rHxo=; b=doR9pzdnfKNNWZ
	c1ThrN2aFeJewngyxjfR8M9tFpXtgNGOOxNsNDvWitABVfsaWkoPQ41ItkDjTB0mau1EKjCOaPPbt
	6UJa3hi77r7SFg7ndGNLRlyGRv+IpkKB86v0o++KtuxOuxcwWHFvHktUmGy1q84hyIPMIYJIxJk/1
	7ZxlPVhQfnvXu9sfStAKxcywSiXS2Po4f3Uus6QJqAVE+kXLr86tp4nZqfEIHUbN7pn28pkkpeEQ2
	rzJQMDxseO8CoPqQJvtQaOfJcq8lrOE07G69jk/ZEcoHonqw4f81O/6c6jpeQcvVjhiOZEMHv5HhT
	P9y5k2MV8kGihGGnXt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbWi-0005Nh-H9; Tue, 12 Nov 2019 19:08:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbWe-0005Mn-PJ
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 19:08:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so12460576pgt.7
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 11:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BR4ymyy2vKO2uYqxjB3mPPNwSRoqEyTEGiX+v5/Slpg=;
 b=mVOnRN1VFG1LQezT4n1aeleww9wgfdVf1EnGVEdr7UvuTM41Q68FBfeDADhsOrzeUb
 33AfMamI/TexG3RQ1sGCIRtweUATCVoVgdDOudYh19VgpC+W0BMmg1E1Hhh7JlWEUPqt
 NOQ8EeVvFx9SV2WtjU/Zq0Ap+MrWcohYDikzh/vOYlIInFOuGeBl7loPQf+vdGmPumcE
 HhARyUvSUx+DMBqIoGzFSnU7e5845u+9IsgGBw+LIvCc6P48vcNHEAeDVPIXLQYdFhq7
 QkK7D8It9DTCBrHT3JlEuz7J6vP775/VOpRRj1uonqBcFgj7pZnk0fGnalzeaFIi73n5
 ht8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BR4ymyy2vKO2uYqxjB3mPPNwSRoqEyTEGiX+v5/Slpg=;
 b=jPJ6pQG2ouoCFhaO8Y9yYMOfETANR45XA/r+2m47pV+5yHEC27DXpqsYvkTmHr0W9M
 BIvd1XrOeWw/Ok/ndIchGkApqck6U01+Y46bjp7/HMP6BQ5GW/ZFVskx7MiGcR2pW8A7
 QUKAZeFPKjjK2krA9WHANJ6yzLUnibXay9hkWL2jcf+g//QFxyBfXlUgzdytVaaPQO8Y
 6ggK2Fe7OdTdVEfHwkIOPCl6pHzpSCi4IqOut3EGTJebektAqT4Np4OSZS1bcXyXB40N
 8wZ49lHRm2rSIpU56kAxRJJU3cChTnlYZIXtvwH6HRGZITGxxUvKZoJlFtNpMeG3cn8A
 z3Uw==
X-Gm-Message-State: APjAAAVmndyq+YoxLw/Wq7kF2HU2juygKa87f+8h33Y0d09STBNxfNrG
 qM+qgjgBZ0QybU15xGjK7jPf1A==
X-Google-Smtp-Source: APXvYqy1gKPPrXY8YX4+sqitVZiIIJE+0IYMmTNjOu0a56hMa0jbdBrV/YRB4iYlDOv4vA7eF5VOuQ==
X-Received: by 2002:aa7:80d2:: with SMTP id a18mr14758511pfn.29.1573585705571; 
 Tue, 12 Nov 2019 11:08:25 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u8sm8351425pga.47.2019.11.12.11.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 11:08:24 -0800 (PST)
Date: Tue, 12 Nov 2019 11:08:22 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
Message-ID: <20191112190822.GA3140946@builder>
References: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_110828_855702_CC66E298 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Wed 06 Nov 15:47 PST 2019, Jeffrey Hugo wrote:

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

Perhaps worth adding a comment in the code as well, to describe what
scenario this relates to?

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

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
