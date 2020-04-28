Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203CF1BBCFB
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 14:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTVbVyZA7MguMtZLrslwGBjFZOWpphA5SlyHb8cpN+8=; b=q7MJFBFHUAWnzH
	rGsw3pVDc0eLiWHEyXXyVsytxftKbgQwsjwnXV+turQiB+wsyW9G8y9mAXu+yMSLsp1HDcUUNBlLN
	HMdQk1n+vb8pgLWz84GCrA8lRjj3LGFP4axs1fdzFcBLocIQSVsKphCVO4dtmeBfthsnGUKq9jA+0
	TnylYo9eyuANUdIvee0o5MnQ/DNplhK80N+AY/djU1qdXg+1uAWMRBloo552Y0af9KalbckDV4ZfG
	EDtd24Ls1K0QbKa0KxBZ/a/ecBwOAO7izRpeaimQ9vDs1xDOaCwauJnYtSDftbN3e54eAOYTMlhpn
	nz0pJaVm0SUQ3+7wBnuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOxU-0002vE-Et; Tue, 28 Apr 2020 12:03:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOxG-0002tk-Vt
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 12:03:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588075403; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: References: In-Reply-To: Subject: Cc:
 To: From: Sender; bh=YxH+2DR7vWFpUoIHziSKBV2f45z4/gOayRfRydsyFKo=;
 b=TC8C+yTGmEiKtL9UF6siIQCOM5a+RwnA+oV/xx2NgdGCqYCjDCwfU8Tnrc8i2ktypZRs+u98
 dskgnX1xt8Xbp4pJGCC6m4rDRCXGy03bEXhLmPWFNBtyokky4OM+rrsLWDUUxjt1JE76V6nc
 bqUbi9TzLxp7j2/mOddtnR/nVfQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea81b20.7f3f96f10030-smtp-out-n01;
 Tue, 28 Apr 2020 12:01:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 22F95C44788; Tue, 28 Apr 2020 12:01:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E244DC433D2;
 Tue, 28 Apr 2020 12:01:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E244DC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] ath10k: increase rx buffer size to 2048
