Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31B715BD86
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 12:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuQ/b2S/BljN5gIf9tnagFaFeZTuKYERBk/1pjfqzSU=; b=m+coa90s/DgDV8
	gL/x3xl5IFbvkDX30bCgvkeX9nwUdaKo8/DpIebJPjhcJaZYenvhtPjApMedY8uwxxdcMV+6vQDzL
	kwrhoj1n8nI0sxhjCgi7E2tJMmeKW4ULIXhzxvoA0AcZHZkfPHhPC9qz82iYdcFbRwpfE6dw645Iw
	0QuS1DDji/W0Wtl3sdoWgKg1pahUQaWO+C5j/X5gZVdsYFXLux2gtYOoVVq0giv9A3IQo4xntpoHw
	G0b86i+GiIMmcu0mLrKXqAe3nZNNKksRTHSZDOEOwRjqpBksbjvl0idr6i1zoiP58hB9tfQy2WmNn
	KvWnMJV0b9TtPA0x5HQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CTA-0004fl-PL; Thu, 13 Feb 2020 11:15:44 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CT6-0004WM-52
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 11:15:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581592540; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=cnJ54l9tLPuroKJZpqlUO46FcTPOrlCyPvCcupmKG8Y=;
 b=EwNfPuY/YW8aENvA/DHccNrLTZ0TN5eWUvJkzVj0Eztq5GRmJZfo4i2Hvh40BbIGFP3UKWZH
 rhGVThlT7xFQhasVjq94G8QyLzbGpLo8YnCr2M/Tx4hS40GWSZK8u1S5aDU6jGz9EIWrgwPE
 BU2MBpQwQginBgbJEX8eedHgQHY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e452fd7.7fc054dc1650-smtp-out-n01;
 Thu, 13 Feb 2020 11:15:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7D4E8C4479D; Thu, 13 Feb 2020 11:15:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7C7A0C43383;
 Thu, 13 Feb 2020 11:15:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7C7A0C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] ath10k: support PCIe enter L1 state
References: <1542163848-837-1-git-send-email-wgong@codeaurora.org>
 <20181115002836.GA71934@google.com>
 <c94346b26a6d4b11a045a176ca854051@aptaiexm02f.ap.qualcomm.com>
 <20181115184333.GA87504@google.com> <87va4x8q2c.fsf@codeaurora.org>
 <CABvG-CVAnwkiKVJik0PdsmRxF62kKv2N+aRKNq=nbopoExLvDA@mail.gmail.com>
 <87y36q75wr.fsf@kamboji.qca.qualcomm.com>
 <CA+ASDXO8NujrORVLZMPbDy916cnzOvx_Bp8Vr-VvkbBwJvB97A@mail.gmail.com>
 <87h8cd8zy2.fsf@kamboji.qca.qualcomm.com>
 <CA+ASDXM8gtn3=p5pQ=GOFdfTy-698ZPW91JEgAfapdLEcU+eMg@mail.gmail.com>
Date: Thu, 13 Feb 2020 13:15:30 +0200
In-Reply-To: <CA+ASDXM8gtn3=p5pQ=GOFdfTy-698ZPW91JEgAfapdLEcU+eMg@mail.gmail.com>
 (Brian Norris's message of "Mon, 2 Dec 2019 10:48:44 -0800")
Message-ID: <87r1yywxf1.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_031540_852065_E00D4EC1 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?Q?Micha=C5=82?= Kazior <kazikcz@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Brian Norris <briannorris@chromium.org> writes:

> On Fri, Mar 8, 2019 at 1:42 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>> Brian Norris <briannorris@chromium.org> writes:
>> > On Fri, Feb 8, 2019 at 5:42 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>> >> No replies from anyone (including Wen) for 3 months about testing this
>> >> patch on anything else than QCA6174. So I'll drop this now, please
>> >> resubmit once test coverage is better.
>> >
>> > I know this isn't exactly what you're asking for, but FWIW we've been
>> > using this since late November on all our QCA6174 products. No issues
>> > seen as far as I know, and we have seen some power savings.
>>
>> Thanks for the feedback, this is very good to know. I also would like to
>> apply this but not before we have some testing feedback from AP chipsets
>> like QCA988X or QCA9984. Wen, are you planning to test those and
>> resubmit?
>
> May I ping here? We (Chromium OS) are continuing to carry this patch,
> and would love to come up with something that can land upstream. If
> necessary, I can rework it to apply more specifically -- e.g., only to
> QCA6174 PCI IDs.

Yeah, enabling only for QCA6174 sounds best.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
