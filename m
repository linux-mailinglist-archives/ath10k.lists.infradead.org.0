Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A554DA978
	for <lists+ath10k@lfdr.de>; Thu, 17 Oct 2019 11:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQehY/2IVC/iCTsQArWUVhdoFxrki7sTo/lpxWhBPMg=; b=Cid2/oW9szzmB/
	0ZcbiHDA2/TGRhiiZjNGcABcfaRJrFsmYD6PpnHTSaT0PdSW1Dn6XoRrVbDisXZ0YjjbrcKL2I0qu
	NvB8RPHyaSe1RgcU0DO6G6SJ+8NXuT/PUTXKJWJSlkiATQlWGPIshFkQznvKG4CY0dmCy4A5g8LlO
	Dhn7AkfdgiKcFiMAU+/KjCuIXoSzGdtIVwB7q35I7pz8omIJr3Z4dUFGmF/nHuoIgIy0EwqTXRMiv
	ibR/9HdGHv8P5Hdq9RpAB2fbTCgjrYDOrSYKjdz4HkUDnNC8eisBADCS/H5s9ZErngD0TyHTuR3Uq
	PXZaTzxpNjv+AquZXUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2Xl-0002bq-3w; Thu, 17 Oct 2019 09:58:05 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Xg-0002bM-Pi
 for ath10k@lists.infradead.org; Thu, 17 Oct 2019 09:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571306259;
 bh=r0X83n+I3P0JzGYWN7EBmaDwAvoICtNlno+n3xjeVXg=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=LgB3dpGwIrXUfgBGMNqpjZLP3uIDAeevzUNUv05Hhp4yZDEaxLbbu52nXUbccve18
 UYH9uoTEXbVdc1/Q3wF5s3MNWRyVl97WTaiWSBMd9/HMCXRpPOxqKNBpkLlUjEhPLz
 tmoiZKyX9P3gHLtlYrpw5gIvKG4inW1FtgEuNncY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.33] ([134.76.241.253]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MsYux-1i2GGe2OQl-00u5E0; Thu, 17
 Oct 2019 11:57:39 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Make-wifi-fast] [PATCH v2 4/4] mac80211: Use Airtime-based Queue
 Limits (AQL) on packet dequeue
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87o8yfg0zo.fsf@toke.dk>
Date: Thu, 17 Oct 2019 11:57:36 +0200
Message-Id: <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
 <87o8yfg0zo.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:aPvGsXTJoLp79eXyZQgtYx6V2rsHlhkZQUXEDzqSfnRUsXX1voi
 4fXbxehMwFhlhEakCcT4//VKTg79SzVmZjJNVswMa5fBK7cq8AYOROHKe/YTtC+Z3tcXyxS
 L+VwaJbaC5rhQ8LNvzRu2jLOW6hkIpc+bwn7RfnzRnI0NpAjw6Q3aXYHPD/aycmLCcjmG4K
 I4yXHqC7YDNPv9/7yQcog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Qnl/WNGe1/A=:6veXLPY1zNodt9uhjHOkQV
 BTS7PlO6ZuDJ9SyKve4tWCAlNtmHgAbReCu5SlbhbvNpXwlT1Hy+ogEpPYG+0a4YNHduBPff/
 O3ycrKVeg+LtXJF2dn7414esUX0wqZksHAHa25bseOU3/nTBYuinB9PBuL0jn/WhDOPGJpPHp
 22EqFziB4XLXrsQ3Kry00ccenwN3j3VD67IoP0oqNe8bXN8krm+bMjRjdMUXgBe1RfUKUyBeq
 /BtWyb7BZaPlKwOsAztF67sLns+74lubEPfYv5/tfTd97cwZjedIg7ZtPY+SgjvA+3fKaq8UT
 tF/mlU4zZgiS+Ky9Jhz/XfPquvOhtDS0vlsvx63SlJ0IOYy14wllJ+abl+YQ8ShiM8/uzwfaw
 nYhQpftWa33CODrvc9DRPzthtDBJyksm1QL3mktQrB6OFooih2I8mkCtVBlRqyd6aKNnUMvI0
 3QGt9a/GF/5V73GhxuEDuxT6UHEFKgWRkjSGHhCBu6hELjgb3TBW3QVzM67Pms5BiO1+z7fiv
 W0b4DHsuY3il9uMsJDLonRdkbXQs/JE93ttfb+iH+R+VoUjmAu5jCol6i9SwMtqyDWEo6cm7i
 M+KE2cCgkS/64COIiBn5yBJDJnpQeJ6np1hOsq5gXY3o/EVBurqHh8ex8baR7pXDAm5VuZ2eN
 a1fv7WWDDYpmYnFn4Y5hP3zonfz4191XhI8HdT/Lwp1nodMllKaIFkyGvwgd0CMmpL7WiO9fz
 s3fgWkAJ+XRlYcR+5hIRagup71p6Brm8E1KDrjS69Hselve2KImm5nWrZXPCkXs+YLwNNa4I4
 cGssYWEVy6A1SjyKMHwQlaeFSfcoAZazh9Ihx3w0TopowNsyM/M2tCgZuo9hByEMhxdKcjjZl
 MPwkqBmyjnEPH1qx3Z5U2RAznDENtf5TwqEqWk3BzUqe3KbyDV7hj2kGQzonnfKUpsFA8oGRU
 bxPxvd0oyoJrtAhnFyVLH+HNgXW7GX8FUws7pB30eqehAt6nQaiql0klnyxrwDjpVcxzmFSW7
 RdaJi+wpm1qL4eWstIOyYG24Hx/csuKpz0/Wa0rKOyaGWU0qDApovquu2JyiCchOTEcxTpXGq
 9oKKb3DA6aZ03gEzSwrVOFc0p3ayRtTiezn1IZKBu6NAxHYYQWoGJIYCAqZ424ofgk/njwx+e
 jjMsIdHkfZVfab9LhaHZxm0Wugf9odTEokXDF2RH1sMn3UtMDj6QHzuyTJ9kzgIZx5NExL9rw
 GqlRcGcZl8zuBWoBDwPnEqiWzOZrV+dk3Lm0Ol4fHpu6ZWEfbt45DLrEfmCA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_025801_175981_5184EF16 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moeller0[at]gmx.de)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (moeller0[at]gmx.de)
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Cgo+IE9uIE9jdCAxNywgMjAxOSwgYXQgMTE6NDQsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBLYW4gWWFuIDxreWFuQGdvb2dsZS5jb20+IHdy
aXRlczoKPiAKPj4gSGkgVG9rZSwKPj4gCj4+IFRoYW5rcyBmb3IgZ2V0dGluZyB0aGlzIGRvbmUh
IEkgd2lsbCBnaXZlIGl0IGEgdHJ5IGluIHRoZSBuZXh0IGZldwo+PiBkYXlzLiAgQSBmZXcgY29t
bWVudHM6Cj4+IAo+Pj4gVGhlIGVzdGltYXRlZCBhaXJ0aW1lIGZvciBlYWNoIHNrYiBpcyBzdG9y
ZWQgaW4gdGhlIHR4X2luZm8sIHNvIHdlIGNhbgo+Pj4gc3VidHJhY3QgdGhlIHNhbWUgYW1vdW50
IGZyb20gdGhlIHJ1bm5pbmcgdG90YWwgd2hlbiB0aGUgc2tiIGlzIGZyZWVkIG9yCj4+PiByZWN5
Y2xlZC4KPj4gCj4+IExvb2tzIGxpa2UgYXRoMTBrIGRyaXZlciB6ZXJvIG91dCB0aGUgaW5mby0+
c3RhdHVzIGJlZm9yZSBjYWxsaW5nCj4+IGllZWU4MDIxMV90eF9zdGF0dXMoLi4uKToKPj4gaW50
IGF0aDEwa190eHJ4X3R4X3VucmVmKHN0cnVjdCBhdGgxMGtfaHR0ICpodHQsCj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBodHRfdHhfZG9uZSAqdHhfZG9uZSkKPj4gewo+
PiAuLi4KPj4gICAgICAgIGluZm8gPSBJRUVFODAyMTFfU0tCX0NCKG1zZHUpOwo+PiAgICAgICAg
bWVtc2V0KCZpbmZvLT5zdGF0dXMsIDAsIHNpemVvZihpbmZvLT5zdGF0dXMpKTsKPj4gLi4uCj4+
ICAgICAgICBpZWVlODAyMTFfdHhfc3RhdHVzKGh0dC0+YXItPmh3LCBtc2R1KTsKPj4gfQo+IAo+
IEFoLCBidWdnZXI7IEkgd2FzIGFmcmFpZCB3ZSdkIHJ1biBpbnRvIHRoaXMuIEEgcXVpY2sgZ3Jl
cCBpbmRpY2F0ZXMgdGhhdAo+IGl0J3Mgb25seSBhdGgxMGsgYW5kIGl3bCB0aGF0IGRvIHRoaXMs
IHRob3VnaCwgc28gaXQncyBwcm9iYWJseQo+IG1hbmFnZWFibGUgdG8ganVzdCBmaXggdGhpcy4g
SSB0aGluayB0aGUgc2ltcGxlc3Qgc29sdXRpb24gaXMganVzdCB0bwo+IHJlc3RvcmUgdGhlIGZp
ZWxkIGFmdGVyIGNsZWFyaW5nLCBubz8KPiAKPj4gV2UgbmVlZCBlaXRoZXIgcmVzdG9yZSB0aGUg
aW5mby0+c3RhdHVzLnR4X3RpbWVfZXN0IG9yIGNhbGxpbmcKPj4gaWVlZTgwMjExX3N0YV91cGRh
dGVfcGVuZGluZ19haXJ0aW1lKCkgaW4gYXRoMTBrIGJlZm9yZSB0eF90aW1lX2VzdAo+PiBnZXQg
ZXJhc2VkLgo+PiAKPj4+ICsgICAgICAgaWYgKGxvY2FsLT5haXJ0aW1lX2ZsYWdzICYgQUlSVElN
RV9VU0VfQVFMKSB7Cj4+PiArICAgICAgICAgICAgICAgYWlydGltZSA9IGllZWU4MDIxMV9jYWxj
X2V4cGVjdGVkX3R4X2FpcnRpbWUoaHcsIHZpZiwgdHhxLT5zdGEsCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2tiLT5sZW4g
KyAzOCk7Cj4+IAo+PiBJIHRoaW5rIGl0IGlzIGJldHRlciB0byBwdXQgdGhlICIrICAzOCIgdGhh
dCB0YWtlcyBjYXJlIG9mIHRoZSBoZWFkZXIKPj4gb3ZlcmhlYWQgaW5zaWRlIGllZWU4MDIxMV9j
YWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoKS4KPiAKPiBIbW0sIG5vIHN0cm9uZyBvcGluaW9uIGFi
b3V0IHRoaXM7IGJ1dCB5ZWFoLCBzaW5jZSB3ZSBoYXZlIGEgZGVkaWNhdGVkCj4gZnVuY3Rpb24g
Zm9yIHRoaXMgdXNlIEkgZ3Vlc3MgdGhlcmUncyBubyBoYXJtIGluIGFkZGluZyBpdCB0aGVyZSA6
KQo+IAoKU2lsbHkgcXVlc3Rpb24sIGlzIHRoaXMgT3ZlcmhlYWQgZ3VhcmFudGVlZCB0byBiZSAz
OCBCeXRlcyBmb3IgYWxsIGV0ZXJuaXR5PyBPdGhlcndpc2UgYSB2YXJpYWJsZSBvciBhIHByZXBy
b2Nlc3NvciBjb25zdGFudCBtaWdodCBiZSBtb3JlIGZ1dHVyZSBwcm9vZj8KCkJlc3QgUmVnYXJk
cwoJU2ViYXN0aWFuCgoKPiAtVG9rZQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gTWFrZS13aWZpLWZhc3QgbWFpbGluZyBsaXN0Cj4gTWFrZS13
aWZpLWZhc3RAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vbWFrZS13aWZpLWZhc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==
