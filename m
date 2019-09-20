Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18A2B8D03
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 10:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fbWcefOwRPD6nrBxGzWV2cqClcUMteIox6ILd3Dq92I=; b=hpGjDMRJKAW8OMuRGf8TP4qx1
	e73AoNv34Cj1zDasZyYRyezD+4qSi4Fd7vTUB94m94WhNcowtwlEPD0ALiAhFUaRs99ojnkscVx9L
	hAF5xL0vi2HhItG7X8qTUVLv40+8mAajNb77xIncXTYjymql6s1k90H0HBpGljpodbfyketh02EYz
	YDk8YR4kh+CVSs5JPhLXzYXpFC+BKWOGOxZtzd97vT1siJ+vy+vBIt7CHLENrYVHAFvpVkGB5ITJV
	3nXG9mOcV49VrT+33LhxGg2RAgysz9zcn9LDur74dn4A7uqe0Hxj/xDrvIq8kUVeWoqj5XBEJshGT
	cxtJxd0ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEQJ-000098-QE; Fri, 20 Sep 2019 08:37:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEQG-00008i-A1
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 08:37:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 48B4161418; Fri, 20 Sep 2019 08:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568968666;
 bh=Z4dsZ3wKgL3qMslROGOTlPWRLuujF5cMmxJyeuRYXLo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WL/EEfu0ybiDIonKXjBQtwp7erDFShDQSeFcrdcf/eqyW1kB8m/dPPOa7uEpjZuhZ
 XaHAVffqhHn7rTU/IofX4mR5XlvDlf6oGu+Pv4ghJLkTN6kKw0l6ElrIx4G9G51AG1
 8lz/aJrn1wGHm+pzXfUGIyt68o2rJo0WkNnYfNrc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9894460850;
 Fri, 20 Sep 2019 08:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568968665;
 bh=Z4dsZ3wKgL3qMslROGOTlPWRLuujF5cMmxJyeuRYXLo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JCV/p9tANUS4tkc5fW2LbK6Va+e06oPX+vU7gB2UQESqUFaKJG6nJ9uFbf5rJW1ql
 c8zb4rphleEK+BuJe4Csy95DbaZbfwaTK8NvxHDN2n47M4JgO+EvDGrwRm8q2UJeUF
 66/KDydrVmPDqd8UDpHArbYEoETMIKC/YwWLlSCE=
MIME-Version: 1.0
Date: Fri, 20 Sep 2019 16:37:45 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 1/4] mac80211: Switch to a virtual time-based airtime
 scheduler
