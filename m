Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD731A9593
	for <lists+ath10k@lfdr.de>; Wed, 15 Apr 2020 10:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytTYNYVlpSnVnIMQsXGDAhQW1+6OCMX4lGVprA2PHZE=; b=t1icXvgNOZL0nn
	b2btoxpZZJ+ZbXhzNy3zyn3TVwo04gWj+nGlcS3IU+Eaq4mh/vglwdcqeKq5+AwF3hQpJH9nkLBo8
	9AvKbQWdmyyHu1p5mBnNJHKiX9i45CZ5XayXJD7pHN//LJuiXCrad6erfUdjP7OaA+1jqBpH0RLvX
	tfOsSNfzACfmJ9PitWf5gb8qhRrFl9heZS5hqX43g46QukEiAU0NCD6w9N8B9kBnjFR7x5MG3uan5
	kHmlzMVk1yFaoN0ONYg7w6Ez+X/v/mqfsi2XjSXId5AvbaAf0rdkj7SKjeZYk2NFNEX6SSFCrWFb4
	91m7owQmNdiYt65GSfgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd4b-0004fv-9i; Wed, 15 Apr 2020 08:07:05 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0u-0006SP-Pk
 for ath10k@lists.infradead.org; Wed, 15 Apr 2020 08:03:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586937796; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=q7T8KxiVu+YFV5YwNwOoJ3HkGx85UIrkt+/kfz40cJg=;
 b=i/vEHjomtbZuolRMdEr02hcSPfS3ccCd273qt9dsT/D7L3Y1BlxZnxRO9oh6IPnBOx06zsHW
 XHnWJ7kZ72PHxUXuF4OaGa98lu+U0hDnUQkltwtoqKGxFs76x+ZLf/b0i1VrlMApwTL9y9Ph
 NPGF7V+GbqG8b1WUDq0cSHqMUyE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e96bfc3.7f332bd61730-smtp-out-n01;
 Wed, 15 Apr 2020 08:03:15 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B90DAC433BA; Wed, 15 Apr 2020 08:03:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E6E1C44793;
 Wed, 15 Apr 2020 08:03:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6E6E1C44793
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix typo in warning messages
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1586715875-5182-1-git-send-email-telumamatha36@gmail.com>
References: <1586715875-5182-1-git-send-email-telumamatha36@gmail.com>
To: Mamatha Telu <telumamatha36@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200415080314.B90DAC433BA@smtp.codeaurora.org>
Date: Wed, 15 Apr 2020 08:03:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010316_908782_FFA1FC38 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
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
Cc: Mamatha Telu <telumamatha36@gmail.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Mamatha Telu <telumamatha36@gmail.com> wrote:

> Fix some typo:
>   s/fnrom/from
>   s/pkgs/pkts/
>   s/AMSUs/AMSDUs/
> 
> Signed-off-by: Mamatha Telu <telumamatha36@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

8a7968bee8d0 ath10k: Fix typo in warning messages

-- 
https://patchwork.kernel.org/patch/11484661/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
