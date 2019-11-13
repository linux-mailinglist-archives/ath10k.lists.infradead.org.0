Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2526DFA93F
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 05:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3rh/e2BnAALxwUdW1dPiF+o94004nwjloH5C+/NeLU=; b=Uc4zAf661BJ5H6
	9YDH8TYxzVM+NnMod3kesgvc1o/hdURmnfu7KT41b2Be3AU98sNC/63z0ib1UgYOcS2aubGua4dNj
	UX6Jdf8zqMW5lE7ENjAclinGbjaNJpkIE+vUNhUSDrUp8M3fLY55FVA8ZhFoO2JOJSBnopcMUiyY9
	x7YE9w55ZmwdRnhcEI1GW3voEV13GIRosMRbqGJ/cHBq/5cEZoy0LgzIvddclP3i9bydSCHHx3zoe
	IxezREJdovlyHPRqUa+R19fqLc3A5N+t2+DvFXOGCLwzknO7s/owwvlFjm2Sbls1bJ1Pw2XDFdCMu
	dR7IPywujT6wal6XSMKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUkim-00064c-8e; Wed, 13 Nov 2019 04:57:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUkij-00063x-BU
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 04:57:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6EFE66088D; Wed, 13 Nov 2019 04:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573621052;
 bh=oLIySlzm4waF73QkfWLZI//4DD73A8oR0Svrmit18ig=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=a6nT/R/TiMIYmW6+PBij8zYSQ0HZZXWL4njTHt5u7l+kmOSczGQNmt5lenhNX5N2f
 b2ClmqWGOt0veWMcfR7DjY/U3W68Ccgn48kTcwEQ0+0FTBR4+0qbsUe8ZITuTEi6sj
 WmiVXZWsG2O0lFq9+f64yB3GC5aLb8ZQunfr+w74=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D687260A0A;
 Wed, 13 Nov 2019 04:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573621049;
 bh=oLIySlzm4waF73QkfWLZI//4DD73A8oR0Svrmit18ig=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=UfHIW2C9MORMYVLzwOiuDEPOLILGK1lU6oRok92Sh9zYD2uORll36UC7pBoblhQK1
 3O2rSxgHQRU0TLihMVMYqfVsbq5ABxu+pEtAEmTBl2m9LD3kMElRWxga9/fbNczTYf
 6wOwsJQcxzt68H5geCAQtOlPpNFVVCPlwKM5RuaY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D687260A0A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Fix qmi init error handling
References: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
 <20191112084225.casuncbo7z54vu4g@netronome.com>
 <CAOCk7NpNgtTSus2KtBMe=jGLFyBumVfRVxKxtHoEDUEt2-6tqQ@mail.gmail.com>
Date: Wed, 13 Nov 2019 06:57:25 +0200
In-Reply-To: <CAOCk7NpNgtTSus2KtBMe=jGLFyBumVfRVxKxtHoEDUEt2-6tqQ@mail.gmail.com>
 (Jeffrey Hugo's message of "Tue, 12 Nov 2019 08:51:28 -0700")
Message-ID: <87d0dws79m.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_205733_436131_63785885 
X-CRM114-Status: GOOD (  21.40  )
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

> On Tue, Nov 12, 2019 at 1:42 AM Simon Horman <simon.horman@netronome.com> wrote:
>>
>> On Wed, Nov 06, 2019 at 03:16:50PM -0800, Jeffrey Hugo wrote:
>> > When ath10k_qmi_init() fails, the error handling does not free the irq
>> > resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
>> > (re-)register irqs which are already registered.
>> >
>> > Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
>> > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
>> > ---
>> >  drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
>> > index fc15a0037f0e..f2a0b7aaad3b 100644
>> > --- a/drivers/net/wireless/ath/ath10k/snoc.c
>> > +++ b/drivers/net/wireless/ath/ath10k/snoc.c
>> > @@ -1729,7 +1729,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
>> >       ret = ath10k_qmi_init(ar, msa_size);
>> >       if (ret) {
>> >               ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
>> > -             goto err_core_destroy;
>> > +             goto err_free_irq;
>> >       }
>>
>> From a casual examination of the code this seems like a step in the right
>> direction. But does this error path also need to call ath10k_hw_power_off() ?
>
> It probably should.  I don't see any fatal errors from the step being
> skipped, although it might silence some regulator warnings about being
> left on.  Unlikely to be observed by most folks as I was initing the
> driver pretty early to debug some things.  Looks like Kalle already
> picked up this patch though, so I guess your suggestion would need to
> be a follow up.

Actually it's only in the pending branch, which means that the patch can
be changed or a new version can be submitted:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#patch_flow

The easiest way to check the state of a wireless patch is from
patchwork:

https://patchwork.kernel.org/patch/11231325/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#checking_state_of_patches_from_patchwork

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
