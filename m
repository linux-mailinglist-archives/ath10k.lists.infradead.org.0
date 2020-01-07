Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E96B13201B
	for <lists+ath10k@lfdr.de>; Tue,  7 Jan 2020 08:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Idnl1SzRFX30JYPumhi+sveE7qHDHeu9r7YwZpbK1Ns=; b=WkkO/WcXi3aKMdYO2bCqVmbZZ
	4NXPzpuQ00eV+CaB3d8Xa/4mNw0WjnlT9VYodJSUFnURsqYVcssWvIhUL96vNG10JWbYehNK7/Vz6
	hF90QE+xFtSJV0ez4axzVN4OwNzzJct0tjlHM9LvLcT0cFET149fmzR5a/Nvuu9mXYMrfvMctIvrB
	r2t0x5oGAoMAWfgzI60REwapb4zXr9ho0zIQAfYp+DMySYSUxePlHKSjSQQQv9/SiffIRvZdJUV+r
	ZMAY98AppH2sK/Ql1wJ2S7TwafFCHt3/7QzSV3FPiPZcGhJIfEIc6UVBTomdSdmW9bOkzJBoXVuAA
	J+Wk3BYaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioiqr-0002NV-3z; Tue, 07 Jan 2020 07:00:29 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioiqm-0002Mu-QC
 for ath10k@lists.infradead.org; Tue, 07 Jan 2020 07:00:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578380424; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=nwrXD85GM7JS1yms6oB4ZFld/jMasK8YbTRh3BalevY=;
 b=g1IpxB8pq28CneHjQ3mU/hTaZcLTYRlvD2J6ybv29VTVCA//DfWlYeFOHwUcJrXYOEprPCRX
 fKCJ7/APpWLIkf5V2OnyxZ/N1O23Obw7PDSkOzsr2BKDghy1ipct4q6xPt2X2a8i+UtGnpqi
 jp15zGFB1qML1MDOl/3gz+JCu1o=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e142c86.7f39eb5fb420-smtp-out-n03;
 Tue, 07 Jan 2020 07:00:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 47ED9C447A1; Tue,  7 Jan 2020 07:00:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: mkenna)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9BDF5C433CB;
 Tue,  7 Jan 2020 07:00:19 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Jan 2020 12:30:19 +0530
From: Maharaja Kennadyrajan <mkenna@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH] ath10k: avoid consecutive OTP download to reduce boot time
In-Reply-To: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
References: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
Message-ID: <f1b4007f9d7e882c4ed2db67dc64cc96@codeaurora.org>
X-Sender: mkenna@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_230024_917044_58D0D779 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: Vikas Patel <vikpatel@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-01-07 11:53, Maharaja Kennadyrajan wrote:

[Maha]: Please ignore/drop this duplicate patch as I sent it already.
Regret for inconvenience caused.


> From: Vikas Patel <vikpatel@codeaurora.org>
> 
> Currently, OTP is downloaded twice in case of "pre-cal-dt"
> and "pre-cal-file" to fetch the board ID and takes around
> ~2 sec more boot uptime.
> 
> First OTP download happens in "ath10k_core_probe_fw" and
> second in ath10k_core_start. First boot does not need OTP
> download in core start when valid board id acquired.
> 
> The second OTP download is required upon core stop/start.
> 
> This patch skips the OTP download when first OTP download
> has acquired a valid board id. This patch also marks board
> id invalid in "ath10k_core_stop", which will force the OTP
> download in ath10k_core_start and fetches valid board id.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.6-00104
> 
> Signed-off-by: Vikas Patel <vikpatel@codeaurora.org>
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/core.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/core.c
> b/drivers/net/wireless/ath/ath10k/core.c
> index 5ec16ce..8fef991 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -874,6 +874,13 @@ static int
> ath10k_core_get_board_id_from_otp(struct ath10k *ar)
>  		return -ENODATA;
>  	}
> 
> +	if (ar->id.bmi_ids_valid) {
> +		ath10k_dbg(ar, ATH10K_DBG_BOOT,
> +			   "boot already acquired valid otp board id,skip download,
> board_id %d chip_id %d\n",
> +			   ar->id.bmi_board_id, ar->id.bmi_chip_id);
> +		goto skip_otp_download;
> +	}
> +
>  	ath10k_dbg(ar, ATH10K_DBG_BOOT,
>  		   "boot upload otp to 0x%x len %zd for board id\n",
>  		   address, ar->normal_mode_fw.fw_file.otp_len);
> @@ -921,6 +928,8 @@ static int
> ath10k_core_get_board_id_from_otp(struct ath10k *ar)
>  	ar->id.bmi_board_id = board_id;
>  	ar->id.bmi_chip_id = chip_id;
> 
> +skip_otp_download:
> +
>  	return 0;
>  }
> 
> @@ -2863,6 +2872,8 @@ void ath10k_core_stop(struct ath10k *ar)
>  	ath10k_htt_tx_stop(&ar->htt);
>  	ath10k_htt_rx_free(&ar->htt);
>  	ath10k_wmi_detach(ar);
> +
> +	ar->id.bmi_ids_valid = false;
>  }
>  EXPORT_SYMBOL(ath10k_core_stop);

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
