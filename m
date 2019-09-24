Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AED3BC4E4
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 11:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iim1dQSOl4RjcnlHk/YjolckDD6yb0GwQDihp1dWq5Q=; b=MJuQkNdgDlw3oqPV/LRNR8jKE
	LXEWaK7qJRbKQB/fMydXajPOWiod5G5Eirj+rEbDB01cws5Pmx3XPNAc+qauukXnAq+P10a81SJti
	1C9Uy/3k1I0drF07/iEHJNlVuqMuClnr/FAMx2Xomr9hjCVSE26FGAskPR0FlTWgOBeukIBIqcfpw
	LyZjT6af59Xz6KSNDD6QtpswAYdpbaL9YojMSxeWsnB8jigegdxpls+ng2sdhPqM3tqCELYiG9+td
	650GysYJmQQP0vhWJUOFDFojjyg/8QShouvTI9y3OfShoD2Wtg1XB18EUNVs+pkBNogV7X2BmzUK3
	15b0oTNnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChBT-0004km-JV; Tue, 24 Sep 2019 09:32:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChBK-0004kI-Pv
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 09:32:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2AE66602F2; Tue, 24 Sep 2019 09:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569317546;
 bh=dX/ugPSN7GpC2cgkwy21GdHlwo09xtkP3Ul+IY1tFL0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZgCy1WNYrBnOd+22Y8zh93gvyD3YGWlPbkk9h57Xod5TKwiAFDaAmSC8xvdpk/hXL
 OQLCrGOOmB5NgT6cdq7Aqa82oPvvTe+t7h//jWyJCDly8VO86vvf5ZN86uH/cKAmBj
 ooEOlSC7mobDla4HCgkK5xTr6lVMf2AaiV9yJHck=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id AF4BE602F2;
 Tue, 24 Sep 2019 09:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569317545;
 bh=dX/ugPSN7GpC2cgkwy21GdHlwo09xtkP3Ul+IY1tFL0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eEDeUK/v+XeG7Rtf3FmL97hu5qtJPfnbf6u/M++KT4QSEQearGQLXkRNe7Q7fFcWF
 /G3odYOii0ze8i03zpG3pOCcgDJ8d0lcDRtoPqH2KEI/L7bSRr8e2zwX+zxsEkKGdV
 uWOFWnPf+0pDF/jiTnhTvFAzn7P2IUL6z81lJKu8=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 17:32:25 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v5 3/8] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <871rw79ycy.fsf@codeaurora.org>
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-4-git-send-email-wgong@codeaurora.org>
 <871rw79ycy.fsf@codeaurora.org>
Message-ID: <5f2387dc4c97a5edff78fa6ce7dcd401@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_023226_867520_D6E0D042 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-23 17:05, Kalle Valo wrote:

>> 
>> +#define ATH10K_HTC_FLAG_BUNDLE_MASK 0xF0
>> +#define ATH10K_HTC_BUNDLE_EXTRA_MASK GENMASK(3, 2)
>> +
>> +#define ATH10K_HTC_GET_BUNDLE_COUNT(flags) \
>> +	    (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
>> +	    (FIELD_GET(ATH10K_HTC_BUNDLE_EXTRA_MASK, (flags)) << 4))
> 
> When using FIELD_GET() there should be no need to use '<<', the main id
> of FIELD_GET() and BITMASK() is that there's no need do any manual
> shifting. So I suspect something is wrong here, but didn't have time to
> investigate.
the value is like this:
the u8 flags:
b7 b6 b5 b4 b3 b2 b1 b0
the count= 0Bb7b6b5b4 + 0Bb3b2 << 4
FIELD_GET is to >>, not <<
so it need to manual shift for the "0Bb3b2 << 4"

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
