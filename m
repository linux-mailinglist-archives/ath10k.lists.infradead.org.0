Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61BBF4573
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o53lJD/4YkHk/McwgJryylZiL6l3j7Bd7wWL6WX+QHY=; b=uDdfS3+W0ja42N
	a47QzPWPvNPLAGpFGswMQEGLB1Kn0qogumY5KCEjVZavPfZzilorKTafPtsVMLRpLQSienJbCicjN
	zkK/bXQoTBqriEBdfoPo46jY6UrJ27X6RFyPY9hyQoZfl+atwRun3TcMVWT0O9kSypSjuY2d2tjLQ
	sf5WSzREsDMcV9Hw+9ZF3wMW0EzJsBi7CDy8Fv5UZTnRVuS9xxQKkd6I32tbKKdq5AJsXGUJsDKyz
	x6KgysQX2GarQ/YINwjuoq9Qy9n3PDOXkcorHGrXH6HYgtToQoNwFTDCdbPj4S8qJUrOclqNGfflt
	CeWFm32BmZeR5dUmNH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2A8-0004HG-8J; Fri, 08 Nov 2019 11:10:44 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2A4-0004Gp-DW
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 11:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573211439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j+7OvF9pTiFagC4uXjlG85gg/uA64p5Hu8Gw3YYGZVc=;
 b=fUDtWw7gldO3vTzZiCCqbmMRYkdMeGfjIlJHjOQUZshh0RV45s+Rhuo8A1AxQkaXPebqtE
 kZvnceUEtetTQJFgSYU+TelbRbyyIPA3OIObgkBZoIwV2PW00ALvC8kUiV/cnKNDshUUAY
 9aJVSdnvZZ7PzVjGHgHlllReYiZtC6c=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-ZJyuPKe1NeiiWR0kJvy6tw-1; Fri, 08 Nov 2019 06:10:35 -0500
Received: by mail-lf1-f71.google.com with SMTP id h3so1232244lfp.17
 for <ath10k@lists.infradead.org>; Fri, 08 Nov 2019 03:10:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=f/TIDfvlS9K2Q9yW8jvdJa+i8whstu4ovcYsTR8Jd+c=;
 b=GQTdYMndQoGV53pBqV1P5fXHRQutXI2A5X18QDbVQeOkQxQIvjrspJ2c7ZX1XVbtJl
 ht2YoX8J/xdlA1Mh9Ti1XB3Sv/KVapdbpNfH7B4TV+E2fnZXqjUIB1JQF/Un1QkN8zae
 TGRZ218o4wRVC2lNyAYFp2Sxaatk8ufgUv5JUEoweYHX46VPzdp2UNZiGtLEtqNG4Sac
 Li/tpjUoegbaEB8elfIipCd5JuF8l43CHIwOChtdX3AxRLTKpueBD1yRqSOeYWCiimY3
 lP3yc+lQodJnUDcujznkr59UVnAu4FfTubytSphUyg1cA+nTgZg8i32v3kUStvVHsHRb
 Nszw==
X-Gm-Message-State: APjAAAXzD1bSncd0KOwab1TWLv/xpaWFx/VzKGuCPMpaYX/kUVggbXw3
 5SNmtX6fnHN1D7iaCjgeG+xT1e0MFEjki+O3P76+iaaFtRPcZX8sTvLIWMWjE+D9g7wnSI6U8nO
 0cVKEmmDBBxclK5Dw282tpA==
X-Received: by 2002:a2e:b1c7:: with SMTP id e7mr6459976lja.239.1573211434286; 
 Fri, 08 Nov 2019 03:10:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwvL1cSCElAKKooFC9WpiIg1tuPMvZ1oS5U0qu+66rIj8IZ6hiz62Nov/WldvhI3NoplSN+bw==
X-Received: by 2002:a2e:b1c7:: with SMTP id e7mr6459954lja.239.1573211434056; 
 Fri, 08 Nov 2019 03:10:34 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id y17sm2225326lfy.58.2019.11.08.03.10.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 03:10:33 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 8F9CD1818B5; Fri,  8 Nov 2019 12:10:32 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
