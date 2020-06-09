Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E399F1F3A32
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 13:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQsDqNrtgubUJwDZ54rfMKlSUMgntSm9DVfM/kZv9mU=; b=jhqEH2q+rHs1yv
	UHFKD5/U45RrEsqlBf1h3omrIyJHSN0Du4/OJ5UNcwikCGHO4LOqa298AuKyq451AuAEfXonzDGU6
	snQfTAfABGN6JCfBRAEUE31ytqTVGSYYYiXZ900JL+cLuqfpIOc8ZcKHGXt6L9JBFBmi9U+fEc7pS
	+fsCHhC/Ep61yrc5FLJqLIiHWpOLB8MRQtPohSHDONncvlx3Se5ql5Sp2rfLVOqrf+p6+HaAv5UYA
	Tf+16AiZRMCp2cqSl16oB1/SHpUrEQ7MxjNEbreOuP1iFOwaYUDQXBmhfgfIrSW/EMeHIG8EE7Y/r
	gLLJbCa5oPtA7TiQp0lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jictB-0003e9-Ez; Tue, 09 Jun 2020 11:57:57 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jict4-0003dU-9s
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 11:57:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591703873; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Yih2oQDnrLvm9/ht0zY2xUk+vYYtNVGyVwjlgSDrnyM=;
 b=uslrB5+JDWxr9UB2DqAAdnmW1QYw62E9tURMnEjQGVWASI8WG0KM+9eJLYIdjxZCxEraSdgQ
 Zuu7CqPcyY1R+U2m7D62Y6cV0khlo+vxEE4bRQ2Z4X4N0gOYEuAqyIQT4GmgNo5i2+GQYFOm
 rjoPYQcCmIgrNWKMNnyl2Xgt4do=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n13.prod.us-west-2.postgun.com with SMTP id
 5edf793760667f2e2f55855f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 09 Jun 2020 11:57:43
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EF5FFC43387; Tue,  9 Jun 2020 11:57:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A277BC433CA;
 Tue,  9 Jun 2020 11:57:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A277BC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Robert Marko <robert.marko@sartura.hr>
Subject: Re: [PATCH] ath10k: enable advertising support for channels 32,
 68 and 98
References: <20200327093147.189390-1-robert.marko@sartura.hr>
Date: Tue, 09 Jun 2020 14:57:39 +0300
In-Reply-To: <20200327093147.189390-1-robert.marko@sartura.hr> (Robert Marko's
 message of "Fri, 27 Mar 2020 10:31:47 +0100")
Message-ID: <87y2owmoy4.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_045753_754493_4EF4C237 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: Luka Perkov <luka.perkov@sartura.hr>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Robert Marko <robert.marko@sartura.hr> writes:

> Enable advertising support for 5G channels: 32, 68 and 96.
> These channels are legal and available for use in ETSI countries.
> So lets advertise these and they will be available in accordance with the regulatory domain used.
>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Cc: Luka Perkov <luka.perkov@sartura.hr>

What's the use case for this? I was told that the IEEE standard does not
define these channels, that's why I'm asking for more information.

On what hardware and firmware did you test this? It might be that not
all hardware or firmware support this.

There was a concern if this slows down scanning due to more channels
being scanned, but I haven't analysed that yet. Did you measure that?

Also please CC linux-wireless on ath10k patches. Otherwise patchwork
won't see them and it won't be on my radar:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
