Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802EE16302
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 13:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GnoPifaqGb/iUdUdplqNbs/1JYJZOnbkoF9GOhgGdI=; b=qkTBrLh7hDbtF9
	m4Bb5sxXOn0kDfwgYUqbnTjHSAk3Rik+xNk7wbjDEpTU3JPWK62jYRjZeJDdD8WKUl4b78CGkFz3+
	R8uPI+LRIxN+EvrWZl6F4Dkdc/kIeL4DIre/WL41eJvr6H5DB6haMqjtiITU1+majOMbvzxPaXy3E
	JO0b5QneMr8/qH14Y7GC3db8D1eeV7ajj6RIVRTiVQM45Bo9lM4t5m/zAnUQ5iXVdz51OQUNU3Orp
	sspQDi4l3Kd6bSvwwVXyzqdgi+crTQsRfBmur3VRdwv0rRBZQA2TkyDkk7/E2yO4d91x+lZLPwPa/
	aN6vKwNYwHRPGk5PKKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyVs-0005lZ-HJ; Tue, 07 May 2019 11:44:00 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyVo-0005lA-HF
 for ath10k@lists.infradead.org; Tue, 07 May 2019 11:43:58 +0000
Received: by mail-ed1-f67.google.com with SMTP id p26so566506edr.2
 for <ath10k@lists.infradead.org>; Tue, 07 May 2019 04:43:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=0kgIETqFDt+tqtqx6uKvzhB6Qv6yCVJRdyuTHvfTidU=;
 b=hU2cDK3ckBf3/9Ens+a+Ps9cL/Lo+g0AWEaHn8eVaJAQtGkzG+jIXAgobfz+YKYZn/
 w64bQwGLuJxV+jet8MjoGyfQcNxeu4YbPTCxk4NK1D/KM/SpwbAM7Qfh04nRHTIFZhgJ
 wX1snPEsFLbAT62pcKYIZessE2+BpT1vYCl969zUQaxtduIa0QmL57FSSd+wsCbk1qAo
 910j7QPkLfYSaMJAjz/ZWHjCHLiImqN2OEbUmntd+TvQmY3wH6JHUdX6i39KAHs/kxas
 nkqYtd3Jb3O13iAtnFnPOFdOetEHLKhOgpfHJjtVFbdkAzIB/4czURCJmml2RJrSm9nT
 Enig==
X-Gm-Message-State: APjAAAWGfONgROgxRXjKeKC/K0pf33ixvYl86yjT6L7rLQ7ARC3y5ICn
 QDq0582KS/HZGlOVg3bLdLfBkwfHy3U=
X-Google-Smtp-Source: APXvYqwodIXCnEmMk+cj678f55sRblfeRoVgVWWJHcnptgzsAlbB5kfIHlBTL8fgZtSwhlwexToOkw==
X-Received: by 2002:a17:906:6d58:: with SMTP id
 a24mr11402671ejt.104.1557229434480; 
 Tue, 07 May 2019 04:43:54 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id 65sm594134edk.88.2019.05.07.04.43.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 04:43:53 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DFBA71803A4; Tue,  7 May 2019 13:43:52 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: leiwa@codeaurora.org
Subject: Re: [PATCH v2] ath10k: fix different tx duration output
In-Reply-To: <ef8c4fec57a8117b98e30c904fc1a3f5@codeaurora.org>
References: <1555489045-18070-1-git-send-email-leiwa@codeaurora.org>
 <87mukprnie.fsf@toke.dk> <298a645b17aac0f5c466f011225533b0@codeaurora.org>
 <875zrbrb1q.fsf@toke.dk> <ef8c4fec57a8117b98e30c904fc1a3f5@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 07 May 2019 13:43:52 +0200
Message-ID: <87y33i7amf.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_044356_572762_AF58F436 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

