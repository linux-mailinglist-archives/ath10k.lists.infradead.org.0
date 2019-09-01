Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D556A485F
	for <lists+ath10k@lfdr.de>; Sun,  1 Sep 2019 10:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aB7uMGAi+xXdJMyb0uUcaT5jr0gPXAtnGNL9D2dJwT0=; b=nL6ZEhh1XlAOZk
	cjLS+G4jnAxJPc/NOfb0H7t1gLtfPXi7aSyTOyJ+iCebBVsqT4YwNnqhmBlZYZISoUTl+PJZJfTON
	xYz3AVpqFPh8dFQJsKvQBCbvZ/HzwDEzmL+F3yj+tx66G+BMKKJlG8ynfT7Eiv4LurLasqGU1Xw/i
	lMarfyQb2/BZnIfFT+nEM+hEXn89f50IN0V2UwpxonzIn5XRsX0CScY166B40OasSUn4WRN0kNKbV
	LaCYzb82/yiMRUcqjDbmrR++BEuoiF/kr/qSifS0DqWueKsIJ3S2Se8a3u2RtpJUmrRDRckrudigO
	vE2cZVmtZ4KhSP4Rwf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4KsO-0006HA-0w; Sun, 01 Sep 2019 08:06:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4KsG-0006Gr-Jt
 for ath10k@lists.infradead.org; Sun, 01 Sep 2019 08:06:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A92A3607EB; Sun,  1 Sep 2019 08:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567325171;
 bh=0di5kjor58mU5K1O24hMMYng4gdlXWeKha9jYaqTdTA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fD8dwNEX2JuXvfAO577IcFn3gC9Rl2D10xiWFBqIDACcvN74JtlVKjzAZ19OfYCVC
 4JE2HDvKBzDCpC7xYBDF3gqXaMgxSp6QQzSkpGRZHCGDBRaRyNSbwq+N3tGmVdw4DZ
 mH/rgg5ZYO521IYKKU5h5gjmrs6cYC/ByPs93qVc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85C4660159;
 Sun,  1 Sep 2019 08:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567325171;
 bh=0di5kjor58mU5K1O24hMMYng4gdlXWeKha9jYaqTdTA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fD8dwNEX2JuXvfAO577IcFn3gC9Rl2D10xiWFBqIDACcvN74JtlVKjzAZ19OfYCVC
 4JE2HDvKBzDCpC7xYBDF3gqXaMgxSp6QQzSkpGRZHCGDBRaRyNSbwq+N3tGmVdw4DZ
 mH/rgg5ZYO521IYKKU5h5gjmrs6cYC/ByPs93qVc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85C4660159
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 2/2] Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
References: <20190804003101.11541-1-benquike@gmail.com>
 <20190831213139.GA32507@roeck-us.net>
Date: Sun, 01 Sep 2019 11:06:05 +0300
In-Reply-To: <20190831213139.GA32507@roeck-us.net> (Guenter Roeck's message of
 "Sat, 31 Aug 2019 14:31:39 -0700")
Message-ID: <87ftlgqw42.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_010612_698770_AB581799 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathias Payer <mathias.payer@nebelwelt.net>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Hui Peng <benquike@gmail.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Guenter Roeck <linux@roeck-us.net> writes:

> Hi,
>
> On Sat, Aug 03, 2019 at 08:31:01PM -0400, Hui Peng wrote:
>> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
>> are initialized to point to the containing `ath10k_usb` object
>> according to endpoint descriptors read from the device side, as shown
>> below in `ath10k_usb_setup_pipe_resources`:
>> 
>> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
>>         endpoint = &iface_desc->endpoint[i].desc;
>> 
>>         // get the address from endpoint descriptor
>>         pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
>>                                                 endpoint->bEndpointAddress,
>>                                                 &urbcount);
>>         ......
>>         // select the pipe object
>>         pipe = &ar_usb->pipes[pipe_num];
>> 
>>         // initialize the ar_usb field
>>         pipe->ar_usb = ar_usb;
>> }
>> 
>> The driver assumes that the addresses reported in endpoint
>> descriptors from device side  to be complete. If a device is
>> malicious and does not report complete addresses, it may trigger
>> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
>> `ath10k_usb_free_urb_to_pipe`.
>> 
>> This patch fixes the bug by preventing potential NULL-ptr-deref.
>> 
>> Signed-off-by: Hui Peng <benquike@gmail.com>
>> Reported-by: Hui Peng <benquike@gmail.com>
>> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
>
> This patch fixes CVE-2019-15099, which has CVSS scores of 7.5 (CVSS 3.0)
> and 7.8 (CVSS 2.0). Yet, I don't find it in the upstream kernel or in Linux
> next.
>
> Is the patch going to be applied to the upstream kernel anytime soon ?

Same answer as in patch 1:

https://patchwork.kernel.org/patch/11074655/

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