In-Reply-To: <3097447.aZuNXRJysd@sven-edge> (Sven Eckelmann's message of "Sat, 
 25 Apr 2020 13:14:42 +0200")
References: <20200205191043.21913-1-linus.luessing@c0d3.blue>
 <3300912.TRQvxCK2vZ@bentobox> <3097447.aZuNXRJysd@sven-edge>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
Date: Tue, 28 Apr 2020 15:01:28 +0300
Message-ID: <87blnblsyv.fsf@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_050324_054691_03425E3A 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, mail@adrianschmutzler.de,
 Ben Greear <greearb@candelatech.com>, "David S . Miller" <davem@davemloft.net>,
 Linus =?utf-8?Q?L=C3=BCssing?= <ll@simonwunderlich.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

U3ZlbiBFY2tlbG1hbm4gPHN2ZW5AbmFyZmF0aW9uLm9yZz4gd3JpdGVzOgoKPiBPbiBXZWRuZXNk
YXksIDEgQXByaWwgMjAyMCAwOTowMDo0OSBDRVNUIFN2ZW4gRWNrZWxtYW5uIHdyb3RlOgo+PiBP
biBXZWRuZXNkYXksIDUgRmVicnVhcnkgMjAyMCAyMDoxMDo0MyBDRVNUIExpbnVzIEzDvHNzaW5n
IHdyb3RlOgo+PiA+IEZyb206IExpbnVzIEzDvHNzaW5nIDxsbEBzaW1vbnd1bmRlcmxpY2guZGU+
Cj4+ID4gCj4+ID4gQmVmb3JlLCBvbmx5IGZyYW1lcyB3aXRoIGEgbWF4aW11bSBzaXplIG9mIDE1
MjggYnl0ZXMgY291bGQgYmUKPj4gPiB0cmFuc21pdHRlZCBiZXR3ZWVuIHR3byA4MDIuMTFzIG5v
ZGVzLgo+PiA+IAo+PiA+IEZvciBiYXRtYW4tYWR2IGZvciBpbnN0YW5jZSwgd2hpY2ggYWRkcyBp
dHMgb3duIGhlYWRlciB0byBlYWNoIGZyYW1lLAo+PiA+IHdlIHR5cGljYWxseSBuZWVkIGFuIE1U
VSBvZiBhdCBsZWFzdCAxNTMyIGJ5dGVzIHRvIGJlIGFibGUgdG8gdHJhbnNtaXQKPj4gPiB3aXRo
b3V0IGZyYWdtZW50YXRpb24uCj4+ID4gCj4+ID4gVGhpcyBwYXRjaCBub3cgaW5jcmVhc2VzIHRo
ZSBtYXhtaW11bSBmcmFtZSBzaXplIGZyb20gMTUyOCB0byAxNjU2Cj4+ID4gYnl0ZXMuCj4+IFsu
Li5dCj4+IAo+PiBAS2FsbGUsIEkgc2F3IHRoYXQgdGhpcyBwYXRjaCB3YXMgbWFya2VkIGFzIGRl
ZmVycmVkIFsxXSBidXQgSSBjb3VsZG4ndCBmaW5kIAo+PiBhbnkgbWFpbCB3aHkgaXQgd2FzIGRv
bmUgc28uIEl0IHNlZW1zIGxpa2UgdGhpcyBjdXJyZW50bHkgY3JlYXRlcyByZWFsIHdvcmxkIAo+
PiBwcm9ibGVtcyAtIHNvIHdvdWxkIGJlIG5pY2UgaWYgeW91IGNvdWxkIGV4cGxhaW4gc2hvcnRs
eSB3aGF0IGlzIGN1cnJlbnRseSAKPj4gYmxvY2tpbmcgaXRzIGFjY2VwdGFuY2UuCj4KPiBQaW5n
PwoKU29ycnkgZm9yIHRoZSBkZWxheSwgbXkgcGxhbiB3YXMgdG8gZmlyc3Qgd3JpdGUgc29tZSBk
b2N1bWVudGF0aW9uIGFib3V0CmRpZmZlcmVudCBoYXJkd2FyZSBmYW1pbGllcyBidXQgaGF2ZW4n
dCBtYW5hZ2VkIHRvIGRvIHRoYXQgeWV0LgoKTXkgcHJvYmxlbSB3aXRoIHRoaXMgcGF0Y2ggaXMg
dGhhdCBJIGRvbid0IGtub3cgd2hhdCBoYXJkd2FyZSBhbmQKZmlybXdhcmUgdmVyc2lvbnMgd2Vy
ZSB0ZXN0ZWQsIHNvIGl0IG5lZWRzIGFuYWx5c2lzIGJlZm9yZSBJIGZlZWwgc2FmZQp0byBhcHBs
eSBpdC4gVGhlIGF0aDEwayBoYXJkd2FyZSBmYW1pbGllcyBhcmUgdmVyeSBkaWZmZXJlbnQgdGhh
dCBldmVuCmlmIGEgcGF0Y2ggd29ya3MgcGVyZmVjdGx5IG9uIG9uZSBhdGgxMGsgaGFyZHdhcmUg
aXQgY291bGQgc3RpbGwgYnJlYWsKYmFkbHkgb24gYW5vdGhlciBvbmUuCgpXaGF0IG1ha2VzIG1l
IGZhc3RlciB0byBhcHBseSBhdGgxMGsgcGF0Y2hlcyBpcyB0byBoYXZlIGNvbXByZWhlbnNpdmUK
YW5hbHlzaXMgaW4gdGhlIGNvbW1pdCBsb2cuIFRoaXMgc2hvd3MgbWUgdGhlIHBhdGNoIGF1dGhv
ciBoYXMKY29uc2lkZXJlZCBhYm91dCBhbGwgaGFyZHdhcmUgZmFtaWxpZXMsIG5vdCBqdXN0IHRo
ZSBvbmUgaGUgaXMgdGVzdGluZwpvbiwgYW5kIHRoYXQgSSBkb24ndCBuZWVkIHRvIGRvIHRoZSBh
bmFseXNpcyBteXNlbGYuCgotLSAKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4v
ZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0
aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYXRoMTBrCg==
