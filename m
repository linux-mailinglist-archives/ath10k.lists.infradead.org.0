Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DD7F4437
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+//CM5QZW5WvPHcIOChtvYJWq6QZnZPTUJH0K11Vk50=; b=e8v+Ao26vKD2pL
	2OSVyns93bVq4zVy27JADI6ZlKsDpRSqP80niCA9YA/fCRgXvwsN5M02Yga5ylInnDcdI1USaLIhD
	DvBRbnH5k7bdWVShPymrBB6VLyyXFtiQcHARDhwyWaW5hVO6EMOn31udY1mmzgLLypXjCz6Lr9/PV
	aVhdp/gZp+wSu7b6wM3/uMU9eIRuRqbr4twalFzbLA78PLrBKIcQRtLmWm4v2Wkd087YQ0T6HFTm0
	ginkYuSkxUvqOWtJOb9+aAREALr4zBqd0kIEtLjl2Z35DeuP1xN75X4yP2EFX+UXtW5ZoMYlrBqJX
	t3D3bkLzzu5EyGCWGmhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1DP-0001ah-Aq; Fri, 08 Nov 2019 10:10:03 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1DJ-0001aG-Np
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:09:58 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT1DG-0007Yb-CK; Fri, 08 Nov 2019 11:09:54 +0100
Message-ID: <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Date: Fri, 08 Nov 2019 11:09:53 +0100
In-Reply-To: <157182474287.150713.12867638269538730397.stgit@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_020957_774074_41F7C016 
X-CRM114-Status: UNSURE (   5.07  )
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
ZW4gd3JvdGU6Cj4gCj4gIAo+ICt2b2lkIGllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWly
dGltZShzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCwKPiArCQkJCQkgIHN0cnVjdCBzdGFf
aW5mbyAqc3RhLCB1OCBhYywKPiArCQkJCQkgIHUxNiB0eF9haXJ0aW1lLCBib29sIHR4X2NvbXBs
ZXRlZCkKPiArewo+ICsJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7
Cj4gKwlpZiAodHhfY29tcGxldGVkKSB7Cj4gKwkJaWYgKHN0YSkgewo+ICsJCQlpZiAoV0FSTl9P
TkNFKHN0YS0+YWlydGltZVthY10uYXFsX3R4X3BlbmRpbmcgPCB0eF9haXJ0aW1lLAo+ICsJCQkJ
ICAgICAgIlRYUSBwZW5kaW5nIGFpcnRpbWUgdW5kZXJmbG93OiAldSwgJXUiLAo+ICsJCQkJICAg
ICAgc3RhLT5haXJ0aW1lW2FjXS5hcWxfdHhfcGVuZGluZywgdHhfYWlydGltZSkpCgpNYXliZSBh
ZGQgdGhlIFNUQS9BQyB0byB0aGUgbWVzc2FnZT8KCmpvaGFubmVzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgx
MGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2F0aDEwawo=
