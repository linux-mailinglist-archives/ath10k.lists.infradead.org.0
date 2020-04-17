Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9641AD737
	for <lists+ath10k@lfdr.de>; Fri, 17 Apr 2020 09:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHIhXQ526hZ2zxD9PkLfU92pNfpXNfvhDgJp4WQD3Pc=; b=XGcDVA76m0iBvO
	7/5ox1QEyMApMxl5KDTzr26lvV2dal1bUC/N+DrdpfmKK3+EdEK4jXPqsT+7CNU5jSoKNKuIfpbHP
	mw2VovxNt8L/+sbY61zQXLS63kYV0xbT3R3hWXpqD6EyQzUpark00sK+clGv0QvXeKs3QSHhalXoR
	QKrLxM41Wb6TMGuYLGP6X1koCqQjS04rviwfaEAE6z58LX/d+ppVebfAogq82Npc5/OKu//uoDw46
	839qbt9che1HAJPH7ypYAzuGC/guY0ayDMyjY6z++fMmXHD7GD3v4+eSKaq6/AipZ7az9/qJihCXu
	GFFECG52h4+DvJSYez6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLFU-0001wI-FO; Fri, 17 Apr 2020 07:17:16 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLFP-0001v3-Kx
 for ath10k@lists.infradead.org; Fri, 17 Apr 2020 07:17:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587107833; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=oAQXckyqS4BXJlCDtGyR722Bq/GVrhO2gw8vOQNjTTY=;
 b=t/V/S3ryTbuzt6zLNLY6deIWKhtzbgnj56Wo8wOkmxm1TftMrK11oyzSCoS/7wfTP0j4n4Ne
 T4XaUBBRY0CM1YibCoyn2SJZVVqf9rP6gD2E8dsj9U/fvrYdc6wxw/5g6uaa0Ur+mum/TXRq
 gxGIhp6oDRj/c3sidgKSU4QGg8Y=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9957f1.7f7ecdaa9298-smtp-out-n01;
 Fri, 17 Apr 2020 07:17:05 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5CA16C433F2; Fri, 17 Apr 2020 07:17:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4DEDAC433F2;
 Fri, 17 Apr 2020 07:17:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4DEDAC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH] ath10k: improve power save performance for sdio
References: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
 <877dyfr4fb.fsf@kamboji.qca.qualcomm.com>
 <b9f680d57a6fbc9ac59dc5fc281d0af3@codeaurora.org>
Date: Fri, 17 Apr 2020 10:17:00 +0300
In-Reply-To: <b9f680d57a6fbc9ac59dc5fc281d0af3@codeaurora.org> (Wen Gong's
 message of "Fri, 17 Apr 2020 12:32:09 +0800")
Message-ID: <87y2quponn.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_001713_513571_F76ED17B 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> On 2020-04-16 20:38, Kalle Valo wrote:
>> Wen Gong <wgong@codeaurora.org> writes:
>>
>
>>
>>> +static inline int ath10k_hif_set_mbox_sleep(struct ath10k *ar,
>>> bool enable_sleep)
>>> +{
>>> +	if (ar->hif.ops->set_mbox_sleep)
>>> +		return ar->hif.ops->set_mbox_sleep(ar, enable_sleep);
>>> +	return 0;
>>> +}
>>
>> I don't think we need to add another hif op for this. I sent v2 which
>> uses existing op.
>
> Yes, I see it. but I see it removed ath10k_hif_set_mbox_sleep in
>ath10k_core_start, expected it will not effect the patch's power save.

So the idea is that the same functionality is still there as with your
version, the callpath is just a bit different:

ath10k_core_start()
    -> ath10k_hif_start_post()
        -> ath10k_sdio_hif_start_post()
            -> ath10k_sdio_set_mbox_sleep()

But please do double check that I didn't miss anything.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
