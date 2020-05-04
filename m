Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB78C1C4A8C
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 01:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mp+bX2BBTtSRl8EnbWq6OktioYi7AGgxL7IxsblMQ9w=; b=Gcl1ZpRPgHd/1hvwNR/piz43k
	+1cRbZ4j2Qi7/xpaNQOpVvV1zLjTYYD7FKxZV886C1RHrKYd7V5Z2CQyjYrV7n3rcfBLmLDng5UHQ
	kC5HDuYQ4X1kAJbXvxHt9YwPKmrp9ZGslwu+BjBFwdUm+v67c/gWy1OIjQ4kYIYEYAWXME83cTVI/
	GWkU6njlN1wZCTyEnp5xxR8gK2BrYweiZ6wxCxsto+3mdK+/6/hVXcZjUl6gegzS2sAxZDmXHfE1F
	CFvOIHlX2nC4KwZo4KsnifHtPwsyFJ055qpiYsJSUlgdIS+t09Xxq7ieuOvjjGnJaOA4ZdUNm++0L
	zYGyH2mIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVkn1-0007Al-Io; Mon, 04 May 2020 23:46:23 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVkmu-00079l-Fh
 for ath10k@lists.infradead.org; Mon, 04 May 2020 23:46:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588635977; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=dKZZ/hAPbwDEOiC8H0xBFIIzVsviiHYPlAkqYm2g84Q=;
 b=ofHphUMqJWlxNzQtT2TYVTpn4uBJigTv17Eduhly6qQcfkukbE6o1+EXHRZLEOptQaVlqTiW
 PILC0jHKXMPvw3bekYwmEFIfkcRg5xF4CXiQ1z0U03McRl2jLVhz6opZF521YxZ7MIQWdynE
 cQoHBS+vyuCWVnEyghXeVDxdMsw=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb0a944.7f67dae516f8-smtp-out-n04;
 Mon, 04 May 2020 23:46:12 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C3ACFC433F2; Mon,  4 May 2020 23:46:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5435AC433CB;
 Mon,  4 May 2020 23:46:12 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 04 May 2020 16:46:12 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Markus Theil <markus.theil@tu-ilmenau.de>
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
In-Reply-To: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
Message-ID: <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_164617_748898_101B8DD3 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, kvalo@codeaurora.org, ath11k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-05-04 08:41, Markus Theil wrote:
> ath10k currently reports survey results for the last interval between 
> each
> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
> can lead to unexpectedly small results, e.g. when hostapd uses survey
> data and iw survey dump is invoked in parallel. Fix this by returning
> cumulative results, that don't depend on the last invocation. Other
> drivers, e.g. ath9k or mt76 also use this behavior.
> 
> Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
> 

IIRC this was fixed a while ago by below patch. Somehow it never landed 
in ath.git.
Simple one line change is enough.

https://patchwork.kernel.org/patch/10550707/

-Rajkumar

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
