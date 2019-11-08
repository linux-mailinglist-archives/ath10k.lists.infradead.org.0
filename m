Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40D4F444D
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dll2qp9iKsoBUlvdDE2ubDHp9GrR3og2305mWjggJ9Y=; b=BSSx/QUS7Jzu6y
	4Putf4WbgqJAzPiKyl60QgmYjgNIo91UIq3Yn5GaT74AYnSf7+65SPMjjl9eef0g1UJTgYfSLtPW9
	8Wyd2O4l6+OS8tPJN4AmNauUb7ypBzEG8udPskCDuqwUXgM7JXAtzxp6LS+HwzBuOvMcsGaNLh4GM
	JpdkEKDnkpMTwYQffVe+AS4ECc8DXzkPYSXO/ryd1K3sBDpUGsJC6dz4FSGlQUqRDvqVrcAKZgtkF
	6PJkV0joQ+PmcjFxxEinKiGmt1BGr4Jj1duE1UxcGhP5H3KIebfqTxAkcQmgSf+7LCqNrceXbD1+/
	eqFJeZucbiYUrESC4gBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1KH-0004hf-HA; Fri, 08 Nov 2019 10:17:09 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1KD-0004hE-LW
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:17:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT1K9-0007j0-SI; Fri, 08 Nov 2019 11:17:01 +0100
Message-ID: <0b43c4822ab83ea4d33a5a32d8ff6c7a56eff6c5.camel@sipsolutions.net>
Subject: Re: [PATCH v6 4/4] mac80211: Use Airtime-based Queue Limits (AQL)
 on packet dequeue
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 11:17:00 +0100
In-Reply-To: <157182474399.150713.16380222749144410045.stgit@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474399.150713.16380222749144410045.stgit@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_021705_714696_2FE88446 
X-CRM114-Status: GOOD (  10.28  )
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
ZW4gd3JvdGU6Cj4gCj4gKwlpZiAoaW5mby0+dHhfdGltZV9lc3QpIHsKPiArCQlzdHJ1Y3Qgc3Rh
X2luZm8gKnN0YSA9IE5VTEwsICpzOwo+ICsJCXN0cnVjdCByaGxpc3RfaGVhZCAqdG1wOwo+ICsK
PiArCQlyY3VfcmVhZF9sb2NrKCk7Cj4gKwo+ICsJCWZvcl9lYWNoX3N0YV9pbmZvKGxvY2FsLCBo
ZHItPmFkZHIxLCBzLCB0bXApIHsKPiArCQkJLyogc2tpcCB3cm9uZyB2aXJ0dWFsIGludGVyZmFj
ZSAqLwo+ICsJCQlpZiAoIWV0aGVyX2FkZHJfZXF1YWwoaGRyLT5hZGRyMiwgcy0+c2RhdGEtPnZp
Zi5hZGRyKSkKPiArCQkJCWNvbnRpbnVlOwo+ICsKPiArCQkJc3RhID0gczsKPiArCQkJYnJlYWs7
Cj4gKwkJfQoKSSBndWVzcyB0aGF0IGlzIGJldHRlciB0aGFuIGxvb2tpbmcgdXAgdGhlIHNkYXRh
IGFuZCB0aGVuIHVzaW5nCnN0YV9pbmZvX2dldCgpLCBidXQgSSB0aGluayBJJ2QgbGlrZSB0byBz
ZWUgdGhpcyB3cmFwcGVkIGludG8gYSBmdW5jdGlvbgooZXZlbiBpZiBpdCdzIGFuIGlubGluZSkg
aW4gc3RhX2luZm8ue2MsaH0uCgo+ICsJCWFpcnRpbWUgPSBpZWVlODAyMTFfY2FsY19leHBlY3Rl
ZF90eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+c3RhLAo+ICsJCQkJCQkJICAgICBza2ItPmxlbik7
Cj4gKwkJaWYgKGFpcnRpbWUpIHsKPiArCQkJLyogV2Ugb25seSBoYXZlIDEwIGJpdHMgaW4gdHhf
dGltZV9lc3QsIHNvIHN0b3JlIGFpcnRpbWUKPiArCQkJICogaW4gaW5jcmVtZW50cyBvZiA0dXMg
YW5kIGNsYW1wIHRoZSBtYXhpbXVtIHRvIDIqKjEyLTEKPiArCQkJICovCj4gKwkJCWFpcnRpbWUg
PSBtaW5fdCh1MzIsIGFpcnRpbWUsIDQwOTUpICYgfjNVOwo+ICsJCQlpbmZvLT50eF90aW1lX2Vz
dCA9IGFpcnRpbWUgPj4gMjsKPiArCQkJaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0
aW1lKGxvY2FsLCB0eC5zdGEsCj4gKwkJCQkJCQkgICAgIHR4cS0+YWMsIGFpcnRpbWUsCj4gKwkJ
CQkJCQkgICAgIGZhbHNlKTsKCkkgd29uZGVyIGlmIGl0J2QgYmUgYmV0dGVyIHRvIHBhc3MgdGhl
IHNoaWZ0ZWQgdmFsdWUgdG8KaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkg
dG8gYXZvaWQgYWxsIHRoZSBzaGlmdGluZyBpbiBhbGwKcGxhY2VzPwoKWW91IGNvdWxkIGV2ZW4g
c3RvcmUgdGhlIHNoaWZ0ZWQgdmFsdWUgaW4gImFxbF90eF9wZW5kaW5nIiBhbmQKImFxbF90b3Rh
bF9wZW5kaW5nX2FpcnRpbWUiIGV0Yy4sIGl0J3MgY29tcGxldGVseSBlcXVpdmFsZW50LCBhbmQg
b25seQpzaGlmdCBpdCBvdXQgZm9yIHBlb3BsZSBsb29raW5nIGF0IGRlYnVnZnMuCgpqb2hhbm5l
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEw
ayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