In-Reply-To: <87ftkuip9f.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <87ftkuip9f.fsf@toke.dk>
Message-ID: <741a71abebf0ceecb2fbe440ae1c2750@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_013748_395838_AAAD8379 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xOCAwNTozMSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gRnJvbTogVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4+IAo+PiBUaGlzIHN3aXRjaGVz
IHRoZSBhaXJ0aW1lIHNjaGVkdWxlciBpbiBtYWM4MDIxMSB0byB1c2UgYSB2aXJ0dWFsIAo+PiB0
aW1lLWJhc2VkCj4+IHNjaGVkdWxlciBpbnN0ZWFkIG9mIHRoZSByb3VuZC1yb2JpbiBzY2hlZHVs
ZXIgdXNlZCBiZWZvcmUuIFRoaXMgaGFzIGEKPj4gY291cGxlIG9mIGFkdmFudGFnZXM6Cj4+IAo+
PiAtIE5vIG5lZWQgdG8gc3luYyB1cCB0aGUgcm91bmQtcm9iaW4gc2NoZWR1bGVyIGluIGZpcm13
YXJlL2hhcmR3YXJlIAo+PiB3aXRoCj4+ICAgdGhlIHJvdW5kLXJvYmluIGFpcnRpbWUgc2NoZWR1
bGVyLgo+PiAKPj4gLSBJZiBzZXZlcmFsIHN0YXRpb25zIGFyZSBlbGlnaWJsZSBmb3IgdHJhbnNt
aXNzaW9uIHdlIGNhbiBzY2hlZHVsZSAKPj4gYm90aCBvZgo+PiAgIHRoZW07IG5vIG5lZWQgdG8g
aGFyZC1ibG9jayB0aGUgc2NoZWR1bGluZyByb3RhdGlvbiB1bnRpbCB0aGUgaGVhZCAKPj4gb2Yg
dGhlCj4+ICAgcXVldWUgaGFzIHVzZWQgdXAgaXRzIHF1YW50dW0uCj4+IAo+PiAtIFRoZSBjaGVj
ayBvZiB3aGV0aGVyIGEgc3RhdGlvbiBpcyBlbGlnaWJsZSBmb3IgdHJhbnNtaXNzaW9uIGJlY29t
ZXMKPj4gICBzaW1wbGVyIChpbiBpZWVlODAyMTFfdHhxX21heV90cmFuc21pdCgpKS4KPj4gCj4+
IFRoZSBkcmF3YmFjayBpcyB0aGF0IHNjaGVkdWxpbmcgYmVjb21lcyBzbGlnaHRseSBtb3JlIGV4
cGVuc2l2ZSwgYXMgd2UgCj4+IG5lZWQKPj4gdG8gbWFpbnRhaW4gYW4gcmJ0cmVlIG9mIFRYUXMg
c29ydGVkIGJ5IHZpcnR1YWwgdGltZS4gVGhpcyBtZWFucyB0aGF0Cj4+IGllZWU4MDIxMV9yZWdp
c3Rlcl9haXJ0aW1lKCkgYmVjb21lcyBPKGxvZ04pIGluIHRoZSBudW1iZXIgb2YgCj4+IGN1cnJl
bnRseQo+PiBzY2hlZHVsZWQgVFhRcy4gSG93ZXZlciwgaG9wZWZ1bGx5IHRoaXMgbnVtYmVyIHJh
cmVseSBncm93cyB0b28gYmlnIAo+PiAoaXQncwo+PiBvbmx5IFRYUXMgY3VycmVudGx5IGJhY2ts
b2dnZWQsIG5vdCBhbGwgYXNzb2NpYXRlZCBzdGF0aW9ucyksIHNvIGl0Cj4+IHNob3VsZG4ndCBi
ZSB0b28gYmlnIG9mIGFuIGlzc3VlLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gCj4gSSdsbCBub3RlIHRoYXQgdGhpcyBw
YXRjaCBzdGlsbCBoYXMgdGhlIHR3byBpc3N1ZXMgdGhhdCBGZWxpeCBwb2ludGVkCj4gb3V0IHdo
ZW4gSSBwb3N0ZWQgdGhlIFJGQyB2ZXJzaW9uLiBOYW1lbHk6Cj4gCj4gLSBUaGUgdXNlIG9mIGRp
dmlzaW9ucyBpbiB0aGUgZmFzdCBwYXRoLiBJIGd1ZXNzIEkgbmVlZCB0byBnbyB3cml0ZSAKPiBz
b21lCj4gICByZWNpcHJvY2FsLWNhbGN1bGF0aW9uIGNvZGUsIHNpbmNlIHRoYXQgaXMgYWxzbyBh
biBpc3N1ZSB3aXRoIHRoZSBBUUwKPiAgIHBhdGNoZXMgSSBsaW5rZWQgdG8gYmVmb3JlLgo+IAo+
IC0gVGhlIGZhY3QgdGhhdCB3ZSBkb24ndCBjb3VudCB0aGUgYWlydGltZSB1c2FnZSBvZiBtdWx0
aWNhc3QgdHJhZmZpYywKPiAgIHdoaWNoIHdpdGggdGhpcyBzZXJpZXMgbWVhbnMgdGhhdCB0aGUg
dmlmIFRYUSB3aWxsIGdldCBwcmlvcml0eSBvdmVyCj4gICB0aGUgb3RoZXJzLiBJIHRoaW5rIHdl
IGFncmVlZCB0byBmaXggdGhpcyBieSBqdXN0IGFkZGluZyBhbiBhaXJ0aW1lCj4gICB2X3QgdG8g
dGhlIHZpZiBhcyB3ZWxsIGFuZCB1c2UgdGhhdCBmb3Igc2NoZWR1bGluZyB0aGUgVFhRLiBEb2Vz
Cj4gICBhdGgxMGsgcmVwb3J0IGFpcnRpbWUgdXNhZ2UgZm9yIG11bHRpY2FzdCBhcyB3ZWxsLCBv
ciBvbmx5IGZvcgo+ICAgc3RhdGlvbnM/Cj4gCj4gCkkgcmVtZW1iZXIgd2UgaGF2ZSBGZWxpeCcg
cGF0Y2hlcyByZWR1Y2luZyB0aGUgdGltZSB0aGUgbG9jayBpcyBoZWxkIGluIAptYWM4MDIxMSBm
b3IgRFJSLCBkbyB3ZSBuZWVkIHRvIGludGVncmF0ZSBpdCBpbnRvIHRoaXMgdmVyc2lvbu+8nwo+
IC1Ub2tlCgotLSAKWWlibwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
