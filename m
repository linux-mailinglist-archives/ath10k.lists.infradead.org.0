Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5B7F4543
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 12:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsSr1Y+CHgtEYr08esyn3yciQvdTFfGkR4OMaEnYhfc=; b=sIagS67EHKvm0Y
	msYBwKCNnpdhTkWSaNMcsWl/IjV7QyJNyPGbEAAyE9fOeopbRphMgPOsXj5FEyZjekOSBBRCYpGP3
	fbfZUNM8IIQrxThPMCS0VPnbwQGAgMexZP65MzpgzqhM6QgQ1BcRRHUZMeyUkut3wY51GPQWb+Js+
	jA52wYGKBok5xDhS214dYm3BOTy+8gSKpwHeIqoea3381q3F7nmNgiLQWHvhR1pmMiqpAjK88WNxv
	3Rtb/s8pS997pSGfFONClyxBtcuWlCHgxA8cRjZbs9T3Z7BvZbkEbGio+pIFhxC9hnu5vlh/vJB5n
	MIe101j7kOc5HmSRVHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT21T-0000ET-TQ; Fri, 08 Nov 2019 11:01:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT21M-0000BB-89
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 11:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573210898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2pehBU8sSxfSfaE4NqFPdAzFqvrsYq1VRgTX8hc2G1Y=;
 b=D+9OObOmHUT06hBOcrg4E6Hr8CfMFKlUhB3bw28y2Kf5WKQXDrpq0oBNEmfUmw/3T/RLUV
 btvOk2YagLZEIf++7Vr3lgZOKKH/fnXrNoT1UhvRcNvDX5oLy39Gtexlia7PWFGKqUlwTo
 rJxsuAieESUHq36/LjstSpHPcH5FrpM=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-Vk_i0vwfNKqMBgfp8quBkA-1; Fri, 08 Nov 2019 06:01:35 -0500
Received: by mail-ed1-f69.google.com with SMTP id f26so4145239edy.16
 for <ath10k@lists.infradead.org>; Fri, 08 Nov 2019 03:01:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=ZyyhMUlU9R9fEWMycrsCOqhiWueP8mUiq2raZisldTk=;
 b=KTv3gi9usqXX191NQQW2MIPeRlufc4YDXauHiJy53sON757uosMfV8KsLFbIxwGP4W
 /LtUElZvgisbhc2qf1W0xp2Ev6Fp71UNhDw5VwIvm6rQvjqxO3nZczXQBD9sxo4C5Ahp
 B0S0jREo/cQyar8R+OqLCkPv4gkltlBVUmXXVj4k0cdgFemIBXbdG++3rskFYiuxifo0
 V/YIc5RnYDgQb8TFbLo/8bT65td1sFleSRF8ZcbU9BZ4Pl6kPSEAXAz3IHtJDYZ4jt/d
 Snt2XnhsKKsvX235kIez7tP6Anqnn+jpB1VO+eeeS38ktMDWAWzIcICCwrJKjbvSbZof
 kB1w==
X-Gm-Message-State: APjAAAXVa7+LHmC8OQUfh8xgy7XmDEbbf+5LQi+ph+IDaXtAk7ePKnYE
 8E+FsVbr3hXQLq8rUkYHD22u61fepXqDispiEVpZJ7y3vx1BGUdHEzUA/1t+DaxYgX3tZSRwY3b
 33TZLs/yxkveqMdbCnLr9/Q==
X-Received: by 2002:a50:8969:: with SMTP id f38mr9359904edf.211.1573210894460; 
 Fri, 08 Nov 2019 03:01:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWTp/rmoroMCiYVUg5skGWAlRu+PZp2l3Gpm6XBlHO+OWpIgcFnaYBh6CItZidwf+cGQInqg==
X-Received: by 2002:a50:8969:: with SMTP id f38mr9359892edf.211.1573210894274; 
 Fri, 08 Nov 2019 03:01:34 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id v17sm117797edt.76.2019.11.08.03.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 03:01:33 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 09BC21818B5; Fri,  8 Nov 2019 12:01:33 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v6 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <0b43c4822ab83ea4d33a5a32d8ff6c7a56eff6c5.camel@sipsolutions.net>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474399.150713.16380222749144410045.stgit@toke.dk>
 <0b43c4822ab83ea4d33a5a32d8ff6c7a56eff6c5.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 08 Nov 2019 12:01:32 +0100
