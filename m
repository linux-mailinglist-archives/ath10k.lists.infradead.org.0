Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6BCDD89F
	for <lists+ath10k@lfdr.de>; Sat, 19 Oct 2019 13:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbx21lbfou6cbMfk8E6iQX8/wLWjw6TtqtTHi8aH6XY=; b=YHUpEmc5kAmXrm
	i6z8/RoMDyX8lZLM0T9WjBxNg1H90ZgaaEzDX8vNy0np4vGNCV8tmyDPJGRk13ZHbaaunq+aVZQCU
	/Sm3RxEl7ehMfl6KXyWIHBroNj/pMuwkNm8BsNoJdJhFMinNj7W5ZIao7g25womUiWpYTf7HZ4ZZ7
	8wLiRBtK8Z0q/cI+TufHLs8CCVzVGYRFipLypEnrrkdTKOKbvPzmCX89qLAlsmwuaWeOsP0jGd49l
	zfKHv48ALAUqf9jVaBLl85o0n5abd9Htl18NWfVFx9Ar1ajFDuzp/3tlLThbUhsY1ng0IITwcSV0e
	EHQxzQ9JsiH9G2WPrLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLn3I-0004Bm-Gw; Sat, 19 Oct 2019 11:37:44 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLn39-00044s-4J
 for ath10k@lists.infradead.org; Sat, 19 Oct 2019 11:37:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571485053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=21qCjUsvlULtn2speYzLEQVyDAt213K5HB3XYnaeG+w=;
 b=DutXvaPFB5GwaZG6FwPajry8mCsXrwhKWRCEb4LDD0e+0IyV7LDsvLAYLtKHTlVQdORCRE
 oJXduTVz7X5Xw2S0bqXidrfJE1L920Fxs08we2kftH5HGdHHvs7tSEn6SB0HpVx/y4aBip
 yC3FrfNWvtw1dJGf9iyi4FInVys/iGc=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-Q4zNyKcvPj61PJw5vO-niw-1; Sat, 19 Oct 2019 07:37:21 -0400
Received: by mail-lj1-f200.google.com with SMTP id v24so1613584ljh.23
 for <ath10k@lists.infradead.org>; Sat, 19 Oct 2019 04:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=p1WHR2lrsPznSRSipT+nMgNLBjUdaW+q0N4zfRnnWFA=;
 b=uZXCQftrA/jJe84LhfKfpLwpYteVggLCfsvP8DZimr+xKbOVGHPm2O2ym7c/1reaqd
 TBhtviNYaoyAYXTA6zzQ7bZj497IQ6i7MzkMgH67Ng4fTL1X6JFNASQO3uzDlTIOt11Y
 pTNQnwuRuHA9aeXTVydGpFLjeSRgLMm9PdzPaQrboh0M+NPdrFJQIXZoU/94bqI2nZdt
 kpEyEgnUI/nsi5fjX9aaCrJCoFIq0spgbl4INWGymrIEQlJwur9IDyz68cDTJ50D7tRa
 6vx7CImxrjn7phkmzf+p5nGDdYwxRmMb9AbCsgVwf0nBvKQL+Ne4hFolcs3m8YmYXDay
 3uOQ==
X-Gm-Message-State: APjAAAWObgcpKOljyq6sfzfNXfcIZ28bOy5pczVEoNSZ6l/BpRcvfGgf
 YgaWywd5yGYRrZT9uqkuPkpIUNbOCOdgfH/QUcddLGDgmqquw0s6YeKrDn8hQElbnApgDuuQ3EK
 MjXnQq7PHih8gSIUkqLfWFg==
X-Received: by 2002:a2e:8183:: with SMTP id e3mr8997943ljg.14.1571485039377;
 Sat, 19 Oct 2019 04:37:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwpPKoceFdTQ39GVhpyrnC+bJ4/oRRAFm0frTTa72ksb9weeEUIsK4bpCwakidSJKYcD45wcg==
X-Received: by 2002:a2e:8183:: with SMTP id e3mr8997925ljg.14.1571485038820;
 Sat, 19 Oct 2019 04:37:18 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id i190sm7405763lfi.45.2019.10.19.04.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 04:37:18 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A04E31804C9; Sat, 19 Oct 2019 13:37:17 +0200 (CEST)
