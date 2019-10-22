Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCEFE0505
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 15:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6xrTaxZya1/ZnjLHd01FFfD4OaHWhhM2zlIx9cgB20=; b=fH1KDJDV8m1cz7
	z0MS4iNqwQ1rFJK2d6P4GtcTqvfhQblU2ZTwEVNuI8vZMVtFzx+LWMMtvpWNvif6qhYoVUL6p+LeR
	pby9twjAqACnL6jiB35cN1JzndHLTjqkFcVitnJVyMjdeGnFYpC1XtKbQzieXjzqBByCvi19+wtma
	8iOcCYlhuRF+WYRn+HN+hfcjeHjKrSWqq6018t2HMx4BqdknfKq66TgLiV3lKxu90/V1O4R9RFmsl
	HrmeGOoGfwH8Iv0Ple7cO1c2Ti31iYr1DwlZgLa1JcJUlDvUS9HNasvRZVrgy3LkZnTkjqfz+IFtn
	A3BqO4D+lm0yiThaY2eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuFT-0000B8-Lh; Tue, 22 Oct 2019 13:30:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuEz-0008Eh-2K
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 13:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571751022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eg6GWygKeYzqmkq+LDj844ZOc9L0SpguuNdAt7HOGwI=;
 b=XiboBj0LDB3l8IHqwIoTDd9G5sJfJuOj29cWBvmhXlLk6OjfHOiExT8i8Xksvm+tcbj6UL
 Nc47zc+pqnruGLAoPBjd//SAGlfrhL0PY8XJ3Q9UZUWOhq4BeQYzoqyYPoGN7l+FyTTGQk
 1wzQ4C2BnG/zNgjVFaXwVLsDkIa57OM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-op7gt9NdP9eDSpSBJJb9-g-1; Tue, 22 Oct 2019 09:30:19 -0400
Received: by mail-wr1-f71.google.com with SMTP id c6so9199267wrp.3
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 06:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gQX28cV4kR5e8hFv0Sv15bTp7rYQDznh9B4z2Gx6gas=;
 b=huXWBU2lo5Jd5PLD9V3ygovergLszDIDQuRquzgMXcYCM/30bPHDL/psCzO5GteO8B
 DfrRCG7dqjMyFscZAgutRw2EMwyGZ+8WTEUBEu3dkU7dIHLtSv6IusHn07knQFYTk1wL
 DRNQnDr7k8Rx9J2nGhxMvKg2phU6sTJAQECYVuRcOne64A51rkaRXnLNm+XflNOy0Cm7
 uzhqGbS2fSxfn+6v96Ivt2S9qMTPwTn4w2YMBG/nsf/Jc+/NwYVszCwhDUfx1nJRhX3f
 20JKhS3hvIQ8Lnz87qbkPfBNZEKI+DrkDVoNhmr4yrDKynEKzn1A+smwd3ecKNu2XZdR
 onsw==
X-Gm-Message-State: APjAAAWKoBpIfGiJ0DmgB/wUOnKiBDPM5JiLWD2VpLwa7t/1W3ohVvmj
 wbi1wEyjTnuoGaCxH14HClTjqCi4nTW9tbp8PswByLKZ6icwmpQUatbx8eanejXHHxmrSBlEPl8
 ItSuH0EAuwxZi6cAxnJ5XWQ==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr1671895wmi.15.1571751017872; 
 Tue, 22 Oct 2019 06:30:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQLvmXxWVS4OswFAPMKSoIxHnaomAvxoNb/fhJv2nk/orRXPx1bA7oaCwhcrSFKfh0ApDsww==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr1671871wmi.15.1571751017629; 
 Tue, 22 Oct 2019 06:30:17 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a2sm5549163wrv.39.2019.10.22.06.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 06:30:16 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5CC891804B6; Tue, 22 Oct 2019 15:30:16 +0200 (CEST)
