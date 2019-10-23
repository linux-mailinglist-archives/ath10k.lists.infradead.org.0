Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A823E1733
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 11:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb7WoXIw+elxX1S0qAFjNMtjWsRbOhp6yQ1XXSJPjrk=; b=LUQ2mU62h7bugC
	n9EORZZk8UDGN4NEUlCPd8pwVVyJdNrMtgS0ZjdY3Y4zE6WCJ65V2jL7esBjtpB+aMnLoTaCNfnvr
	oo4ixBj/QSTbTI2Fh0Talu8LfBiknEQrdArQYuuxsRrtuCJ3/M6xqcsSuYIMz1hFuMAOfSetl6+2x
	Zzb16/v1YiXXhb1/GwDKNVifL1zF7rgQlZDTYaTqABuyNkpV2ORsyChBO0VbZ67PPf0ylgnboVcUf
	/WKj88jRlWVTzeeY9ErudjLM8W2r4cGPVh6+7Y2zROepc/fBf4junPsn/EAMtAnKsGKb8EswX2Ihx
	xnm+Ga0VV1+SzQMCkzaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDQT-0005Lf-PA; Wed, 23 Oct 2019 09:59:33 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDQ8-0004xs-A4
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 09:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571824751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GTow40ZP9yz6FXo2iHRwENO6p5Rsw+2IYHRwXehWjq0=;
 b=M1e5Zs6a8Aud92sB06Qg1jn669NaYp+koFNmn6tFbfxyIQ0LqVtld4CANmavVIsrb4p/8v
 Rc5XpDTry+atCdS78VcsZmIhkdfnMxI3AayOTBgJ/PMrmzMJpu23vtW0MhWXIDrA/VVvkA
 NLhuO96iXiDnViF+TgNshg0JWbQ8RVw=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-R_zCWCWNPA6m55zS5bQy1A-1; Wed, 23 Oct 2019 05:59:09 -0400
Received: by mail-lf1-f69.google.com with SMTP id v204so2214031lfa.0
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 02:59:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=TN/1EpNSFW/3lqrfhiPq8uNXDI9NIMY8XSXJK7178so=;
 b=OT1WliiJtp8TzrF52tU6w6y4V9bK7Jo2p+5kurk9jyNdXtisuWSbNp+MdS/yhmV0fa
 MMM2zE30fCo+CL4pzlkJKfATIm5nUAa3oFQI2XM5GXcyik4W3Mm4Qs+e4flZyKP332mC
 XgQnQLzItqf/bSdU9YRXAUqOMSiQpieetDTYApm7oZu0LqWd0ktusbNN7XkIoIxN9HXc
 zkY7Hnt6yn3Wm4IxxqqqoyjmiRtFX9Lj8O0rJhhWFwsoq0yhqwBAV7NA6g3UIp5q5TiS
 Bg9qMkrFzNpMgNpv35kLeQur1QC8l5eZ1RGpUM0IUh1gYS9mkBT9lRviBX9Fn/tA6Fwq
 WEMw==
X-Gm-Message-State: APjAAAX8+ehk13jaQ4tfAFnTd1RlTq4NAeJWLF3gAswOBulAr5cfGBma
 MUI4pRku3Qgg1yHKAUraakZqZZZSJAI6oJzIcanOEpgUonkADQtm5JhIAYp4cz81f1adL+9otxw
 m6e+g9kfxh9Clz9qnwzJotg==
X-Received: by 2002:a2e:8945:: with SMTP id b5mr17616955ljk.215.1571824747380; 
 Wed, 23 Oct 2019 02:59:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzU+ZsbP9zZk9TC85BqMliMk8bChnVx6dBasLapL/WDjofhIKojGZXvSqiLPbiNqjPvL3/EHA==
X-Received: by 2002:a2e:8945:: with SMTP id b5mr17616936ljk.215.1571824747132; 
 Wed, 23 Oct 2019 02:59:07 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id q16sm9186572lfb.74.2019.10.23.02.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 02:59:04 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1B4151804B6; Wed, 23 Oct 2019 11:59:04 +0200 (CEST)
