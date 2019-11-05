Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3BBF0401
	for <lists+ath10k@lfdr.de>; Tue,  5 Nov 2019 18:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iN2IHIvO10KxN3ZrrJ0ySw8aVNImESQMVLMz7oeo+xQ=; b=UAHeemxV2XxFXtWHxVlKJWfIn
	++rFzuerPrDQ5kS5KoqvCcY13mwKEcT+C4bVuC4ixklVfxpAA2EaAtNddgh2HS6k4BbC87LQIji8o
	SI7yaOwLEcISwbNziE6+vLZ7C4y8oLXIkEhZuElEeQiBvIQCeP3tbWdvnpi8msL2SPRYMGrzhuTfu
	u9djLiWNykl+zJR4Hg+nuL/N7T06ZG0aty5kWUGLtdizmH+wlMDrZbOnKkUZWC/0UAGNQ2ZvqxCOk
	QtVjvBt985masZsA6nWXgTVmprRM5G+L17DHTHQMwScanhAkGj3ASq1ybzhlIOU0ivUQ3aSVIx2S6
	BXALm2JOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2UI-0005XH-RH; Tue, 05 Nov 2019 17:19:26 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2UE-0005WQ-5q
 for ath10k@lists.infradead.org; Tue, 05 Nov 2019 17:19:23 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 21E6213C358;
 Tue,  5 Nov 2019 09:19:21 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 21E6213C358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572974361;
 bh=V8NJR7727iNB0uRPImQP0tHz/e9UqOWH40a21R0azV8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=anxDgG5kmOBLuJloing6yzi9LbtxzXQYpDKK0XrP67AxTrj8ubzPeNlR5tTNMDzCt
 IbBaU/HYUSFPP3eKE2wSsVTXmNApL4ZDVf0DIHueRsoC+4Efvw6ZkGHWOn/nlULJ9Q
 r/LKJCq93/fqCY303ZOPuUAfHSdCLRcw7RWN7+xE=
Subject: Re: [PATCH net-next] ath10k: fix RX of frames with broken FCS in
 monitor mode
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 ath10k@lists.infradead.org
References: <20191105164932.11799-1-linus.luessing@c0d3.blue>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <927cea69-7afc-5c35-df8d-9813392e8928@candelatech.com>
Date: Tue, 5 Nov 2019 09:19:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191105164932.11799-1-linus.luessing@c0d3.blue>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_091922_266626_8359FA1D 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMTEvNS8xOSA4OjQ5IEFNLCBMaW51cyBMw7xzc2luZyB3cm90ZToKPiBGcm9tOiBMaW51cyBM
w7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+IAo+IFNvIGZhciwgZnJhbWVzIHdlcmUg
Zm9yd2FyZGVkIHJlZ2FyZGxlc3Mgb2YgdGhlIEZDUyBjb3JyZWN0bmVzcyBsZWFkaW5nCj4gdG8g
dXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBsaXN0ZW5pbmcgb24gdGhlIG1vbml0b3IgbW9kZSBpbnRl
cmZhY2UgdG8KPiByZWNlaXZlIHBvdGVudGlhbGx5IGJyb2tlbiBmcmFtZXMsIGV2ZW4gd2l0aCB0
aGUgImZjc2ZhaWwiIGZsYWcgdW5zZXQuCj4gCj4gQnkgZGVmYXVsdCwgd2l0aCB0aGUgImZjc2Zh
aWwiIGZsYWcgb2YgYSBtb25pdG9yIG1vZGUgaW50ZXJmYWNlCj4gdW5zZXQsIGZyYW1lcyB3aXRo
IEZDUyBlcnJvcnMgc2hvdWxkIGJlIGRyb3BwZWQuIFdpdGggdGhpcyBwYXRjaCwgdGhlCj4gZmNz
ZmFpbCBmbGFnIGlzIHRha2VuIGludG8gYWNjb3VudCBjb3JyZWN0bHkuCj4gCj4gQ2M6IFNpbW9u
IFd1bmRlcmxpY2ggPHN3QHNpbW9ud3VuZGVybGljaC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBMaW51
cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+IC0tLQo+IFRoaXMgd2FzIHRlc3Rl
ZCBvbiBhbiBPcGVuIE1lc2ggQTQxIGRldmljZSwgZmVhdHVyaW5nIGEgUUNBNDAxOS4gQW5kCj4g
d2l0aCB0aGlzIGZpcm13YXJlOgo+IAo+IGh0dHBzOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbS9kb3du
bG9hZHMvYXRoMTBrLTQwMTktMTAtNGIvZmlybXdhcmUtNS1jdC1mdWxsLWNvbW11bml0eS0xMi5i
aW4tbGVkZS4wMTEKPiAKPiBCdXQgZnJvbSBsb29raW5nIGF0IHRoZSBjb2RlIGl0IHNlZW1zIHRo
YXQgdGhlIHZhbmlsbGEgYXRoMTBrIGhhcyB0aGUKPiBzYW1lIGlzc3VlLCB0aGVyZWZvcmUgc3Vi
bWl0dGluZyBpdCBoZXJlLgo+IAo+IENoYW5nZWxvZyBSRkMtPnYxOgo+IAo+ICogcmVtb3ZlZCAi
YXItPm1vbml0b3IiIGNoZWNrCj4gKiBhZGRlZCBhIGRlYnVnIGNvdW50ZXIKClRoYW5rcyBmb3Ig
YWRkaW5nIHRoZSBjb3VudGVyLiAgU2luY2UgaXQgdXMgdTMyLCBJIGRvdWJ0IHlvdSBuZWVkIHRo
ZSBzcGluIGxvY2sKYmVsb3c/CgotLUJlbgoKPiArCWlmICghKGFyLT5maWx0ZXJfZmxhZ3MgJiBG
SUZfRkNTRkFJTCkgJiYKPiArCSAgICBzdGF0dXMtPmZsYWcgJiBSWF9GTEFHX0ZBSUxFRF9GQ1Nf
Q1JDKSB7Cj4gKwkJc3Bpbl9sb2NrX2JoKCZhci0+ZGF0YV9sb2NrKTsKPiArCQlhci0+c3RhdHMu
cnhfY3JjX2Vycl9kcm9wKys7Cj4gKwkJc3Bpbl91bmxvY2tfYmgoJmFyLT5kYXRhX2xvY2spOwo+
ICsKPiArCQlkZXZfa2ZyZWVfc2tiX2FueShza2IpOwo+ICsJCXJldHVybjsKPiArCX0KPiArCj4g
ICAJYXRoMTBrX2RiZyhhciwgQVRIMTBLX0RCR19EQVRBLAo+ICAgCQkgICAicnggc2tiICVwSyBs
ZW4gJXUgcGVlciAlcE0gJXMgJXMgc24gJXUgJXMlcyVzJXMlcyVzICVzcmF0ZV9pZHggJXUgdmh0
X25zcyAldSBmcmVxICV1IGJhbmQgJXUgZmxhZyAweCV4IGZjcy1lcnIgJWkgbWljLWVyciAlaSBh
bXNkdS1tb3JlICVpXG4iLAo+ICAgCQkgICBza2IsCj4gCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVh
cmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cu
Y2FuZGVsYXRlY2guY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
