Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1877312A93F
	for <lists+ath10k@lfdr.de>; Wed, 25 Dec 2019 23:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxmtwWJiPbi8nAKYfm4WJym8BLaAZTnoGeHEnhcgL8Y=; b=m7a/XdFCRkaGAj
	wbe/htJXPo04fl5t+70NTfOK8pmVDvLLY9l0zPobjuIyBnJvHQZsTXABa7SBq/6MD3tXCmpAkuRQg
	NRt7hiHXqS0Oy8o50vJH8bXAOsmlTjgzPBrY65wMZmOHhDPcoo9CfNt8095rriubdGMjVsY+sOovz
	LxNUga9NJvirSatSiZ9GaaujhBLHScIc+M42KvnHaQGljbKNhw3yBrVmVYCbd3Lq9ytSp0IQ5hWCJ
	W8awB1uqQlYo4LaywdQBGgxIJVFXeoD0FZx9mQFOU0ENSfnULW200iqmUCo1owYY8+rc2KLuv8lZN
	+z+7oo/flz0kvwdZrr/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikFZ7-0004yG-BZ; Wed, 25 Dec 2019 22:55:41 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikFZ3-0004xp-OJ
 for ath10k@lists.infradead.org; Wed, 25 Dec 2019 22:55:39 +0000
Received: by mail-ot1-x342.google.com with SMTP id b18so8646624otp.0
 for <ath10k@lists.infradead.org>; Wed, 25 Dec 2019 14:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=80jAyJVeOXTuDUpErDnlHfp3L/JfNwepEBZzxURdIw4=;
 b=EM4EzMjCA7x6i1mOp1QgRJj2l/WUw15fnus3M+6rRaUAjahc22yyA3yJn0w35oSkWO
 zOXILFfQrhewpxeOSkn/51T+MqPCBoIMbhn6oPlxq01niSAqSK0uomj036cga4Oms7Jq
 nPOK3v8ZKfobFzZTlJXITg6In6J0Oq1AVw+mFQNhf75EBN9RHF8OGNXDa/46G1c+nvOH
 NLhOhFzCicmWz57HZJbqNqHNVbQv7QI1oizPWzkGpCF7EYjdwFH/XJNMxRXInhP01khf
 0/Np3rsW/cJTrvr0MibNOYuEmvK3RzUHulR+wx5/6e2O+7+G5uxOzjqhX1M9iajVgXSM
 gaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=80jAyJVeOXTuDUpErDnlHfp3L/JfNwepEBZzxURdIw4=;
 b=LAjHxrilJRoI8+1rrAbfbcaptksoOWWX7e5lTXsP422fcaSiAAJhVSEiNXX9+V4WkL
 9bb9TanY9DtyycHLgpZ+OV40vO2Lcx6jId2XL1wj6EGgHGQ9Qh24lXBmks04f8ZKpmlx
 y0Ax6SmpN0n4A8MPDVYYVNFRMJq6rpzvIpZfQAtR2dovv84RDPhU53oyv1GHcY4Q22X+
 /Q/TLHKZWdCYNQILWnNHbG//V59THKUji5J0vAWjxrYUJLltNrC3LkshZawCKMw0hnb6
 cts91bzdcq66bWPTDDX8xzTrnCVUdwacHEw+g1Mbpldyc8IT2Vt2tfwDEcCs6CuqBQ+l
 /kmg==
X-Gm-Message-State: APjAAAUIRfleUv4raCzDqBiU1rv58hmodGZBPwV4oyMbXS0Go8j/qPsy
 k2+AGIF8YaPeN7fEmullH2WyqkkupJjzcYOVZI7ftu3B
X-Google-Smtp-Source: APXvYqxPk3MCnzXx4k2wZwiqWJ8ttbT6p9kAjJNFaHu8Q3TSgpMB4oURBrHk2s13I/DPioK1tvmFgMe7NAx6M+U5hdY=
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr32167294otp.177.1577314534400; 
 Wed, 25 Dec 2019 14:55:34 -0800 (PST)