Subject: [PATCH v4 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 19 Oct 2019 13:37:17 +0200
Message-ID: <157148503753.2989444.5520318407751110930.stgit@toke.dk>
In-Reply-To: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: Q4zNyKcvPj61PJw5vO-niw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_043735_370498_96907087 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

RnJvbTogS2FuIFlhbiA8a3lhbkBnb29nbGUuY29tPgoKSW4gb3JkZXIgZm9yIHRoZSBGcV9Db0Rl
bCBhbGdvcml0aG0gaW50ZWdyYXRlZCBpbiBtYWM4MDIxMSBsYXllciB0byBvcGVyYXRlCmVmZmVj
dGl2ZWx5IHRvIGNvbnRyb2wgZXhjZXNzaXZlIHF1ZXVlaW5nIGxhdGVuY3ksIHRoZSBDb0RlbCBh
bGdvcml0aG0KcmVxdWlyZXMgYW4gYWNjdXJhdGUgbWVhc3VyZSBvZiBob3cgbG9uZyBwYWNrZXRz
IHN0YXlzIGluIHRoZSBxdWV1ZSwgQUtBCnNvam91cm4gdGltZS4gVGhlIHNvam91cm4gdGltZSBt
ZWFzdXJlZCBhdCB0aGUgbWFjODAyMTEgbGF5ZXIgZG9lc24ndAppbmNsdWRlIHF1ZXVlaW5nIGxh
dGVuY3kgaW4gdGhlIGxvd2VyIGxheWVyIChmaXJtd2FyZS9oYXJkd2FyZSkgYW5kIENvRGVsCmV4
cGVjdHMgbG93ZXIgbGF5ZXIgdG8gaGF2ZSBhIHNob3J0IHF1ZXVlLiBIb3dldmVyLCBtb3N0IDgw
Mi4xMWFjIGNoaXBzZXRzCm9mZmxvYWQgdGFza3Mgc3VjaCBUWCBhZ2dyZWdhdGlvbiB0byBmaXJt
d2FyZSBvciBoYXJkd2FyZSwgdGh1cyBoYXZlIGEgZGVlcApsb3dlciBsYXllciBxdWV1ZS4KCldp
dGhvdXQgYSBtZWNoYW5pc20gdG8gY29udHJvbCB0aGUgbG93ZXIgbGF5ZXIgcXVldWUgc2l6ZSwg
cGFja2V0cyBvbmx5CnN0YXkgaW4gbWFjODAyMTEgbGF5ZXIgdHJhbnNpZW50bHkgYmVmb3JlIGJl
aW5nIHNlbnQgdG8gZmlybXdhcmUgcXVldWUuCkFzIGEgcmVzdWx0LCB0aGUgc29qb3VybiB0aW1l
IG1lYXN1cmVkIGJ5IENvRGVsIGluIHRoZSBtYWM4MDIxMSBsYXllciBpcwphbG1vc3QgYWx3YXlz
IGxvd2VyIHRoYW4gdGhlIENvRGVsIGxhdGVuY3kgdGFyZ2V0LCBoZW5jZSBDb0RlbCBkb2VzIGxp
dHRsZQp0byBjb250cm9sIHRoZSBsYXRlbmN5LCBldmVuIHdoZW4gdGhlIGxvd2VyIGxheWVyIHF1
ZXVlIGNhdXNlcyBleGNlc3NpdmUKbGF0ZW5jeS4KClRoZSBCeXRlIFF1ZXVlIExpbWl0cyAoQlFM
KSBtZWNoYW5pc20gaXMgY29tbW9ubHkgdXNlZCB0byBhZGRyZXNzIHRoZQpzaW1pbGFyIGlzc3Vl
IHdpdGggd2lyZWQgbmV0d29yayBpbnRlcmZhY2UuIEhvd2V2ZXIsIHRoaXMgbWV0aG9kIGNhbm5v
dCBiZQphcHBsaWVkIGRpcmVjdGx5IHRvIHRoZSB3aXJlbGVzcyBuZXR3b3JrIGludGVyZmFjZS4g
IkJ5dGVzIiBpcyBub3QgYQpzdWl0YWJsZSBtZWFzdXJlIG9mIHF1ZXVlIGRlcHRoIGluIHRoZSB3
aXJlbGVzcyBuZXR3b3JrLCBhcyB0aGUgZGF0YSByYXRlCmNhbiB2YXJ5IGRyYW1hdGljYWxseSBm
cm9tIHN0YXRpb24gdG8gc3RhdGlvbiBpbiB0aGUgc2FtZSBuZXR3b3JrLCBmcm9tIGEKZmV3IE1i
cHMgdG8gb3ZlciBHYnBzLgoKVGhpcyBwYXRjaCBpbXBsZW1lbnRzIGFuIEFpcnRpbWUtYmFzZWQg
UXVldWUgTGltaXQgKEFRTCkgdG8gbWFrZSBDb0RlbCB3b3JrCmVmZmVjdGl2ZWx5IHdpdGggd2ly
ZWxlc3MgZHJpdmVycyB0aGF0IHV0aWxpemVkIGZpcm13YXJlL2hhcmR3YXJlCm9mZmxvYWRpbmcu
IEFRTCBhbGxvd3MgZWFjaCB0eHEgdG8gcmVsZWFzZSBqdXN0IGVub3VnaCBwYWNrZXRzIHRvIHRo
ZSBsb3dlcgpsYXllciB0byBmb3JtIDEtMiBsYXJnZSBhZ2dyZWdhdGlvbnMgdG8ga2VlcCBoYXJk
d2FyZSBmdWxseSB1dGlsaXplZCBhbmQKcmV0YWlucyB0aGUgcmVzdCBvZiB0aGUgZnJhbWVzIGlu
IG1hYzgwMjExIGxheWVyIHRvIGJlIGNvbnRyb2xsZWQgYnkgdGhlCkNvRGVsIGFsZ29yaXRobS4K
ClNpZ25lZC1vZmYtYnk6IEthbiBZYW4gPGt5YW5AZ29vZ2xlLmNvbT4KWyBUb2tlOiBLZWVwIEFQ
SSB0byBzZXQgcGVuZGluZyBhaXJ0aW1lIGludGVybmFsLCBmaXggbml0cyBpbiBjb21taXQgbXNn
IF0KU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+Ci0tLQogaW5jbHVkZS9uZXQvY2ZnODAyMTEuaCAgICAgfCAgICA3ICsrKysKIGluY2x1ZGUv
bmV0L21hYzgwMjExLmggICAgIHwgICAxMiArKysrKysrCiBuZXQvbWFjODAyMTEvZGVidWdmcy5j
ICAgICB8ICAgNzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
IG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jIHwgICA0MyArKysrKysrKysrKysrKysrKysrLS0t
LS0KIG5ldC9tYWM4MDIxMS9pZWVlODAyMTFfaS5oIHwgICAgNCArKwogbmV0L21hYzgwMjExL21h
aW4uYyAgICAgICAgfCAgICA5ICsrKysrCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uYyAgICB8ICAg
MzIgKysrKysrKysrKysrKysrKysrCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uaCAgICB8ICAgIDgg
KysrKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgICA0NiArKysrKysrKysrKysrKysr
KysrKysrKystLQogOSBmaWxlcyBjaGFuZ2VkLCAyMjUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvY2ZnODAyMTEuaCBiL2luY2x1ZGUvbmV0
L2NmZzgwMjExLmgKaW5kZXggZmY0NWMzZTFhYmZmLi44ZDUwYzBhNjBkYmQgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvbmV0L2NmZzgwMjExLmgKKysrIGIvaW5jbHVkZS9uZXQvY2ZnODAyMTEuaApAQCAt
MjYwMiw2ICsyNjAyLDEzIEBAIGVudW0gd2lwaHlfcGFyYW1zX2ZsYWdzIHsKIAogI2RlZmluZSBJ
RUVFODAyMTFfREVGQVVMVF9BSVJUSU1FX1dFSUdIVAkyNTYKIAorLyogVGhlIHBlciBUWFEgZGV2
aWNlIHF1ZXVlIGxpbWl0IGluIGFpcnRpbWUgKi8KKyNkZWZpbmUgSUVFRTgwMjExX0RFRkFVTFRf
QVFMX1RYUV9MSU1JVF9MCTQwMDAKKyNkZWZpbmUgSUVFRTgwMjExX0RFRkFVTFRfQVFMX1RYUV9M
SU1JVF9ICTgwMDAKKworLyogVGhlIHBlciBpbnRlcmZhY2UgYWlydGltZSB0aHJlc2hvbGQgdG8g
c3dpdGNoIHRvIGxvd2VyIHF1ZXVlIGxpbWl0ICovCisjZGVmaW5lIElFRUU4MDIxMV9BUUxfVEhS
RVNIT0xECQkJMjQwMDAKKwogLyoqCiAgKiBzdHJ1Y3QgY2ZnODAyMTFfcG1rc2EgLSBQTUsgU2Vj
dXJpdHkgQXNzb2NpYXRpb24KICAqCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC9tYWM4MDIxMS5o
IGIvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAppbmRleCBmMDU4Mzg2ZTNmZWYuLmZkZmE1ODA1ZTFj
ZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAorKysgYi9pbmNsdWRlL25ldC9t
YWM4MDIxMS5oCkBAIC01NTY1LDYgKzU1NjUsMTggQEAgdm9pZCBpZWVlODAyMTFfc2VuZF9lb3Nw
X251bGxmdW5jKHN0cnVjdCBpZWVlODAyMTFfc3RhICpwdWJzdGEsIGludCB0aWQpOwogdm9pZCBp
ZWVlODAyMTFfc3RhX3JlZ2lzdGVyX2FpcnRpbWUoc3RydWN0IGllZWU4MDIxMV9zdGEgKnB1YnN0
YSwgdTggdGlkLAogCQkJCSAgICB1MzIgdHhfYWlydGltZSwgdTMyIHJ4X2FpcnRpbWUpOwogCisv
KioKKyAqIGllZWU4MDIxMV90eHFfYWlydGltZV9jaGVjayAtIGNoZWNrIGlmIGEgdHhxIGNhbiBz
ZW5kIGZyYW1lIHRvIGRldmljZQorICoKKyAqIEBodzogcG9pbnRlciBvYnRhaW5lZCBmcm9tIGll
ZWU4MDIxMV9hbGxvY19odygpCisgKiBAdHhxOiBwb2ludGVyIG9idGFpbmVkIGZyb20gc3RhdGlv
biBvciB2aXJ0dWFsIGludGVyZmFjZQorICoKKyAqIFJldHVybiB0cnVlIGlmIHRoZSBBUUwncyBh
aXJ0aW1lIGxpbWl0IGhhcyBub3QgYmVlbiByZWFjaGVkIGFuZCB0aGUgdHhxIGNhbgorICogY29u
dGludWUgdG8gc2VuZCBtb3JlIHBhY2tldHMgdG8gdGhlIGRldmljZS4gT3RoZXJ3aXNlIHJldHVy
biBmYWxzZS4KKyAqLworYm9vbAoraWVlZTgwMjExX3R4cV9haXJ0aW1lX2NoZWNrKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxKTsKKwogLyoqCiAgKiBp
ZWVlODAyMTFfaXRlcl9rZXlzIC0gaXRlcmF0ZSBrZXlzIHByb2dyYW1tZWQgaW50byB0aGUgZGV2
aWNlCiAgKiBAaHc6IHBvaW50ZXIgb2J0YWluZWQgZnJvbSBpZWVlODAyMTFfYWxsb2NfaHcoKQpk
aWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL2RlYnVnZnMuYyBiL25ldC9tYWM4MDIxMS9kZWJ1Z2Zz
LmMKaW5kZXggNTY4YjNiMjc2OTMxLi5kNzdlYTBlNTFjMWQgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4
MDIxMS9kZWJ1Z2ZzLmMKKysrIGIvbmV0L21hYzgwMjExL2RlYnVnZnMuYwpAQCAtMTQ4LDYgKzE0
OCw4MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBhcW1fb3BzID0gewog
CS5sbHNlZWsgPSBkZWZhdWx0X2xsc2VlaywKIH07CiAKK3N0YXRpYyBzc2l6ZV90IGFxbF90eHFf
bGltaXRfcmVhZChzdHJ1Y3QgZmlsZSAqZmlsZSwKKwkJCQkgIGNoYXIgX191c2VyICp1c2VyX2J1
ZiwKKwkJCQkgIHNpemVfdCBjb3VudCwKKwkJCQkgIGxvZmZfdCAqcHBvcykKK3sKKwlzdHJ1Y3Qg
aWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGZpbGUtPnByaXZhdGVfZGF0YTsKKwljaGFyIGJ1Zls0
MDBdOworCWludCBsZW4gPSAwOworCisJbGVuID0gc2NucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1Ziks
CisJCQkiQUMJQVFMIGxpbWl0IGxvdwlBUUwgbGltaXQgaGlnaFxuIgorCQkJIlZPCSV1CQkldVxu
IgorCQkJIlZJCSV1CQkldVxuIgorCQkJIkJFCSV1CQkldVxuIgorCQkJIkJLCSV1CQkldVxuIiwK
KwkJCWxvY2FsLT5hcWxfdHhxX2xpbWl0X2xvd1tJRUVFODAyMTFfQUNfVk9dLAorCQkJbG9jYWwt
PmFxbF90eHFfbGltaXRfaGlnaFtJRUVFODAyMTFfQUNfVk9dLAorCQkJbG9jYWwtPmFxbF90eHFf
bGltaXRfbG93W0lFRUU4MDIxMV9BQ19WSV0sCisJCQlsb2NhbC0+YXFsX3R4cV9saW1pdF9oaWdo
W0lFRUU4MDIxMV9BQ19WSV0sCisJCQlsb2NhbC0+YXFsX3R4cV9saW1pdF9sb3dbSUVFRTgwMjEx
X0FDX0JFXSwKKwkJCWxvY2FsLT5hcWxfdHhxX2xpbWl0X2hpZ2hbSUVFRTgwMjExX0FDX0JFXSwK
KwkJCWxvY2FsLT5hcWxfdHhxX2xpbWl0X2xvd1tJRUVFODAyMTFfQUNfQktdLAorCQkJbG9jYWwt
PmFxbF90eHFfbGltaXRfaGlnaFtJRUVFODAyMTFfQUNfQktdKTsKKwlyZXR1cm4gc2ltcGxlX3Jl
YWRfZnJvbV9idWZmZXIodXNlcl9idWYsIGNvdW50LCBwcG9zLAorCQkJCSAgICAgICBidWYsIGxl
bik7Cit9CisKK3N0YXRpYyBzc2l6ZV90IGFxbF90eHFfbGltaXRfd3JpdGUoc3RydWN0IGZpbGUg
KmZpbGUsCisJCQkJICAgY29uc3QgY2hhciBfX3VzZXIgKnVzZXJfYnVmLAorCQkJCSAgIHNpemVf
dCBjb3VudCwKKwkJCQkgICBsb2ZmX3QgKnBwb3MpCit7CisJc3RydWN0IGllZWU4MDIxMV9sb2Nh
bCAqbG9jYWwgPSBmaWxlLT5wcml2YXRlX2RhdGE7CisJY2hhciBidWZbMTAwXTsKKwlzaXplX3Qg
bGVuOworCXUzMiBhYywgcV9saW1pdF9sb3csIHFfbGltaXRfaGlnaDsKKwlzdHJ1Y3Qgc3RhX2lu
Zm8gKnN0YTsKKworCWlmIChjb3VudCA+IHNpemVvZihidWYpKQorCQlyZXR1cm4gLUVJTlZBTDsK
KworCWlmIChjb3B5X2Zyb21fdXNlcihidWYsIHVzZXJfYnVmLCBjb3VudCkpCisJCXJldHVybiAt
RUZBVUxUOworCisJYnVmW3NpemVvZihidWYpIC0gMV0gPSAwOworCWxlbiA9IHN0cmxlbihidWYp
OworCWlmIChsZW4gPiAwICYmIGJ1ZltsZW4gLSAxXSA9PSAnXG4nKQorCQlidWZbbGVuIC0gMV0g
PSAwOworCisJaWYgKHNzY2FuZihidWYsICIldSAldSAldSIsICZhYywgJnFfbGltaXRfbG93LCAm
cV9saW1pdF9oaWdoKSAhPSAzKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChhYyA+PSBJRUVF
ODAyMTFfTlVNX0FDUykKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlsb2NhbC0+YXFsX3R4cV9saW1p
dF9sb3dbYWNdID0gcV9saW1pdF9sb3c7CisJbG9jYWwtPmFxbF90eHFfbGltaXRfaGlnaFthY10g
PSBxX2xpbWl0X2hpZ2g7CisKKwltdXRleF9sb2NrKCZsb2NhbC0+c3RhX210eCk7CisJbGlzdF9m
b3JfZWFjaF9lbnRyeShzdGEsICZsb2NhbC0+c3RhX2xpc3QsIGxpc3QpIHsKKwkJc3RhLT5haXJ0
aW1lW2FjXS5hcWxfbGltaXRfbG93ID0gcV9saW1pdF9sb3c7CisJCXN0YS0+YWlydGltZVthY10u
YXFsX2xpbWl0X2hpZ2ggPSBxX2xpbWl0X2hpZ2g7CisJfQorCW11dGV4X3VubG9jaygmbG9jYWwt
PnN0YV9tdHgpOworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxl
X29wZXJhdGlvbnMgYXFsX3R4cV9saW1pdF9vcHMgPSB7CisJLndyaXRlID0gYXFsX3R4cV9saW1p
dF93cml0ZSwKKwkucmVhZCA9IGFxbF90eHFfbGltaXRfcmVhZCwKKwkub3BlbiA9IHNpbXBsZV9v
cGVuLAorCS5sbHNlZWsgPSBkZWZhdWx0X2xsc2VlaywKK307CisKIHN0YXRpYyBzc2l6ZV90IGZv
cmNlX3R4X3N0YXR1c19yZWFkKHN0cnVjdCBmaWxlICpmaWxlLAogCQkJCSAgICBjaGFyIF9fdXNl
ciAqdXNlcl9idWYsCiAJCQkJICAgIHNpemVfdCBjb3VudCwKQEAgLTQ0MSw2ICs1MTUsMTAgQEAg
dm9pZCBkZWJ1Z2ZzX2h3X2FkZChzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCkKIAlkZWJ1
Z2ZzX2NyZWF0ZV91MTYoImFpcnRpbWVfZmxhZ3MiLCAwNjAwLAogCQkJICAgcGh5ZCwgJmxvY2Fs
LT5haXJ0aW1lX2ZsYWdzKTsKIAorCURFQlVHRlNfQUREKGFxbF90eHFfbGltaXQpOworCWRlYnVn
ZnNfY3JlYXRlX3UzMigiYXFsX3RocmVzaG9sZCIsIDA2MDAsCisJCQkgICBwaHlkLCAmbG9jYWwt
PmFxbF90aHJlc2hvbGQpOworCiAJc3RhdHNkID0gZGVidWdmc19jcmVhdGVfZGlyKCJzdGF0aXN0
aWNzIiwgcGh5ZCk7CiAKIAkvKiBpZiB0aGUgZGlyIGZhaWxlZCwgZG9uJ3QgcHV0IGFsbCB0aGUg
b3RoZXIgdGhpbmdzIGludG8gdGhlIHJvb3QhICovCmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEv
ZGVidWdmc19zdGEuYyBiL25ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jCmluZGV4IGM4YWQyMGMy
OGM0My4uOWY5YjhmNWVkODZhIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvZGVidWdmc19zdGEu
YworKysgYi9uZXQvbWFjODAyMTEvZGVidWdmc19zdGEuYwpAQCAtMTk3LDEwICsxOTcsMTIgQEAg
c3RhdGljIHNzaXplX3Qgc3RhX2FpcnRpbWVfcmVhZChzdHJ1Y3QgZmlsZSAqZmlsZSwgY2hhciBf
X3VzZXIgKnVzZXJidWYsCiB7CiAJc3RydWN0IHN0YV9pbmZvICpzdGEgPSBmaWxlLT5wcml2YXRl
X2RhdGE7CiAJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwgPSBzdGEtPnNkYXRhLT5sb2Nh
bDsKLQlzaXplX3QgYnVmc3ogPSAyMDA7CisJc2l6ZV90IGJ1ZnN6ID0gNDAwOwogCWNoYXIgKmJ1
ZiA9IGt6YWxsb2MoYnVmc3osIEdGUF9LRVJORUwpLCAqcCA9IGJ1ZjsKIAl1NjQgcnhfYWlydGlt
ZSA9IDAsIHR4X2FpcnRpbWUgPSAwOwogCXM2NCBkZWZpY2l0W0lFRUU4MDIxMV9OVU1fQUNTXTsK
Kwl1MzIgcV9kZXB0aFtJRUVFODAyMTFfTlVNX0FDU107CisJdTMyIHFfbGltaXRfbFtJRUVFODAy
MTFfTlVNX0FDU10sIHFfbGltaXRfaFtJRUVFODAyMTFfTlVNX0FDU107CiAJc3NpemVfdCBydjsK
IAlpbnQgYWM7CiAKQEAgLTIxMiwxOSArMjE0LDIyIEBAIHN0YXRpYyBzc2l6ZV90IHN0YV9haXJ0
aW1lX3JlYWQoc3RydWN0IGZpbGUgKmZpbGUsIGNoYXIgX191c2VyICp1c2VyYnVmLAogCQlyeF9h
aXJ0aW1lICs9IHN0YS0+YWlydGltZVthY10ucnhfYWlydGltZTsKIAkJdHhfYWlydGltZSArPSBz
dGEtPmFpcnRpbWVbYWNdLnR4X2FpcnRpbWU7CiAJCWRlZmljaXRbYWNdID0gc3RhLT5haXJ0aW1l
W2FjXS5kZWZpY2l0OworCQlxX2xpbWl0X2xbYWNdID0gc3RhLT5haXJ0aW1lW2FjXS5hcWxfbGlt
aXRfbG93OworCQlxX2xpbWl0X2hbYWNdID0gc3RhLT5haXJ0aW1lW2FjXS5hcWxfbGltaXRfaGln
aDsKKwkJcV9kZXB0aFthY10gPSBzdGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nOwogCQlz
cGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwogCX0KIAogCXAgKz0g
c2NucHJpbnRmKHAsIGJ1ZnN6ICsgYnVmIC0gcCwKIAkJIlJYOiAlbGx1IHVzXG5UWDogJWxsdSB1
c1xuV2VpZ2h0OiAldVxuIgotCQkiRGVmaWNpdDogVk86ICVsbGQgdXMgVkk6ICVsbGQgdXMgQkU6
ICVsbGQgdXMgQks6ICVsbGQgdXNcbiIsCi0JCXJ4X2FpcnRpbWUsCi0JCXR4X2FpcnRpbWUsCi0J
CXN0YS0+YWlydGltZV93ZWlnaHQsCi0JCWRlZmljaXRbMF0sCi0JCWRlZmljaXRbMV0sCi0JCWRl
ZmljaXRbMl0sCi0JCWRlZmljaXRbM10pOworCQkiRGVmaWNpdDogVk86ICVsbGQgdXMgVkk6ICVs
bGQgdXMgQkU6ICVsbGQgdXMgQks6ICVsbGQgdXNcbiIKKwkJIlEgZGVwdGg6IFZPOiAldSB1cyBW
STogJXUgdXMgQkU6ICV1IHVzIEJLOiAldSB1c1xuIgorCQkiUSBsaW1pdFtsb3cvaGlnaF06IFZP
OiAldS8ldSBWSTogJXUvJXUgQkU6ICV1LyV1IEJLOiAldS8ldVxuIiwKKwkJcnhfYWlydGltZSwg
dHhfYWlydGltZSwgc3RhLT5haXJ0aW1lX3dlaWdodCwKKwkJZGVmaWNpdFswXSwgZGVmaWNpdFsx
XSwgZGVmaWNpdFsyXSwgZGVmaWNpdFszXSwKKwkJcV9kZXB0aFswXSwgcV9kZXB0aFsxXSwgcV9k
ZXB0aFsyXSwgcV9kZXB0aFszXSwKKwkJcV9saW1pdF9sWzBdLCBxX2xpbWl0X2hbMF0sIHFfbGlt
aXRfbFsxXSwgcV9saW1pdF9oWzFdLAorCQlxX2xpbWl0X2xbMl0sIHFfbGltaXRfaFsyXSwgcV9s
aW1pdF9sWzNdLCBxX2xpbWl0X2hbM10pLAogCiAJcnYgPSBzaW1wbGVfcmVhZF9mcm9tX2J1ZmZl
cih1c2VyYnVmLCBjb3VudCwgcHBvcywgYnVmLCBwIC0gYnVmKTsKIAlrZnJlZShidWYpOwpAQCAt
MjM2LDcgKzI0MSwyNSBAQCBzdGF0aWMgc3NpemVfdCBzdGFfYWlydGltZV93cml0ZShzdHJ1Y3Qg
ZmlsZSAqZmlsZSwgY29uc3QgY2hhciBfX3VzZXIgKnVzZXJidWYsCiB7CiAJc3RydWN0IHN0YV9p
bmZvICpzdGEgPSBmaWxlLT5wcml2YXRlX2RhdGE7CiAJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAq
bG9jYWwgPSBzdGEtPnNkYXRhLT5sb2NhbDsKLQlpbnQgYWM7CisJdTMyIGFjLCBxX2xpbWl0X2ws
IHFfbGltaXRfaDsKKwljaGFyIF9idWZbMTAwXSA9IHt9LCAqYnVmID0gX2J1ZjsKKworCWlmIChj
b3VudCA+IHNpemVvZihfYnVmKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoY29weV9mcm9t
X3VzZXIoYnVmLCB1c2VyYnVmLCBjb3VudCkpCisJCXJldHVybiAtRUZBVUxUOworCisJYnVmW3Np
emVvZihfYnVmKSAtIDFdID0gJ1wwJzsKKwlpZiAoc3NjYW5mKGJ1ZiwgInF1ZXVlIGxpbWl0ICV1
ICV1ICV1IiwgJmFjLCAmcV9saW1pdF9sLCAmcV9saW1pdF9oKQorCSAgICAhPSAzKQorCQlyZXR1
cm4gLUVJTlZBTDsKKworCWlmIChhYyA+PSBJRUVFODAyMTFfTlVNX0FDUykKKwkJcmV0dXJuIC1F
SU5WQUw7CisKKwlzdGEtPmFpcnRpbWVbYWNdLmFxbF9saW1pdF9sb3cgPSBxX2xpbWl0X2w7CisJ
c3RhLT5haXJ0aW1lW2FjXS5hcWxfbGltaXRfaGlnaCA9IHFfbGltaXRfaDsKIAogCWZvciAoYWMg
PSAwOyBhYyA8IElFRUU4MDIxMV9OVU1fQUNTOyBhYysrKSB7CiAJCXNwaW5fbG9ja19iaCgmbG9j
YWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL2llZWU4
MDIxMV9pLmggYi9uZXQvbWFjODAyMTEvaWVlZTgwMjExX2kuaAppbmRleCAyMjVlYTRlM2NkNzYu
LjZmYTY5MDc1NzM4OCAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKKysr
IGIvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKQEAgLTExNDIsNiArMTE0MiwxMCBAQCBzdHJ1
Y3QgaWVlZTgwMjExX2xvY2FsIHsKIAl1MTYgc2NoZWR1bGVfcm91bmRbSUVFRTgwMjExX05VTV9B
Q1NdOwogCiAJdTE2IGFpcnRpbWVfZmxhZ3M7CisJdTMyIGFxbF90eHFfbGltaXRfbG93W0lFRUU4
MDIxMV9OVU1fQUNTXTsKKwl1MzIgYXFsX3R4cV9saW1pdF9oaWdoW0lFRUU4MDIxMV9OVU1fQUNT
XTsKKwl1MzIgYXFsX3RocmVzaG9sZDsKKwl1MzIgYXFsX3RvdGFsX3BlbmRpbmdfYWlydGltZTsK
IAogCWNvbnN0IHN0cnVjdCBpZWVlODAyMTFfb3BzICpvcHM7CiAKZGlmZiAtLWdpdCBhL25ldC9t
YWM4MDIxMS9tYWluLmMgYi9uZXQvbWFjODAyMTEvbWFpbi5jCmluZGV4IGFiYTA5NGI0Y2NmYy4u
MDc5MmM5YjljODUwIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvbWFpbi5jCisrKyBiL25ldC9t
YWM4MDIxMS9tYWluLmMKQEAgLTY2Nyw4ICs2NjcsMTUgQEAgc3RydWN0IGllZWU4MDIxMV9odyAq
aWVlZTgwMjExX2FsbG9jX2h3X25tKHNpemVfdCBwcml2X2RhdGFfbGVuLAogCWZvciAoaSA9IDA7
IGkgPCBJRUVFODAyMTFfTlVNX0FDUzsgaSsrKSB7CiAJCUlOSVRfTElTVF9IRUFEKCZsb2NhbC0+
YWN0aXZlX3R4cXNbaV0pOwogCQlzcGluX2xvY2tfaW5pdCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9j
a1tpXSk7CisJCWxvY2FsLT5hcWxfdHhxX2xpbWl0X2xvd1tpXSA9IElFRUU4MDIxMV9ERUZBVUxU
X0FRTF9UWFFfTElNSVRfTDsKKwkJbG9jYWwtPmFxbF90eHFfbGltaXRfaGlnaFtpXSA9CisJCQlJ
RUVFODAyMTFfREVGQVVMVF9BUUxfVFhRX0xJTUlUX0g7CiAJfQotCWxvY2FsLT5haXJ0aW1lX2Zs
YWdzID0gQUlSVElNRV9VU0VfVFggfCBBSVJUSU1FX1VTRV9SWDsKKworCWxvY2FsLT5haXJ0aW1l
X2ZsYWdzID0gQUlSVElNRV9VU0VfVFggfAorCQkJICAgICAgIEFJUlRJTUVfVVNFX1JYIHwKKwkJ
CSAgICAgICBBSVJUSU1FX1VTRV9BUUw7CisJbG9jYWwtPmFxbF90aHJlc2hvbGQgPSBJRUVFODAy
MTFfQVFMX1RIUkVTSE9MRDsKIAogCUlOSVRfTElTVF9IRUFEKCZsb2NhbC0+Y2hhbmN0eF9saXN0
KTsKIAltdXRleF9pbml0KCZsb2NhbC0+Y2hhbmN0eF9tdHgpOwpkaWZmIC0tZ2l0IGEvbmV0L21h
YzgwMjExL3N0YV9pbmZvLmMgYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uYwppbmRleCBiZDExZmVm
MjEzOWYuLjY0YmFjZjRmMDY4YyAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMK
KysrIGIvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKQEAgLTM5Niw2ICszOTYsOSBAQCBzdHJ1Y3Qg
c3RhX2luZm8gKnN0YV9pbmZvX2FsbG9jKHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNk
YXRhLAogCQlza2JfcXVldWVfaGVhZF9pbml0KCZzdGEtPnBzX3R4X2J1ZltpXSk7CiAJCXNrYl9x
dWV1ZV9oZWFkX2luaXQoJnN0YS0+dHhfZmlsdGVyZWRbaV0pOwogCQlzdGEtPmFpcnRpbWVbaV0u
ZGVmaWNpdCA9IHN0YS0+YWlydGltZV93ZWlnaHQ7CisJCXN0YS0+YWlydGltZVtpXS5hcWxfdHhf
cGVuZGluZyA9IDA7CisJCXN0YS0+YWlydGltZVtpXS5hcWxfbGltaXRfbG93ID0gbG9jYWwtPmFx
bF90eHFfbGltaXRfbG93W2ldOworCQlzdGEtPmFpcnRpbWVbaV0uYXFsX2xpbWl0X2hpZ2ggPSBs
b2NhbC0+YXFsX3R4cV9saW1pdF9oaWdoW2ldOwogCX0KIAogCWZvciAoaSA9IDA7IGkgPCBJRUVF
ODAyMTFfTlVNX1RJRFM7IGkrKykKQEAgLTE4OTMsNiArMTg5NiwzNSBAQCB2b2lkIGllZWU4MDIx
MV9zdGFfcmVnaXN0ZXJfYWlydGltZShzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqcHVic3RhLCB1OCB0
aWQsCiB9CiBFWFBPUlRfU1lNQk9MKGllZWU4MDIxMV9zdGFfcmVnaXN0ZXJfYWlydGltZSk7CiAK
K3ZvaWQgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKHN0cnVjdCBpZWVlODAy
MTFfbG9jYWwgKmxvY2FsLAorCQkJCQkgIHN0cnVjdCBzdGFfaW5mbyAqc3RhLCB1OCBhYywKKwkJ
CQkJICB1MTYgdHhfYWlydGltZSwgYm9vbCB0eF9jb21wbGV0ZWQpCit7CisJc3Bpbl9sb2NrX2Jo
KCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CisJaWYgKHR4X2NvbXBsZXRlZCkgeworCQlp
ZiAoc3RhKSB7CisJCQlpZiAoV0FSTl9PTkNFKHN0YS0+YWlydGltZVthY10uYXFsX3R4X3BlbmRp
bmcgPCB0eF9haXJ0aW1lLAorCQkJCSAgICAgICJUWFEgcGVuZGluZyBhaXJ0aW1lIHVuZGVyZmxv
dzogJXUsICV1IiwKKwkJCQkgICAgICBzdGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nLCB0
eF9haXJ0aW1lKSkKKwkJCQlzdGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nID0gMDsKKwkJ
CWVsc2UKKwkJCQlzdGEtPmFpcnRpbWVbYWNdLmFxbF90eF9wZW5kaW5nIC09IHR4X2FpcnRpbWU7
CisJCX0KKworCQlpZiAoV0FSTl9PTkNFKGxvY2FsLT5hcWxfdG90YWxfcGVuZGluZ19haXJ0aW1l
IDwgdHhfYWlydGltZSwKKwkJCSAgICAgICJEZXZpY2UgcGVuZGluZyBhaXJ0aW1lIHVuZGVyZmxv
dzogJXUsICV1IiwKKwkJCSAgICAgIGxvY2FsLT5hcWxfdG90YWxfcGVuZGluZ19haXJ0aW1lLCB0
eF9haXJ0aW1lKSkKKwkJCWxvY2FsLT5hcWxfdG90YWxfcGVuZGluZ19haXJ0aW1lID0gMDsKKwkJ
ZWxzZQorCQkJbG9jYWwtPmFxbF90b3RhbF9wZW5kaW5nX2FpcnRpbWUgLT0gdHhfYWlydGltZTsK
Kwl9IGVsc2UgeworCQlpZiAoc3RhKQorCQkJc3RhLT5haXJ0aW1lW2FjXS5hcWxfdHhfcGVuZGlu
ZyArPSB0eF9haXJ0aW1lOworCQlsb2NhbC0+YXFsX3RvdGFsX3BlbmRpbmdfYWlydGltZSArPSB0
eF9haXJ0aW1lOworCX0KKwlzcGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1th
Y10pOworfQorCiBpbnQgc3RhX2luZm9fbW92ZV9zdGF0ZShzdHJ1Y3Qgc3RhX2luZm8gKnN0YSwK
IAkJCWVudW0gaWVlZTgwMjExX3N0YV9zdGF0ZSBuZXdfc3RhdGUpCiB7CmRpZmYgLS1naXQgYS9u
ZXQvbWFjODAyMTEvc3RhX2luZm8uaCBiL25ldC9tYWM4MDIxMS9zdGFfaW5mby5oCmluZGV4IDM2
OWMyZGRkY2U1Mi4uNGU0ZDc2ZTgxYjBmIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhX2lu
Zm8uaAorKysgYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uaApAQCAtMTI3LDEzICsxMjcsMjEgQEAg
ZW51bSBpZWVlODAyMTFfYWdnX3N0b3BfcmVhc29uIHsKIC8qIERlYnVnZnMgZmxhZ3MgdG8gZW5h
YmxlL2Rpc2FibGUgdXNlIG9mIFJYL1RYIGFpcnRpbWUgaW4gc2NoZWR1bGVyICovCiAjZGVmaW5l
IEFJUlRJTUVfVVNFX1RYCQlCSVQoMCkKICNkZWZpbmUgQUlSVElNRV9VU0VfUlgJCUJJVCgxKQor
I2RlZmluZSBBSVJUSU1FX1VTRV9BUUwJCUJJVCgyKQogCiBzdHJ1Y3QgYWlydGltZV9pbmZvIHsK
IAl1NjQgcnhfYWlydGltZTsKIAl1NjQgdHhfYWlydGltZTsKIAlzNjQgZGVmaWNpdDsKKwl1MzIg
YXFsX3R4X3BlbmRpbmc7IC8qIEVzdGltYXRlZCBhaXJ0aW1lIGZvciBmcmFtZXMgcGVuZGluZyBp
biBxdWV1ZSAqLworCXUzMiBhcWxfbGltaXRfbG93OworCXUzMiBhcWxfbGltaXRfaGlnaDsKIH07
CiAKK3ZvaWQgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKHN0cnVjdCBpZWVl
ODAyMTFfbG9jYWwgKmxvY2FsLAorCQkJCQkgIHN0cnVjdCBzdGFfaW5mbyAqc3RhLCB1OCBhYywK
KwkJCQkJICB1MTYgdHhfYWlydGltZSwgYm9vbCB0eF9jb21wbGV0ZWQpOworCiBzdHJ1Y3Qgc3Rh
X2luZm87CiAKIC8qKgpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL3R4LmMgYi9uZXQvbWFjODAy
MTEvdHguYwppbmRleCBhMTZjMmY4NjM3MDIuLjEyNjUzZDg3M2I4YyAxMDA2NDQKLS0tIGEvbmV0
L21hYzgwMjExL3R4LmMKKysrIGIvbmV0L21hYzgwMjExL3R4LmMKQEAgLTM2NjUsNyArMzY2NSw4
IEBAIHN0cnVjdCBpZWVlODAyMTFfdHhxICppZWVlODAyMTFfbmV4dF90eHEoc3RydWN0IGllZWU4
MDIxMV9odyAqaHcsIHU4IGFjKQogewogCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0g
aHdfdG9fbG9jYWwoaHcpOwogCXN0cnVjdCBpZWVlODAyMTFfdHhxICpyZXQgPSBOVUxMOwotCXN0
cnVjdCB0eHFfaW5mbyAqdHhxaSA9IE5VTEw7CisJc3RydWN0IHR4cV9pbmZvICp0eHFpID0gTlVM
TCwgKmhlYWQgPSBOVUxMOworCWJvb2wgZm91bmRfZWxpZ2libGVfdHhxID0gZmFsc2U7CiAKIAlz
cGluX2xvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKIApAQCAtMzY3NiwxMyAr
MzY3NywyNiBAQCBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqaWVlZTgwMjExX25leHRfdHhxKHN0cnVj
dCBpZWVlODAyMTFfaHcgKmh3LCB1OCBhYykKIAlpZiAoIXR4cWkpCiAJCWdvdG8gb3V0OwogCisJ
aWYgKHR4cWkgPT0gaGVhZCAmJiAhZm91bmRfZWxpZ2libGVfdHhxKQorCQlnb3RvIG91dDsKKwor
CWlmICghaGVhZCkKKwkJaGVhZCA9IHR4cWk7CisKIAlpZiAodHhxaS0+dHhxLnN0YSkgewogCQlz
dHJ1Y3Qgc3RhX2luZm8gKnN0YSA9IGNvbnRhaW5lcl9vZih0eHFpLT50eHEuc3RhLAotCQkJCQkJ
c3RydWN0IHN0YV9pbmZvLCBzdGEpOworCQkJCQkJICAgIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsK
KwkJYm9vbCBhcWxfY2hlY2sgPSBpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soaHcsICZ0eHFp
LT50eHEpOworCQlzNjQgZGVmaWNpdCA9IHN0YS0+YWlydGltZVt0eHFpLT50eHEuYWNdLmRlZmlj
aXQ7CisKKwkJaWYgKGFxbF9jaGVjaykKKwkJCWZvdW5kX2VsaWdpYmxlX3R4cSA9IHRydWU7CiAK
LQkJaWYgKHN0YS0+YWlydGltZVt0eHFpLT50eHEuYWNdLmRlZmljaXQgPCAwKSB7CisJCWlmIChk
ZWZpY2l0IDwgMCkKIAkJCXN0YS0+YWlydGltZVt0eHFpLT50eHEuYWNdLmRlZmljaXQgKz0KIAkJ
CQlzdGEtPmFpcnRpbWVfd2VpZ2h0OworCisJCWlmIChkZWZpY2l0IDwgMCB8fCAhYXFsX2NoZWNr
KSB7CiAJCQlsaXN0X21vdmVfdGFpbCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsCiAJCQkJICAgICAg
ICZsb2NhbC0+YWN0aXZlX3R4cXNbdHhxaS0+dHhxLmFjXSk7CiAJCQlnb3RvIGJlZ2luOwpAQCAt
MzczNiw2ICszNzUwLDMyIEBAIHZvaWQgX19pZWVlODAyMTFfc2NoZWR1bGVfdHhxKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LAogfQogRVhQT1JUX1NZTUJPTChfX2llZWU4MDIxMV9zY2hlZHVsZV90
eHEpOwogCitib29sIGllZWU4MDIxMV90eHFfYWlydGltZV9jaGVjayhzdHJ1Y3QgaWVlZTgwMjEx
X2h3ICpodywKKwkJCQkgc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKK3sKKwlzdHJ1Y3Qgc3Rh
X2luZm8gKnN0YTsKKwlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGh3X3RvX2xvY2Fs
KGh3KTsKKworCWlmICghKGxvY2FsLT5haXJ0aW1lX2ZsYWdzICYgQUlSVElNRV9VU0VfQVFMKSkK
KwkJcmV0dXJuIHRydWU7CisKKwlpZiAoIXR4cS0+c3RhKQorCQlyZXR1cm4gdHJ1ZTsKKworCXN0
YSA9IGNvbnRhaW5lcl9vZih0eHEtPnN0YSwgc3RydWN0IHN0YV9pbmZvLCBzdGEpOworCWlmIChz
dGEtPmFpcnRpbWVbdHhxLT5hY10uYXFsX3R4X3BlbmRpbmcgPAorCSAgICBzdGEtPmFpcnRpbWVb
dHhxLT5hY10uYXFsX2xpbWl0X2xvdykKKwkJcmV0dXJuIHRydWU7CisKKwlpZiAobG9jYWwtPmFx
bF90b3RhbF9wZW5kaW5nX2FpcnRpbWUgPCBsb2NhbC0+YXFsX3RocmVzaG9sZCAmJgorCSAgICBz
dGEtPmFpcnRpbWVbdHhxLT5hY10uYXFsX3R4X3BlbmRpbmcgPAorCSAgICBzdGEtPmFpcnRpbWVb
dHhxLT5hY10uYXFsX2xpbWl0X2hpZ2gpCisJCXJldHVybiB0cnVlOworCisJcmV0dXJuIGZhbHNl
OworfQorRVhQT1JUX1NZTUJPTChpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2spOworCiBib29s
IGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQkJ
CXN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCiB7CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2F0aDEwawo=
