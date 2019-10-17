Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2C7DA9E0
	for <lists+ath10k@lfdr.de>; Thu, 17 Oct 2019 12:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmuRk/r8pDkTkyA2Ww7Lb+iRtOQU50sxzkd4AYm8fKI=; b=D0G2qocBIWNLT5
	0VZklM5bNdJQ6e0coeR8P15a4DzAaJi9nEQwd2TV1/KqzxsVygb9QkGuECbPeMTHWiOFnzQjj+kKk
	lk1SiovpSxHoXTQFqw+dBGWxr6jsDa+xyMovnutI2I0ApWcVL5chYTXoPnuH5EChM2Zx4hELVLgsY
	8Iw9viCvbD2I8YYEW9YesNXD0ZbS/FQ0/+q/Hgn7F7cpzY9mi/2KEGmHlRpRo/QFg6qaQGzD6cA8b
	amfM4EQM0QAV2OzUsSc3wmJ/JPZyMm6O68vuXKJofklA/ViOvZgBzEHyzKhjsGnIANdVenhLCD4fi
	Yy6yezTp5lU6ofJ5em/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2xS-00039e-O6; Thu, 17 Oct 2019 10:24:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2xO-00034O-Tu
 for ath10k@lists.infradead.org; Thu, 17 Oct 2019 10:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571307871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lcgTAsykrrNBZTJbyqExhJnM6yJEQufUqHJ8rZTQa9o=;
 b=GwWuzhf7dXo0kLvtzPnMHOu+F8TijbnNr/rrChPmYqemNpI2FwXAUcvT0kHkClTZdEwv1X
 grcaNvNmt1gWPjUDjhSwudPqEY5IBI9iLCYFf89RWOU/EMQQaUcb40FbzMkKlxngjFGiGP
 7ZKorCROxcvWys8uU0sR0WR4NaIkjhw=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-wDIcNHlxN-i8rJhgmzG6sA-1; Thu, 17 Oct 2019 06:24:29 -0400
Received: by mail-lj1-f199.google.com with SMTP id j6so325348ljb.19
 for <ath10k@lists.infradead.org>; Thu, 17 Oct 2019 03:24:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=lcgTAsykrrNBZTJbyqExhJnM6yJEQufUqHJ8rZTQa9o=;
 b=n7Pqaphq2NCj/siu3F0M1Ojpg19K5pdXv4uVLNC3ga4nHh76npp2EC//svGsj9+7jR
 wdVJF616LNZ1YyYiOZAAmoY4xZzZjwEPKAil0HkW1nQ/dMV8NrG0QG9oeUYjjjcNiP8b
 hDJX8IP5asMXpvsSrG+P2xYmAwqD0VF+oOuU54ngm8jXWEJxZRsJyV8fhtrE69SLwiD6
 v9LaCWjx1U9rSWshSB8YSGRYlW/6LFIfMKLc7z0Tq+NGSZ8X/D7/vultH0Y8peOGmHru
 +X+cqwn8fw/kXtyN+Df0qt8KDO5vyAUmb7ZlqVF4nPox60FA1St85ORw27Ecf+elJSag
 IaKQ==
X-Gm-Message-State: APjAAAWJy4dZQqwW/bTVZdukTE7czsOH9pGdqJYyZSwvY921KLpF4mzH
 6tvy13m/Y+W6SjY36NDdU5GhxH++jAR5yQRNLkFKryO/9yzxQPK2P3Zm2SfB4QuWUW6WxGbtO2C
 5d1lGJUtjGgyJ7k+qMT43FA==
X-Received: by 2002:ac2:495c:: with SMTP id o28mr1930784lfi.114.1571307868182; 
 Thu, 17 Oct 2019 03:24:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4Um9PtHf45hF1sDU6N7En5Zg6AyOeucAQgAhGOFjb+fQT27D52C4f7YvAByVqn4imrAvxGw==
X-Received: by 2002:ac2:495c:: with SMTP id o28mr1930764lfi.114.1571307867946; 
 Thu, 17 Oct 2019 03:24:27 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id v203sm1119453lfa.25.2019.10.17.03.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 03:24:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A575A1804C9; Thu, 17 Oct 2019 12:24:26 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Make-wifi-fast] [PATCH v2 4/4] mac80211: Use Airtime-based Queue
 Limits (AQL) on packet dequeue
In-Reply-To: <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
 <87o8yfg0zo.fsf@toke.dk> <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 17 Oct 2019 12:24:26 +0200
