Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288B7193F9E
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 14:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ImnHG8lGruhB5iHvGLw/ptA9peZ0Y5t9edBd+Qi0Ke0=; b=Bhgkt+4aQyVL8JXhZOhl6X0bE
	MglaiPRhpNVppiXkB79lM2qhkOmPG6UUxb49X5IBgVjcO5JpsENWqw1W0+IIMVE3mxHGrUr0307AN
	8DsL7gjF+5fR8auhn/Z+UO2rN34NbyGJ2LwoXWDBiCo2FsmUpzHBnc6YNZq90aWVsfizaJ5JuVeRq
	okPqPBMpaeDm77Vlea2O+SN/lBIy36OioMfAQg0/p5oi2FQAsJ7zAQdlC0hzYcXo9DmHAZ1yfHkzz
	TGy18Z7VQN9Je8KFCHQ3acA4fgoFBuM/zZI2udUib6VURjj0+W6nF5Gmlqq6Bgi4bOqMls6UJaQBo
	8pzCQi0Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSQH-0003BH-7w; Thu, 26 Mar 2020 13:19:49 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSQ9-00035x-C0
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 13:19:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585228781; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=bKl+Ocs3pZwi2SL3TPaz71mJwbt8jJ41lnMSSs30fu0=;
 b=g0/fqr0K70gbeXjVjOJFIg9YbGGPpIJIXQuwkyJd/PauWOwxTA3xHJTPQVaVp548e5BBUwmn
 ACRhPj0UR3eYVKJhclDBajc6kYHKF25JPgIdpPoWFsvaMj4gSK064bB+tmbLRQyB+4X05QJd
 f53rpT81cD2Rs+VzfbJcF0PuHWo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7cabe2.7fd0d1aa35a8-smtp-out-n05;
 Thu, 26 Mar 2020 13:19:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A3535C43636; Thu, 26 Mar 2020 13:19:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: ssreeela)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2C320C433F2;
 Thu, 26 Mar 2020 13:19:29 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 18:49:29 +0530
From: ssreeela@codeaurora.org
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: enable radar detection in secondary segment
In-Reply-To: <87o8sj2zz7.fsf@kamboji.qca.qualcomm.com>
References: <1585158041-11740-1-git-send-email-ssreeela@codeaurora.org>
 <20200326100139.5BC86C433BA@smtp.codeaurora.org>
 <87o8sj2zz7.fsf@kamboji.qca.qualcomm.com>
Message-ID: <1b4c3f1ecaa1acb7684c35010a4e3316@codeaurora.org>
X-Sender: ssreeela@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_061941_873047_8AAF1386 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Lei Wang <leiwa@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-03-26 15:35, Kalle Valo wrote:
> Kalle Valo <kvalo@codeaurora.org> writes:
> 
>> Sowmiya Sree Elavalagan <ssreeela@codeaurora.org> wrote:
>> 
>>> From: Lei Wang <leiwa@codeaurora.org>
>>> 
>>> Enable radar detection in secondary segment for VHT160 and VHT80+80 
>>> mode
>>> on DFS channels. Otherwise, when injecting radar pulse in the 
>>> secondary
>>> segment, the DUT can't detect radar pulse.
>>> 
>>> Tested: qca9984 with firmware ver 10.4-3.10-00047
>>> 
>>> Signed-off-by: Lei Wang <leiwa@codeaurora.org>
>>> Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
>> 
>> Failed to apply:
>> 
>> error: patch failed: drivers/net/wireless/ath/ath10k/wmi.c:1717
>> error: drivers/net/wireless/ath/ath10k/wmi.c: patch does not apply
>> stg import: Diff does not apply cleanly
>> 
>> Patch set to Changes Requested.
> 
> I guess this depends on "ath10k: enable VHT160 and VHT80+80 modes"? If
> that's the case then you should submit them in the same patchset to 
> make
> the dependency clear.

Yes, this patch is dependent on ath10k: enable VHT160 and VHT80+80 
modes.
Sure will update and send.

Thanks,
Sowmiya Sree

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
