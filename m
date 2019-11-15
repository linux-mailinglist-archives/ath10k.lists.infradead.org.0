Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF19FDCC7
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 12:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXpSYAxy2Wwle39bF3NT+gcMmqcTNMo5C4COGavOwZk=; b=W3I6A9kDvRNFRK
	W9pm/HaG1t3QjOL/fO+Dw0wMsvPsH1H9UpIt/raxxHD7GxwdayBaooj93mUZGtB2T4AwiNhzPeD4W
	X0mgKhikD4ZrVBzjvfXLhFNqsHuTYA9BPEC0hgavFhCQhehP3KMfgQw21NPxBs0Ds/aJvsDLSCCvH
	wppAkQx3VdFkljdbeM+Th3MLoHkemMh6ShCPt97LmXM98iFk5yMJBGYmhrEyOlmK0aaeWdpRMrdie
	jT0aDHNZTKwF/EhTo6nvACfAs4OL6XE2MvXUOCTnMudYMFdRyLboOqVmw3fZ3ogqo4h4ZdHF6n9Kq
	PqetpdWTqY8M0E45t0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaDk-00071K-T6; Fri, 15 Nov 2019 11:57:00 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaDh-000710-7p
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 11:56:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CA4586106C; Fri, 15 Nov 2019 11:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573819016;
 bh=NJKjstIkPCIdcN/uk64cj3+wALwzkGLn4GdQPc9agfc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W6PoPLTzo2kC0KM/iJoqcgeu4MqfpfoSLJhOB+4qFcmp2T3nOnl5VOdG86LpvSyyW
 sf0KUvhDr9zJYWfjQJwpumcr4ZkvXYdr+o8/V6N14mk1hcpAMGcJ34jtfAmLJ+bV1l
 7fIluLiJH2a9Eu6xuRoXk+5mtI5PB0hzd5K+nH7w=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (unknown [83.145.195.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D6C93601A3;
 Fri, 15 Nov 2019 11:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573819016;
 bh=NJKjstIkPCIdcN/uk64cj3+wALwzkGLn4GdQPc9agfc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W6PoPLTzo2kC0KM/iJoqcgeu4MqfpfoSLJhOB+4qFcmp2T3nOnl5VOdG86LpvSyyW
 sf0KUvhDr9zJYWfjQJwpumcr4ZkvXYdr+o8/V6N14mk1hcpAMGcJ34jtfAmLJ+bV1l
 7fIluLiJH2a9Eu6xuRoXk+5mtI5PB0hzd5K+nH7w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D6C93601A3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH net-next v2] ath10k: fix RX of frames with broken FCS in
 monitor mode
References: <20191115105612.8531-1-linus.luessing@c0d3.blue>
Date: Fri, 15 Nov 2019 13:56:45 +0200
In-Reply-To: <20191115105612.8531-1-linus.luessing@c0d3.blue> ("Linus
 \=\?utf-8\?Q\?L\=C3\=BCssing\=22's\?\= message of "Fri,
 15 Nov 2019 11:56:12 +0100")
Message-ID: <87a78xwdxe.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_035657_301611_C8E607BB 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus =?utf-8?Q?L=C3=BCssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Ben Greear <greearb@candelatech.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

TGludXMgTMO8c3NpbmcgPGxpbnVzLmx1ZXNzaW5nQGMwZDMuYmx1ZT4gd3JpdGVzOgoKPiBGcm9t
OiBMaW51cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+Cj4gU28gZmFyLCBmcmFt
ZXMgd2VyZSBmb3J3YXJkZWQgcmVnYXJkbGVzcyBvZiB0aGUgRkNTIGNvcnJlY3RuZXNzIGxlYWRp
bmcKPiB0byB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIGxpc3RlbmluZyBvbiB0aGUgbW9uaXRvciBt
b2RlIGludGVyZmFjZSB0bwo+IHJlY2VpdmUgcG90ZW50aWFsbHkgYnJva2VuIGZyYW1lcywgZXZl
biB3aXRoIHRoZSAiZmNzZmFpbCIgZmxhZyB1bnNldC4KPgo+IEJ5IGRlZmF1bHQsIHdpdGggdGhl
ICJmY3NmYWlsIiBmbGFnIG9mIGEgbW9uaXRvciBtb2RlIGludGVyZmFjZQo+IHVuc2V0LCBmcmFt
ZXMgd2l0aCBGQ1MgZXJyb3JzIHNob3VsZCBiZSBkcm9wcGVkLiBXaXRoIHRoaXMgcGF0Y2gsIHRo
ZQo+IGZjc2ZhaWwgZmxhZyBpcyB0YWtlbiBpbnRvIGFjY291bnQgY29ycmVjdGx5Lgo+Cj4gQ2M6
IFNpbW9uIFd1bmRlcmxpY2ggPHN3QHNpbW9ud3VuZGVybGljaC5kZT4KPiBTaWduZWQtb2ZmLWJ5
OiBMaW51cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgoKYXRoMTBrIHBhdGNoZXMg
Z28gYXRoLW5leHQgYnJhbmNoLCBub3QgbmV0LW5leHQuIFNvIHRvIGF2b2lkIGNvbmZ1c2lvbgpw
bGVhc2UgZG9uJ3QgbWFyayBhdGgxMGsgcGF0Y2hlcyBhcyAibmV0LW5leHQiLCBwbGVhc2UuCgo+
IC0tLQo+IFRoaXMgd2FzIHRlc3RlZCBvbiBhbiBPcGVuIE1lc2ggQTQxIGRldmljZSwgZmVhdHVy
aW5nIGEgUUNBNDAxOS4gQW5kCj4gd2l0aCB0aGlzIGZpcm13YXJlOgo+Cj4gaHR0cHM6Ly93d3cu
Y2FuZGVsYXRlY2guY29tL2Rvd25sb2Fkcy9hdGgxMGstNDAxOS0xMC00Yi9maXJtd2FyZS01LWN0
LWZ1bGwtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxMQoKSSdsbCBhZGQgdGhpcyB0ZXN0aW5nIGlu
Zm9ybWF0aW9uIHRvIHRoZSBjb21taXQgbG9nLiAoTm8gbmVlZCB0byByZXNlbmQKanVzdCBiZWNh
dXNlIG9mIGNvbW1pdCBsb2cgY2hhbmdlcykKCj4gQnV0IGZyb20gbG9va2luZyBhdCB0aGUgY29k
ZSBpdCBzZWVtcyB0aGF0IHRoZSB2YW5pbGxhIGF0aDEwayBoYXMgdGhlCj4gc2FtZSBpc3N1ZSwg
dGhlcmVmb3JlIHN1Ym1pdHRpbmcgaXQgaGVyZS4KClNvIHRoaXMgc2hvdWxkIHdvcmsgd2l0aCB0
aGUgUXVhbGNvbW0gZmlybXdhcmUgYXMgd2VsbCwgcmlnaHQ/CgotLSAKS2FsbGUgVmFsbwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxp
bmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
