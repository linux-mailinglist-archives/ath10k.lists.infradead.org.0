Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0AFDC6E9
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlxoSK9Z9BOtJ4DKg8GjnDoqlS5CFapSbBsg7PWe8vo=; b=gbYmKXbhY4utHT
	iMXFYFQeJUMW8DA5A2KaQ8BwLyD19xyhL7HE46iXSWlaP0I1czLSJXETJI666NJPF6pVwX2VgfGwc
	q1te+IZxG8F51uGi4A3gP0vN1TMO33IxR73qdEr/Hs4epjjSs+3/XGkQsW/X4vWxmbFtroX8VKrMP
	PSe2Ygk0QdtKLkjfP6TtbU31dhGgN3jj1+TbPHqFSQGN+jzBJyTU4KSoqcVUeoMRfHKJoTwZCEqa3
	1bClvm1hgk/gLzatVzTZN6TOfuxxuNQCWun8GyRNQB2SffCgV1SZR0JRmPVFnCMAispRIAc9gJLVE
	s+FQyOXD9WSLoMf6fZow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSue-0002Bn-Vf; Fri, 18 Oct 2019 14:07:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSub-0002BS-EY
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:07:26 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLSuX-0004Ql-P7; Fri, 18 Oct 2019 16:07:21 +0200
Message-ID: <e2c54294fa5ac7b48e6099b47385a5f4df0859ce.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make
 room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, Kan Yan
 <kyan@google.com>
Date: Fri, 18 Oct 2019 16:07:20 +0200
In-Reply-To: <87d0eudufu.fsf@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
 <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
 <87d0eudufu.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070725_483821_EEF45A90 
X-CRM114-Status: GOOD (  11.57  )
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

T24gRnJpLCAyMDE5LTEwLTE4IGF0IDE2OjAxICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cgo+IFJpZ2h0LiBXZWxsIGluIHRoYXQgY2FzZSwgbGV0J3MgdHJ5IGl0LiBBcyBs
b25nIGFzIHdlIGZhaWwgaW4gYQo+IHJlYXNvbmFibGUgd2F5LCB3ZSBjYW4ganVzdCBzZWUgaWYg
d2UgcnVuIGludG8gYW55dGhpbmcgdGhhdCBicmVha3M/IEkKPiBndWVzcyBpbiB0aGlzIGNhc2Ug
dGhhdCBtZWFucyByZWplY3RpbmcgcmVxdWVzdHMgZnJvbSB1c2Vyc3BhY2UgaWYgd2UKPiBydW4g
b3V0IG9mIElEcyByYXRoZXIgdGhhbiBzaWxlbnRseSB3cmFwcGluZyBhbmQgcmV0dXJuaW5nIHdy
b25nIGRhdGEgOikKCldlIGNhbid0IHJlamVjdCBkdWUgdG8gaG93IHRoaXMgd29ya3MsIGJ1dCBp
ZiB0aGUgaWRyX2FsbG9jKCkgZmFpbHMgdGhlbgp3ZSdsbCBqdXN0IG5vdCBnaXZlIGEgc3RhdHVz
IGJhY2sgdG8gdXNlcnNwYWNlIGxhdGVyLgoKPiA+ID4gV2UgY291bGQgYWxzbyBzcGxpdCA1LzEx
LiBUaGF0IHdvdWxkIHN1cHBvcnQgdXAgdG8gMzIgQUNLIElEcywgYW5kIHdlCj4gPiA+IGNhbiBq
dXN0IHRydW5jYXRlIHRoZSBhaXJ0aW1lIGF0IDIwNDggdXMsIHdoaWNoIGlzIG5vdCBhIGJpZyBk
ZWFsIEknZAo+ID4gPiBzYXkuCj4gPiAKPiA+IFdlIGNhbiBhbHNvIHBsYXkgd2l0aCB0aGUgdW5p
dHMgb2YgdGhlIGFpcnRpbWUsIGUuZy4gbWFraW5nIHRoYXQgYQo+ID4gbXVsdGlwbGUgb2YgMiBv
ciA0IHVzPyBTZWVtcyB1bmxpa2VseSB0byBtYXR0ZXIgbXVjaD8KPiAKPiBTdXJlLCB0aGF0J3Mg
YSBnb29kIHBvaW50ISBJbmNyZW1lbnRzIG9mIDR1cyBtZWFucyB3ZSBjYW4gZml0IDRtcyBpcyAx
MAo+IGJpdHMsIGxlYXZpbmcgcGxlbnR5IG9mIHNwYWNlIGZvciBBQ0sgSURzIChob3BlZnVsbHkp
Lgo+IAo+IEknbGwgcmV3b3JrIHRoZSBzZXJpZXMgdG8gdXNlIHRoYXQgaW5zdGVhZCA6KQoKT0su
CgpUaGVyZSBhcmUgdHdvIHBsYWNlcyB0aGF0IGNhbGwgaWRyX2FsbG9jKCkgd2l0aCBhIGhhcmRj
b2RlZCBsaW1pdCBvZgoweDEwMDAwLCB5b3UnbGwgaGF2ZSB0byBmaXggdGhvc2UgdG8gaGF2ZSB0
aGUgcmlnaHQgbGltaXQgYWNjb3JkaW5nIHRvCnRoZSBiaXRzIHlvdSBsZWF2ZSBmb3IgdGhlIEFD
SyBpZC4KCmpvaGFubmVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
