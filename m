Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93A2F4554
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOkcHaKJj4kgxp+wVSsBKWR1wqqvYSE61/Fb3L0BvP4=; b=KXoX5caAeg97Pb
	gkFWRbIQbdXnwlCfdEx/RkQcMBXxzdSXp/PfSRzD+5DxBaFF9rguFKPEIwnbtQfd2wQ6Hg+8VhlDM
	km2aMrYTZmhVs1OWuvM4KuBUCmTgbQ6q5srt24dza0IEP1glHDdi+O6q+8DtNtnB+jKA4vQK1uQMU
	sXU2ITQ81noYuBzXhNcmzPKLIQGyFAuITrBL6s6pP+nRRneFnflh91+R8LR1fopm0+kJJiVm/bW64
	hR8T1ysaFWbTCUqXr2dahqQSN0bJ/6Z+ywAnnvv7OMFmuNzgfjzC+wrQrdgS+J+51kC66laFvbNQH
	/CSUWtlBgUVXzmdfPYTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT24z-0002C2-4O; Fri, 08 Nov 2019 11:05:25 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT24u-0002B0-Ok
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 11:05:22 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT24o-0000J9-9W; Fri, 08 Nov 2019 12:05:14 +0100
Message-ID: <e7c7ad18d83eaf24809ac1a41604f38098e9bd57.camel@sipsolutions.net>
Subject: Re: [PATCH v6 4/4] mac80211: Use Airtime-based Queue Limits (AQL)
 on packet dequeue
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 12:05:12 +0100
In-Reply-To: <877e4afx83.fsf@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474399.150713.16380222749144410045.stgit@toke.dk>
 <0b43c4822ab83ea4d33a5a32d8ff6c7a56eff6c5.camel@sipsolutions.net>
 <877e4afx83.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_030520_806311_9E030ACE 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCAyMDE5LTExLTA4IGF0IDEyOjAxICswMTAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gCj4gTXkgcmVhc29uaW5nIGZvciBkb2luZyBpdCB0aGlzIHdheSB3YXMgdGhh
dCB3ZSBoYXZlIGFub3RoZXIgc2V0IG9mIEFQSXMKPiBkZWFsaW5nIHdpdGggYWlydGltZSB3aGlj
aCBkb2Vzbid0IGRvIGFueSBzaGlmdGluZzsgc28ga2VlcGluZyB0aGUgQVBJcwo+IGluIHRoZSBz
YW1lIHVuaXQgKHN0cmFpZ2h0IGFpcnRpbWUpIHNlZW1lZCBsZXNzIGNvbmZ1c2luZy4KCkZhaXIg
ZW5vdWdoLgoKPiBXZSBjb3VsZCBhZGQgKGlubGluZSkgc2V0dGVyIGFuZCBnZXR0ZXIgZnVuY3Rp
b25zIGZvciB0aGUgdHhfdGltZV9lc3QKPiBmaWVsZCBpbnN0ZWFkIHRvIGF2b2lkIHNwcmlua2xp
bmcgc2hpZnRzIGFsbCBvdmVyIHRoZSBwbGFjZT8gOikKCkl0IGRvZXNuJ3QgcmVhbGx5IGJvdGhl
ciBtZSB0aGF0IG11Y2gsIGJ1dCB5ZWFoLCBwZXJoYXBzIHRoYXQncyBlYXNpZXIuCgpqb2hhbm5l
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEw
ayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
