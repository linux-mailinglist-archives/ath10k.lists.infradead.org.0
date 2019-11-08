Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031FDF442E
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhdhVoAoODIiUEmGY25FAZ02NWUvGgVj6L0vXSFicig=; b=kpBdlQqvZHQ9Iz
	FWFSxPsSLdEUxFIdenmc41ElwypRBXkhzn8euB+GDFSmrsntAmuXvG+vIo4Msrc6zjiZAu9d3UyqQ
	8v1xM5+HQn71RKqpLq5zPIP6VGHq7dzs1zRe/DCKgcc65D5WsMmALgcOFfN+Jw9Iwx/s8lkEV/CVR
	K7SD2ewYjlxWggBhh2Y1ZZFSB5Ju5brzqrdb1N971tcc+qGvX7HnCUhDIFx1UHmmYJRm3DqV9ijvH
	AQzyoVVEqTk2uUg/sqx+VTT9r4NSIn0gjQ/vV/tKEJfdxVIs49+m2feQrkwbNnuICG7ac2ApzPdUu
	ZeGChNEOuLHplRRWO+ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1BG-0001Q8-7Z; Fri, 08 Nov 2019 10:07:50 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1BC-0001Pl-Qs
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:07:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT1B8-0007Tw-FM; Fri, 08 Nov 2019 11:07:42 +0100
Message-ID: <42266e95f45d5772e04c9c016bd6179ea14ffefa.camel@sipsolutions.net>
Subject: Re: [PATCH v6 2/4] mac80211: Import airtime calculation code from mt76
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 11:07:41 +0100
In-Reply-To: <157182474174.150713.17459330922820192258.stgit@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474174.150713.17459330922820192258.stgit@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_020746_865352_44096540 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEwLTIzIGF0IDExOjU5ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gRnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+Cj4gCj4gRmVsaXggcmVjZW50bHkgYWRkZWQgY29kZSB0byBjYWxjdWxhdGUgYWlydGltZSBv
ZiBwYWNrZXRzIHRvIHRoZSBtdDc2Cj4gZHJpdmVyLiBJbXBvcnQgdGhpcyBpbnRvIG1hYzgwMjEx
IHNvIHdlIGNhbiB1c2UgaXQgZm9yIGFpcnRpbWUgcXVldWUgbGltaXQKPiBjYWxjdWxhdGlvbnMg
bGF0ZXIuCj4gCj4gVGhlIGFpcnRpbWUuYyBmaWxlIGlzIGNvcGllZCB2ZXJiYXRpbSBmcm9tIHRo
ZSBtdDc2IGRyaXZlciwgYW5kIGFkanVzdGVkIHRvCj4gdXNlIG1hYzgwMjExIGRhdGEgc3RydWN0
dXJlcyBpbnN0ZWFkICh3aGljaCBpcyBmYWlybHkgc3RyYWlnaHQgZm9yd2FyZCkuCj4gVGhlIHBl
ci1yYXRlIFRYIHJhdGUgY2FsY3VsYXRpb24gaXMgc3BsaXQgb3V0IHRvIGl0cyBvd24KPiBmdW5j
dGlvbiAoaWVlZTgwMjExX2NhbGNfdHhfYWlydGltZV9yYXRlKCkpIHNvIGl0IGNhbiBiZSB1c2Vk
IGRpcmVjdGx5IGZvcgo+IHRoZSBBUUwgY2FsY3VsYXRpb25zIGFkZGVkIGluIGEgc3Vic2VxdWVu
dCBwYXRjaC4KCkFueSB3YXkgaXQgY291bGQgYmUgZXhwb3NlZCBieSBtYWM4MDIxMSBiYWNrIHRv
IHRoZSBkcml2ZXJzLCBwZXJoYXBzLCB0bwpzaGFyZSBpdD8KCj4gVGhlIG9ubHkgdGhpbmcgdGhh
dCBpdCB3YXMgbm90IHBvc3NpYmxlIHRvIHBvcnQgZGlyZWN0bHkgd2FzIHRoZSBiaXQgdGhhdAo+
IHJlYWQgdGhlIGludGVybmFsIGRyaXZlciBmbGFncyBvZiBzdHJ1Y3QgaWVlZTgwMjExX3JhdGUg
dG8gZGV0ZXJtaW5lCj4gd2hldGhlciBhIHJhdGUgaXMgdXNpbmcgQ0NLIG9yIE9GRE0gZW5jb2Rp
bmcuIEluc3RlYWQsIGp1c3QgbG9vayBhdCB0aGUKPiByYXRlIGluZGV4LCBzaW5jZSBhdCBsZWFz
dCBtdDc2IGFuZCBhdGgxMGsgYm90aCBzZWVtIHRvIGhhdmUgdGhlIHNhbWUKPiBudW1iZXIgb2Yg
Q0NLIHJhdGVzICg0KSBpbiB0aGVpciB0YWJsZXMuCgpUaGlzIGlzIGhpZ2hseSBxdWVzdGlvbmFi
bGUgLi4uCgo+ICsJc3dpdGNoIChzdGF0dXMtPmVuY29kaW5nKSB7Cj4gKwljYXNlIFJYX0VOQ19M
RUdBQ1k6Cj4gKwkJaWYgKFdBUk5fT05fT05DRShzdGF0dXMtPmJhbmQgPiBOTDgwMjExX0JBTkRf
NUdIWikpCj4gKwkJCXJldHVybiAwOwo+ICsKPiArCQlzYmFuZCA9IGh3LT53aXBoeS0+YmFuZHNb
c3RhdHVzLT5iYW5kXTsKPiArCQlpZiAoIXNiYW5kIHx8IHN0YXR1cy0+cmF0ZV9pZHggPiBzYmFu
ZC0+bl9iaXRyYXRlcykKPiArCQkJcmV0dXJuIDA7Cj4gKwo+ICsJCXJhdGUgPSAmc2JhbmQtPmJp
dHJhdGVzW3N0YXR1cy0+cmF0ZV9pZHhdOwo+ICsJCWNjayA9IChzdGF0dXMtPnJhdGVfaWR4IDwg
Q0NLX05VTV9SQVRFUyk7CgpXaHkgbm90CgoJY2NrID0gcmF0ZS0+ZmxhZ3MgJiBJRUVFODAyMTFf
UkFURV9NQU5EQVRPUllfQjsKCkkgbWVhbiAuLiB3ZSBrbm93IHRoYXQgSUVFRTgwMjExX1JBVEVf
TUFOREFUT1JZX0IgcmF0ZXMgYXJlIGV4YWN0bHkgdGhlCkNDSyByYXRlcywgYW5kIHRoYXQncyBu
b3QgcmVhbGx5IGdvaW5nIHRvIGNoYW5nZT8KCkFsdGVybmF0aXZlbHksIHdlIGNvdWxkIGRvCgoJ
Y2NrID0gc2JhbmQtPmJhbmQgPT0gTkw4MDIxMV9CQU5EXzJHSFogJiYKCSAgICAgICEocmF0ZS0+
ZmxhZ3MgJiBJRUVFODAyMTFfUkFURV9FUlBfRyk7CgpvciBldmVuCgoJY2NrID0gcmF0ZS0+Yml0
cmF0ZSA9PSAxMCB8fCByYXRlLT5iaXRyYXRlID09IDIwIHx8CgkgICAgICByYXRlLT5iaXRyYXRl
ID09IDU1IHx8IHJhdGUtPmJpdHJhdGUgPT0gMTEwOwoKOikKCj4gKwlkZWZhdWx0Ogo+ICsJCVdB
Uk5fT05fT05DRSgxKTsKCllvdSBjYW4ndCBkbyB0aGF0IGluIG1hYzgwMjExIGVpdGhlci4gVGhh
dCBtaWdodCBiZSBmaW5lIGZvciBtdDc2LCBidXQKbWFjODAyMTEgYWxyZWFkeSBzdXBwb3J0cyBI
RS4KCmpvaGFubmVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
