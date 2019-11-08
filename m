Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08710F4423
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RwOrCtzQqoySd1Vm1eISbFNiWNkLfbTEi3NuQfHm9o=; b=KjtLuHR899ReiZ
	94LPXGthSw2HueHag+BOW+NJDbCL4sPl9VKEpr/y7+8OdqgzLSzvcg5gyAGgam0vu8SmRcHuq/Yai
	ZB7CkWT5xuQHq9S1LtBgCgaalSZRyyeaUhQ6AQisZX/0AXBwe+bg8fdigRhArEhR1iFQVWFFC1DNR
	1lwJdIf7jHGlvn+k9QjRjcj923tlB2tcx3v62PRihwgiT8/S5JKXAws3ALCAbAjs/6Sk8Vtfj/WfR
	ci+vj/pw92cr20Yo8kGM1/vrirswAIj6mqoAsXbkKVCfl22Wcdg/Fur54zF3MpOerCQgB/utYe/jR
	ghwHiO7J7jZPcjHorUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT172-00086S-T8; Fri, 08 Nov 2019 10:03:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT16y-00085q-GL
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:03:26 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT16q-0007P5-ES; Fri, 08 Nov 2019 11:03:16 +0100
Message-ID: <e40e97d46c0f602677e654bd15c5e14f05274852.camel@sipsolutions.net>
Subject: Re: [PATCH v6 1/4] mac80211: Shrink the size of ack_frame_id to
 make room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 11:03:15 +0100
In-Reply-To: <157182474063.150713.16132669599100802716.stgit@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474063.150713.16132669599100802716.stgit@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_020324_543419_4EA98D01 
X-CRM114-Status: UNSURE (   8.87  )
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

T24gV2VkLCAyMDE5LTEwLTIzIGF0IDExOjU5ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gRnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+Cj4gCj4gVG8gaW1wbGVtZW50IGFpcnRpbWUgcXVldWUgbGltaXRpbmcsIHdlIG5lZWQgdG8g
a2VlcCBhIHJ1bm5pbmcgYWNjb3VudCBvZgo+IHRoZSBlc3RpbWF0ZWQgYWlydGltZSBvZiBhbGwg
c2ticyBxdWV1ZWQgaW50byB0aGUgZGV2aWNlLiBEbyB0byB0aGlzCj4gY29ycmVjdGx5LCB3ZSBu
ZWVkIHRvIHN0b3JlIHRoZSBhaXJ0aW1lIGVzdGltYXRlIGludG8gdGhlIHNrYiBzbyB3ZSBjYW4K
PiBkZWNyZWFzZSB0aGUgb3V0c3RhbmRpbmcgYmFsYW5jZSB3aGVuIHRoZSBza2IgaXMgZnJlZWQu
IFRoaXMgbWVhbnMgdGhhdCB0aGUKPiB0aW1lIGVzdGltYXRlIG11c3QgYmUgc3RvcmVkIHNvbWV3
aGVyZSB0aGF0IHdpbGwgc3Vydml2ZSBmb3IgdGhlIGxpZmV0aW1lCj4gb2YgdGhlIHNrYi4KPiAK
PiBUbyBnZXQgdGhpcywgZGVjcmVhc2UgdGhlIHNpemUgb2YgdGhlIGFja19mcmFtZV9pZCBmaWVs
ZCB0byA2IGJpdHMsIGFuZAo+IGxvd2VyIHRoZSBzaXplIG9mIHRoZSBJRCBzcGFjZSBhY2NvcmRp
bmdseS4gVGhpcyBsZWF2ZXMgMTAgYml0cyBmb3IgdXNlIGZvcgo+IHR4X3RpbWVfZXN0LCB3aGlj
aCBpcyBlbm91Z2ggdG8gc3RvcmUgYSBtYXhpbXVtIG9mIDQwOTYgdXMsIGlmIHdlIHNoaWZ0IHRo
ZQo+IHZhbHVlcyBzbyB0aGV5IGJlY29tZSB1bml0cyBvZiA0dXMuCj4gCgpJJ3ZlIGFwcGxpZWQg
dGhpcyBhcyBwcmVwYXJhdGlvbi4KCmpvaGFubmVzCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2F0aDEwawo=
