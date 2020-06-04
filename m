Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5CD1EEA2A
	for <lists+ath10k@lfdr.de>; Thu,  4 Jun 2020 20:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o8zpZqmq/D4g/f1bwk/OfzYy1K+oYhA/mF3UAs59/8g=; b=r6Fae8XRCg1KtGEc2XamLaPP4
	tLVy/GKljQaqmT7PiEvEsRIOTMuoMiKgZ6xCQKe/L7q2nnu9WRcSB/VKqPLiiIVXKK/Z0pMI2Yslx
	yuweU7woMd8HKC2V6zhZRsSYX0AFfXWf8ZEM15OH8MNU41F0XmY4me3WckfLvh9fDEr9zfy7ChyXd
	8NrGZChEqsnes5ED1XXvYmGY1MXy3lOE+ZleTe5LyfPxFUU+Td/+7CAHTY+TE03asQv3HpGrV+/wi
	4tb9dN39TExD2FxgsNKJQzBX7Dv6IACMSkixv1P+ARSw++UxHR0+8rd54aqXyQD9zxgPL/42ZREx1
	GsS7FI1zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jguQk-0000rD-LG; Thu, 04 Jun 2020 18:17:30 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jguQf-0000qq-TM
 for ath10k@lists.infradead.org; Thu, 04 Jun 2020 18:17:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591294647; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Sy6oxi6dVwjeydEC93CEgvW6xjF1Nhp3WKKAo+y1MfI=;
 b=mI3ogPerGckIB68Q8vswfoe3UXvXQsM5hjWdj4oJ2fiejugzUHQkWiaGoPDd99L7k1LU7XxA
 Z9+JsjZsx749d++83Y7Jlv66CXaUC9ZmVrmi6p44JlIqnE4yc6K63MEVKHloo43GtwVJ4iyu
 G8AhtZID4ICH7YaQbr9FYDWD1eg=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-east-1.postgun.com with SMTP id
 5ed93ab02dd9e15ae3b5060d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 04 Jun 2020 18:17:20
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2A867C433CA; Thu,  4 Jun 2020 18:17:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ADA4AC433C6;
 Thu,  4 Jun 2020 18:17:18 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 23:47:18 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: govinds@codeaurora.org
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
In-Reply-To: <4e0642b9882c41f4c10963b265bf6d9f@codeaurora.org>
References: <20200602052533.15048-1-john.stultz@linaro.org>
 <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
 <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
 <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
 <20200603002715.GA5349@Mani-XPS-13-9360>
 <4e0642b9882c41f4c10963b265bf6d9f@codeaurora.org>
Message-ID: <40a7d87e5774d56d9ca31e4de0c17831@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_111727_170985_0061F4E7 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Amit Pundir <amit.pundir@linaro.org>, linux-kernel-owner@vger.kernel.org,
 Rakesh Pillai <pillair@qti.qualcomm.com>,
 Brian Norris <briannorris@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-06-03 15:37, govinds@codeaurora.org wrote:
> Hi Mani,
> 
> On 2020-06-03 05:57, Manivannan Sadhasivam wrote:
>> On Tue, Jun 02, 2020 at 01:04:26PM -0700, Brian Norris wrote:
>>> On Tue, Jun 2, 2020 at 12:40 PM John Stultz <john.stultz@linaro.org> 
>>> wrote:
>>> > On Tue, Jun 2, 2020 at 12:16 PM Brian Norris <briannorris@chromium.org> wrote:
>>> > > On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
>>> > > >
>>> > > > Ever since 5.7-rc1, if we call
>>> > > > ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
>>> > > > reboot, resulting in the device getting stuck in the usb crash
>>> > > > debug mode and not coming back up wihthout a hard power off.
>>> > > >
>>> > > > This hack avoids the issue by returning early in
>>> > > > ath10k_qmi_event_server_exit().
>>> > > >
>>> > > > A better solution is very much desired!
>>> > >
>>> > > Any chance you can bisect what caused this? There are a lot of
>>> > > non-ath10k pieces involved in this stuff.
>>> >
>>> > Amit had spent some work on chasing it down to the in kernel qrtr-ns
>>> > work, and reported it here:
>>> >   https://lists.infradead.org/pipermail/ath10k/2020-April/014970.html
>>> >
>>> > But that discussion seemingly stalled out, so I came up with this hack
>>> > to workaround it for us.
>>> 
>>> If I'm reading it right, then that means we should revert this stuff
>>> from v5.7-rc1:
>>> 
>>> 0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace
>>> 
>>> At least, until people can resolve the tail end of that thread. New
>>> features (ath11k, etc.) are not a reason to break existing features
>>> (ath10k/wcn3990).
>> 
>> I don't agree with this. If you read through the replies to the bug 
>> report,
>> it is clear that NS migration uncovered a corner case or even a bug. 
>> So we
>> should try to fix that indeed.
>> 
>> Govind: Did you get chance to work on fixing this issue?
>> 
> 
> I have done basic testing by moving msa map/unmap from qmi service
> callbacks to init/de-init path.
> I will send patch for review.
> Reason for del_server needs to investigated from rproc side.

Govind,
On receiving SIGTERM, rmtfs would try
to perform a graceful shutdown of the
modem, that should be the source of
the del_server.

> 
>> Thanks,
>> Mani
>> 
>>> 
>>> Brian
> 
> Thanks,
> Govind

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
