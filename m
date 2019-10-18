Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289C8DC70F
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4M4Mg3sadAjsdolW7nnNdcvT3tUTdEO7BrKJqvdWcrI=; b=ljoTHlg43ekeS8
	+UGtzNiXWi92W99Jb2MgTLeOyVhmsar5jA8MEpD1/T/Ba3xGsPL7jWJvurb+QLs8TdqpuzBgCC1Jd
	1E/m6nuzgNq8aLskTBHISyHYVL04m0lKUThaJr3rcWyohNHusOTVyTovwIKi6FJ9bfX8qQqPI3rI0
	O6LzkJoyC7xPyXSzmxOxxY1hxPGSU1gX1vvr5gtXTKo1jEXoxSzIlAGBx8N7lW0iQ1tIXc+g8vDDG
	EPoHyyjmFBKjyKhpvKIsXy4UuY4dSzTfN82zVNTHKTqGwl6+a95G05eTnO7cUOx9wR7FBpk+M36id
	9CIVvqZn/ON4FlvF0g7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLT1S-0005GZ-O0; Fri, 18 Oct 2019 14:14:30 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLT1N-0005Dw-Pc
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:14:27 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLT1J-0004cj-98; Fri, 18 Oct 2019 16:14:21 +0200
Message-ID: <78035e38264feac9d15a761b009c89b9738b4de1.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make
 room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, Kan Yan
 <kyan@google.com>
Date: Fri, 18 Oct 2019 16:14:20 +0200
In-Reply-To: <87d0eudufu.fsf@toke.dk> (sfid-20191018_160136_042961_4FF7E805)
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
 <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
 <87d0eudufu.fsf@toke.dk> (sfid-20191018_160136_042961_4FF7E805)
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_071425_851830_EBD62BBF 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
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
ZW4gd3JvdGU6Cj4gCj4gPiBXZSBjYW4gYWxzbyBwbGF5IHdpdGggdGhlIHVuaXRzIG9mIHRoZSBh
aXJ0aW1lLCBlLmcuIG1ha2luZyB0aGF0IGEKPiA+IG11bHRpcGxlIG9mIDIgb3IgNCB1cz8gU2Vl
bXMgdW5saWtlbHkgdG8gbWF0dGVyIG11Y2g/Cj4gCj4gU3VyZSwgdGhhdCdzIGEgZ29vZCBwb2lu
dCEgSW5jcmVtZW50cyBvZiA0dXMgbWVhbnMgd2UgY2FuIGZpdCA0bXMgaXMgMTAKPiBiaXRzLCBs
ZWF2aW5nIHBsZW50eSBvZiBzcGFjZSBmb3IgQUNLIElEcyAoaG9wZWZ1bGx5KS4KCklmIHlvdSBk
byBuZWVkIG1vcmUgYml0cyAoZS5nLiB0byBiZSBvbiB0aGUgc2FmZSBzaWRlIGFuZCBoYXZlIHNw
YWNlIGZvcgo4bXMpIHlvdSBjb3VsZCBhbHNvIHN0ZWFsIGJpdHMgb3V0IG9mICdiYW5kJyAod2Ug
b25seSBuZWVkIDMgSSB0aGluaykKYW5kICdod19xdWV1ZScgKG5vdCBzdXJlIHdoYXQgdGhlIGxp
bWl0IHJlYWxseSBpcywgYnV0IHRoZXJlIGFyZW4ndCBtYW55CnVzZXJzLCBzZWVtcyBsaWtlIG9u
bHkgaXdsd2lmaS9kdm0gYW5kIGh3c2ltIGNhcmUsIGFuZCB0aG9zZSBjZXJ0YWlubHkKZG9uJ3Qg
bmVlZCA+MzIgcXVldWVzKS4KCk9mIGNvdXJzZSBpZiB5b3UgbGVhdmUgbW9yZSBiaXRzIGZvciBs
YXRlciB0aGF0J3MgZ29vZCB0b28gOy0pCgpqb2hhbm5lcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9hdGgxMGsK