bGVpd2FAY29kZWF1cm9yYS5vcmcgd3JpdGVzOgoKPiBPbiAyMDE5LTA0LTE4IDE2OjA3LCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IGxlaXdhQGNvZGVhdXJvcmEub3JnIHdyaXRl
czoKPj4gCj4+PiBPbiAyMDE5LTA0LTE3IDE3OjI2LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
d3JvdGU6Cj4+Pj4gTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4g
Cj4+Pj4+IFRYIGR1cmF0aW9uIG91dHB1dCBvZiB0eF9zdGF0cyBpbiBkZWJ1Z2ZzIGFuZCBzdGF0
aW9uIGR1bXAgaGFkIGJpZwo+Pj4+PiBkaWZmZXJlbmNlIGJlY2F1c2UgdGhleSBnb3QgdHggZHVy
YXRpb24gdmFsdWUgZnJvbSBkaWZmZXJlbnQgCj4+Pj4+IHN0YXRpc3RpYwo+Pj4+PiBkYXRhLiBX
ZSBzaG91bGQgdXNlIHRoZSBzYW1lIHN0YXRpc3RpYyBkYXRhLgo+Pj4+IAo+Pj4+IFNvIGFyZSB5
b3Ugc3VyZSB5b3UgcGlja2VkIHRoZSBtb3N0IGFjY3VyYXRlIG9uZSBvZiB0aGUgdHdvPyA6KQo+
Pj4+IAo+Pj4+IC1Ub2tlCj4+PiAKPj4+IEhpIFRva2UsCj4+PiAKPj4+IFllcy4KPj4+IE5vdyBm
b3IgYXRoMTBrLCB0aGVyZSBhcmUgdHdvIHdheXMgdG8gZ2V0IHR4IGR1cmF0aW9uIG91dHB1dC4K
Pj4+IE9uZSBpcyBnb3QgZnJvbSB0eF9zdGF0cyBpbiBkZWJ1Z2ZzIHJlcG9ydGVkIGJ5IGZpcm13
YXJlLiBJdCBpcyBhIAo+Pj4gdG90YWwKPj4+IHZhbHVlIGluY2x1ZGluZyBhbGwgdGhlIGZyYW1l
cyB3aGljaCBjcmVhdGVkIGJ5IGhvc3QgYW5kIGZpcm13YXJlIHNlbnQKPj4+IHRvIHRoZSBwZWVy
Lgo+Pj4gQW5kIHRoZSBzZWNvbmQgaXMgY2FsY3VsYXRlZCBmcm9tCj4+PiBhdGgxMGtfaHR0X3J4
X3R4X2NvbXBsX2luZCgpLS0+aWVlZTgwMjExX3N0YV9yZWdpc3Rlcl9haXJ0aW1lKCksIGhlcmUK
Pj4+IHRoZSB0eCBkdXJhdGlvbiBqdXN0IGluY2x1ZGVzIHRoZSBkYXRhIGZyYW1lcyBzZW50IGZy
b20gaG9zdCB0byB0aGUKPj4+IHBlZXIuCj4+IAo+PiBTbyB0aGUgZGlmZmVyZW5jZSBpcyB0aGF0
IHRoZSBmb3JtZXIgaW5jbHVkZXMgY29udHJvbCBmcmFtZXMgYXMgd2VsbD8gCj4+IElzCj4+IHRo
YXQgdGhlIG9ubHkgZGlmZmVyZW5jZT8gQW5kIHdoYXQgZXhhY3RseSBpcyBhICJiaWcgZGlmZmVy
ZW5jZSIgKGZyb20KPj4gdGhlIGNvbW1pdCBtZXNzYWdlKT8KPj4gCj4gWWVzLGl0IGFkZHMgdGhl
IGR1cmF0aW9uIHRpbWUgb2YgcmVjZWl2aW5nIEFDSyBmcmFtZXMuCj4gIEZyb20gbXkgdGVzdCxU
WCBmcm9tIEFQIHRvIHN0YXRpb24gd2l0aCBpcGVyZiBVRFAgdGVzdCBpbiAKPiAxMHMsdHhfc3Rh
dHMtPnR4X2R1cmF0aW9uOjU0OTY2MjN1cywKPiBhbmQgYW5vdGhlciB2YWx1ZSBpcyAzOTM0MzI3
dXMuCgpIbW0sIHRoYXQncyBxdWl0ZSBhIGJpZyBkaWZmZXJlbmNlLiBJcyB0aGlzIHJlYWxseSBv
bmx5IEFDS3MsIG9yIGlzIGl0CmFsc28gYSBxdWVzdGlvbiBvZiB3aGV0aGVyIHJldHJpZXMgYXJl
IGFjY291bnRlZD8gSWYgc28sIGl0IG1heSBhY3R1YWxseQpiZSB0aGF0IHdoYXQgd2Ugc2hvdWxk
IGRvIGlzIGNoYW5nZSB3aGljaCB2YWx1ZSBpcyBwYXNzZWQgdG8KaWVlZTgwMjExX3N0YV9yZWdp
c3Rlcl9haXJ0aW1lKCk/Cgo+Pj4gU28gdGhlIGZpcnN0IHZhbHVlIGlzIHByZWZlcmFibGUgZm9y
IHN0YXRpb24gZHVtcC4KPj4gCj4+IEhtbSwgSSdtIG5vdCBzdXJlIGlmIEkgYWdyZWUgd2l0aCB0
aGlzLiBJIHNwZWNpZmljYWxseSBhZGRlZCB0aGUKPj4gdHhfZHVyYXRpb24gdG8gdGhlIHN0YXRp
b24gZHVtcCB0byBiZSBhYmxlIHRvIGdldCB0aGUgdmFsdWVzIHVzZWQgYnkgCj4+IHRoZQo+PiBh
aXJ0aW1lIHNjaGVkdWxlci4gVGhpcyBicmVha3Mgd2l0aCB0aGlzIHBhdGNoLgo+PiAKPj4gLVRv
a2UKPiAgRnJvbSBvdXIgaW50ZXJuYWwgZGlzY3Vzc2luZywgd2Ugd2lsbCByZXZlcnQgdGhpcyBj
aGFuZ2UuCgpDb29sLCBidXQgc2VlIGFib3ZlIDopCgotVG9rZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2F0aDEwawo=
