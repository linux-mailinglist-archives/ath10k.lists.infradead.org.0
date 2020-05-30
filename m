Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BA51E9204
	for <lists+ath10k@lfdr.de>; Sat, 30 May 2020 16:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afg8spLJc0FjGS8wX9Dul5YhFjCwNcmRguC5EEcAwv4=; b=Bs6XEX11tkPfDs
	W6FnTsQvIs/yL+0r2y4mDPCSSh+MGNvZId9u0xxLjVLla+di08UV2+tYXfc18DVoVTtGKQug7+R4r
	TUwAHAFGbh4ySqHILbvovWWCTvIv2YSloymReZegG5cyMCoFbAJCpdJ29VWRolv9x3wCx3ZniLA8y
	20/zlgs27L6NskGBmt3HqpRBox57QeDfi+I2OJ3UsdRRElDOrE8uooQzza+MJ9w1wTcPRMrKbQPF7
	Lermg+HXAR+ZJ5Ogd9fwHLdETonFjHFxNXyrDBVcOqjETzzfSptKD5zUJIOq7LKaSNfxrFpN1R6sV
	BmWsu/v3k2exGTmqrpwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf2KD-0006Qb-7s; Sat, 30 May 2020 14:19:01 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf2K8-0006Q8-Pb
 for ath10k@lists.infradead.org; Sat, 30 May 2020 14:18:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590848337; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=dpw+1kDMnFkzOFQL5lNzqbxZZHq9A4gb7QzDms9lhFM=;
 b=UMMgR4ffxp7WgTwskP/Bq/Y3N5z0jUn+Zc/xFfHzcGL9h4a137YGOXgfOGc4p5JHA4Rpuw8J
 GMmUK1VhDmYRtIdvFcebHKk9bivzkNeC0S3SYxonm74yRosfQFfrHYENX7eXUd36Xtbo3uFi
 Ri9rq23G27Kh+dvy/hh2brTUZ1U=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5ed26b45cb0458693367442c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 30 May 2020 14:18:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4FA7DC43391; Sat, 30 May 2020 14:18:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0F24DC433C9;
 Sat, 30 May 2020 14:18:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0F24DC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Remove ath10k_qmi_register_service_notifier()
 declaration
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200528122105.1.I31937dce728b441fd72cbe23447bc4710fd56ddb@changeid>
References: <20200528122105.1.I31937dce728b441fd72cbe23447bc4710fd56ddb@changeid>
To: Douglas Anderson <dianders@chromium.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200530141844.4FA7DC43391@smtp.codeaurora.org>
Date: Sat, 30 May 2020 14:18:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_071857_605739_C9DFC80C 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, ath10k@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, netdev@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Douglas Anderson <dianders@chromium.org> wrote:

> The ath10k/qmi.h header file contains a declaration for the function
> ath10k_qmi_register_service_notifier().  This function doesn't exist.
> Remove the declaration.
> 
> This patch is a no-op and was just found by code inspection.
> 
> Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

23cc6bb5a2e6 ath10k: Remove ath10k_qmi_register_service_notifier() declaration

-- 
https://patchwork.kernel.org/patch/11576663/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
