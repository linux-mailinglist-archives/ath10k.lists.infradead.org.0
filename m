Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564F11C3560
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 11:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjFNlF5WcS4eBISSxldb5WL5d92ziBqANUo2eu/v9Pc=; b=E3P9cLetM0R+PA
	/Vew1zMLoJE0T0R3GM9koLCqGjb5v8x6/wFkhBvOg+Ol21cPf301eYOkiXUbHIgl4UCbt+/k+LV6k
	sQ35XNR9DRBk1pbMYwdDcl5HvHnyJ0mVM+px1rkjVsJQwuj5R0+8cdJIgMP9k58hgtd/pCiTut2JI
	hYWyvnNMN/0UIQ5bP5ViMhOdM0LIESYvo4m1TrNG62qqpFToPWwTi/zab+3+BFlB1SaAtUnapmac6
	jNBKx+LSp8nv/OQxHk8PohGRzJxim0otBOJlRCv0IzAS/wICt4XG2/R0yalP/eE6uy0VKpZwuv/YO
	LlYdydsyoZWr7ZcUnq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXER-0003Ol-NA; Mon, 04 May 2020 09:17:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXEN-0003Nu-MX
 for ath10k@lists.infradead.org; Mon, 04 May 2020 09:17:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588583863; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=cKWAmC4NEhWNR36v12EG23KoA28zUukpdnlwsBlIzaY=;
 b=M+aeOMKRsO5TsTlYqL5YM3Z4aBpKdv48BKrvuZ6DlW7/OdqYqM0u375Ih2UqbPkR7EYbcRJb
 8pB7gEO+bc3NwWGHYEz/jDcuoDnm6QnntfTBqWMDbefy99gF7QNzJfQk/4ZikUFMdXgFI5rU
 mYDV5nea3T1AJaeqM/T2BAi9FaM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eafddb6.7fcea6679d18-smtp-out-n02;
 Mon, 04 May 2020 09:17:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id F422FC433BA; Mon,  4 May 2020 09:17:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6A142C433CB;
 Mon,  4 May 2020 09:17:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6A142C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: John Deere <24601deerej@gmail.com>
Subject: Re: [PATCH] Allow qca988x family to support ack rssi of tx data
 packets.
References: <20200312082047.487DAC433D2@smtp.codeaurora.org>
 <9827dda3-7a4a-5e10-071a-c7b4e4044572@gmail.com>
 <87y2qde08w.fsf@kamboji.qca.qualcomm.com>
 <6355ca22-f09a-5091-fc52-7a7e8f554323@gmail.com>
Date: Mon, 04 May 2020 12:17:38 +0300
In-Reply-To: <6355ca22-f09a-5091-fc52-7a7e8f554323@gmail.com> (John Deere's
 message of "Thu, 30 Apr 2020 22:16:59 +0800")
Message-ID: <87pnbkdpot.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_021743_791938_B3155103 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

(Fixing top posting and adding Yibo)

John Deere <24601deerej@gmail.com> writes:

> On 4/30/20 6:28 PM, Kalle Valo wrote:
>> John Deere <24601deerej@gmail.com> writes:
>>
>>> Hello,
>>>
>>>> Firmwares tested : 10.4-3.9.0.1-00036
>>>
>>> The firmware above is unavailable anywhere.
>>
>> It's here:
>>
>> https://github.com/kvalo/ath10k-firmware/blob/master/QCA9984/hw1.0/3.9.0.1/firmware-5.bin_10.4-3.9.0.1-00036
>
> That is for the QCA9884, not the QCA9887 as listed in the hardware tested.

Good point, I missed that. Thanks for pointing it out.

So we are talking about this commit:

commit 5637c4ca961bc72ae3cce4bd5cbcecb5b8e32a54
Author:     Yibo Zhao <yiboz@codeaurora.org>
AuthorDate: Wed Mar 11 19:23:29 2020 +0200
Commit:     Kalle Valo <kvalo@codeaurora.org>
CommitDate: Thu Mar 12 10:20:02 2020 +0200

    ath10k: allow qca988x family to support ack rssi of tx data packets.
    
    Hardwares tested : QCA9887
    Firmwares tested : 10.4-3.9.0.1-00036
    
    Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
    Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Yibo, we don't have 10.4 firmware for QCA9887 so the commit log doesn't
make sense. How did you test this on QCA9887?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
