Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566E2FDED1
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 14:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68jQe23c3NQ2FGaRpEWFbPQUhNOuvcnETEmLHq9y054=; b=Ya9WpxdUppNUon
	OkkpND7D3DZM/sHqBkn+rfJN7w8aiqM0fiHIDowQkeQqlT+hQGP1GOUunl0aEIeQIgfHXiooYRBva
	5RU7O/zRHDuso5qad6Z0qVjG8RRSBq11m/m2zLqBQlLy6Vo01hKuKnA7R7tIegFCjHK806PWq8wDa
	uq9qLBaKlRS7upqlbAtftIsU3LeyrjofYSXRxWZz0SFzGM3wysMD4nsEpPfumDIAP5UkXL+BxH14X
	KbeLqfx46t2DH5HWJsLJoH8xPdmDMhVfjjDNbwbLOA4mer6JMMxbJ0VEDE2y1RJC5e7y6OkVxJ4Ek
	uzQG6rZ06upNsaclm3VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbWz-0000yp-J5; Fri, 15 Nov 2019 13:20:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbWq-0000sI-1w
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 13:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573824046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tdsrz9D3CpYBJ3D65WUQEqmo4OseVJ6gea3+ET3/bnE=;
 b=A6bWGuYp2MjUBGxY2/u99xN4a8WtqU4AjYhXOuCA06TfnDyXsZZWbis0casoeVQvJsdIvE
 /wYsPvy4pDejlKOGgXOeVG0wP1B0iW28JvC6dTbrJ0SXXUCWHZVSvDwssSlQlXCB3xVCD3
 e29WXLuneuwmvxZAdmx/6Z8WZfbYTgg=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-Tv_bB0vQMDuJLGTpDQEJ4w-1; Fri, 15 Nov 2019 08:20:45 -0500
Received: by mail-lj1-f197.google.com with SMTP id l12so1534761ljg.21
 for <ath10k@lists.infradead.org>; Fri, 15 Nov 2019 05:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=UC+Qp/M8adlsNV+L+Mh9cE9OWCu984WKU+u9MJeIKPs=;
 b=DpzuQSEAlwiy/zIOCxBkMNdNTl/pbVcrX9L9o93yq2yQtEfUgTT4QSb8R7wuhf8RLk
 XaveViiTI+7wP1y3NH8GR5RC84tiaUaBH0qyp2goiFmjwU9gOk59pcCR5MpV8QhhDVYr
 oXfcBGzc8ziapf4Pd/pTPubCAYCEXWJ2XgXOphz6zPsxhlJ4rhUbNFawLuAkHyxXrGgC
 Mbb5z6IYaUNuG+fcmXeR7LU2r0YKubhxOUs2K1Z49xLPleRSTh+Ugs/eAv9KraIl9AA3
 1bRIDWZFESi23eetm6tK/rP0yd8EJoBydKiCtYqUccd7PFlrm/1rZwchBMJk+QMp1nFb
 N1rQ==
X-Gm-Message-State: APjAAAWCLyTzFeC+QQwSb/EstrnsJOPbFrGnZ3acWYZnlhX37ErZ2SuS
 BqTY2Kv03EI3bdgBPzCf7YXrn4QFEPgH9MHBSg4m6EcdDTXzBgZ7VtnPDWrtDj5d3j6cIu9Ltj7
 ulcYuTn3QPidJQMTI9x/b5A==
X-Received: by 2002:a2e:91c7:: with SMTP id u7mr10160046ljg.249.1573824043584; 
 Fri, 15 Nov 2019 05:20:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqwoT+N4Jpl3EBOXBrqWN5qrY7NMpS0F7gLd/X57y2lLpjiMBViOqUNkJmNSLYkmmgI/huxcFA==
X-Received: by 2002:a2e:91c7:: with SMTP id u7mr10160022ljg.249.1573824043332; 
 Fri, 15 Nov 2019 05:20:43 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id c24sm4343537lfm.20.2019.11.15.05.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 05:20:42 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 49A621818C5; Fri, 15 Nov 2019 14:20:41 +0100 (CET)
