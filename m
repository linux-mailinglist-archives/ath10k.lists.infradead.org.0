Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C127FA942
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 05:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMtePrpcdobr7SLh10FU7JaxydID2/64bp+ZiR4hm/o=; b=IdZHDH2kJepwYP
	dRWDTvhbcUTzAXlmDTJ1Lm2gPWGIwYFTNDCT5eynuO0iRhp6ft2A//BCQ3MPnBdi13MOfI8oC6vF1
	gxWrGgcpoFrdOoeUWT3JS0gGZ0RaH+5YdzYtVgAUNcL9oElfqE5OQaoQNmlx3ALxefd10nvcz4Q/H
	w9v2fhamwewLSxCLPdk9ifSHRluco/LLWghDKeER5nPs0575wmccI0YJz+O/N4AG73LSK+gIezdg+
	XJ2NEt1sqMPEMkexHgepcgggy7atE5Nm1ZiiUBW4t7vbFyzgNIugz1mToJp2ONryUPo7tI6eK/v5e
	na8npQoGX0E3SG/0fTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUkjm-0006Br-JA; Wed, 13 Nov 2019 04:58:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUkjj-0006BT-DB
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 04:58:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 942B860DBB; Wed, 13 Nov 2019 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573621115;
 bh=/8Tlva5em/LSnhT8Vg5AUVKm/xL3Wg21CN8IPxwNqZ4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BA17rCbfsf8mvrUDIM0G7CzS1Ew5A8fqUYD3XeZH5//G0EkoBpAu3iJtkRQBESwR5
 gxNV+W/ZfNxtNB/Ts9ZdzWhr5JMLF4hQctgj0mtEleC+qcQOK8BhmFSoWz5lNo4E3l
 M2M3o/cwp+qLaHjK9QDx8xuMO1p0Y6k6KJGx2IQQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E331A60913;
 Wed, 13 Nov 2019 04:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573621110;
 bh=/8Tlva5em/LSnhT8Vg5AUVKm/xL3Wg21CN8IPxwNqZ4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W8CON7SIdSb5+Pn5U3gsmoiFnZimeIo4u+K6B+0y43aPaFb1EEXT6xP3vncZtk4LX
 xxmdC1kFTsTdDXOB+9w9R0+8sQouo6siPQBdmur6f8FnMV9bE97Cij9ugPsK7schnQ
 O2sIw/nZxivPeL0S0kscU1XYiCOjrQ5qz++4/n+Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E331A60913
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Handle "invalid" BDFs for msm8998 devices
References: <20191106234712.2380-1-jeffrey.l.hugo@gmail.com>
 <20191112090444.ak2xu67eawfgpdgb@netronome.com>
 <CAOCk7NoXv2-8GO=VYS8dNPJF6sj=S3RbkfqQGW0kvvVmR8V1kw@mail.gmail.com>
Date: Wed, 13 Nov 2019 06:58:25 +0200
In-Reply-To: <CAOCk7NoXv2-8GO=VYS8dNPJF6sj=S3RbkfqQGW0kvvVmR8V1kw@mail.gmail.com>
 (Jeffrey Hugo's message of "Tue, 12 Nov 2019 08:53:51 -0700")
Message-ID: <878soks77y.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_205835_490315_A95D724E 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Simon Horman <simon.horman@netronome.com>, linux-wireless@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 netdev@vger.kernel.org, MSM <linux-arm-msm@vger.kernel.org>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Jeffrey Hugo <jeffrey.l.hugo@gmail.com> writes:

> On Tue, Nov 12, 2019 at 2:04 AM Simon Horman <simon.horman@netronome.com> wrote:
>>
>> On Wed, Nov 06, 2019 at 03:47:12PM -0800, Jeffrey Hugo wrote:
>> > When the BDF download QMI message has the end field set to 1, it signals
>> > the end of the transfer, and triggers the firmware to do a CRC check.  The
>> > BDFs for msm8998 devices fail this check, yet the firmware is happy to
>> > still use the BDF.  It appears that this error is not caught by the
>> > downstream drive by concidence, therefore there are production devices
>> > in the field where this issue needs to be handled otherwise we cannot
>> > support wifi on them.  So, attempt to detect this scenario as best we can
>> > and treat it as non-fatal.
>> >
>> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
>> > ---
>> >  drivers/net/wireless/ath/ath10k/qmi.c | 11 +++++++----
>> >  1 file changed, 7 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
>> > index eb618a2652db..5ff8cfc93778 100644
>> > --- a/drivers/net/wireless/ath/ath10k/qmi.c
>> > +++ b/drivers/net/wireless/ath/ath10k/qmi.c
>> > @@ -265,10 +265,13 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
>> >                       goto out;
>> >
>> >               if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
>> > -                     ath10k_err(ar, "failed to download board data file: %d\n",
>> > -                                resp.resp.error);
>> > -                     ret = -EINVAL;
>> > -                     goto out;
>> > +                     if (!(req->end == 1 &&
>> > +                           resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
>>
>> Would it make sense to combine the inner and outer condition,
>> something like this (completely untested) ?
>
> I guess, make sense from what perspective?  Looks like the assembly
> ends up being the same, so it would be down to "readability" which is
> subjective - I personally don't see a major advantage to one way or
> the other.  It does look like Kalle already picked up this patch, so
> I'm guessing that if folks feel your suggestion is superior, then it
> would need to be a follow on.

Same here, it's only on the pending branch so changes are still
possible.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
