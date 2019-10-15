Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784C8D7D4F
	for <lists+ath10k@lfdr.de>; Tue, 15 Oct 2019 19:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpeiwxLeEEOpsUldsZuLkLgKhmrq3UqzxTExO9o9NjY=; b=GvMpOK0VvyIarC
	HK3raXoNwXrV9m1NNYCDgaW5tPpl0iTwmMqzX4VOAVQ3O/LwCvBdcIO0DLSi6HTS5eq7swUVYwFDf
	cafCslVyRjZa3/7kMd71V7zSwWnGusfZcpXJyfqdpZiN+igoDVOY7yyjaAAAF0swsgArVI392wgKl
	xjTX50WMQ+Wlx2uCjB8unlJaVytDDdRxVBzlHWm/4KE0m8KuUGvsFo9uw0xgGVdwInP1KudvrG17q
	zNFso7ewuA6q6brhzQgleBvMrA6YdRDPi1YejLuCzyroMylech8Qi4Lheef5s7fr/p+U9eP2B4hy5
	0YIdr8gqmscsTwWEwLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQTs-0007If-2G; Tue, 15 Oct 2019 17:19:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQTW-0006zF-Sb
 for ath10k@lists.infradead.org; Tue, 15 Oct 2019 17:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571159947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GyvbrDu8qEmiyON3oCp/2+bOvx6xuJkqb2dCqG+bTwY=;
 b=OLYFNKrd+y1DoVjsXyeK4O1rxkkNiGXWoDOsvDuT3zxblaGxW3dad9ECDFFryVbemCAL4N
 35B23nliB2jQUkAxcBKBnFUxu7Oq4Ys5awnyZYge1RK4VS5+12pqpGI8QOp+bnrG50maBH
 ioiPA6cZ4Sh4+ITH0E/uXbjE1nwfc4E=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-XJKhUdL3MSCO8ncdiU5RMw-1; Tue, 15 Oct 2019 13:19:05 -0400
Received: by mail-lj1-f198.google.com with SMTP id i18so4044685ljg.14
 for <ath10k@lists.infradead.org>; Tue, 15 Oct 2019 10:19:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mshGTrJaOuTUiekVjuspbBrpGAw6s+TpOZLBOSqMh18=;
 b=PwEtbmBK69PxNDDndN1m4JhAX22e0G1Y+wafROpLlY0uUcQ9d20jh3u30iZfMviDX2
 jmFxdNipNy9QSJtB4KWu3HsKBvkS9ZSWgBrL8XYVgurGKiCpTvNx94ANHYqAzsVVaxY4
 KFe7SUOzYSlkYb9EOPR8X064Fhd8AKEB7SfyJFnQ9qvmaaQH4sWKoYk7eUdP0oh3u00s
 f13klr2v9rU3STLpwsVnd7i0UAryBOZfzN4VcM93Z/+kU6j9j+UGnDnchTGuzUCooiNu
 YHLrhtT+16nxvDnOTueVctbhNDMbdumTgmB4Fw9KfS/XARlgwRiWkygVezHM92VKFZpn
 HmJA==
X-Gm-Message-State: APjAAAX/WDQyDOdfYgFnxJ/Y1EgSayjiaxLuSfVGZ0yHJaXERFvTaCmy
 EjogG38zQ/kdgUsgzWyrnFuIrQX1R6Y9NcibAFVTXJGT3yHKdrubQNGGWUzvfesdYkjs6tbfiQ2
 lwiRVyOHSbUf/q0DyMtGCLg==
X-Received: by 2002:ac2:5df0:: with SMTP id z16mr14300267lfq.36.1571159943775; 
 Tue, 15 Oct 2019 10:19:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtmWhVJzibU3fbFh0zzmpTOwLDpwyRfz8OIjlJgF3lnE3XdYDXQ1Jt6j749UmjRgzPR7qwpg==
X-Received: by 2002:ac2:5df0:: with SMTP id z16mr14300247lfq.36.1571159943542; 
 Tue, 15 Oct 2019 10:19:03 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id z18sm5130432ljh.17.2019.10.15.10.19.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:19:02 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F1C501803A8; Tue, 15 Oct 2019 19:19:01 +0200 (CEST)
