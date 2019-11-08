Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC13F4534
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZYyBQLx17XvpNTDjyMn8mxWOAh/+9w7wA1ciNomcUY=; b=fFhkNF0YOpRwdd
	PqRi7Upn/G6zZ70OL9qkksfzNPCMXaVRZYItO4mwLp1zVvruNRjJ1efCu7c/7r5jTYSR8HHTbmLbS
	Cw9DlhVAPxfG0A8ZfiTXdWT/OdSYk+Pq4dkqHAjihMCvYePseUNyhNxdJkxvI74gigKfplQkWpTD/
	9L2hiRbxFiK+sAhUkGG62uY/qol+bYDhqwDlpkR8lXCGerrW8CynwNqYxZp0DNMfS+fCpL9yYPnkD
	OWUS/K82PRH9D0nxEw/iwjPSQwR9ZCSzeUhRRDJSUldvhLCl7msQ1R7VLr9x+S8hJ1zl5zLJgeppc
	PjH+YUK0RfnyiPaSdwpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1zy-0006Aj-Cc; Fri, 08 Nov 2019 11:00:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1zK-0005GK-Bn
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:59:36 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT1zG-00009u-Nh; Fri, 08 Nov 2019 11:59:30 +0100
Message-ID: <f395a9a971ca1a0d0438fca10dfb160c421caa7a.camel@sipsolutions.net>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 11:59:28 +0100
In-Reply-To: <87a796fxgd.fsf@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
 <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
 <87a796fxgd.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025934_397915_C907293A 
X-CRM114-Status: UNSURE (   7.29  )
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

T24gRnJpLCAyMDE5LTExLTA4IGF0IDExOjU2ICswMTAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gSm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3Jp
dGVzOgo+IAo+ID4gT24gV2VkLCAyMDE5LTEwLTIzIGF0IDExOjU5ICswMjAwLCBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gPiA+ICAKPiA+ID4gK3ZvaWQgaWVlZTgwMjExX3N0YV91
cGRhdGVfcGVuZGluZ19haXJ0aW1lKHN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsLAo+ID4g
PiArCQkJCQkgIHN0cnVjdCBzdGFfaW5mbyAqc3RhLCB1OCBhYywKPiA+ID4gKwkJCQkJICB1MTYg
dHhfYWlydGltZSwgYm9vbCB0eF9jb21wbGV0ZWQpCj4gPiA+ICt7Cj4gPiA+ICsJc3Bpbl9sb2Nr
X2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Cj4gPiA+ICsJaWYgKHR4X2NvbXBsZXRl
ZCkgewo+ID4gPiArCQlpZiAoc3RhKSB7Cj4gPiA+ICsJCQlpZiAoV0FSTl9PTkNFKHN0YS0+YWly
dGltZVthY10uYXFsX3R4X3BlbmRpbmcgPCB0eF9haXJ0aW1lLAo+ID4gPiArCQkJCSAgICAgICJU
WFEgcGVuZGluZyBhaXJ0aW1lIHVuZGVyZmxvdzogJXUsICV1IiwKPiA+ID4gKwkJCQkgICAgICBz
dGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nLCB0eF9haXJ0aW1lKSkKPiA+IAo+ID4gTWF5
YmUgYWRkIHRoZSBTVEEvQUMgdG8gdGhlIG1lc3NhZ2U/Cj4gCj4gQ2FuIGRvLiBBbnkgaWRlYSB3
aHkgd2UgbWlnaHQgYmUgc2VlaW5nIHVuZGVyZmxvd3MgKGFzIEthbiByZXBvcnRlZCk/CgpObywg
SSByZWFsbHkgaGF2ZSBubyBpZGVhLiBUaGUgc2hpZnRpbmcgbG9va2VkIE9LIHRvIG1lLCB0aG91
Z2ggSSBkaWRuJ3QKcmV2aWV3IGl0IGNhcmVmdWxseSBlbm91Z2ggdG8gc2F5IEkndmUgcmVhbGx5
IGxvb2tlZCBhdCBhbGwgcGxhY2VzIC4uLgoKam9oYW5uZXMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYXRoMTBrCg==
