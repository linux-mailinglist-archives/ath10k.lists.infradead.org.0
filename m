Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892611B551E
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 09:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KFWxc6i0GuVQiervqVJZ0DSS8RyrSpirfGNNBS4edZQ=; b=IVnOlJdzWBiiK4wGQN8U0aWZo
	5JmFJttImBZmLg2Ne5MI4JoSFmNGyc/y1MWniojbB2xxDcTsuC/cDxfFulfvvbOPt0QLF0q1NxdFD
	OWbfA6XpRIZGTwlTVNGm/RHxqpN2C/0pIraNIILcnobeJNoGqKHsCzWo4wthJVUoI5yUeqsWnm6gV
	jp8KT3PzEhWuAqEtFPn9aMN2+NryFWtgdaGQuB4fEE24+Mkqix2kVzCig+XHe3BTLQKB1Caow8XSq
	xRFx89NQTLqOUAE63xqSV2e/4OH5WjAiGtt317O9MOBxACp9UWXrLJx8/F4lAIfmb+AX4pPsu3/Xc
	Kfal5ll7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVuU-0000Bg-3d; Thu, 23 Apr 2020 07:04:34 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVuP-00009u-UQ
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 07:04:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587625469; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=1TOIeWN5zNtXku1d38UIrQcnys5ngWzSnkiFB1ONDCo=;
 b=mQukylZPjSb6WY0ODyK3UDbY/+t8jLllmBlhJT+4sRTkREWYOQgH51mB3B3jqvGjX+ci7chx
 xIFxtlq+wVergrGjEFwXBxRl3U7l2LZFy5EPaAErW/cds3/1x8iK64z2yz2d2KRaqPMFLRd7
 CRNFHKti6ntfLcND72LkLv137pM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea13dfc.7f4abd3d2b20-smtp-out-n03;
 Thu, 23 Apr 2020 07:04:28 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 05989C432C2; Thu, 23 Apr 2020 07:04:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 47929C433F2;
 Thu, 23 Apr 2020 07:04:26 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 Apr 2020 15:04:26 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: Compex WLE600VX AP mode 5GHz doesn't work since kernel 5.6
In-Reply-To: <87k12fr4q7.fsf@kamboji.qca.qualcomm.com>
References: <5971a327-d11a-35e6-8295-8dfb8ae3a434@yandex.ru>
 <87k12fr4q7.fsf@kamboji.qca.qualcomm.com>
Message-ID: <9cc7efbb3c9b29e4553a427e6f58725f@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000430_042758_0B2DA7B5 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: svp <svpm@yandex.ru>, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-16 20:32, Kalle Valo wrote:
> svp <svpm@yandex.ru> writes:
> 
>> I need help with my softAP installation.
>> Compex WLE600VX miniPCIe card can't start at 5GHz AP mode after update
>> to kernel 5.6 on ArchLinux
>> With kernel 5.5.x and LTS all is OK
>> Some logs and details is in this ArchLinux forum topic
>> https://bbs.archlinux.org/viewtopic.php?id=254535
> 
> So if I read the link correctly this commit causes the regression 
> (which
> was introduced in v5.6-rc1):
> 
> commit 2dc016599cfa9672a147528ca26d70c3654a5423
> Author:     Wen Gong <wgong@codeaurora.org>
> AuthorDate: Fri Nov 29 07:34:09 2019 +0000
> Commit:     Kalle Valo <kvalo@codeaurora.org>
> CommitDate: Mon Dec 2 12:08:01 2019 +0200
> 
>     ath: add support for special 0x0 regulatory domain
> 
> Wen, please take a look. Should I revert this commit? Regressions are
> not ok.
Yes, please revert it.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
