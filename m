Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F86A1C82EB
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 08:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UesS0mph7kt175ZbufuSowQeXD4p1CEZE/+brL1qsk0=; b=nzfOmEGpZfn7E8
	0XB588uGgvZjfqNqMHdxW4+Ynnt6b4LKWq4dwiBcc42uQ96/mTbpHyuv7E7p7uI2QOg9PRoV94izY
	/1e0FObhFRuN+jVmOT6CVyQ2ITyBGBZLRvyobYr+oV1rbty4E3+uGeBmveLmriCZT47SX/A+M/8L4
	4Qiy6oQkTW1TC/YYdZ44xVtFWVdFE7EQ2Z4JtmOk+dteT6yg7QWqS7a2wIzbwPMTHFudbkGdGkeMz
	f97qwcAvB2sAops/5NVSlAfixy7rinDqoL4Dnq9O2/okQyzxw+sn4EJpPGU41o8he1g7lV8jv8pZF
	tLLVjpNd1SLwMUfTSwZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaVJ-0000vP-1z; Thu, 07 May 2020 06:59:33 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaVC-0000tz-1Q
 for ath10k@lists.infradead.org; Thu, 07 May 2020 06:59:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588834768; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=LeUIWoVmutVvpuWX4N/QYk1z/s6WxKkdF5HJ+N/Lrls=;
 b=uGdPdbaLzf3ByZ1kTTCl85RYXuiW/c+QzXvnI0VcPZcGGs6F7pGf+f7F6gOyLhtc83wHjDhu
 au/l1YO6R34rgXmCBZiD8ErsfCz5GoJNO2WzKBYoIMvA2iOgD+yrsA/aSN8gNKYAm/jnmbse
 rVzkLPiiOBruLMz1TqCYSFAnCtE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3b1bd.7fe69c160a08-smtp-out-n01;
 Thu, 07 May 2020 06:59:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9605FC433BA; Thu,  7 May 2020 06:59:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 068BEC43636;
 Thu,  7 May 2020 06:59:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 068BEC43636
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <pillair@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: Remove msdu from idr when management pkt send
 fails
References: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
 <875zd88ei8.fsf@kamboji.qca.qualcomm.com>
 <000001d62436$f253f230$d6fbd690$@codeaurora.org>
Date: Thu, 07 May 2020 09:59:05 +0300
In-Reply-To: <000001d62436$f253f230$d6fbd690$@codeaurora.org>
 (pillair@codeaurora.org's message of "Thu, 7 May 2020 11:45:42 +0530")
Message-ID: <871rnw8c3q.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_235928_371998_34BDA0E4 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

<pillair@codeaurora.org> writes:

> Yes, The change you did is correct and better.

Thanks for checking.

> So should I be sending a v3 for this patch ?

No need, the patch with this change is now in my pending branch and I'll
apply it to ath-next it in the next few days.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
