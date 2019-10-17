Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DFEDA9E8
	for <lists+ath10k@lfdr.de>; Thu, 17 Oct 2019 12:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtJCalFlT8k+cspx7kJ9ldQ8M1qOvHwRPL2bNb5YT0g=; b=Z0SqyTw3ng0qk2
	Wiu5l9V9SJf021AHDmEKL8rEchnqrwYm92Ld6xG/2RWku9UqRmFoWf5IsUNkJ3msmknDc0Cj4v8n9
	CZRb7DNIpAg7I0Ghcbjeh/axR1sjlOVLWUD3qCM9Wsl/yGfEl9BYMDeH4dWzQ88lwlR4yDdVlIzAX
	HKNUuC4YB/Zq3teJDEZPmPz4//gE5QRBC3X64j/+xnN4NVLspZcZKvu62W6s2aE1J70nUvfEwq9pD
	rTZupvFDQoPAwuWWvChh9LdIZyCWmV1mbfcRC+yYQ8tukC263DrQvCn474ej2ZNmGGv2WE7V6TkTv
	q6JExvDhlkWk4B/EhfWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2yi-0004YF-C7; Thu, 17 Oct 2019 10:25:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2yf-0004Y2-AP
 for ath10k@bombadil.infradead.org; Thu, 17 Oct 2019 10:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=To:References:Message-Id:
 Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
 Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+A0TPRZjjKsZIese27m8Vlgf1n0E8ylfi5fincgdNVI=; b=h86dzrLE6agefQtbhq0rhjRoK
 EvU2x/LDoPrZgIw89pU0koYdiYf4BfM+joMgnT3aO4WrWBMWPJXCD831e6E4dXK58PmUPknGih7P6
 bs5vsko2csVBFAgLj4/jbmL+Si2MzEyfutMeyJfLdJJbAuYqyKZE7sFK8ppv7ASMNDJ8mA6smALMJ
 migS/bwQKzXzOUhvd48/pV1YVovmj0YxANSCdR08gD4+TmiE3qx5z3XQVMtwUPlaqFYnP4R2A9rf+
 kOoK2gEeHf4k2YVQueAWv8uosJtP6pSaFJmo0QDaaWjAgxBVwiomfIRtSvUwMpjipWk2Ge4axGTsf
 Ymxd2pXew==;
