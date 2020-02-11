Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71E0158A2F
	for <lists+ath10k@lfdr.de>; Tue, 11 Feb 2020 08:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=koqwMjL6TiwCAje+BhMO/4jukbDjS89qR+IBNXPQcaM=; b=u6gw6WtNWlxQW29O22gjPw6oL
	gkVpzjUhb9tLU7jJu4UmDF/KJthlg71OoVN5wQJgNGFeUaA14o+1mtOeD/VjXPcwWsT1P8is+QGkA
	iCHVHxiktPI983Ag2FCSHTCm9SjKGR+a4L+MFSVYaqlTDa2RjhNpHjq9Nd/swx96vp+40HNc9X2KH
	HwFykrv00nkFnd/se9Bcp0RgIIEN5EkhF6blOUq7MDWjIwwkqRpSnW+9tK/NAiWAF3h9G2f6nxZGE
	/CTTEaonrrurGS4xsffZGokq9Piju+JHZsT+ko+2mBdsT4bz5+ce0lPUJTrWphypdwiegBbxkFb1s
	jvUDYT8mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PaR-0000oq-K1; Tue, 11 Feb 2020 07:03:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PaN-0000oH-WA
 for ath10k@lists.infradead.org; Tue, 11 Feb 2020 07:03:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so5019795pfn.4
 for <ath10k@lists.infradead.org>; Mon, 10 Feb 2020 23:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YZSoX/T69rQ+Ck7xhZRWSOsSLw5fJMwxFZcL7ir96Rw=;
 b=Kmc4/Zl1GoI41XIC0TSseAU7S8vIfxo0vToR33StTc/YtOEm4UcyLFr7oE/U2EkjH0
 O8vAUNitWCeXAWfBiSYBsugXJCz9qun5wY76Rv7jjZThu5eddak8bMSwHIbfJo6kwY4w
 tI+jd3g6u1+nobglsNbL8UX4l9qbQcFXbe81Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YZSoX/T69rQ+Ck7xhZRWSOsSLw5fJMwxFZcL7ir96Rw=;
 b=HspVNqD7VNPEY5i0xcmztJtmmpN1h2QNq8ZKvBCZK8MBSvgrw3MyBWrmfL/NOuNpJ4
 gQfftA3AryYmnpt4DvTLd+2SN/cHQrHEk7uE1q3wY/eHzuqvCgIyAHsHZDOtp6w/oFMd
 Qbdt2jZQtxQTpG2ZlFvNQgGmUeT6x5q+Fv/5VB66O87RJv4OAgzXShh+pK8Y1svpSEx8
 8Vv+Q3o3EX4JmMWMvXHfcu4Zzucv4f4AtSIFKsPTigQUNVt+tC/LS/xSyDaheTq6IXP4
 33191lN82fT1Ug5TcywAtN1icFMZvf7G4Brrlnz2P05c0kjTdaIVgoTcKYzJdZ5mQ67s
 iNEQ==
X-Gm-Message-State: APjAAAVEP1tU6bSn9K1QXOUy8HH65Hpv5AeCZeVdFnmNMB4MCFheY/0A
 /HG59cFWNXqcK8Yj+zSzQhxP1u1rZJUGeQ==
X-Google-Smtp-Source: APXvYqxixAyN5h2Jo4CX6YxMuAHF3JVKqsZrJj2xcehzsd8p5iogyxGRKyJOY3qvdpJ4Gsgaj5fVIw==
X-Received: by 2002:a63:7c4d:: with SMTP id l13mr5498898pgn.275.1581404633807; 
 Mon, 10 Feb 2020 23:03:53 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:70db:a5:26c3:9423])
 by smtp.gmail.com with ESMTPSA id k1sm2791653pfg.66.2020.02.10.23.03.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2020 23:03:53 -0800 (PST)
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
To: Wen Gong <wgong@codeaurora.org>, ath10k@lists.infradead.org
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Message-ID: <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
Date: Tue, 11 Feb 2020 15:03:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_230356_064792_F5C86295 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 11/28/19 6:30 PM, Wen Gong wrote:
> ...
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index a182c0944cc7..c6c4b2a4d20f 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -543,7 +543,35 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
>   
>   void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff *skb)
>   {
> +	struct ath10k_htt *htt = &ar->htt;
> +	struct htt_tx_done tx_done = {0};
> +	struct htt_cmd_hdr *htt_hdr;
> +	struct htt_data_tx_desc *desc_hdr;
> +	u16 flags1;
> +
>   	dev_kfree_skb_any(skb);
> +
> +	if (!htt->disable_tx_comp)
> +		return;
> +
> +	htt_hdr = (struct htt_cmd_hdr *)skb->data;

skb is already freed on the above line (dev_kfree_skb_any) but is still 
used here, should the dev_kfree_skb_any be moved to the end of this 
function?

> +	if (htt_hdr->msg_type != HTT_H2T_MSG_TYPE_TX_FRM)
> +		return;
> +
> +	desc_hdr = (struct htt_data_tx_desc *)
> +		(skb->data + sizeof(*htt_hdr));
> +	flags1 = __le16_to_cpu(desc_hdr->flags1);
> +
> +	ath10k_dbg(ar, ATH10K_DBG_HTT,
> +		   "htt tx complete msdu id:%u ,flags1:%x\n",
> +		   __le16_to_cpu(desc_hdr->id), flags1);
> +
> +	if (flags1 & HTT_DATA_TX_DESC_FLAGS1_TX_COMPLETE)
> +		return;
> +
> +	tx_done.status = HTT_TX_COMPL_STATE_ACK;
> +	tx_done.msdu_id = __le16_to_cpu(desc_hdr->id);
> +	ath10k_txrx_tx_unref(&ar->htt, &tx_done);
>   }
>   

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
