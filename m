Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67F935624
	for <lists+ath10k@lfdr.de>; Wed,  5 Jun 2019 07:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZObwXzb9sytLQvyJJwJ7EaYsK47W7V6zy6Z9r1bJcPs=; b=Khvnk3E4wpPsk0
	jIW/etyb9gXXGGb82Z1coHavc4Iad+cG9sOrF95v53j8ObJ3jkTj3M6OtNUnaj+sNZ6e8NN4gV5Cp
	WU5030a0EUuR31F8+3H+GcAcUjJgL8ipGPjhmhOx9/EbFuFQHsexFqoUQ8t7Lrd62cf5uEwQzZ7mE
	3WPIAtz4KYSkFhz4mqmx3k1MH8g0NCL3qOQWmJuZidABVPIUSuYrpyVraFeyPeXNEnmYuyKeuzXMs
	jqM2RAmiInbkvnv7MiXqZhFxYFUYJUp7sIhs1Hj6W1zgCAvC4uMEs7afQkjT+dirC96v368KFWxc4
	PtM0OhRAUQ9G29lFn5Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYOB9-0008VQ-PD; Wed, 05 Jun 2019 05:09:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYOB6-0008Uy-MY
 for ath10k@lists.infradead.org; Wed, 05 Jun 2019 05:09:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E7B2560128; Wed,  5 Jun 2019 05:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559711374;
 bh=9JNoQS01PonEsk1Oa2BTehkPQ7+45DbO+eRvtzkMKkM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aEcxtgo7Uls7+F0mp1tQ2JuWXjH1O+FIkq/Vhp0us0qaCkQhvi64C8iZnripebhmI
 SvTYkoVdb3Db2fzIs9liH388A1yMMoHexpUNaNEuODhLFankfjp00oERoB7S1f+52a
 F2SyJA83K8PIgsE+KGF+HeelK/jeHyGdPZDgEIKQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BC25D60128;
 Wed,  5 Jun 2019 05:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559711374;
 bh=9JNoQS01PonEsk1Oa2BTehkPQ7+45DbO+eRvtzkMKkM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aEcxtgo7Uls7+F0mp1tQ2JuWXjH1O+FIkq/Vhp0us0qaCkQhvi64C8iZnripebhmI
 SvTYkoVdb3Db2fzIs9liH388A1yMMoHexpUNaNEuODhLFankfjp00oERoB7S1f+52a
 F2SyJA83K8PIgsE+KGF+HeelK/jeHyGdPZDgEIKQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BC25D60128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Patrick Daume <patrick.daume@dedrone.com>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
References: <1559296628.11260.4.camel@dedrone.com>
 <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
 <1559566253.12864.47.camel@dedrone.com>
Date: Wed, 05 Jun 2019 08:09:30 +0300
In-Reply-To: <1559566253.12864.47.camel@dedrone.com> (Patrick Daume's message
 of "Mon, 3 Jun 2019 12:50:54 +0000")
Message-ID: <87zhmwvcs5.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_220936_756924_AD9167D3 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

UGF0cmljayBEYXVtZSA8cGF0cmljay5kYXVtZUBkZWRyb25lLmNvbT4gd3JpdGVzOgoKPiBJIGJ1
aWxkIHRoZSBrZXJuZWw6IDUuMS4wLXJjNy13dC1hdGgrIGZyb20gdGhlIHJlcG9zaXRvcnkgKGdp
dDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9rdmFsby9hdGguZ2l0
KcKgCj4gYW5kIHJlcGxhY2UgV0xBTi5STS40LjQuMS0wMDEzMi1RQ0FSTVNXUC0xIHdpdGggIi9s
aWIvZmlybXdhcmUvYXRoMTBrL1FDQTYxNzQvaHczLjAvZmlybXdhcmUtNi5iaW4iLsKgCj4KPiBT
YW1lIGJlaGF2aW9pdXIgYXMgb2JzZXJ2ZWQgYmVmb3JlLiBUaGUgaW50ZXJmYWNlIHJlY2VpdmVz
IG5vIGRhdGEgaW4gbW9uaXRvcmluZyBtb2RlLiBXaGlsZSBtYW5hZ2VkIG1vZGUgc2VlbXMgdG8g
d29yay4KPgoKWy4uLl0KCj4gW8KgwqDCoMKgNC45NDg3NzFdIGF0aDEwa19wY2kgMDAwMDowMjow
MC4wOiBxY2E2MTc0IGh3My4yIHRhcmdldCAweDA1MDMwMDAwIGNoaXBfaWQgMHgwMDM0MGFmZiBz
dWIgMWRhYzowMjYxCj4gW8KgwqDCoMKgNC45NDg3NzNdIGF0aDEwa19wY2kgMDAwMDowMjowMC4w
OiBrY29uZmlnIGRlYnVnIDAgZGVidWdmcyAxIHRyYWNpbmcgMSBkZnMgMCB0ZXN0bW9kZSAwCj4g
W8KgwqDCoMKgNC45NDkxODJdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBmaXJtd2FyZSB2ZXIg
V0xBTi5STS40LjQuMS0wMDEzMi1RQ0FSTVNXUC0xIGFwaSA2IGZlYXR1cmVzIHdvd2xhbixpZ25v
cmUtb3RwLG1mcCBjcmMzMiA3OWY0ZGI4Ngo+IFvCoMKgwqDCoDUuMDE1MzAwXSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogYm9hcmRfZmlsZSBhcGkgMiBibWlfaWQgTi9BIGNyYzMyIDRlZDM1Njll
Cj4gW8KgwqDCoMKgNS4wNzczNTFdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBVQVJUIHByaW50
cyBlbmFibGVkCj4gW8KgwqDCoMKgNS4xNDU2MDhdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiB1
bnN1cHBvcnRlZCBIVEMgc2VydmljZSBpZDogMTUzNgo+IFvCoMKgwqDCoDUuMzk5MjQ4XSBhdGgx
MGtfcGNpIDAwMDA6MDI6MDAuMDogaHR0LXZlciAzLjYwIHdtaS1vcCA0IGh0dC1vcCAzIGNhbCBv
dHAgbWF4LXN0YSAzMiByYXcgMCBod2NyeXB0byAxCgpJbmRlZWQsIHRoYXQgZmlybXdhcmUgdmVy
c2lvbiBkb2VzIG5vdCBoYXZlIHJhdyBtb2RlIGVuYWJsZWQgKCJyYXcgMCIpLgpDYW4geW91IHRy
eSB0aGlzIG9uZToKCmh0dHBzOi8vZ2l0aHViLmNvbS9rdmFsby9hdGgxMGstZmlybXdhcmUvYmxv
Yi9tYXN0ZXIvUUNBNjE3NC9odzMuMC80LjQuMS5jMy9maXJtd2FyZS02LmJpbl9XTEFOLlJNLjQu
NC4xLmMzLTAwMDMwCgotLSAKS2FsbGUgVmFsbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0
aDEwawo=