Message-ID: <877e4afx83.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Vk_i0vwfNKqMBgfp8quBkA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_030140_366171_5CD33E2A 
X-CRM114-Status: GOOD (  11.99  )
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

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBX
ZWQsIDIwMTktMTAtMjMgYXQgMTE6NTkgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4gCj4+ICsJaWYgKGluZm8tPnR4X3RpbWVfZXN0KSB7Cj4+ICsJCXN0cnVjdCBzdGFf
aW5mbyAqc3RhID0gTlVMTCwgKnM7Cj4+ICsJCXN0cnVjdCByaGxpc3RfaGVhZCAqdG1wOwo+PiAr
Cj4+ICsJCXJjdV9yZWFkX2xvY2soKTsKPj4gKwo+PiArCQlmb3JfZWFjaF9zdGFfaW5mbyhsb2Nh
bCwgaGRyLT5hZGRyMSwgcywgdG1wKSB7Cj4+ICsJCQkvKiBza2lwIHdyb25nIHZpcnR1YWwgaW50
ZXJmYWNlICovCj4+ICsJCQlpZiAoIWV0aGVyX2FkZHJfZXF1YWwoaGRyLT5hZGRyMiwgcy0+c2Rh
dGEtPnZpZi5hZGRyKSkKPj4gKwkJCQljb250aW51ZTsKPj4gKwo+PiArCQkJc3RhID0gczsKPj4g
KwkJCWJyZWFrOwo+PiArCQl9Cj4KPiBJIGd1ZXNzIHRoYXQgaXMgYmV0dGVyIHRoYW4gbG9va2lu
ZyB1cCB0aGUgc2RhdGEgYW5kIHRoZW4gdXNpbmcKPiBzdGFfaW5mb19nZXQoKSwgYnV0IEkgdGhp
bmsgSSdkIGxpa2UgdG8gc2VlIHRoaXMgd3JhcHBlZCBpbnRvIGEgZnVuY3Rpb24KPiAoZXZlbiBp
ZiBpdCdzIGFuIGlubGluZSkgaW4gc3RhX2luZm8ue2MsaH0uCgpPSywgY2FuIGRvLgoKPj4gKwkJ
YWlydGltZSA9IGllZWU4MDIxMV9jYWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoaHcsIHZpZiwgdHhx
LT5zdGEsCj4+ICsJCQkJCQkJICAgICBza2ItPmxlbik7Cj4+ICsJCWlmIChhaXJ0aW1lKSB7Cj4+
ICsJCQkvKiBXZSBvbmx5IGhhdmUgMTAgYml0cyBpbiB0eF90aW1lX2VzdCwgc28gc3RvcmUgYWly
dGltZQo+PiArCQkJICogaW4gaW5jcmVtZW50cyBvZiA0dXMgYW5kIGNsYW1wIHRoZSBtYXhpbXVt
IHRvIDIqKjEyLTEKPj4gKwkJCSAqLwo+PiArCQkJYWlydGltZSA9IG1pbl90KHUzMiwgYWlydGlt
ZSwgNDA5NSkgJiB+M1U7Cj4+ICsJCQlpbmZvLT50eF90aW1lX2VzdCA9IGFpcnRpbWUgPj4gMjsK
Pj4gKwkJCWllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWlydGltZShsb2NhbCwgdHguc3Rh
LAo+PiArCQkJCQkJCSAgICAgdHhxLT5hYywgYWlydGltZSwKPj4gKwkJCQkJCQkgICAgIGZhbHNl
KTsKPgo+IEkgd29uZGVyIGlmIGl0J2QgYmUgYmV0dGVyIHRvIHBhc3MgdGhlIHNoaWZ0ZWQgdmFs
dWUgdG8KPiBpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUoKSB0byBhdm9pZCBh
bGwgdGhlIHNoaWZ0aW5nIGluIGFsbAo+IHBsYWNlcz8KPgo+IFlvdSBjb3VsZCBldmVuIHN0b3Jl
IHRoZSBzaGlmdGVkIHZhbHVlIGluICJhcWxfdHhfcGVuZGluZyIgYW5kCj4gImFxbF90b3RhbF9w
ZW5kaW5nX2FpcnRpbWUiIGV0Yy4sIGl0J3MgY29tcGxldGVseSBlcXVpdmFsZW50LCBhbmQgb25s
eQo+IHNoaWZ0IGl0IG91dCBmb3IgcGVvcGxlIGxvb2tpbmcgYXQgZGVidWdmcy4KCk15IHJlYXNv
bmluZyBmb3IgZG9pbmcgaXQgdGhpcyB3YXkgd2FzIHRoYXQgd2UgaGF2ZSBhbm90aGVyIHNldCBv
ZiBBUElzCmRlYWxpbmcgd2l0aCBhaXJ0aW1lIHdoaWNoIGRvZXNuJ3QgZG8gYW55IHNoaWZ0aW5n
OyBzbyBrZWVwaW5nIHRoZSBBUElzCmluIHRoZSBzYW1lIHVuaXQgKHN0cmFpZ2h0IGFpcnRpbWUp
IHNlZW1lZCBsZXNzIGNvbmZ1c2luZy4KCldlIGNvdWxkIGFkZCAoaW5saW5lKSBzZXR0ZXIgYW5k
IGdldHRlciBmdW5jdGlvbnMgZm9yIHRoZSB0eF90aW1lX2VzdApmaWVsZCBpbnN0ZWFkIHRvIGF2
b2lkIHNwcmlua2xpbmcgc2hpZnRzIGFsbCBvdmVyIHRoZSBwbGFjZT8gOikKCi1Ub2tlCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxp
bmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
