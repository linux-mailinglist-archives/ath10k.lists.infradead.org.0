Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3505AF451B
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li6GYNeeqSRXdL4HPES8SEIj7cYXFuImoB2/suLA5RU=; b=YbRS024l0MWss5
	+cU7+9lO4d5akOyW3WM0LLWxyVibqpJeL7ncukzWfI+Sn+RTiU3/sIEuIbve1iMuFy7nK57yVlXUY
	k/gv5mmvW0Bmr4q8KqQtD266ORmnG/2GNnEEBW6fEFXTHhs3f44GgQORFlq+NlAOs+gaGaDEnNVcI
	hmRp04ctaDOnWZN9KI7lA53qAwZSfg/pKDTjyEiDd3CMC+KLQ4DcpjuzJZ06ujiJvpxbuzNcn3fxI
	kKFD8KQB7gDrVgucoSEcpa1qwpRGMILeAxpQs6P2LtIuYcdxXekAf77QmEzwEB+bMNsYEd5mDX456
	hBM0dQ4MIWSmOeM6xFHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1wb-0004iA-Lw; Fri, 08 Nov 2019 10:56:45 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1wW-0004hX-PF
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573210599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z632feK0xo57emf6fFS5gwdIUzpWePHRoWFGwMcdBdg=;
 b=Q3LOsf6+/r5TwphPHn4WDwT+h1NWti3fvZP0+HQJBNZ1OhfYe4F9oBGqA7uTJo6jpMSuJV
 N3dGTda+kCxy680YXgk6BLHAFliq83qBeYIT/GhWmaIFdMcLh9miGdrjYo/VVEKgBJEtdk
 hGmGRKolqKG20ihMF8bqG6Z8henlI1Q=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-vxqzChwnOee7hfr1Lmb1JQ-1; Fri, 08 Nov 2019 05:56:37 -0500
Received: by mail-lj1-f197.google.com with SMTP id h16so1171352ljk.20
 for <ath10k@lists.infradead.org>; Fri, 08 Nov 2019 02:56:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=B9ScARlo/HyQ+QLgyEDozc6otjhcAwH0CJnAxZVp+qs=;
 b=mktZ4UMuUVudCq8q2mwDkweKvj7fpEb7k3La7AAYb8nSMZrN0XNRDuZECxCTT8mqQa
 tTim1n+meHstp8tFVv9MDkP3bOUY5YmQU7qObMcTsq6Tyr3YjAN8WjoMOh/TApik8viG
 9ETBI9A2uqB9TcbhNJVg1eqWkaef5Ai3JYnCjaT/xQ5YNXJzAaGI28kBCB8ToMno+8cL
 P/ENCKBh5yp7YSAvAZnq2eA5NaH0JiIOPvzaGc+8T7fmh696jwNSdx97AeCKL/FVyhz4
 XGIuQQG3ZD9kc6qMq+YL3Urofmth1UYosgPC1h7+IjF41HSKQtQPoMdh2rAYu6A8s+Lw
 +wcw==
X-Gm-Message-State: APjAAAVb94PilBJLluye430cyHbX4lVeJDkJBWO3UZM3HmI6cVXlkyH/
 wYZiMd9eiGaUMWlFwMu0meM4D76Ns3br6lP4xFraQDoBqf+udKxIAIDxRnUFXt/FWHHBfHCvB1f
 9/Btjv0oPmVf/aBdqKlIfKg==
X-Received: by 2002:a2e:481:: with SMTP id a1mr6439838ljf.209.1573210595636;
 Fri, 08 Nov 2019 02:56:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFcYZbOdtEDfT7QaSh8Ph/WLAe9hmZ00Pfr21Wfx5hUy6ZBT/I3FE48cO9bVUQkyeCpv48Hw==
X-Received: by 2002:a2e:481:: with SMTP id a1mr6439821ljf.209.1573210595508;
 Fri, 08 Nov 2019 02:56:35 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id x23sm810347lfe.8.2019.11.08.02.56.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 02:56:34 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 39B381818B5; Fri,  8 Nov 2019 11:56:34 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
In-Reply-To: <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
 <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 08 Nov 2019 11:56:34 +0100
Message-ID: <87a796fxgd.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: vxqzChwnOee7hfr1Lmb1JQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025640_892408_C6251D06 
X-CRM114-Status: UNSURE (   6.01  )
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

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBX
ZWQsIDIwMTktMTAtMjMgYXQgMTE6NTkgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4gCj4+ICAKPj4gK3ZvaWQgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0
aW1lKHN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsLAo+PiArCQkJCQkgIHN0cnVjdCBzdGFf
aW5mbyAqc3RhLCB1OCBhYywKPj4gKwkJCQkJICB1MTYgdHhfYWlydGltZSwgYm9vbCB0eF9jb21w
bGV0ZWQpCj4+ICt7Cj4+ICsJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2Fj
XSk7Cj4+ICsJaWYgKHR4X2NvbXBsZXRlZCkgewo+PiArCQlpZiAoc3RhKSB7Cj4+ICsJCQlpZiAo
V0FSTl9PTkNFKHN0YS0+YWlydGltZVthY10uYXFsX3R4X3BlbmRpbmcgPCB0eF9haXJ0aW1lLAo+
PiArCQkJCSAgICAgICJUWFEgcGVuZGluZyBhaXJ0aW1lIHVuZGVyZmxvdzogJXUsICV1IiwKPj4g
KwkJCQkgICAgICBzdGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nLCB0eF9haXJ0aW1lKSkK
Pgo+IE1heWJlIGFkZCB0aGUgU1RBL0FDIHRvIHRoZSBtZXNzYWdlPwoKQ2FuIGRvLiBBbnkgaWRl
YSB3aHkgd2UgbWlnaHQgYmUgc2VlaW5nIHVuZGVyZmxvd3MgKGFzIEthbiByZXBvcnRlZCk/Cgot
VG9rZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0
aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