In-Reply-To: <f395a9a971ca1a0d0438fca10dfb160c421caa7a.camel@sipsolutions.net>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
 <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
 <87a796fxgd.fsf@toke.dk>
 <f395a9a971ca1a0d0438fca10dfb160c421caa7a.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 08 Nov 2019 12:10:32 +0100
Message-ID: <874kzefwt3.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: ZJyuPKe1NeiiWR0kJvy6tw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_031040_529061_93ABCC15 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBG
cmksIDIwMTktMTEtMDggYXQgMTE6NTYgKzAxMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4gSm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVz
Ogo+PiAKPj4gPiBPbiBXZWQsIDIwMTktMTAtMjMgYXQgMTE6NTkgKzAyMDAsIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gPiA+ICAKPj4gPiA+ICt2b2lkIGllZWU4MDIxMV9zdGFf
dXBkYXRlX3BlbmRpbmdfYWlydGltZShzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCwKPj4g
PiA+ICsJCQkJCSAgc3RydWN0IHN0YV9pbmZvICpzdGEsIHU4IGFjLAo+PiA+ID4gKwkJCQkJICB1
MTYgdHhfYWlydGltZSwgYm9vbCB0eF9jb21wbGV0ZWQpCj4+ID4gPiArewo+PiA+ID4gKwlzcGlu
X2xvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKPj4gPiA+ICsJaWYgKHR4X2Nv
bXBsZXRlZCkgewo+PiA+ID4gKwkJaWYgKHN0YSkgewo+PiA+ID4gKwkJCWlmIChXQVJOX09OQ0Uo
c3RhLT5haXJ0aW1lW2FjXS5hcWxfdHhfcGVuZGluZyA8IHR4X2FpcnRpbWUsCj4+ID4gPiArCQkJ
CSAgICAgICJUWFEgcGVuZGluZyBhaXJ0aW1lIHVuZGVyZmxvdzogJXUsICV1IiwKPj4gPiA+ICsJ
CQkJICAgICAgc3RhLT5haXJ0aW1lW2FjXS5hcWxfdHhfcGVuZGluZywgdHhfYWlydGltZSkpCj4+
ID4gCj4+ID4gTWF5YmUgYWRkIHRoZSBTVEEvQUMgdG8gdGhlIG1lc3NhZ2U/Cj4+IAo+PiBDYW4g
ZG8uIEFueSBpZGVhIHdoeSB3ZSBtaWdodCBiZSBzZWVpbmcgdW5kZXJmbG93cyAoYXMgS2FuIHJl
cG9ydGVkKT8KPgo+IE5vLCBJIHJlYWxseSBoYXZlIG5vIGlkZWEuIFRoZSBzaGlmdGluZyBsb29r
ZWQgT0sgdG8gbWUsIHRob3VnaCBJIGRpZG4ndAo+IHJldmlldyBpdCBjYXJlZnVsbHkgZW5vdWdo
IHRvIHNheSBJJ3ZlIHJlYWxseSBsb29rZWQgYXQgYWxsIHBsYWNlcyAuLi4KClJpZ2h0LCBidWdn
ZXIuIEkgd2FzIHRoaW5raW5nIG1heWJlIHRoZXJlJ3MgYSBjYXNlIHdoZXJlIHNrYnMgY2FuIGJl
CmNsb25lZCAoYW5kIHJldGFpbiB0aGUgdHhfdGltZV9lc3QgZmllbGQpIGFuZCB0aGVuIHJlbGVh
c2VkIHR3aWNlPyBPcgptYXliZSBzb21ld2hlcmUgdGhhdCBzdGVwcyBvbiB0aGUgc2tiLT5jYiBm
aWVsZCBpbiBzb21lIG90aGVyIHdheT8KQ291bGRuJ3QgZmluZCBhbnl0aGluZyBvYnZpb3VzIG9u
IGEgZmlyc3QgcGVydXNhbCBvZiB0aGUgVFggcGF0aCBjb2RlLApidXQgbWF5YmUgeW91IGNvdWxk
IHRoaW5rIG9mIHNvbWV0aGluZz8KCk90aGVyd2lzZSBJIGd1ZXNzIHdlJ2xsIGJlIGZvcmNlZCB0
byBnbyBhbmQgZG8gc29tZSBhY3R1YWwsCm9sZC1mYXNoaW9uZWQgZGVidWdnaW5nIDspCgotVG9r
ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEw
ayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
