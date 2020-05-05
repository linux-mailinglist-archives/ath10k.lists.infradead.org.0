Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A31C5EE6
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 19:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eqeVp4vyX64j4XTXiTuKTajOqL57wM6bPiM7laybfLA=; b=KWJWF8pbtY9CmM1wNAiJvdDjo
	lqvXtepwK785SEIzz8JJbN8fC4ZYU7crBXV+izD2UlFIsrMAvMlwb9OI/QCRMO0QssTfT1PE40Ur3
	5JgznE4Qy1OkKVYO7JAuacjD96rKiOGkaH2LokJKHoqErCw6jEPPUFSYyzZeB3UekBDZb2zODq78F
	XEwTurvjBVwZ5UDb5R/JZZR/GbrVXjlrxH39iPW4fbWpSCixlGN/gW4I1K1A2kWNvGAAdfnSOkIN+
	CyAjIYS2RiEObNz7Pgo+WMj51bPvoJEsKTHMX3v6eTiPzSH/Ht/NSKtUKHnd7PvOQaMr4SV7HNQm4
	3D9u09Zww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1QR-0004It-QR; Tue, 05 May 2020 17:32:11 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1Q3-0003uV-HW
 for ath10k@lists.infradead.org; Tue, 05 May 2020 17:31:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588699909; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=FNnEUcIGcED2zOGUrSu/QDzHYpQ9xz/VzkKxw++slEM=;
 b=jv9QJ0Trd0I1hYNj7/6S5aagUVtlsX9DYiR6SmQUX44c5QZNhqMPw4098vmxydTA3wXoVKme
 cdgkpVmzQ2CK9xzcY1uhf4+p7hYtu1Z8nBILw2NaCP0GVqvfQT3c2rkuRnG+ez4pMOleRZ4F
 Lp+Bq56i1PxGTFClMIjZmixk+fM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb1a2de.7f3d25c58e30-smtp-out-n03;
 Tue, 05 May 2020 17:31:10 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D23F3C43637; Tue,  5 May 2020 17:31:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 592A3C433BA;
 Tue,  5 May 2020 17:31:10 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 05 May 2020 10:31:10 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Markus Theil <markus.theil@tu-ilmenau.de>
Subject: Re: [PATCH 2/2] ath11k: use cumulative survey statistics
In-Reply-To: <c786e982-fcd6-2368-6b2f-f09b265654d6@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
 <85fa2d5f9183b3a12c5283b800f3750f@codeaurora.org>
 <c786e982-fcd6-2368-6b2f-f09b265654d6@tu-ilmenau.de>
Message-ID: <61f3dcc195fa4d877ddbd161523142ec@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103150_065841_1D9387CB 
X-CRM114-Status: UNSURE (   8.70  )
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
 kvalo@codeaurora.org, ath10k@lists.infradead.org, ath11k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-05-04 23:53, Markus Theil wrote:
> Am 05.05.2020 um 01:37 schrieb Rajkumar Manoharan:
>> On 2020-05-04 08:41, Markus Theil wrote:
>>> ath11k currently reports survey results for the last interval between 
>>> each
>>> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, 
>>> this
>>> can lead to unexpectedly small results, e.g. when hostapd uses survey
>>> data and iw survey dump is invoked in parallel. Fix this by returning
>>> cumulative results, that don't depend on the last invocation. Other
>>> drivers, e.g. ath9k or mt76 also use this behavior.
>>> 
[...]
>> Markus,
>> 
>> It depends on type of survey request is given to firmware. In ath11k, 
>> firmware reports
>> accumulated values. So the above addition is wrong and report double 
>> value. Have you
>> tested this change?
>> 
>> -Rajkumar
> Ok, so please drop both of my patches. My assumptions were incomplete
> and too humble. I just assumed, ath10k and ath11k both use incremental
> surveys.
> 
Markus,

The ath10k driver still counts survey stats incrementally. But it should 
be handled by sending
appropriate survey request_type to firmware.

-Rajkumar

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
