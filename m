Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DA158C0A
	for <lists+ath10k@lfdr.de>; Tue, 11 Feb 2020 10:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DvcOS3LGmWTc4S8vvnM4e6hcLYYvxOqIjZwdGpdueqk=; b=YOxjBHzmmtoPDnWRjgRoam4EB
	ulu1281dpGmSicnDA/jrm1eFGe9WkMRUrTpB3pqdpcyjIASUtYbytphdSRvb16veor9xBdrja1KcS
	zCyBdECnBNksTfB89NYluEXqr0l/1KIZCcrn9Az68K/rODIMmyzxLo5PVx4KhGnsqhPgdK27xlCtz
	BRoDQpGyeVMIzX4DcogrPuCT45a3g/y5wZYlZtn3ELlPm+V8jvgHaxnjwAcyiA6MMpCBYd9potvZC
	SPr9XUPbtV5G9mANPOFKvvj2doPOrRbz2K1UTUgmsAHyNPe6eU84wRjce3zygfoacuVoKlVYhrVjs
	6JSY18KlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1S7n-0008NL-Ku; Tue, 11 Feb 2020 09:46:35 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1S7h-0008My-NV
 for ath10k@lists.infradead.org; Tue, 11 Feb 2020 09:46:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581414391; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=XmbfhDgeU7lpSNpemQsNQ8B28yn5AsMpAGvUsIt06vc=;
 b=nG5LfIM84aDj5ZQQjRFlqxXMlv2cpPlcp0ziKLk0djQc4gQhLfxJMlNWE9+j23Yf+P07R46p
 ZHCRlxDaZLAxeNIHyg0RHkV0ciges57B7YTE4nPVBUhAdkShZ7KHz3iajbrcrpbSKJ8XM4Un
 Ew3VzGHFlFh3Nbqm7PJGrbJKldY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4277f2.7f819d01a500-smtp-out-n02;
 Tue, 11 Feb 2020 09:46:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 01D47C433A2; Tue, 11 Feb 2020 09:46:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C0A01C43383;
 Tue, 11 Feb 2020 09:46:25 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 11 Feb 2020 17:46:25 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
Message-ID: <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_014631_898536_3754F476 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-11 15:03, Pi-Hsun Shih wrote:
> Hi,
> 
> On 11/28/19 6:30 PM, Wen Gong wrote:
>> ...
>> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c 
>> b/drivers/net/wireless/ath/ath10k/htt_tx.c
>> index a182c0944cc7..c6c4b2a4d20f 100644
>> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
>> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
>> @@ -543,7 +543,35 @@ void ath10k_htt_tx_free(struct ath10k_htt *htt)
>>     void ath10k_htt_htc_tx_complete(struct ath10k *ar, struct sk_buff 
>> *skb)
>>   {
>> +	struct ath10k_htt *htt = &ar->htt;
>> +	struct htt_tx_done tx_done = {0};
>> +	struct htt_cmd_hdr *htt_hdr;
>> +	struct htt_data_tx_desc *desc_hdr;
>> +	u16 flags1;
>> +
>>   	dev_kfree_skb_any(skb);
>> +
>> +	if (!htt->disable_tx_comp)
>> +		return;
>> +
>> +	htt_hdr = (struct htt_cmd_hdr *)skb->data;
> 
> skb is already freed on the above line (dev_kfree_skb_any) but is
> still used here, should the dev_kfree_skb_any be moved to the end of
> this function?
> 
skb will not freed on the above line, please see this patch
https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/drivers/net/wireless/ath/ath10k?h=ath-next&id=30382dd1cf3a141bfaa568ee183c1892090fa79a

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
