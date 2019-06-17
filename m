Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E0448833
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 18:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3yuQnSYbZ3yVRPKsQsnr2P7m0o6sMHbdqqgPGbHJzp4=; b=ZPXall//iGpbSNPQbBUVES3oZ
	mOSOOV7Zg9p2e4RJnYANriV46cWvxjCr8rtxqcLZq+1OzfmhhKruFuYoKv3ZQrVY2F68eHX8ntaYY
	mX4y/nTmq4+JApiUJ8dCGuxK27lGWxdnimjituJNoRoe7CeTrIQMEulHc6ic6fH6tEpOLiByyyyRQ
	VLQX6wXDiaMMe+hecyisweCUqSntljycTOZ37PFIu7AVlI1sejJyfd9tJ9+oUKbFp2NtIAUlUjhs2
	lr/L/TzWrAQXapVlYFa7yNbr9reMo+fsSIJopW+SE0JIoMSrIv5bwQ9+HVfMgwkIMMh7HPZ+MBb/4
	zwDgxPpzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu6u-0004pj-PX; Mon, 17 Jun 2019 16:03:56 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu6n-0004oz-OB
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 16:03:51 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 934D3137560;
 Mon, 17 Jun 2019 09:03:41 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 934D3137560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1560787426;
 bh=qihpQ4YKC1KRJjLDZybHBWXT8408PGMnM4qg5Rm7KFA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=rfDc/qpVAlPnKwIZc1ZWo9TY/Op2f2us3q7+pIKREi7w3andOvWefCRLNTTtEhjaE
 0pGlm+pVSEiUTIPVZ/28S3z0fSWrrXYw0GeXCi6NwdHMuSiId7UlyBtZprJgT01Kw0
 kcv5oUkw4ucKhfTLrCbRh7nFbH1WrRGohXI77Z1c=
Subject: Re: [PATCH] ath10k: add mic bytes for pmf management packet
To: Wen Gong <wgong@codeaurora.org>, ath10k@lists.infradead.org
References: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <136d04d4-671b-8dde-2abd-63070b07bd26@candelatech.com>
Date: Mon, 17 Jun 2019 09:03:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090349_880156_3CA03E65 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 6/17/19 12:37 AM, Wen Gong wrote:
> For PMF case, the action,deauth,disassoc management need to encrypt
> by hardware, it need to reserve 8 bytes for encryption, otherwise
> the packet will be sent out with error format, then PMF case will
> fail.
> 
> After add the 8 bytes, it will pass the PMF case.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00005-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>   drivers/net/wireless/ath/ath10k/htt_tx.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index d8e9cc0..7bef9d9 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -1236,6 +1236,7 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
>   	struct ath10k *ar = htt->ar;
>   	int res, data_len;
>   	struct htt_cmd_hdr *cmd_hdr;
> +	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)msdu->data;
>   	struct htt_data_tx_desc *tx_desc;
>   	struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(msdu);
>   	struct sk_buff *tmp_skb;
> @@ -1245,6 +1246,13 @@ static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txm
>   	u8 flags0 = 0;
>   	u16 flags1 = 0;
>   
> +	if ((ieee80211_is_action(hdr->frame_control) ||
> +	     ieee80211_is_deauth(hdr->frame_control) ||
> +	     ieee80211_is_disassoc(hdr->frame_control)) &&
> +	     ieee80211_has_protected(hdr->frame_control)) {
> +		skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
> +	}

I was looking at mac80211 code recently, and it seems some action
frames are NOT supposed to be protected.  I added my own helper
method to my local ath10k.  Maybe you want to use this?


/* Copied from ieee80211_is_robust_mgmt_frame, but disable the check for has_protected
  * since we do tx hw crypt, and it won't actually be encrypted even when this flag is
  * set.
  */
bool ieee80211_is_robust_mgmt_frame_tx(struct ieee80211_hdr *hdr)
{
         if (ieee80211_is_disassoc(hdr->frame_control) ||
             ieee80211_is_deauth(hdr->frame_control))
                 return true;

         if (ieee80211_is_action(hdr->frame_control)) {
                 u8 *category;

                 /*
                  * Action frames, excluding Public Action frames, are Robust
                  * Management Frames. However, if we are looking at a Protected
                  * frame, skip the check since the data may be encrypted and
                  * the frame has already been found to be a Robust Management
                  * Frame (by the other end).
                  */
		/*
		if (ieee80211_has_protected(hdr->frame_control))
                         return true;
		*/
                 category = ((u8 *) hdr) + 24;
                 return *category != WLAN_CATEGORY_PUBLIC &&
                         *category != WLAN_CATEGORY_HT &&
                         *category != WLAN_CATEGORY_WNM_UNPROTECTED &&
                         *category != WLAN_CATEGORY_SELF_PROTECTED &&
                         *category != WLAN_CATEGORY_UNPROT_DMG &&
                         *category != WLAN_CATEGORY_VHT &&
                         *category != WLAN_CATEGORY_VENDOR_SPECIFIC;
         }

         return false;
}

Thanks,
Ben

> +
>   	data_len = msdu->len;
>   
>   	switch (txmode) {
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