Subject: [PATCH v5 1/4] mac80211: Shrink the size of ack_frame_id to make room
 for tx_time_est
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 22 Oct 2019 15:30:16 +0200
Message-ID: <157175101629.104114.3204705179013332449.stgit@toke.dk>
In-Reply-To: <157175101518.104114.6722791270722911023.stgit@toke.dk>
References: <157175101518.104114.6722791270722911023.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: op7gt9NdP9eDSpSBJJb9-g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063025_273047_71758D4D 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUbyBpbXBs
ZW1lbnQgYWlydGltZSBxdWV1ZSBsaW1pdGluZywgd2UgbmVlZCB0byBrZWVwIGEgcnVubmluZyBh
Y2NvdW50IG9mCnRoZSBlc3RpbWF0ZWQgYWlydGltZSBvZiBhbGwgc2ticyBxdWV1ZWQgaW50byB0
aGUgZGV2aWNlLiBEbyB0byB0aGlzCmNvcnJlY3RseSwgd2UgbmVlZCB0byBzdG9yZSB0aGUgYWly
dGltZSBlc3RpbWF0ZSBpbnRvIHRoZSBza2Igc28gd2UgY2FuCmRlY3JlYXNlIHRoZSBvdXRzdGFu
ZGluZyBiYWxhbmNlIHdoZW4gdGhlIHNrYiBpcyBmcmVlZC4gVGhpcyBtZWFucyB0aGF0IHRoZQp0
aW1lIGVzdGltYXRlIG11c3QgYmUgc3RvcmVkIHNvbWV3aGVyZSB0aGF0IHdpbGwgc3Vydml2ZSBm
b3IgdGhlIGxpZmV0aW1lCm9mIHRoZSBza2IuCgpUbyBnZXQgdGhpcywgZGVjcmVhc2UgdGhlIHNp
emUgb2YgdGhlIGFja19mcmFtZV9pZCBmaWVsZCB0byA2IGJpdHMsIGFuZApsb3dlciB0aGUgc2l6
ZSBvZiB0aGUgSUQgc3BhY2UgYWNjb3JkaW5nbHkuIFRoaXMgbGVhdmVzIDEwIGJpdHMgZm9yIHVz
ZSBmb3IKdHhfdGltZV9lc3QsIHdoaWNoIGlzIGVub3VnaCB0byBzdG9yZSBhIG1heGltdW0gb2Yg
NDA5NiB1cywgaWYgd2Ugc2hpZnQgdGhlCnZhbHVlcyBzbyB0aGV5IGJlY29tZSB1bml0cyBvZiA0
dXMuCgpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0
LmNvbT4KLS0tCiBpbmNsdWRlL25ldC9tYWM4MDIxMS5oIHwgICAgNCArKystCiBuZXQvbWFjODAy
MTEvY2ZnLmMgICAgIHwgICAgMiArLQogbmV0L21hYzgwMjExL3R4LmMgICAgICB8ICAgIDIgKy0K
IDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbmV0L21hYzgwMjExLmggYi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCmlu
ZGV4IGQ2OTA4MWMzODc4OC4uNDI4OGFjZTcyYzJiIDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC9t
YWM4MDIxMS5oCisrKyBiL2luY2x1ZGUvbmV0L21hYzgwMjExLmgKQEAgLTk2Nyw2ICs5NjcsNyBA
QCBpZWVlODAyMTFfcmF0ZV9nZXRfdmh0X25zcyhjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX3R4X3Jh
dGUgKnJhdGUpCiAgKiBAYmFuZDogdGhlIGJhbmQgdG8gdHJhbnNtaXQgb24gKHVzZSBmb3IgY2hl
Y2tpbmcgZm9yIHJhY2VzKQogICogQGh3X3F1ZXVlOiBIVyBxdWV1ZSB0byBwdXQgdGhlIGZyYW1l
IG9uLCBza2JfZ2V0X3F1ZXVlX21hcHBpbmcoKSBnaXZlcyB0aGUgQUMKICAqIEBhY2tfZnJhbWVf
aWQ6IGludGVybmFsIGZyYW1lIElEIGZvciBUWCBzdGF0dXMsIHVzZWQgaW50ZXJuYWxseQorICog
QHR4X3RpbWVfZXN0OiBUWCB0aW1lIGVzdGltYXRlIGluIHVuaXRzIG9mIDR1cywgdXNlZCBpbnRl
cm5hbGx5CiAgKiBAY29udHJvbDogdW5pb24gcGFydCBmb3IgY29udHJvbCBkYXRhCiAgKiBAY29u
dHJvbC5yYXRlczogVFggcmF0ZXMgYXJyYXkgdG8gdHJ5CiAgKiBAY29udHJvbC5ydHNfY3RzX3Jh
dGVfaWR4OiByYXRlIGZvciBSVFMgb3IgQ1RTCkBAIC0xMDA3LDcgKzEwMDgsOCBAQCBzdHJ1Y3Qg
aWVlZTgwMjExX3R4X2luZm8gewogCiAJdTggaHdfcXVldWU7CiAKLQl1MTYgYWNrX2ZyYW1lX2lk
OworCXUxNiBhY2tfZnJhbWVfaWQ6NjsKKwl1MTYgdHhfdGltZV9lc3Q6MTA7CiAKIAl1bmlvbiB7
CiAJCXN0cnVjdCB7CmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvY2ZnLmMgYi9uZXQvbWFjODAy
MTEvY2ZnLmMKaW5kZXggNzA3MzllNzQ2YzEzLi40ZmI3ZjFmMTIxMDkgMTAwNjQ0Ci0tLSBhL25l
dC9tYWM4MDIxMS9jZmcuYworKysgYi9uZXQvbWFjODAyMTEvY2ZnLmMKQEAgLTM0MjgsNyArMzQy
OCw3IEBAIGludCBpZWVlODAyMTFfYXR0YWNoX2Fja19za2Ioc3RydWN0IGllZWU4MDIxMV9sb2Nh
bCAqbG9jYWwsIHN0cnVjdCBza19idWZmICpza2IsCiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmbG9j
YWwtPmFja19zdGF0dXNfbG9jaywgc3Bpbl9mbGFncyk7CiAJaWQgPSBpZHJfYWxsb2MoJmxvY2Fs
LT5hY2tfc3RhdHVzX2ZyYW1lcywgYWNrX3NrYiwKLQkJICAgICAgIDEsIDB4MTAwMDAsIEdGUF9B
VE9NSUMpOworCQkgICAgICAgMSwgMHg0MCwgR0ZQX0FUT01JQyk7CiAJc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmbG9jYWwtPmFja19zdGF0dXNfbG9jaywgc3Bpbl9mbGFncyk7CiAKIAlpZiAoaWQg
PCAwKSB7CmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5j
CmluZGV4IDkzOGMxMGY3OTU1Yi4uYTE2YzJmODYzNzAyIDEwMDY0NAotLS0gYS9uZXQvbWFjODAy
MTEvdHguYworKysgYi9uZXQvbWFjODAyMTEvdHguYwpAQCAtMjcxOSw3ICsyNzE5LDcgQEAgc3Rh
dGljIHN0cnVjdCBza19idWZmICppZWVlODAyMTFfYnVpbGRfaGRyKHN0cnVjdCBpZWVlODAyMTFf
c3ViX2lmX2RhdGEgKnNkYXRhLAogCiAJCQlzcGluX2xvY2tfaXJxc2F2ZSgmbG9jYWwtPmFja19z
dGF0dXNfbG9jaywgZmxhZ3MpOwogCQkJaWQgPSBpZHJfYWxsb2MoJmxvY2FsLT5hY2tfc3RhdHVz
X2ZyYW1lcywgYWNrX3NrYiwKLQkJCQkgICAgICAgMSwgMHgxMDAwMCwgR0ZQX0FUT01JQyk7CisJ
CQkJICAgICAgIDEsIDB4NDAsIEdGUF9BVE9NSUMpOwogCQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmbG9jYWwtPmFja19zdGF0dXNfbG9jaywgZmxhZ3MpOwogCiAJCQlpZiAoaWQgPj0gMCkgewoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