Subject: [PATCH v9 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 15 Nov 2019 14:20:41 +0100
Message-ID: <157382404118.580235.14216392299709793599.stgit@toke.dk>
In-Reply-To: <157382403672.580235.12525941420808058808.stgit@toke.dk>
References: <157382403672.580235.12525941420808058808.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: Tv_bB0vQMDuJLGTpDQEJ4w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_052048_170247_0E601B34 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
LS0KIGluY2x1ZGUvbmV0L21hYzgwMjExLmggfCAgIDE2ICsrKysrKysrKysrKysrKysKIG5ldC9t
YWM4MDIxMS9zdGF0dXMuYyAgfCAgIDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiBuZXQv
bWFjODAyMTEvdHguYyAgICAgIHwgICAxOCArKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L21hYzgwMjEx
LmggYi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCmluZGV4IGJhM2YzM2NjNDFlYS4uZGNiNGExZjE5
ODI5IDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCisrKyBiL2luY2x1ZGUvbmV0
L21hYzgwMjExLmgKQEAgLTEwNjAsNiArMTA2MCwyMiBAQCBzdHJ1Y3QgaWVlZTgwMjExX3R4X2lu
Zm8gewogCX07CiB9OwogCitzdGF0aWMgaW5saW5lIHUxNgoraWVlZTgwMjExX2luZm9fc2V0X3R4
X3RpbWVfZXN0KHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAqaW5mbywgdTE2IHR4X3RpbWVfZXN0
KQoreworCS8qIFdlIG9ubHkgaGF2ZSAxMCBiaXRzIGluIHR4X3RpbWVfZXN0LCBzbyBzdG9yZSBh
aXJ0aW1lCisJICogaW4gaW5jcmVtZW50cyBvZiA0dXMgYW5kIGNsYW1wIHRoZSBtYXhpbXVtIHRv
IDIqKjEyLTEKKwkgKi8KKwlpbmZvLT50eF90aW1lX2VzdCA9IG1pbl90KHUxNiwgdHhfdGltZV9l
c3QsIDQwOTUpID4+IDI7CisJcmV0dXJuIGluZm8tPnR4X3RpbWVfZXN0OworfQorCitzdGF0aWMg
aW5saW5lIHUxNgoraWVlZTgwMjExX2luZm9fZ2V0X3R4X3RpbWVfZXN0KHN0cnVjdCBpZWVlODAy
MTFfdHhfaW5mbyAqaW5mbykKK3sKKwlyZXR1cm4gaW5mby0+dHhfdGltZV9lc3QgPDwgMjsKK30K
KwogLyoqCiAgKiBzdHJ1Y3QgaWVlZTgwMjExX3R4X3N0YXR1cyAtIGV4dGVuZGVkIHR4IHN0YXR1
cyBpbmZvIGZvciByYXRlIGNvbnRyb2wKICAqCmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvc3Rh
dHVzLmMgYi9uZXQvbWFjODAyMTEvc3RhdHVzLmMKaW5kZXggMGU1MWRlZjM1YjhhLi4zOWRhODJi
MzViZTkgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS9zdGF0dXMuYworKysgYi9uZXQvbWFjODAy
MTEvc3RhdHVzLmMKQEAgLTY3MCwxMiArNjcwLDI2IEBAIHN0YXRpYyB2b2lkIGllZWU4MDIxMV9y
ZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwsCiAJCQkJICAgICAg
c3RydWN0IHNrX2J1ZmYgKnNrYiwgYm9vbCBkcm9wcGVkKQogewogCXN0cnVjdCBpZWVlODAyMTFf
dHhfaW5mbyAqaW5mbyA9IElFRUU4MDIxMV9TS0JfQ0Ioc2tiKTsKKwl1MTYgdHhfdGltZV9lc3Qg
PSBpZWVlODAyMTFfaW5mb19nZXRfdHhfdGltZV9lc3QoaW5mbyk7CiAJc3RydWN0IGllZWU4MDIx
MV9oZHIgKmhkciA9ICh2b2lkICopc2tiLT5kYXRhOwogCWJvb2wgYWNrZWQgPSBpbmZvLT5mbGFn
cyAmIElFRUU4MDIxMV9UWF9TVEFUX0FDSzsKIAogCWlmIChkcm9wcGVkKQogCQlhY2tlZCA9IGZh
bHNlOwogCisJaWYgKHR4X3RpbWVfZXN0KSB7CisJCXN0cnVjdCBzdGFfaW5mbyAqc3RhOworCisJ
CXJjdV9yZWFkX2xvY2soKTsKKworCQlzdGEgPSBzdGFfaW5mb19nZXRfYnlfYWRkcnMobG9jYWws
IGhkci0+YWRkcjEsIGhkci0+YWRkcjIpOworCQlpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5n
X2FpcnRpbWUobG9jYWwsIHN0YSwKKwkJCQkJCSAgICAgc2tiX2dldF9xdWV1ZV9tYXBwaW5nKHNr
YiksCisJCQkJCQkgICAgIHR4X3RpbWVfZXN0LAorCQkJCQkJICAgICB0cnVlKTsKKwkJcmN1X3Jl
YWRfdW5sb2NrKCk7CisJfQorCiAJaWYgKGluZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0lOVEZM
X01MTUVfQ09OTl9UWCkgewogCQlzdHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YTsK
IApAQCAtODc3LDYgKzg5MSw3IEBAIHN0YXRpYyB2b2lkIF9faWVlZTgwMjExX3R4X3N0YXR1cyhz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAlzdHJ1Y3QgaWVlZTgwMjExX2JhciAqYmFyOwogCWlu
dCBzaGlmdCA9IDA7CiAJaW50IHRpZCA9IElFRUU4MDIxMV9OVU1fVElEUzsKKwl1MTYgdHhfdGlt
ZV9lc3Q7CiAKIAlyYXRlc19pZHggPSBpZWVlODAyMTFfdHhfZ2V0X3JhdGVzKGh3LCBpbmZvLCAm
cmV0cnlfY291bnQpOwogCkBAIC05ODYsNiArMTAwMSwxNyBAQCBzdGF0aWMgdm9pZCBfX2llZWU4
MDIxMV90eF9zdGF0dXMoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJCQlpZWVlODAyMTFfc3Rh
X3JlZ2lzdGVyX2FpcnRpbWUoJnN0YS0+c3RhLCB0aWQsCiAJCQkJCQkgICAgICAgaW5mby0+c3Rh
dHVzLnR4X3RpbWUsIDApOwogCisJCWlmICgodHhfdGltZV9lc3QgPSBpZWVlODAyMTFfaW5mb19n
ZXRfdHhfdGltZV9lc3QoaW5mbykpID4gMCkgeworCQkJLyogRG8gdGhpcyBoZXJlIHRvIGF2b2lk
IHRoZSBleHBlbnNpdmUgbG9va3VwIG9mIHRoZSBzdGEKKwkJCSAqIGluIGllZWU4MDIxMV9yZXBv
cnRfdXNlZF9za2IoKS4KKwkJCSAqLworCQkJaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19h
aXJ0aW1lKGxvY2FsLCBzdGEsCisJCQkJCQkJICAgICBza2JfZ2V0X3F1ZXVlX21hcHBpbmcoc2ti
KSwKKwkJCQkJCQkgICAgIHR4X3RpbWVfZXN0LAorCQkJCQkJCSAgICAgdHJ1ZSk7CisJCQlpZWVl
ODAyMTFfaW5mb19zZXRfdHhfdGltZV9lc3QoaW5mbywgMCk7CisJCX0KKwogCQlpZiAoaWVlZTgw
MjExX2h3X2NoZWNrKCZsb2NhbC0+aHcsIFJFUE9SVFNfVFhfQUNLX1NUQVRVUykpIHsKIAkJCWlm
IChpbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9TVEFUX0FDSykgewogCQkJCWlmIChzdGEtPnN0
YXR1c19zdGF0cy5sb3N0X3BhY2tldHMpCmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvdHguYyBi
L25ldC9tYWM4MDIxMS90eC5jCmluZGV4IGFhZmM2N2I1NjJlYi4uMmZiNjU3MTQ1M2U3IDEwMDY0
NAotLS0gYS9uZXQvbWFjODAyMTEvdHguYworKysgYi9uZXQvbWFjODAyMTEvdHguYwpAQCAtMzU1
MSw2ICszNTUxLDkgQEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVj
dCBpZWVlODAyMTFfaHcgKmh3LAogCiAJV0FSTl9PTl9PTkNFKHNvZnRpcnFfY291bnQoKSA9PSAw
KTsKIAorCWlmICghaWVlZTgwMjExX3R4cV9haXJ0aW1lX2NoZWNrKGh3LCB0eHEpKQorCQlyZXR1
cm4gTlVMTDsKKwogYmVnaW46CiAJc3Bpbl9sb2NrX2JoKCZmcS0+bG9jayk7CiAKQEAgLTM2NjEs
NiArMzY2NCwyMSBAQCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjExX3R4X2RlcXVldWUoc3RydWN0
IGllZWU4MDIxMV9odyAqaHcsCiAJfQogCiAJSUVFRTgwMjExX1NLQl9DQihza2IpLT5jb250cm9s
LnZpZiA9IHZpZjsKKworCWlmIChsb2NhbC0+YWlydGltZV9mbGFncyAmIEFJUlRJTUVfVVNFX0FR
TCkgeworCQl1MzIgYWlydGltZTsKKworCQlhaXJ0aW1lID0gaWVlZTgwMjExX2NhbGNfZXhwZWN0
ZWRfdHhfYWlydGltZShodywgdmlmLCB0eHEtPnN0YSwKKwkJCQkJCQkgICAgIHNrYi0+bGVuKTsK
KwkJaWYgKGFpcnRpbWUpIHsKKwkJCWFpcnRpbWUgPSBpZWVlODAyMTFfaW5mb19zZXRfdHhfdGlt
ZV9lc3QoaW5mbywgYWlydGltZSk7CisJCQlpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2Fp
cnRpbWUobG9jYWwsIHR4LnN0YSwKKwkJCQkJCQkgICAgIHR4cS0+YWMsCisJCQkJCQkJICAgICBh
aXJ0aW1lLAorCQkJCQkJCSAgICAgZmFsc2UpOworCQl9CisJfQorCiAJcmV0dXJuIHNrYjsKIAog
b3V0OgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0
aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