Received: from mout.gmx.net ([212.227.17.22])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2z4-0004uV-A4
 for ath10k@lists.infradead.org; Thu, 17 Oct 2019 10:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571307930;
 bh=fj0aLJL04Cljx/EpmdEme6rx3RiEH5WUSfHpYMZDfT0=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=d7Maz2zdelvOHhIMj06KtYMaH4EvMFW+64icEtphCK3eFraArN3mT5U5H4MvJR4r1
 OZ5+E9FB1XYPaZnTS6FCGBrNv4sSp22ImtGTzlEFvb97iy8N4MEyiXwzFSCYMVIdFY
 pGKwT4IpAMLc5GBAOtt0KzSoGwkb/xK6VAlktDN4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.33] ([134.76.241.253]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1McpJq-1hmXQu1Q8o-00ZxFi; Thu, 17
 Oct 2019 12:25:30 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Make-wifi-fast] [PATCH v2 4/4] mac80211: Use Airtime-based Queue
 Limits (AQL) on packet dequeue
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87lftjfz51.fsf@toke.dk>
Date: Thu, 17 Oct 2019 12:25:28 +0200
Message-Id: <18FC6F1D-084C-44BD-87E7-C9F394D6FCD1@gmx.de>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
 <87o8yfg0zo.fsf@toke.dk> <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
 <87lftjfz51.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:4B8f/OdHzKJ/N+8XhMSPAZY960RiNpZCT1OI8ogSGgfY6mN8+Si
 pSm8aCY8UQOBmIqYOoDXkzOWaYc5aOU26F8tXjHMjIDmVURn9PBJ+mGd0KN2xv3ePJX/j00
 d4b9voeXPPeFxP8NS2CwvT+7wfoTcBTa5tvaK3Y8guiCLcVQhWjU1CrUIKumAwlpDkIsDoE
 o+d/jMFpRRT2khTGPuw7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ha0b/pNVEVg=:htOSqfPFchVJRPRpVyp0YT
 xYpuO7crTdnPvSF5+E3Jp2ZvgD96i6hXLGACBedYmM8/inXxVRkKFsFkAcUL7EFfpUUkp/QEw
 BgCo9pH7OJNpN0Xp4p9QKe2NuAfw6HC3yYNMMv1JayCrNS9omSpya6GH744KYOc5rSCXiK6aW
 4A4xxjDaG6N0n5luLp1kjZ57Oe3gPTgfOACvg/3tQjC3IEDZ11fNBv7bk8MmHnijPtVThmpqS
 FPn+PXpiRMk6YkfzNsAWxkuBRzxKh7/Qo7nHuJsq8pj43VdJLmggUXOs6Ov2Xtc6wv2rxFOaP
 smMdOFeLzOi5PIdr3bddBWW66bRAlsqOCu3Xywt6U14cLvc+TmAPZM0GeTC1hv7ewjoHVnJRj
 myxY5OMQ5erA+RxgtvVB3M1vZNUU1fy4YlNqdZR7CJlc9/94+ADy7PDOG/yabwiMGcFrcimBD
 WBjx+aZB4p165Hw2/WAO3zJmqETR9LYnxtyRsamE9zJhomWHs2djKEDqu2EQQpsikbjyy7ql0
 Gtz4Bnk9w0aVqDrZsAdjClB+jBqlCIBqQiSUGsxtlWQfh4sw0aXNQ16WQ+5cJmSwdcI9kbAj6
 tVWceuDwDMbYXrYgtikoxM7tqfp5H5Zy+0fF48/Ll3neFCLU/CIwW2cyQbWDNuCrjiE4WxUZe
 xg1/D4HE5bP0TQMLCxt9CG6vPVzYXMad2q6fCSLjVOBNGSmPO8xTfsLHNbdPN4uo0D7UHLUnP
 EDxqXEf/wOlUYyOhHsVk/iscUqKaoCUHJZLb9fxlH/s4bxcRreZbxBIaL9ZCMjG8o1wv19pKD
 WrSs9UKR4FFZQXXBB44gN3Cj9BMDbj9etqhtjh9nEzUDg2avRaRxZzqSUbm5DxMs0u3q/Wu6u
 wZF7pCB3vQIh8MwHpQQLWvFqL62duqFGLcDF9bcIw32EtY/Rkqn9daP+JNEgLtmJjsQ2LJob1
 5iyTeRhu/fOyY0mG9n6SfXMSl8CDZHMApo2PSlellWoUYxxiOHLy5h+NGH9Xuht7z6uQjaUob
 6WH9OoBF6XzyqTM7sch/+y4XYDj6B4cHS/yoRFqp8ciZI34xqzSU3IAJnqXIAUXQpsJLfgqMR
 s/1Evo6afyJsbz6LQT7JFtpPS12Uk85pB/VvgoBnpNnLKojy4NlfuV1xrmpC6OX7OJdIV6Iit
 hQYf/Teq566wX7aITCQ9Y8zV/Di+NgAVJdXrQ5jhBWZFr99tp5sfIYbFilNj14hHIMcckX0W0
 zbelhnTYOEYz4/xhikc8LGFfE7zOMgCr1c35AUlsp/LHzUnCzuBHhkOdlPR4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_112618_414357_2B63CB58 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (moeller0[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moeller0[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V2hhdCBhYm91dCBWTEFOIHRhZ3M/CgpCZXN0IFJlZ2FyZHMKCVNlYmFzdGlhbgoKPiBPbiBPY3Qg
MTcsIDIwMTksIGF0IDEyOjI0LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gCj4gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3Jp
dGVzOgo+IAo+Pj4gT24gT2N0IDE3LCAyMDE5LCBhdCAxMTo0NCwgVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBLYW4gWWFuIDxreWFuQGdv
b2dsZS5jb20+IHdyaXRlczoKPj4+IAo+Pj4+IEhpIFRva2UsCj4+Pj4gCj4+Pj4gVGhhbmtzIGZv
ciBnZXR0aW5nIHRoaXMgZG9uZSEgSSB3aWxsIGdpdmUgaXQgYSB0cnkgaW4gdGhlIG5leHQgZmV3
Cj4+Pj4gZGF5cy4gIEEgZmV3IGNvbW1lbnRzOgo+Pj4+IAo+Pj4+PiBUaGUgZXN0aW1hdGVkIGFp
cnRpbWUgZm9yIGVhY2ggc2tiIGlzIHN0b3JlZCBpbiB0aGUgdHhfaW5mbywgc28gd2UgY2FuCj4+
Pj4+IHN1YnRyYWN0IHRoZSBzYW1lIGFtb3VudCBmcm9tIHRoZSBydW5uaW5nIHRvdGFsIHdoZW4g
dGhlIHNrYiBpcyBmcmVlZCBvcgo+Pj4+PiByZWN5Y2xlZC4KPj4+PiAKPj4+PiBMb29rcyBsaWtl
IGF0aDEwayBkcml2ZXIgemVybyBvdXQgdGhlIGluZm8tPnN0YXR1cyBiZWZvcmUgY2FsbGluZwo+
Pj4+IGllZWU4MDIxMV90eF9zdGF0dXMoLi4uKToKPj4+PiBpbnQgYXRoMTBrX3R4cnhfdHhfdW5y
ZWYoc3RydWN0IGF0aDEwa19odHQgKmh0dCwKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGNv
bnN0IHN0cnVjdCBodHRfdHhfZG9uZSAqdHhfZG9uZSkKPj4+PiB7Cj4+Pj4gLi4uCj4+Pj4gICAg
ICAgaW5mbyA9IElFRUU4MDIxMV9TS0JfQ0IobXNkdSk7Cj4+Pj4gICAgICAgbWVtc2V0KCZpbmZv
LT5zdGF0dXMsIDAsIHNpemVvZihpbmZvLT5zdGF0dXMpKTsKPj4+PiAuLi4KPj4+PiAgICAgICBp
ZWVlODAyMTFfdHhfc3RhdHVzKGh0dC0+YXItPmh3LCBtc2R1KTsKPj4+PiB9Cj4+PiAKPj4+IEFo
LCBidWdnZXI7IEkgd2FzIGFmcmFpZCB3ZSdkIHJ1biBpbnRvIHRoaXMuIEEgcXVpY2sgZ3JlcCBp
bmRpY2F0ZXMgdGhhdAo+Pj4gaXQncyBvbmx5IGF0aDEwayBhbmQgaXdsIHRoYXQgZG8gdGhpcywg
dGhvdWdoLCBzbyBpdCdzIHByb2JhYmx5Cj4+PiBtYW5hZ2VhYmxlIHRvIGp1c3QgZml4IHRoaXMu
IEkgdGhpbmsgdGhlIHNpbXBsZXN0IHNvbHV0aW9uIGlzIGp1c3QgdG8KPj4+IHJlc3RvcmUgdGhl
IGZpZWxkIGFmdGVyIGNsZWFyaW5nLCBubz8KPj4+IAo+Pj4+IFdlIG5lZWQgZWl0aGVyIHJlc3Rv
cmUgdGhlIGluZm8tPnN0YXR1cy50eF90aW1lX2VzdCBvciBjYWxsaW5nCj4+Pj4gaWVlZTgwMjEx
X3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkgaW4gYXRoMTBrIGJlZm9yZSB0eF90aW1lX2Vz
dAo+Pj4+IGdldCBlcmFzZWQuCj4+Pj4gCj4+Pj4+ICsgICAgICAgaWYgKGxvY2FsLT5haXJ0aW1l
X2ZsYWdzICYgQUlSVElNRV9VU0VfQVFMKSB7Cj4+Pj4+ICsgICAgICAgICAgICAgICBhaXJ0aW1l
ID0gaWVlZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZShodywgdmlmLCB0eHEtPnN0YSwK
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHNrYi0+bGVuICsgMzgpOwo+Pj4+IAo+Pj4+IEkgdGhpbmsgaXQgaXMgYmV0dGVy
IHRvIHB1dCB0aGUgIisgIDM4IiB0aGF0IHRha2VzIGNhcmUgb2YgdGhlIGhlYWRlcgo+Pj4+IG92
ZXJoZWFkIGluc2lkZSBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKCkuCj4+PiAK
Pj4+IEhtbSwgbm8gc3Ryb25nIG9waW5pb24gYWJvdXQgdGhpczsgYnV0IHllYWgsIHNpbmNlIHdl
IGhhdmUgYSBkZWRpY2F0ZWQKPj4+IGZ1bmN0aW9uIGZvciB0aGlzIHVzZSBJIGd1ZXNzIHRoZXJl
J3Mgbm8gaGFybSBpbiBhZGRpbmcgaXQgdGhlcmUgOikKPj4+IAo+PiAKPj4gU2lsbHkgcXVlc3Rp
b24sIGlzIHRoaXMgT3ZlcmhlYWQgZ3VhcmFudGVlZCB0byBiZSAzOCBCeXRlcyBmb3IgYWxsCj4+
IGV0ZXJuaXR5PyBPdGhlcndpc2UgYSB2YXJpYWJsZSBvciBhIHByZXByb2Nlc3NvciBjb25zdGFu
dCBtaWdodCBiZQo+PiBtb3JlIGZ1dHVyZSBwcm9vZj8KPiAKPiBXZWxsLCB5ZWFoLCBhcyBsb25n
IGFzIHdlJ3JlIHNlbmRpbmcgRXRoZXJuZXQgcGFja2V0cy4gV2hpY2ggaXMga2luZGEKPiBiYWtl
ZCBpbnRvIHRoZSBXaUZpIHN0YW5kYXJkIDopCj4gCj4gLVRva2UKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEw
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYXRoMTBrCg==
