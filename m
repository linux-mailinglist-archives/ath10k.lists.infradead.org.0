Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C18B1C4F37
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iemS9123Jty4HMxTaSU0cXsOocgRuJOqpbmexf2M7J0=; b=SKM/YyoMEJgTQ2
	6iUsWrbcLx8ppJKF4AKffOpfm2Q0+p6/z1OQTQt4riZqqSEOOkxQvwwdmtrHVluQQYXw7DCVzKdgR
	tdYl+IWAmExkwaZKDfVoVkZCiqq9M5/B1xGyPVrIfKY/A43v3u+3FWPKbDEkDqvVC+Vmmb9sCyHnM
	rB6PlBtnQhURqmbAT7z1j9aDW3ghmADgIzVxvO4QPNYZfbdB/A4usPWPSNM3TnFi4WcQAEQDiq46u
	X7cMQyPz4gQuG/8gRtiDSEnTHBKeOL2IgghPJqi7b/9UOshwg5T9JEnUm565pVRO5u6czswNr85Lh
	Et/sohOcUTFdJOhvRbOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVs6z-0007eq-Cw; Tue, 05 May 2020 07:35:29 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVs5z-0004Z1-79
 for ath10k@lists.infradead.org; Tue, 05 May 2020 07:34:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588664070; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=6rdBhKuiYxEUD7yWkFxIXkHGzzyQyMwga0bzWDTLC2U=;
 b=FCkUkcjC9S+qqHXsoIibenGWCBMW9y0rT0tzRHWScLUH7hjcDKODG6AgCq8pBDltrQ+sJhp5
 jlfnmqX4iFvJkP6xnTPM1bfZdLg01NSjLJiG0WzZzcA02ESVZ+N4B5YXuvDG7kl4M4h34e5g
 GPdk0Xh2Tu5+fYo+77oKyGdDeP8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb116ff.7ffa9ad8bbc8-smtp-out-n04;
 Tue, 05 May 2020 07:34:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BFA51C433BA; Tue,  5 May 2020 07:34:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 62DAAC433F2;
 Tue,  5 May 2020 07:34:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 62DAAC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Avoid override CE5 configuration for QCA99X0
 chipsets
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
References: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200505073422.BFA51C433BA@smtp.codeaurora.org>
Date: Tue,  5 May 2020 07:34:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_003430_436319_D5AACEBD 
X-CRM114-Status: UNSURE (   9.01  )
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:

> As the exisiting CE configurations are defined in global, there
> are the chances of QCA99X0 family chipsets CE configurations
> are getting changed by the ath10k_pci_override_ce_config()
> function.
> 
> The override will be hit and CE5 configurations will be changed,
> when the user bring up the QCA99X0 chipsets along with QCA6174
> or QCA9377 chipset. (Bring up QCA99X0 family chipsets after
> QCA6174 or QCA9377).
> 
> Hence, fixing this issue by moving the global CE configuration
> to radio specific CE configuration.
> 
> Tested hardware: QCA9888 & QCA6174
> Tested firmware: 10.4-3.10-00047 & WLAN.RM.4.4.1.c3-00058
> 
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

521fc37be3d8 ath10k: Avoid override CE5 configuration for QCA99X0 chipsets

-- 
https://patchwork.kernel.org/patch/11505695/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
