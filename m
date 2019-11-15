Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46088FDECF
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 14:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KwuqXgxi+b9IQcuMcgiq1HOY8EVTNObLGjQ1cRP6PXU=; b=ZXD30UpAwZIm+O
	a2PXKxAX2NBVVBVXpiVAo+KShK1jQTWVEsOTiwYSI5YnJ111VgJwFJYGEN+CdBtaktLoeKsRAWsWp
	qslO4Ix7nypxJAyPHcGVwp9qHTg/gQaLVuEGvcOw9voxd9p1VEeUZZmPHCdZydKK/iCCsnSLApdTC
	Q+MJXBrLDMlZaXTnJBTPXiZ8u8hX+DDrRQZY5IjO+8afQU8QsJSK2lpxTZjhlnTWsW+eT4O5CR1C0
	MTcA3lqI5C1Z4tapdxpaKOeMzjCqd6fPK6dBRLyJLQ22KGpov5lbC7cDTAb3VJwbq8V46I66/oR3q
	+pUrbX+98u4fjomILTnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbWs-0000tJ-P0; Fri, 15 Nov 2019 13:20:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbWm-0000rj-NT
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 13:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573824041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=wvUQMq8paeveUMyRBwqhvZ4bHbn1KjByxEnpWY8JuvE=;
 b=TEHRyH3EDbKB3yqAEpWDvd01bbNuL5hak+KemeKMTgj0RUwpaxfYsUzcLFXm2t1XERTzbd
 30RVxo7lm7SQT5E6c+/Zw53Z1SkC5i4pAa6uGUQdpBfXcbv5lL9X3ssz2Pf5O4Y6hLAm4p
 DQYg/tR5KNYVPluyAGLyx6XJG4JeADk=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-ny0Skg6sMU2ZAP4z_qLkYA-1; Fri, 15 Nov 2019 08:20:39 -0500
Received: by mail-lj1-f200.google.com with SMTP id v22so1537991ljk.22
 for <ath10k@lists.infradead.org>; Fri, 15 Nov 2019 05:20:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=NCGmpHEMA2O10MpUQId67Zj1BdLKlIMXN/gDOoUArOA=;
 b=Cs7IuFY85gY1swJvX5BVUpv5nKtvwusF/odSvcFAh4XbdcHnBhhmKgz9NEA0sVf1cf
 FbNycsXk1ddtloAovS15U0XHb1tkfZRzmtf8/P6tOi+uDCH3lMpnvLWnxGFUNRWCCFKy
 QrnhFf3xwMy0eTK+RxIYU5UlFgqIFeXm8s5S3N7f9ZHrGcNQjO7ZkJHHjDV5xevBr5d3
 zf9nShpcZ1CMk9mtPIEhhVuy7Wp2jw83ESt55vgIYIYNlhWVAB2hnz9cBekrtDAhQr0U
 SSW2I6bGLBya8yVEwoBLGI/XwhqfVbP5koADXI7MICJ+pUfipPWIQgiFLM/dkVmBYaIO
 vRhA==
X-Gm-Message-State: APjAAAWyTl9CcWUyHjXqoXfwV3NmV5seN6nOyhxa2eFJB8HhJ0cD4UxZ
 kXjCnaGmfhzBsZXCz+Td7tvHb7uR5ir4yKDakTwfhU/Kzckq+DP6nCkQwBoSKRPuWikENtLBWlG
 cTadYvk20O2E/TZMlLn9xmA==
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr11448025ljc.208.1573824038422; 
 Fri, 15 Nov 2019 05:20:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyxFXP2mNsc87Z+RQVjwHXBRrtCroQSC10ZLbV3vxKa3Ps6nbCQkVp4nUXsnYmFbTK9gcgz9A==
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr11447999ljc.208.1573824038202; 
 Fri, 15 Nov 2019 05:20:38 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a1sm4581906lfg.11.2019.11.15.05.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 05:20:37 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D40151818C5; Fri, 15 Nov 2019 14:20:36 +0100 (CET)
