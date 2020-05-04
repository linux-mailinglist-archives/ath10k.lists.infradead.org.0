Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09F91C4A9C
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 01:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nZdsiaIctmsoWItE2FE40/CwdIJkvg+8NDHHPtemu+k=; b=mle6J2h6Y5wZOyWwakDzlpldP
	NzPT69lXf4xfQUiHb/eeM4Gt2suFvmoWLCRF+vYds79dQIFS5SbiXByb9uuT8JE+lmSRcoVAG9IL/
	KcKhcU1pSE+lAE714LSyEi1/kyl282OQBI62mHlorIyUYobbBqQad+oFJVJ2lxonbjL72mS25Uk01
	wLCXyg2FQqOGDs1PHsvmunwAGsw0jfQ8ZRnsUER25dGoN9wQtQ9zuUcuxHQho7eLdDv4vKkouHKcC
	Ac8KVN2NoPRcVTmqZQv1z0mGB/Ae3OiFML2goG1tLHbLw6inPVvZlv1JBmv3C+dSAtMpwaMtNJqSS
	jC3MjONLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVktJ-0002Yt-1J; Mon, 04 May 2020 23:52:53 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVktD-0002X4-Qx
 for ath10k@lists.infradead.org; Mon, 04 May 2020 23:52:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588636367; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=W+xBFP8RMJ4u9yTMXqLo5r5356v0vha2BJ3QKZbB5RQ=;
 b=GJyuEHb5xNFYaH5JWWqQ1Uhrj+w9qFxYc9yl2GGRCmHSrBztp/Ml6rUabU/3Knz3uap5N5HN
 iYGnpu63hthx9hQq4FNwBJZMG8kgYl9eXiCY8z3XvqEpHT14vLv4pfjf3g3SscI+TKrwIn8A
 /v1Ngl+R8jWYbrv5o/WUrmvfyzg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb0aacf.7f7d5a359340-smtp-out-n01;
 Mon, 04 May 2020 23:52:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 14DB3C433F2; Mon,  4 May 2020 23:52:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 96F74C433D2;
 Mon,  4 May 2020 23:52:45 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 04 May 2020 16:52:45 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
In-Reply-To: <323b4d4f-a967-cf63-6f5a-04f53802c50a@candelatech.com>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
 <323b4d4f-a967-cf63-6f5a-04f53802c50a@candelatech.com>
Message-ID: <4b03993ba81a8e9ebb1203c0b8aa90f6@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_165247_938625_4D433EAF 
X-CRM114-Status: UNSURE (   9.89  )
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 Markus Theil <markus.theil@tu-ilmenau.de>, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, kvalo@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-05-04 16:49, Ben Greear wrote:
> On 05/04/2020 04:46 PM, Rajkumar Manoharan wrote:
>> On 2020-05-04 08:41, Markus Theil wrote:
>>> ath10k currently reports survey results for the last interval between 
>>> each
>>> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, 
>>> this
>>> can lead to unexpectedly small results, e.g. when hostapd uses survey
>>> data and iw survey dump is invoked in parallel. Fix this by returning
>>> cumulative results, that don't depend on the last invocation. Other
>>> drivers, e.g. ath9k or mt76 also use this behavior.
>>> 
>>> Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
>>> 
>> 
>> IIRC this was fixed a while ago by below patch. Somehow it never 
>> landed in ath.git.
>> Simple one line change is enough.
>> 
>> https://patchwork.kernel.org/patch/10550707/
>> 
>> -Rajkumar
> 
> Have you tested this with wave-1?  Lots of older, at least, firmware
> has brokenness in this area.
> 
Yes. It was tested in wave-1 as well. Venkat replied to your comment on 
original change.

-Rajkumar

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
