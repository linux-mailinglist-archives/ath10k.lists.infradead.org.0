Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1BCDC673
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 15:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWG1+4Z5Tgg0kFGha8qy7CxDQezz3jC5DAQTrN0+Tus=; b=TwxE52PerjnYHL
	oY7s3xKJis5kaSz5alZH4Duw+Ie2H/AlZ3G+CEOMIe8eNoNJWXGeTpXXFaZVgi2Z5HlIEnuDoNmCd
	LCU7ER/rL664SXuh/KICN2L8tyV00DZpbSYksjgbK0rdePNaCoXH6BCKFVTFcC5UJDa3OCcRo3vL7
	gNJCIyBQF7fPvn9kOt3y6ZRB0ur1Jn4NsaLZGir8DBAXX7WebiZnz/9VqkAiNd7TIt1Ldi/xsHP7X
	jMYMUtUb352dxuSaR3ASvUwn95JR354vlXQg0jA0ZPtG7t2ywSWq0nB5+6GwYDtvZJfr4yt0/jiaO
	BLDI790XMuQtVorMrOYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLScE-0002MH-Kd; Fri, 18 Oct 2019 13:48:26 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLScA-0002Lj-C2
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 13:48:24 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLSc4-00045S-Vf; Fri, 18 Oct 2019 15:48:17 +0200
Message-ID: <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make
 room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, Kan Yan
 <kyan@google.com>
Date: Fri, 18 Oct 2019 15:48:13 +0200
In-Reply-To: <87imomdvsj.fsf@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_064822_408645_F1C1E76A 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEwLTE4IGF0IDE1OjMxICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cgo+IFdlbGwsIGxldCdzIHRyeSB0byBkbyB0aGUgYWN0dWFsIG1hdGguLi4gQSBm
dWxsLXNpemUgKDE1MzggYnl0ZXMpIHBhY2tldAo+IHRha2VzIH4yMDUwIG1pY3Jvc2Vjb25kcyB0
byB0cmFuc21pdCBhdCA2IE1icHMuIEFkZGluZyBpbiBvdmVyaGVhZCwgaXQncwo+IGNlcnRhaW5s
eSBzdGlsbCBsZXNzIHRoYXQgNDA5NiB1cywgc28gMTIgYml0cyBpcyBwbGVudHkuCgpXaGF0IGFi
b3V0IEEtTVNEVXM/IEJ1dCBJIGd1ZXNzIG1heGltdW0gY29udGlub3VzIHRyYW5zbWlzc2lvbnMg
YXJlIGF0Cm1vc3QgNG1zIGFueXdheSwgc28gYSBzaW5nbGUgcGFja2V0IHNob3VsZCBuZXZlciBi
ZSBsb25nZXIuCgo+IFRoYXQgbGVhdmVzCj4gZm91ciBiaXRzIGZvciB0aGUgQUNLIHN0YXR1cyBJ
RCBpZiB3ZSBqdXN0IHNwbGl0IHRoZSB1MTY7IGlmIHdlIG9ubHkKPiBldmVyIGhhdmUgImEgaGFu
ZGZ1bCIsIHRoYXQgc2hvdWxkIGJlIGVub3VnaCwgbm8/CgpJdCdzIGhvdyBtYW55IGFyZSBpbiBm
bGlnaHQgYXQgYSB0aW1lLCAxNiBkb2Vzbid0IHNlZW0gbGlrZWx5IHRvIGhhcHBlbiwKYnV0IEkg
ZG9uJ3QgcmVhbGx5IGtub3cgd2hhdCBhcHBsaWNhdGlvbnMgYXJlIGRvaW5nIHdpdGggaXQgbm93
LgpQcm9iYWJseSBvbmx5IHdwYV9zIGZvciB0aGUgRUFQT0wgVFggc3RhdHVzLgoKPiBXZSBjb3Vs
ZCBhbHNvIHNwbGl0IDUvMTEuIFRoYXQgd291bGQgc3VwcG9ydCB1cCB0byAzMiBBQ0sgSURzLCBh
bmQgd2UKPiBjYW4ganVzdCB0cnVuY2F0ZSB0aGUgYWlydGltZSBhdCAyMDQ4IHVzLCB3aGljaCBp
cyBub3QgYSBiaWcgZGVhbCBJJ2QKPiBzYXkuCgpXZSBjYW4gYWxzbyBwbGF5IHdpdGggdGhlIHVu
aXRzIG9mIHRoZSBhaXJ0aW1lLCBlLmcuIG1ha2luZyB0aGF0IGEKbXVsdGlwbGUgb2YgMiBvciA0
IHVzPyBTZWVtcyB1bmxpa2VseSB0byBtYXR0ZXIgbXVjaD8KCj4gVGhpbmsgaXQgbW9zdGx5IGRl
cGVuZHMgb24gd2hhdCBpcyB0aGUgc21hbGxlc3QgSUQgc3BhY2UgZm9yIEFDSyBJRHMgd2UKPiBj
YW4gbGl2ZSB3aXRoPyA6KQoKOikKClRCSCwgSSBkb24ndCByZWFsbHkga25vdy4gSW4gYSBsb3Qg
b2YgaGFyZHdhcmUgdXNpbmcgdGhpcyBpcyByZWFsbHkgYmFkCmZvciBwZXJmb3JtYW5jZSBzbyBp
dCBzaG91bGRuJ3QgYmUgdXNlZCBtdWNoLCBzbyAuLi4KCmpvaGFubmVzCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAph
dGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2F0aDEwawo=