Subject: [PATCH v9 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 15 Nov 2019 14:20:36 +0100
Message-ID: <157382403672.580235.12525941420808058808.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: ny0Skg6sMU2ZAP4z_qLkYA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_052044_984547_6EFE23B0 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgaXMgYSBmaXJzdCBhdHRlbXB0IGF0IHBvcnRpbmcgdGhlIEFpcnRpbWUgUXVl
dWUgTGltaXRzIGNvbmNlcHQgZnJvbQp0aGUgb3V0LW9mLXRyZWUgYXRoMTBrIGltcGxlbWVudGF0
aW9uWzBdIHRvIG1hYzgwMjExLiBUaGlzIHZlcnNpb24gdGFrZXMgS2FuJ3MKcGF0Y2ggdG8gZG8g
dGhlIHRocm90dGxpbmcgaW4gbWFjODAyMTEsIGFuZCByZXBsYWNlcyB0aGUgZHJpdmVyIEFQSSB3
aXRoIHRoZQptZWNoYW5pc20gZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiBteSBzZXJpZXMs
IHdoaWNoIGluc3RlYWQgY2FsY3VsYXRlZCB0aGUKZXhwZWN0ZWQgYWlydGltZSBhdCBkZXF1ZXVl
IHRpbWUgaW5zaWRlIG1hYzgwMjExLCBzdG9yaW5nIGl0IGluIHRoZSBTS0IgY2IKZmllbGQuCgpU
aGlzIHNlcmllcyBhbHNvIGltcG9ydHMgRmVsaXgnIGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBm
cm9tIG10NzYgaW50bwptYWM4MDIxMSwgYWRqdXN0aW5nIHRoZSBBUEkgc28gaXQgY2FuIGJlIHVz
ZWQgZnJvbSBUWCBkZXF1ZXVlLCBieSBleHRyYWN0aW5nIHRoZQpsYXRlc3QgVFggcmF0ZSBmcm9t
IHRoZSB0eF9zdGF0cyBzdHJ1Y3R1cmUga2VwdCBmb3IgZWFjaCBzdGF0aW9uLgoKQXMgYmVmb3Jl
LCBJJ3ZlIG9ubHkgY29tcGlsZSB0ZXN0ZWQgdGhpcyAobGFja2luZyB0aGUgcHJvcGVyIGhhcmR3
YXJlIHRvIGRvIG1vcmUKdGVzdGluZyksIGJ1dCBLYW4gaGFzIHRlc3RlZCBpbiBvbiB0aGUgUUNB
OTk4NCBwbGF0Zm9ybS4KClRoZSBzZXJpZXMgaXMgYWxzbyBhdmFpbGFibGUgaW4gbXkgZ2l0IHJl
cG8gaGVyZToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9rZS9saW51eC5naXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wOQoKWzBdIGh0dHBzOi8vY2hyb21p
dW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJvbWl1bW9zL3RoaXJkX3BhcnR5L2tlcm5l
bC8rLzE3MDMxMDUvNwoKQ2hhbmdlbG9nOgoKdjk6CiAgLSBVc2UgYXRvbWljX3N1Yl9yZXR1cm4o
KSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGF0b21pY19zdWIoKSBhbmQgYXRvbWljX3JlYWQoKQogIC0g
QWRkIGdldHRlci9zZXR0ZXIgZm9yIHR4X3RpbWVfZXN0CiAgLSBVc2UgZ2V0X3N0YV9pbmZvX2J5
X2FkZHJzKCkgdG8gZmluZCB0aGUgc3RhdGlvbiBpbgogICAgaWVlZTgwMjExX3JlcG9ydF91c2Vk
X3NrYigpCiAgLSBJbnRlZ3JhdGUgZXZlcnl0aGluZyBiYWNrIGludG8gb25lIHNlcmllcwoKdjg6
CiAgLSBJbmNsdWRlcyBUb2tlJ3MgdjcgdmVyc2lvbiBvZiAibWFjODAyMTE6IEltcG9ydCBhaXJ0
aW1lIGNhbGN1bGF0aW9uIGNvZGUgZnJvbSBtdDc2IgogIC0gRG9uJ3QgY2xvYmJlciBzdGEncyBj
dXN0b21pemVkIHF1ZXVlIGxpbWl0IHdoZW4gY29uZmlndXJpbmcgdGhlIGRlZmF1bHQgdmlhIGRl
YnVnZnMKICAtIEZpeCBhIHJhY2luZyBjb25kaXRpb24gd2hlbiByZXNldCBhcWxfdHhfcGVuZGlu
Zy4KCnY3OgogIC0gRml4IGFxbF90b3RhbF9wZW5kaW5nX2FpcnRpbWUgdW5kZXJmbG93IGR1ZSB0
byBpbnN1ZmZpY2llbnQgbG9ja2luZy4KCnY2OgogIC0gRml4IHN0YSBsb29rdXAgaW4gaWVlZTgw
MjExX3JlcG9ydF91c2VkX3NrYigpLgogIC0gTW92ZSBjYWxsIHRvIGllZWU4MDIxMV9zdGFfdXBk
YXRlX3BlbmRpbmdfYWlydGltZSgpIHRvIGEgYml0IGxhdGVyIGluCiAgICBfX2llZWU4MDIxMV90
eF9zdGF0dXMoKSAKdjU6CiAgLSBBZGQgbWlzc2luZyBleHBvcnQgb2YgaWVlZTgwMjExX2NhbGNf
cnhfYWlydGltZSgpIGFuZCBtYWtlCiAgICBpZWVlODAyMTFfY2FsY190eF9haXJ0aW1lX3JhdGUo
KSBzdGF0aWMgKGtidWlsZGJvdCkuCiAgLSBVc2Ugc2tiX2dldF9xdWV1ZV9tYXBwaW5nKCkgdG8g
Z2V0IHRoZSBBQyBmcm9tIHRoZSBza2IuCiAgLSBUYWtlIGJhc2ljIHJhdGUgY29uZmlndXJhdGlv
biBmb3IgdGhlIEJTUyBpbnRvIGFjY291bnQgd2hlbiBjYWxjdWxhdGluZwogICAgbXVsdGljYXN0
IHJhdGUuCnY0OgogIC0gRml4IGNhbGN1bGF0aW9uIHRoYXQgY2xhbXBzIHRoZSBtYXhpbXVtIGFp
cnRpbWUgdG8gZml0IGludG8gMTAgYml0cwogIC0gSW5jb3Jwb3JhdGUgUmljaCBCcm93bidzIG5p
dHMgZm9yIHRoZSBjb21taXQgbWVzc2FnZSBpbiBLYW4ncyBwYXRjaAogIC0gQWRkIGZld2VyIGxv
Y2FsIHZhcmlhYmxlcyB0byBpZWVlODAyMTFfdHhfZGVxdWV1ZSgpCnYzOgogIC0gTW92ZSB0aGUg
dHhfdGltZV9lc3QgZmllbGQgc28gaXQncyBzaGFyZWQgd2l0aCBhY2tfZnJhbWVfaWQsIGFuZCB1
c2UgdW5pdHMKICAgIG9mIDR1cyBmb3IgdGhlIHZhbHVlIHN0b3JlZCBpbiBpdC4KICAtIE1vdmUg
dGhlIGFkZGl0aW9uIG9mIHRoZSBFdGhlcm5ldCBoZWFkZXIgc2l6ZSBpbnRvIGllZWU4MDIxMV9j
YWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoKQp2MjoKICAtIEludGVncmF0ZSBLYW4ncyBhcHByb2Fj
aCB0byBhaXJ0aW1lIHRocm90dGxpbmcuCiAgLSBIb3BlZnVsbHkgZml4IHRoZSBjYiBzdHJ1Y3Qg
YWxpZ25tZW50IG9uIGJpZy1lbmRpYW4gYXJjaGl0ZWN0dXJlcy4KCi0tLQoKS2FuIFlhbiAoMSk6
CiAgICAgIG1hYzgwMjExOiBJbXBsZW1lbnQgQWlydGltZS1iYXNlZCBRdWV1ZSBMaW1pdCAoQVFM
KQoKVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuICgzKToKICAgICAgbWFjODAyMTE6IEFkZCBuZXcg
c3RhX2luZm8gZ2V0dGVyIGJ5IHN0YS92aWYgYWRkcnMKICAgICAgbWFjODAyMTE6IEltcG9ydCBh
aXJ0aW1lIGNhbGN1bGF0aW9uIGNvZGUgZnJvbSBtdDc2CiAgICAgIG1hYzgwMjExOiBVc2UgQWly
dGltZS1iYXNlZCBRdWV1ZSBMaW1pdHMgKEFRTCkgb24gcGFja2V0IGRlcXVldWUKCgogaW5jbHVk
ZS9uZXQvY2ZnODAyMTEuaCAgICAgfCAgICA3ICsKIGluY2x1ZGUvbmV0L21hYzgwMjExLmggICAg
IHwgICA1NyArKysrCiBuZXQvbWFjODAyMTEvTWFrZWZpbGUgICAgICB8ICAgIDMgCiBuZXQvbWFj
ODAyMTEvYWlydGltZS5jICAgICB8ICA1OTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzLmMgICAgIHwgICA4NSArKysrKysK
IG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jIHwgICA0MyArKy0KIG5ldC9tYWM4MDIxMS9pZWVl
ODAyMTFfaS5oIHwgICAgOCArCiBuZXQvbWFjODAyMTEvbWFpbi5jICAgICAgICB8ICAgMTAgKwog
bmV0L21hYzgwMjExL3N0YV9pbmZvLmMgICAgfCAgIDU4ICsrKysKIG5ldC9tYWM4MDIxMS9zdGFf
aW5mby5oICAgIHwgICAxMSArCiBuZXQvbWFjODAyMTEvc3RhdHVzLmMgICAgICB8ICAgMzYgKyst
CiBuZXQvbWFjODAyMTEvdHguYyAgICAgICAgICB8ICAgNjUgKysrKysKIDEyIGZpbGVzIGNoYW5n
ZWQsIDk1NyBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBuZXQvbWFjODAyMTEvYWlydGltZS5jCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEw
awo=
