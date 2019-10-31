Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BF4EAC5D
	for <lists+ath10k@lfdr.de>; Thu, 31 Oct 2019 10:10:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKwvuFP6Fw0iLdL2asjQxVkxGxZ9LLRBd9k7zEFnNWU=; b=WjV1bG+Id+J2Jf
	W5TqaVVv9zUklF1mimlNHfazamnA2DE7azGKkL/+8rdpeo9LxNp83vJg6BAi9fyG9Xh0hUcb4ERDP
	boAiDdurKHWRtYlsbPME4cCTKXwWunhRYCUScx8lrAfG5hmDzKmGlkIvPXk63377dpWALzLgeCX0X
	HRSL1wxSm32LDcUK8ZZpBu8SRX4yjrDKVuQFBta1LzJSbM8FwstobKU62xcGrYAsdlGr3g+RrLtez
	+8hhVPJTR6v+zHvlT40o7wE8P1BGfBOMTYssvBkvuZh2fiQcbORN5EcGY57uADoHDI97dzFiwwIUy
	0PH+ILGIhKckRE0LfDuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6T0-0002zu-1D; Thu, 31 Oct 2019 09:10:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6Su-0002no-2x
 for ath10k@lists.infradead.org; Thu, 31 Oct 2019 09:10:01 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C88E9607C3; Thu, 31 Oct 2019 09:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572512999;
 bh=iOaJ1rxMhr1nplRF5WVapRA85FaZYrFzAt3Vpe714mA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ndN9Z4YZt/ANHREe2diKEGR5tlIJ6ftKWG0iQGJyKwKBxHu+X1oV1/PlX+FwlNJH2
 mlqWQz7dQkT6UL/fuwGpwTmgKDrSJ6JKlKDIWw747IRZY5gybkR/6ZE9c6qIz5rQ/y
 TTfF/D+g1LWQNqjy5UJ8yCPX0qjBXmp0siri8O0s=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FA5A60397;
 Thu, 31 Oct 2019 09:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572512999;
 bh=iOaJ1rxMhr1nplRF5WVapRA85FaZYrFzAt3Vpe714mA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ndN9Z4YZt/ANHREe2diKEGR5tlIJ6ftKWG0iQGJyKwKBxHu+X1oV1/PlX+FwlNJH2
 mlqWQz7dQkT6UL/fuwGpwTmgKDrSJ6JKlKDIWw747IRZY5gybkR/6ZE9c6qIz5rQ/y
 TTfF/D+g1LWQNqjy5UJ8yCPX0qjBXmp0siri8O0s=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2FA5A60397
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
 <87h83ysbjy.fsf@kamboji.qca.qualcomm.com>
 <73e2d996575023b14c24665b2607a5b3@codeaurora.org>
Date: Thu, 31 Oct 2019 11:09:56 +0200
In-Reply-To: <73e2d996575023b14c24665b2607a5b3@codeaurora.org> (Wen Gong's
 message of "Thu, 24 Oct 2019 18:48:21 +0800")
Message-ID: <87y2x11dsr.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_021000_150994_8A1879DD 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> On 2019-10-24 18:05, Kalle Valo wrote:
>> Wen Gong <wgong@codeaurora.org> writes:
>
>> As you can see I also changed the macro to a function, as I prefer C
>> over CPP :) And changed ATH10K_HTC_FLAG_BUNDLE_MASK to use GENMASK().
>>
> yes.
>> But this only compiled tested, please do properly test the patches from
>> pending branch and let me know if I broke something:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=afd85ca1b086695cfd26bf484442eaf3bccb6bdd
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=4225b4d50a4f6a1159dc3316d068398f1b5edb57
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=911e0fc846cfc46fb4ccd1d223cb153681ff05bd
>
> I will test the 3 patches.

Did you have a chance to test them? Do note that I did one minor change
today:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=28da1fe7a3ffa5c55c52328c21165d9efdf2e94c

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