Message-ID: <87lftjfz51.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: wDIcNHlxN-i8rJhgmzG6sA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_032435_084657_2852E4B4 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPj4gT24gT2N0IDE3
LCAyMDE5LCBhdCAxMTo0NCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+IHdyb3RlOgo+PiAKPj4gS2FuIFlhbiA8a3lhbkBnb29nbGUuY29tPiB3cml0ZXM6Cj4+IAo+
Pj4gSGkgVG9rZSwKPj4+IAo+Pj4gVGhhbmtzIGZvciBnZXR0aW5nIHRoaXMgZG9uZSEgSSB3aWxs
IGdpdmUgaXQgYSB0cnkgaW4gdGhlIG5leHQgZmV3Cj4+PiBkYXlzLiAgQSBmZXcgY29tbWVudHM6
Cj4+PiAKPj4+PiBUaGUgZXN0aW1hdGVkIGFpcnRpbWUgZm9yIGVhY2ggc2tiIGlzIHN0b3JlZCBp
biB0aGUgdHhfaW5mbywgc28gd2UgY2FuCj4+Pj4gc3VidHJhY3QgdGhlIHNhbWUgYW1vdW50IGZy
b20gdGhlIHJ1bm5pbmcgdG90YWwgd2hlbiB0aGUgc2tiIGlzIGZyZWVkIG9yCj4+Pj4gcmVjeWNs
ZWQuCj4+PiAKPj4+IExvb2tzIGxpa2UgYXRoMTBrIGRyaXZlciB6ZXJvIG91dCB0aGUgaW5mby0+
c3RhdHVzIGJlZm9yZSBjYWxsaW5nCj4+PiBpZWVlODAyMTFfdHhfc3RhdHVzKC4uLik6Cj4+PiBp
bnQgYXRoMTBrX3R4cnhfdHhfdW5yZWYoc3RydWN0IGF0aDEwa19odHQgKmh0dCwKPj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBodHRfdHhfZG9uZSAqdHhfZG9uZSkKPj4+
IHsKPj4+IC4uLgo+Pj4gICAgICAgIGluZm8gPSBJRUVFODAyMTFfU0tCX0NCKG1zZHUpOwo+Pj4g
ICAgICAgIG1lbXNldCgmaW5mby0+c3RhdHVzLCAwLCBzaXplb2YoaW5mby0+c3RhdHVzKSk7Cj4+
PiAuLi4KPj4+ICAgICAgICBpZWVlODAyMTFfdHhfc3RhdHVzKGh0dC0+YXItPmh3LCBtc2R1KTsK
Pj4+IH0KPj4gCj4+IEFoLCBidWdnZXI7IEkgd2FzIGFmcmFpZCB3ZSdkIHJ1biBpbnRvIHRoaXMu
IEEgcXVpY2sgZ3JlcCBpbmRpY2F0ZXMgdGhhdAo+PiBpdCdzIG9ubHkgYXRoMTBrIGFuZCBpd2wg
dGhhdCBkbyB0aGlzLCB0aG91Z2gsIHNvIGl0J3MgcHJvYmFibHkKPj4gbWFuYWdlYWJsZSB0byBq
dXN0IGZpeCB0aGlzLiBJIHRoaW5rIHRoZSBzaW1wbGVzdCBzb2x1dGlvbiBpcyBqdXN0IHRvCj4+
IHJlc3RvcmUgdGhlIGZpZWxkIGFmdGVyIGNsZWFyaW5nLCBubz8KPj4gCj4+PiBXZSBuZWVkIGVp
dGhlciByZXN0b3JlIHRoZSBpbmZvLT5zdGF0dXMudHhfdGltZV9lc3Qgb3IgY2FsbGluZwo+Pj4g
aWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkgaW4gYXRoMTBrIGJlZm9yZSB0
eF90aW1lX2VzdAo+Pj4gZ2V0IGVyYXNlZC4KPj4+IAo+Pj4+ICsgICAgICAgaWYgKGxvY2FsLT5h
aXJ0aW1lX2ZsYWdzICYgQUlSVElNRV9VU0VfQVFMKSB7Cj4+Pj4gKyAgICAgICAgICAgICAgIGFp
cnRpbWUgPSBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+
c3RhLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBza2ItPmxlbiArIDM4KTsKPj4+IAo+Pj4gSSB0aGluayBpdCBpcyBiZXR0
ZXIgdG8gcHV0IHRoZSAiKyAgMzgiIHRoYXQgdGFrZXMgY2FyZSBvZiB0aGUgaGVhZGVyCj4+PiBv
dmVyaGVhZCBpbnNpZGUgaWVlZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZSgpLgo+PiAK
Pj4gSG1tLCBubyBzdHJvbmcgb3BpbmlvbiBhYm91dCB0aGlzOyBidXQgeWVhaCwgc2luY2Ugd2Ug
aGF2ZSBhIGRlZGljYXRlZAo+PiBmdW5jdGlvbiBmb3IgdGhpcyB1c2UgSSBndWVzcyB0aGVyZSdz
IG5vIGhhcm0gaW4gYWRkaW5nIGl0IHRoZXJlIDopCj4+IAo+Cj4gU2lsbHkgcXVlc3Rpb24sIGlz
IHRoaXMgT3ZlcmhlYWQgZ3VhcmFudGVlZCB0byBiZSAzOCBCeXRlcyBmb3IgYWxsCj4gZXRlcm5p
dHk/IE90aGVyd2lzZSBhIHZhcmlhYmxlIG9yIGEgcHJlcHJvY2Vzc29yIGNvbnN0YW50IG1pZ2h0
IGJlCj4gbW9yZSBmdXR1cmUgcHJvb2Y/CgpXZWxsLCB5ZWFoLCBhcyBsb25nIGFzIHdlJ3JlIHNl
bmRpbmcgRXRoZXJuZXQgcGFja2V0cy4gV2hpY2ggaXMga2luZGEKYmFrZWQgaW50byB0aGUgV2lG
aSBzdGFuZGFyZCA6KQoKLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
