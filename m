Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB61F1F17EA
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 13:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXJ/r3DoMZlE/w2qCbWdfnBVYS1CyTmVbBbMTKmih60=; b=uNXZ2bBOuytdxn
	BsB74WVrR82B2c14TQ5YCm/BcyvKcdAFWeHdsM2A/Ls+ENBoGfJqrQKCdujUlKYZmehD0CmHH9bZB
	NQUst8Scuu61GKOaxkBSDdFB7RkXqJkrbY9qHDGBvWbmobmuMXlxCTpeDCri/c+T6ng47BeW6H2ls
	9ejM4n0ZdWj41Z9kXU695UgI4GBAMAuVGydRYHa8f5Yruw6pkOyXONiZRFFcp1tnW7NB0sRex6I2H
	ilw/7B1CNCvr3yPPM/6ks0oSMG9V1RYi4tQurCfSfB/P07vGlDU4XSExc+vFj24B8JTx1G6EQVq8X
	pb9gZwdX8MQWHA0Z619w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG5b-00021N-VI; Mon, 08 Jun 2020 11:37:15 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG5Y-00020m-O1
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 11:37:14 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591616232; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=IlRfHBpBKtrda1MuEHBrsq6ZxWbcZj4Up/Z9oS3PIto=;
 b=akSFJOBu1oCi2QlVWekCXkZfcmMeaxtrQm9PQWM0qzYz1o9zgrpY58xa62Q9B8KabXlxhiqD
 5UCghk6WZ+C/y7iFwzqBEjve9LvLkrhRTi1B606zloGPFTI9TQLHOaR976lpBUm/I+67rqO3
 +OyVF0wFXXwJNqwOIlh8AIWZ5eQ=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5ede22e7f9a707134532a0b7 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 11:37:11
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BDF52C4339C; Mon,  8 Jun 2020 11:37:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5DE79C433CA;
 Mon,  8 Jun 2020 11:37:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5DE79C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
References: <20200602052533.15048-1-john.stultz@linaro.org>
 <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
 <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
 <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
 <20200603002715.GA5349@Mani-XPS-13-9360>
Date: Mon, 08 Jun 2020 14:37:05 +0300
In-Reply-To: <20200603002715.GA5349@Mani-XPS-13-9360> (Manivannan Sadhasivam's
 message of "Wed, 3 Jun 2020 05:57:15 +0530")
Message-ID: <87zh9diyam.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043712_848871_F72B91F8 
X-CRM114-Status: GOOD (  18.14  )
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
Cc: Amit Pundir <amit.pundir@linaro.org>, Govind Singh <govinds@codeaurora.org>,
 Rakesh Pillai <pillair@qti.qualcomm.com>,
 Brian Norris <briannorris@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> writes:

> On Tue, Jun 02, 2020 at 01:04:26PM -0700, Brian Norris wrote:
>> On Tue, Jun 2, 2020 at 12:40 PM John Stultz <john.stultz@linaro.org> wrote:
>> > On Tue, Jun 2, 2020 at 12:16 PM Brian Norris <briannorris@chromium.org> wrote:
>> > > On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
>> > > >
>> > > > Ever since 5.7-rc1, if we call
>> > > > ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
>> > > > reboot, resulting in the device getting stuck in the usb crash
>> > > > debug mode and not coming back up wihthout a hard power off.
>> > > >
>> > > > This hack avoids the issue by returning early in
>> > > > ath10k_qmi_event_server_exit().
>> > > >
>> > > > A better solution is very much desired!
>> > >
>> > > Any chance you can bisect what caused this? There are a lot of
>> > > non-ath10k pieces involved in this stuff.
>> >
>> > Amit had spent some work on chasing it down to the in kernel qrtr-ns
>> > work, and reported it here:
>> >   https://lists.infradead.org/pipermail/ath10k/2020-April/014970.html
>> >
>> > But that discussion seemingly stalled out, so I came up with this hack
>> > to workaround it for us.
>> 
>> If I'm reading it right, then that means we should revert this stuff
>> from v5.7-rc1:
>> 
>> 0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace
>> 
>> At least, until people can resolve the tail end of that thread. New
>> features (ath11k, etc.) are not a reason to break existing features
>> (ath10k/wcn3990).
>
> I don't agree with this. If you read through the replies to the bug report,
> it is clear that NS migration uncovered a corner case or even a bug. So we
> should try to fix that indeed.

I'm with Mani, we should try to fix ath10k instead. Hopefully we can
find a fix soon.

Forcing QCA6390 users to use the userspace qrtr-ns would be bad user
experience, I really would want to avoid that.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
