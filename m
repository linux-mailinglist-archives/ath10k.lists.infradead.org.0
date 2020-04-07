Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8661A06F8
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 08:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q4X57vBF0LgstuDB5NiGrexurO5hiBqf0OpCnH2bEo8=; b=GWg7ueKr62DNv4Z4bwZ0EU61q
	rgk8XIxrYk8mHPjq1gzCSfO1+sSm+FFgNUHbafQZrAwWDdsEB4kR0bT3T8tTdrIouC3CSLmnurEwe
	TUVXDKousngNUX/h2bDkjD7sF/ebhpto4a50FuLxhRBIOTI8GSYmEGG4HKbzgkCuotdR3vpANC2LO
	tEFOrUGLZWr+RpHZn9C7d7QlrYZFf8LmzT/sWI4jW2X3kpAkh/kFOxUc/ZjfvqGdNlauGo4P402EF
	352MlM4sdmHflXMNfRJQRUc4iS71EngI6yidBHIJjULS+nQjxx4rMN78dg2AEm0FylCnPBXvmDK4Z
	IXKltKwVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhMG-0001LY-S6; Tue, 07 Apr 2020 06:05:12 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhMA-000092-3t
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 06:05:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586239505; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=l2BX3DW7f+kIAUgg3GSBQBTcbYplv8Hi35NXfP+n2a0=;
 b=LjYvGXzUXfbgx4sq0QBk85Z8Fb//YG6UpvAJ/mwy+IhSvJGighTcRclHDIBVdg1WcB+Ayir5
 +PSLHkLQMMu956WjkKX692bJpcQkCLQLhdDWnrlaSICtyLrtqss+7ChzdpTl5UWUq4BxGg/K
 JuegZZOEr7YpFi5oWlvMbVJaz+k=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c180c.7fc190370f10-smtp-out-n02;
 Tue, 07 Apr 2020 06:05:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0D7C9C433F2; Tue,  7 Apr 2020 06:05:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5CA73C433D2;
 Tue,  7 Apr 2020 06:04:58 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 14:04:58 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v9 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <20200407054431.6B2A0C433BA@smtp.codeaurora.org>
References: <20200212080415.31265-2-wgong@codeaurora.org>
 <20200407054431.6B2A0C433BA@smtp.codeaurora.org>
Message-ID: <84039fe1187e3ec7546edd4f9fe5600a@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_230506_242510_A7B33D3F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-07 13:44, Kalle Valo wrote:

> This has new warnings:
> 
> drivers/net/wireless/ath/ath10k/htt_tx.c: In function
> 'ath10k_htt_htc_tx_complete':
> drivers/net/wireless/ath/ath10k/htt_tx.c:566:30: warning: 'msg_type'
> may be used uninitialized in this function [-Wmaybe-uninitialized]
> drivers/net/wireless/ath/ath10k/htt_tx.c:573:6: warning: 'flags1' may
> be used uninitialized in this function [-Wmaybe-uninitialized]
> drivers/net/wireless/ath/ath10k/htt_tx.c:577:42: warning: 'desc_hdr'
> may be used uninitialized in this function [-Wmaybe-uninitialized]
> 

I already run ath10k-check, but not see these warnings.
my gcc: gcc (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4
so is it because my gcc too version too low?

>> From what I can see these are false positives, but please do double 
>> check that. In
> the pending branch I solved it like this:
> 
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -546,9 +546,9 @@ void ath10k_htt_htc_tx_complete(struct ath10k *ar,
> struct sk_buff *skb)
>         struct ath10k_htt *htt = &ar->htt;
>         struct htt_tx_done tx_done = {0};
>         struct htt_cmd_hdr *htt_hdr;
> -       struct htt_data_tx_desc *desc_hdr;
> -       u16 flags1;
> -       u8 msg_type;
> +       struct htt_data_tx_desc *desc_hdr = NULL;
> +       u16 flags1 = 0;
> +       u8 msg_type = 0;
> 
>         if (htt->disable_tx_comp) {
>                 htt_hdr = (struct htt_cmd_hdr *)skb->data;

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
