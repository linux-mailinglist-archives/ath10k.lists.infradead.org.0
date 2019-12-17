Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA26122E46
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 15:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Wv+Y77uQ7ajy8EG3jxsZC5zy91KDOW2x7KY61My9+Y=; b=L7TGe9A65KAZ/6
	wKm8NdkIi27QUiNIZvM+bwsVhnDVXGjQBmQmHCzsoJ7+ywpqxFvYkn9RUP4ZjoYIiq84z0n8CfgPE
	LevseJm6+DX1Ese3a/smU+drG4VkZ24U1jsbeNZsmisEhx1FDEyMf9bv5QXeAW+0bkih5Hju9cYJc
	0MaV0LxciB7PtPsIj5slPaDtaCjmFGfqsasSfGydqvzrOVZCm/lPdaU/h2qQQ8yJl3PCGcsF29aRH
	EcsRVC4YiIBhrj4PYvOwswed8KszzNAbn+jyaORAoAh8M9CJDDGzkNZGhw5Nisz0RkvTYmnyT53Kz
	w5r/mtTTM66kzDEWl/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDcm-0000Gm-N9; Tue, 17 Dec 2019 14:14:56 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDcb-00008N-Iy
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 14:14:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576592087; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=IQ/h7WGtsxPAeTcFQEEn1Y2mtfDbwOvIuZQCUrAuAQg=;
 b=xJuToYsLqVDYulTRUWAh0YQh7wyQl5W0NAkphxbCDISR/ZvPnJaI/fjniFE96WF1yizjIl80
 qiKKMiE04c5qFo3UB2ZUnT4xjS3FXI+eIYCv9veHV+nNpy9lTACwnWcQ9McYoPiKaDjr4kT+
 1FJaFKBnRtfR24sBVhD7qhRrI6k=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df8e2d1.7fdcaab88c00-smtp-out-n01;
 Tue, 17 Dec 2019 14:14:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 12E3DC4479F; Tue, 17 Dec 2019 14:14:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 27ACCC43383;
 Tue, 17 Dec 2019 14:14:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 27ACCC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: govinds@codeaurora.org
Subject: Re: [PATCH v2 1/2] dt: bindings: add dt entry flag to skip SCM call
 for msa region
References: <20191111042508.12628-1-govinds@codeaurora.org>
 <20191111042508.12628-2-govinds@codeaurora.org>
 <20191114191640.GA8426@bogus>
 <0101016e8d2426fc-31499903-e1a0-44b3-83eb-73ba4f4a8b4a-000000@us-west-2.amazonses.com>
Date: Tue, 17 Dec 2019 16:14:36 +0200
In-Reply-To: <0101016e8d2426fc-31499903-e1a0-44b3-83eb-73ba4f4a8b4a-000000@us-west-2.amazonses.com>
 (govinds@codeaurora.org's message of "Thu, 21 Nov 2019 08:46:27
 +0000")
Message-ID: <87pngnavjn.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_061447_257462_F9BB2CDC 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

govinds@codeaurora.org writes:

> On 2019-11-15 00:46, Rob Herring wrote:
>> On Mon, Nov 11, 2019 at 09:55:07AM +0530, Govind Singh wrote:
>>> Add boolean context flag to disable SCM call for statically
>>> mapped msa region.
>>
>> Can't this be implied by the compatible string?
>>
>
> same soc compatible will be used in older TZ vs new TZ.
> Due to this reason I added this.

So what should we do? Rob, any suggestions?

Full patch here:

https://patchwork.kernel.org/patch/11236535/

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