Subject: [PATCH v2 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 15 Oct 2019 19:19:01 +0200
Message-ID: <157115994190.2500430.14955682016008497593.stgit@toke.dk>
In-Reply-To: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: XJKhUdL3MSCO8ncdiU5RMw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101911_043662_52AEB566 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlCnN0YXRpb24gZnJvbSB0aGUgcGFj
a2V0IGRhdGEgb24gZXZlcnkgcGFja2V0LgoKVGhpcyBwYXRjaCBkb2VzICpub3QqIGluY2x1ZGUg
YW55IG1lY2hhbmlzbSB0byB3YWtlIGEgdGhyb3R0bGVkIFRYUSBhZ2FpbiwKb24gdGhlIGFzc3Vt
cHRpb24gdGhhdCB0aGlzIHdpbGwgaGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdo
YXRldmVyCmZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgot
LS0KIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyB8ICAgMzggKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICB8ICAgMTYgKysrKysrKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbmV0
L21hYzgwMjExL3N0YXR1cy5jIGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCmluZGV4IGFiOGJhNTgz
NWNhMC4uY2U5OTBhMWU5MDQzIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhdHVzLmMKKysr
IGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCkBAIC02NzYsNiArNjc2LDMzIEBAIHN0YXRpYyB2b2lk
IGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWws
CiAJaWYgKGRyb3BwZWQpCiAJCWFja2VkID0gZmFsc2U7CiAKKwlpZiAoaW5mby0+c3RhdHVzLnR4
X3RpbWVfZXN0KSB7CisJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOworCQlz
dHJ1Y3Qgc3RhX2luZm8gKnN0YSA9IE5VTEw7CisJCXU4ICpxYywgYWM7CisJCWludCB0aWQ7CisK
KwkJcmN1X3JlYWRfbG9jaygpOworCisJCXNkYXRhID0gaWVlZTgwMjExX3NkYXRhX2Zyb21fc2ti
KGxvY2FsLCBza2IpOworCQlpZiAoc2RhdGEpCisJCQlzdGEgPSBzdGFfaW5mb19nZXRfYnNzKHNk
YXRhLCBza2JfbWFjX2hlYWRlcihza2IpKTsKKworCQlpZiAoaWVlZTgwMjExX2lzX2RhdGFfcW9z
KGhkci0+ZnJhbWVfY29udHJvbCkpIHsKKwkJCXFjID0gaWVlZTgwMjExX2dldF9xb3NfY3RsKGhk
cik7CisJCQl0aWQgPSBxY1swXSAmIDB4ZjsKKwkJCWFjID0gaWVlZTgwMjExX2FjX2Zyb21fdGlk
KHRpZCk7CisJCX0gZWxzZSB7CisJCQlhYyA9IElFRUU4MDIxMV9BQ19CRTsKKwkJfQorCisJCWll
ZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWlydGltZShsb2NhbCwgc3RhLCBhYywKKwkJCQkJ
CSAgICAgaW5mby0+c3RhdHVzLnR4X3RpbWVfZXN0LAorCQkJCQkJICAgICB0cnVlKTsKKwkJcmN1
X3JlYWRfdW5sb2NrKCk7CisKKwl9CisKIAlpZiAoaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhf
SU5URkxfTUxNRV9DT05OX1RYKSB7CiAJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNk
YXRhOwogCkBAIC05MzAsNiArOTU3LDE3IEBAIHN0YXRpYyB2b2lkIF9faWVlZTgwMjExX3R4X3N0
YXR1cyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJCXRpZCA9IHFjWzBdICYgMHhmOwogCQl9
CiAKKwkJaWYgKGluZm8tPnN0YXR1cy50eF90aW1lX2VzdCkgeworCQkJLyogRG8gdGhpcyBoZXJl
IHRvIGF2b2lkIHRoZSBleHBlbnNpdmUgbG9va3VwIG9mIHRoZSBzdGEKKwkJCSAqIGluIGllZWU4
MDIxMV9yZXBvcnRfdXNlZF9za2IoKS4KKwkJCSAqLworCQkJaWVlZTgwMjExX3N0YV91cGRhdGVf
cGVuZGluZ19haXJ0aW1lKGxvY2FsLCBzdGEsCisJCQkJCQkJICAgICBpZWVlODAyMTFfYWNfZnJv
bV90aWQodGlkKSwKKwkJCQkJCQkgICAgIGluZm8tPnN0YXR1cy50eF90aW1lX2VzdCwKKwkJCQkJ
CQkgICAgIHRydWUpOworCQkJaW5mby0+c3RhdHVzLnR4X3RpbWVfZXN0ID0gMDsKKwkJfQorCiAJ
CWlmICghYWNrZWQgJiYgaWVlZTgwMjExX2lzX2JhY2tfcmVxKGZjKSkgewogCQkJdTE2IGNvbnRy
b2w7CiAKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS90eC5jIGIvbmV0L21hYzgwMjExL3R4LmMK
aW5kZXggNDA1ZjYyMmIzZmUwLi5iNmI0NzE3MWIzNDAgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIx
MS90eC5jCisrKyBiL25ldC9tYWM4MDIxMS90eC5jCkBAIC0zNTM5LDkgKzM1MzksMTQgQEAgc3Ry
dWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3
LAogCXN0cnVjdCBpZWVlODAyMTFfdHhfZGF0YSB0eDsKIAlpZWVlODAyMTFfdHhfcmVzdWx0IHI7
CiAJc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiA9IHR4cS0+dmlmOworCXU4IGFjID0gdHhxLT5h
YzsKKwl1MzIgYWlydGltZTsKIAogCVdBUk5fT05fT05DRShzb2Z0aXJxX2NvdW50KCkgPT0gMCk7
CiAKKwlpZiAoIWllZWU4MDIxMV90eHFfYWlydGltZV9jaGVjayhodywgdHhxKSkKKwkJcmV0dXJu
IE5VTEw7CisKIGJlZ2luOgogCXNwaW5fbG9ja19iaCgmZnEtPmxvY2spOwogCkBAIC0zNjUyLDYg
KzM2NTcsMTcgQEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LAogCX0KIAogCUlFRUU4MDIxMV9TS0JfQ0Ioc2tiKS0+Y29udHJvbC52
aWYgPSB2aWY7CisKKwlpZiAobG9jYWwtPmFpcnRpbWVfZmxhZ3MgJiBBSVJUSU1FX1VTRV9BUUwp
IHsKKwkJYWlydGltZSA9IGllZWU4MDIxMV9jYWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoaHcsIHZp
ZiwgdHhxLT5zdGEsCisJCQkJCQkJICAgICBza2ItPmxlbiArIDM4KTsKKwkJaWYgKGFpcnRpbWUp
IHsKKwkJCWluZm8tPmNvbnRyb2wudHhfdGltZV9lc3QgPSBhaXJ0aW1lOworCQkJaWVlZTgwMjEx
X3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKGxvY2FsLCB0eC5zdGEsIGFjLAorCQkJCQkJCSAg
ICAgYWlydGltZSwgZmFsc2UpOworCQl9CisJfQorCiAJcmV0dXJuIHNrYjsKIAogb3V0OgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWls
aW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