MIME-Version: 1.0
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-3-wgong@codeaurora.org>
In-Reply-To: <20191225120002.11163-3-wgong@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 25 Dec 2019 14:56:01 -0800
Message-ID: <CAMrEMU9ZVV-yotvH2Odn+sb1HiiL_tN_GASSeSnhAOzCUjLZ7Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ath10k: start recovery process when payload length
 exceeds max htc length for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_145537_817118_F6B2D105 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Does the SDIO bus require addresses to be word aligned like the PCI
bus does? I'm thinking of how netdev alloc uses skb_push to ensure
that the payload is aligned.


>> if (ar->state == ATH10K_STATE_ON)

What about the other STATEs: RESTARTED/ING

The value you mentioned 57005, is 0xDEAD is that a special case?
Perhaps a result of fw crash? Maybe a lookahead gone wong? I see its
the WMI PEER ALIVE/DEAD indicator but I'm not sure why it would be
trailer of the other

On Wed, Dec 25, 2019 at 4:01 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> When simulate random transfer fail for sdio write and read, it happened
> "payload length exceeds max htc length" and recovery later sometimes.
>
> Test steps:
> 1. Add config and update kernel:
> CONFIG_FAIL_MMC_REQUEST=y
> CONFIG_FAULT_INJECTION=y
> CONFIG_FAULT_INJECTION_DEBUG_FS=y
>
> 2. Run simulate fail:
> cd /sys/kernel/debug/mmc1/fail_mmc_request
> echo 10 > probability
> echo 10 > times # repeat until hitting issues
>
> 3. It happened payload length exceeds max htc length.
> [  199.935506] ath10k_sdio mmc1:0001:1: payload length 57005 exceeds max htc length: 4088
> ....
> [  264.990191] ath10k_sdio mmc1:0001:1: payload length 57005 exceeds max htc length: 4088
>
> 4. after some time, such as 60 seconds, it start recovery which triggered
> by wmi command timeout for periodic scan.
> [  269.229232] ieee80211 phy0: Hardware restart was requested
> [  269.734693] ath10k_sdio mmc1:0001:1: device successfully recovered
>
> The simulate fail of sdio is not a real sdio transter fail, it only
> set an error status in mmc_should_fail_request after the transfer end,
> actually the transfer is success, then sdio_io_rw_ext_helper will
> return error status and stop transfer the left data. For example,
> the really RX len is 286 bytes, then it will split to 2 blocks in
> sdio_io_rw_ext_helper, one is 256 bytes, left is 30 bytes, if the
> first 256 bytes get an error status by mmc_should_fail_request,then
> the left 30 bytes will not read in this RX operation. Then when the
> next RX arrive, the left 30 bytes will be considered as the header
> of the read, the top 4 bytes of the 30 bytes will be considered as
> lookaheads, but actually the 4 bytes is not the lookaheads, so the len
> from this lookaheads is not correct, it exceeds max htc length 4088
> sometimes. When happened exceeds, the buffer chain is not matched between
> firmware and ath10k, then it need to start recovery ASAP. Recently then
> recovery will be started by wmi command timeout, but it will be long time
> later, for example, it is 60+ seconds later from the periodic scan, if
> it does not have periodic scan, it will be longer.
>
> Start recovery when it happened "payload length exceeds max htc length"
> will be reasonable.
>
> This patch only effect sdio chips.
>
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/sdio.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 7b894dcaad2e..78f431609493 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -557,6 +557,12 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                                     le16_to_cpu(htc_hdr->len),
>                                     ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH);
>                         ret = -ENOMEM;
> +
> +                       if (ar->state == ATH10K_STATE_ON) {
> +                               queue_work(ar->workqueue, &ar->restart_work);
> +                               ath10k_warn(ar, "exceeds length, start recovery\n");
> +                       }
> +
>                         goto err;
>                 }
>
> --
> 2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