Subject: [PATCH v6 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 23 Oct 2019 11:59:04 +0200
Message-ID: <157182474399.150713.16380222749144410045.stgit@toke.dk>
In-Reply-To: <157182473951.150713.7978051149956899705.stgit@toke.dk>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: R_zCWCWNPA6m55zS5bQy1A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_025912_471436_93E50E74 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUaGUgcHJl
dmlvdXMgY29tbWl0IGFkZGVkIHRoZSBhYmlsaXR5IHRvIHRocm90dGxlIHN0YXRpb25zIHdoZW4g
dGhleSBxdWV1ZQp0b28gbXVjaCBhaXJ0aW1lIGluIHRoZSBoYXJkd2FyZS4gVGhpcyBjb21taXQg
ZW5hYmxlcyB0aGUgZnVuY3Rpb25hbGl0eSBieQpjYWxjdWxhdGluZyB0aGUgZXhwZWN0ZWQgYWly
dGltZSB1c2FnZSBvZiBlYWNoIHBhY2tldCB0aGF0IGlzIGRlcXVldWVkIGZyb20KdGhlIFRYUXMg
aW4gbWFjODAyMTEsIGFuZCBhY2NvdW50aW5nIHRoYXQgYXMgcGVuZGluZyBhaXJ0aW1lLgoKVGhl
IGVzdGltYXRlZCBhaXJ0aW1lIGZvciBlYWNoIHNrYiBpcyBzdG9yZWQgaW4gdGhlIHR4X2luZm8s
IHNvIHdlIGNhbgpzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0b3Rh
bCB3aGVuIHRoZSBza2IgaXMgZnJlZWQgb3IKcmVjeWNsZWQuIFRoZSB0aHJvdHRsaW5nIG1lY2hh
bmlzbSByZWxpZXMgb24gdGhpcyBhY2NvdW50aW5nIHRvIGJlCmFjY3VyYXRlIChpLmUuLCB0aGF0
IHdlIGFyZSBub3QgZnJlZWluZyBza2JzIHdpdGhvdXQgc3VidHJhY3RpbmcgYW55CmFpcnRpbWUg
dGhleSB3ZXJlIGFjY291bnRlZCBmb3IpLCBzbyB3ZSBwdXQgdGhlIHN1YnRyYWN0aW9uIGludG8K
aWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpLiBBcyBhbiBvcHRpbWlzYXRpb24sIHdlIGFsc28g
c3VidHJhY3QgdGhlCmFpcnRpbWUgb24gcmVndWxhciBUWCBjb21wbGV0aW9uLCB6ZXJvaW5nIG91
dCB0aGUgdmFsdWUgc3RvcmVkIGluIHRoZQpwYWNrZXQgYWZ0ZXJ3YXJkcywgdG8gYXZvaWQgaGF2
aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlIHN0YXRpb24KZnJvbSB0aGUgcGFj
a2V0IGRhdGEgb24gZXZlcnkgcGFja2V0LgoKVGhpcyBwYXRjaCBkb2VzICpub3QqIGluY2x1ZGUg
YW55IG1lY2hhbmlzbSB0byB3YWtlIGEgdGhyb3R0bGVkIFRYUSBhZ2FpbiwKb24gdGhlIGFzc3Vt
cHRpb24gdGhhdCB0aGlzIHdpbGwgaGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdo
YXRldmVyCmZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgot
LS0KIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyB8ICAgMzMgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiBuZXQvbWFjODAyMTEvdHguYyAgICAgfCAgIDIxICsrKysrKysrKysrKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbmV0
L21hYzgwMjExL3N0YXR1cy5jIGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCmluZGV4IGFiOGJhNTgz
NWNhMC4uYWUxNWM4ZmQyNDIxIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhdHVzLmMKKysr
IGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCkBAIC02NzYsNiArNjc2LDI4IEBAIHN0YXRpYyB2b2lk
IGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWws
CiAJaWYgKGRyb3BwZWQpCiAJCWFja2VkID0gZmFsc2U7CiAKKwlpZiAoaW5mby0+dHhfdGltZV9l
c3QpIHsKKwkJc3RydWN0IHN0YV9pbmZvICpzdGEgPSBOVUxMLCAqczsKKwkJc3RydWN0IHJobGlz
dF9oZWFkICp0bXA7CisKKwkJcmN1X3JlYWRfbG9jaygpOworCisJCWZvcl9lYWNoX3N0YV9pbmZv
KGxvY2FsLCBoZHItPmFkZHIxLCBzLCB0bXApIHsKKwkJCS8qIHNraXAgd3JvbmcgdmlydHVhbCBp
bnRlcmZhY2UgKi8KKwkJCWlmICghZXRoZXJfYWRkcl9lcXVhbChoZHItPmFkZHIyLCBzLT5zZGF0
YS0+dmlmLmFkZHIpKQorCQkJCWNvbnRpbnVlOworCisJCQlzdGEgPSBzOworCQkJYnJlYWs7CisJ
CX0KKworCQlpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHN0YSwK
KwkJCQkJCSAgICAgc2tiX2dldF9xdWV1ZV9tYXBwaW5nKHNrYiksCisJCQkJCQkgICAgIGluZm8t
PnR4X3RpbWVfZXN0IDw8IDIsCisJCQkJCQkgICAgIHRydWUpOworCQlyY3VfcmVhZF91bmxvY2so
KTsKKwl9CisKIAlpZiAoaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfSU5URkxfTUxNRV9DT05O
X1RYKSB7CiAJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOwogCkBAIC05ODYs
NiArMTAwOCwxNyBAQCBzdGF0aWMgdm9pZCBfX2llZWU4MDIxMV90eF9zdGF0dXMoc3RydWN0IGll
ZWU4MDIxMV9odyAqaHcsCiAJCQlpZWVlODAyMTFfc3RhX3JlZ2lzdGVyX2FpcnRpbWUoJnN0YS0+
c3RhLCB0aWQsCiAJCQkJCQkgICAgICAgaW5mby0+c3RhdHVzLnR4X3RpbWUsIDApOwogCisJCWlm
IChpbmZvLT50eF90aW1lX2VzdCkgeworCQkJLyogRG8gdGhpcyBoZXJlIHRvIGF2b2lkIHRoZSBl
eHBlbnNpdmUgbG9va3VwIG9mIHRoZSBzdGEKKwkJCSAqIGluIGllZWU4MDIxMV9yZXBvcnRfdXNl
ZF9za2IoKS4KKwkJCSAqLworCQkJaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1l
KGxvY2FsLCBzdGEsCisJCQkJCQkJICAgICBza2JfZ2V0X3F1ZXVlX21hcHBpbmcoc2tiKSwKKwkJ
CQkJCQkgICAgIGluZm8tPnR4X3RpbWVfZXN0IDw8IDIsCisJCQkJCQkJICAgICB0cnVlKTsKKwkJ
CWluZm8tPnR4X3RpbWVfZXN0ID0gMDsKKwkJfQorCiAJCWlmIChpZWVlODAyMTFfaHdfY2hlY2so
JmxvY2FsLT5odywgUkVQT1JUU19UWF9BQ0tfU1RBVFVTKSkgewogCQkJaWYgKGluZm8tPmZsYWdz
ICYgSUVFRTgwMjExX1RYX1NUQVRfQUNLKSB7CiAJCQkJaWYgKHN0YS0+c3RhdHVzX3N0YXRzLmxv
c3RfcGFja2V0cykKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS90eC5jIGIvbmV0L21hYzgwMjEx
L3R4LmMKaW5kZXggMTI2NTNkODczYjhjLi4xNDA1MzA0ZDg5OTQgMTAwNjQ0Ci0tLSBhL25ldC9t
YWM4MDIxMS90eC5jCisrKyBiL25ldC9tYWM4MDIxMS90eC5jCkBAIC0zNTQyLDYgKzM1NDIsOSBA
QCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjExX3R4X2RlcXVldWUoc3RydWN0IGllZWU4MDIxMV9o
dyAqaHcsCiAKIAlXQVJOX09OX09OQ0Uoc29mdGlycV9jb3VudCgpID09IDApOwogCisJaWYgKCFp
ZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soaHcsIHR4cSkpCisJCXJldHVybiBOVUxMOworCiBi
ZWdpbjoKIAlzcGluX2xvY2tfYmgoJmZxLT5sb2NrKTsKIApAQCAtMzY1Miw2ICszNjU1LDI0IEBA
IHN0cnVjdCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1Y3QgaWVlZTgwMjExX2h3
ICpodywKIAl9CiAKIAlJRUVFODAyMTFfU0tCX0NCKHNrYiktPmNvbnRyb2wudmlmID0gdmlmOwor
CisJaWYgKGxvY2FsLT5haXJ0aW1lX2ZsYWdzICYgQUlSVElNRV9VU0VfQVFMKSB7CisJCXUzMiBh
aXJ0aW1lOworCisJCWFpcnRpbWUgPSBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1l
KGh3LCB2aWYsIHR4cS0+c3RhLAorCQkJCQkJCSAgICAgc2tiLT5sZW4pOworCQlpZiAoYWlydGlt
ZSkgeworCQkJLyogV2Ugb25seSBoYXZlIDEwIGJpdHMgaW4gdHhfdGltZV9lc3QsIHNvIHN0b3Jl
IGFpcnRpbWUKKwkJCSAqIGluIGluY3JlbWVudHMgb2YgNHVzIGFuZCBjbGFtcCB0aGUgbWF4aW11
bSB0byAyKioxMi0xCisJCQkgKi8KKwkJCWFpcnRpbWUgPSBtaW5fdCh1MzIsIGFpcnRpbWUsIDQw
OTUpICYgfjNVOworCQkJaW5mby0+dHhfdGltZV9lc3QgPSBhaXJ0aW1lID4+IDI7CisJCQlpZWVl
ODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHR4LnN0YSwKKwkJCQkJCQkg
ICAgIHR4cS0+YWMsIGFpcnRpbWUsCisJCQkJCQkJICAgICBmYWxzZSk7CisJCX0KKwl9CisKIAly
ZXR1cm4gc2tiOwogCiBvdXQ6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
