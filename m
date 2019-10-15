Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE51DD7D4E
	for <lists+ath10k@lfdr.de>; Tue, 15 Oct 2019 19:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nk4deRBRez/G/dafyUNi3f3SfNw1tcpXV/exOuouP4=; b=SImhzj1z69geKn
	WUr2PRwrd0u4qTe1HlVDNp8zQA5shel4YXretxBBx09rXBUi163g5wGVaP7+6se/I1Lngu0cabqyv
	I8oR6Ri92YIa3Nh60RTIBYOaFotqecMWHdz8zvpohVWOoThi08ko/nSLJvEsGPlC+GAfP2oc5EQWs
	+C70KmJZ8EsNOHYxmjlYrpbUGwBkRiSFvlKqw3gGONbKC+HjADHqk61ZKT0J4pYEoKD4Yt6WEEmfc
	HD8Hktclm9VYxzfPJWA5+BCQUSbFPIO0XUJKMf0KvAB/me7WTMhxcbGKJH54mCn3yJZf6uQpScp1C
	i9KAz/5Atb/mjVO9yVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQTm-0007CR-C3; Tue, 15 Oct 2019 17:19:26 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQTW-0006yZ-Sk
 for ath10k@lists.infradead.org; Tue, 15 Oct 2019 17:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571159945;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2qf8HGaC9XYB4yCBmVPA2/e9VNoQoe0I/AoOfC2m9mE=;
 b=PmbyUusqO+MO2cLHtjGNc1bFvYNZiR+PZGGpc/ps0/DFpWL/F6CzEdGMgJfBmwFT2wI56V
 hRG0/2pxNOhjIhqTF9T4V0X7U6cU5Q7whzkTlqwfB49VvTYdjiZ6U9q4N33ZsrbH5oVSkG
 Ql2qQBGCYXfGboEmaHQX64zDopZOIb8=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-e1033LQYPjywFM3tZbgYGg-1; Tue, 15 Oct 2019 13:19:03 -0400
Received: by mail-lj1-f197.google.com with SMTP id y28so4049781ljn.2
 for <ath10k@lists.infradead.org>; Tue, 15 Oct 2019 10:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Xz0DFDu36TCFLND3BKlsyYv/TX/+u1NMntE7P/QH1z8=;
 b=j1dGkH2sJz85FR5+RyPP/ferxJTtao9u4krqqfCLTB1QBd5aT9qyKOiGCOZAr8SO0b
 Ix8UgIazCQ84mLZNlAYQuYuV4+rg1YaHRM4QIjPLgbSL8gH0w+Ne+FfF+ZWz8M4LfXGC
 S/Gk/VdzLJ9mHSNn3qvpcRBk99apMvj1DCro8NCeWg8GR3UmEYz04GOMUYw1uPPLZEvP
 dDmf/Mm9L4MUecQfOvnuBLz9f6YgHe6UcW4nzU2pnpbAo8k1TTf3MNc9slT28aKM1ECN
 8wSyGVMBLOTTmA4bgO4RjsNQOlMmbdwMJS2pxHzBr4zja4++iU5ykJ1+DDlVoMO+9NWs
 gu7w==
X-Gm-Message-State: APjAAAVdIyG80ewn1tYtvorw/DfCG14tLQGsjgU5o3Fbt48EaCjc7suE
 4eKyUzsViy2jVRIJ5z8vv5C7Rnpij2SpFcDswaSByXmiABiiuVBXar+P+KqHz/g7Ge3dFwvC07y
 rkxkybG4CnzImTdTcbYerwQ==
X-Received: by 2002:a19:dc14:: with SMTP id t20mr3205378lfg.21.1571159940384; 
 Tue, 15 Oct 2019 10:19:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjLO6aCJGIyJgLbMmJuwRaVWDfTwy3zvUgeePNCzfGgSDv/H65WMQjzv2MbphmgGo+wiStTQ==
X-Received: by 2002:a19:dc14:: with SMTP id t20mr3205368lfg.21.1571159940122; 
 Tue, 15 Oct 2019 10:19:00 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id z72sm5664042ljb.98.2019.10.15.10.18.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:18:59 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B680A1803A9; Tue, 15 Oct 2019 19:18:58 +0200 (CEST)
Subject: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room for
 tx_time_est
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 15 Oct 2019 19:18:58 +0200
Message-ID: <157115993866.2500430.13989567853855880476.stgit@toke.dk>
In-Reply-To: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: e1033LQYPjywFM3tZbgYGg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101911_044561_D3186EF3 
X-CRM114-Status: GOOD (  13.56  )
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

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUbyBpbXBs
ZW1lbnQgYWlydGltZSBxdWV1ZSBsaW1pdGluZywgd2UgbmVlZCB0byBrZWVwIGEgcnVubmluZyBh
Y2NvdW50IG9mCnRoZSBlc3RpbWF0ZWQgYWlydGltZSBvZiBhbGwgc2ticyBxdWV1ZWQgaW50byB0
aGUgZGV2aWNlLiBEbyB0byB0aGlzCmNvcnJlY3RseSwgd2UgbmVlZCB0byBzdG9yZSB0aGUgYWly
dGltZSBlc3RpbWF0ZSBpbnRvIHRoZSBza2Igc28gd2UgY2FuCmRlY3JlYXNlIHRoZSBvdXRzdGFu
ZGluZyBiYWxhbmNlIHdoZW4gdGhlIHNrYiBpcyBmcmVlZC4gVGhpcyBtZWFucyB0aGF0IHRoZQp0
aW1lIGVzdGltYXRlIG11c3QgYmUgc3RvcmVkIHNvbWV3aGVyZSB0aGF0IHdpbGwgc3Vydml2ZSBm
b3IgdGhlIGxpZmV0aW1lCm9mIHRoZSBza2IuCgpGb3J0dW5hdGVseSwgd2UgaGFkIGEgY291cGxl
IG9mIGJ5dGVzIGxlZnQgaW4gdGhlICdzdGF0dXMnIGZpZWxkIGluIHRoZQppZWVlODAyMTFfdHhf
aW5mbzsgYW5kIHNpbmNlIHdlIG9ubHkgcGxhbiB0byBjYWxjdWxhdGUgdGhlIGFpcnRpbWUgZXN0
aW1hdGUKYWZ0ZXIgdGhlIHNrYiBpcyBkZXF1ZXVlZCBmcm9tIHRoZSBGUSBzdHJ1Y3R1cmUsIG9u
IHRoZSBjb250cm9sIHNpZGUgd2UgY2FuCnNoYXJlIHRoZSBzcGFjZSB3aXRoIHRoZSBjb2RlbCBl
bnF1ZXVlIHRpbWUuIEFuZCBieSByZWFycmFuZ2luZyB0aGUgb3JkZXIKb2YgZWxlbWVudHMgaXQg
aXMgcG9zc2libGUgdG8gaGF2ZSB0aGUgcG9zaXRpb24gb2YgdGhlIG5ldyB0eF90aW1lX2VzdCBs
aW5lCnVwIGJldHdlZW4gdGhlIGNvbnRyb2wgYW5kIHN0YXR1cyBzdHJ1Y3RzLCBzbyB0aGUgdmFs
dWUgd2lsbCBzdXJ2aXZlIGZyb20Kd2hlbiBtYWM4MDIxMSBoYW5kcyB0aGUgcGFja2V0IHRvIHRo
ZSBkcml2ZXIsIGFuZCB1bnRpbCB0aGUgZHJpdmVyIGVpdGhlcgpmcmVlcyBpdCwgb3IgaGFuZHMg
aXQgYmFjayB0aHJvdWdoIFRYIHN0YXR1cy4KClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQt
SsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgotLS0KIGluY2x1ZGUvbmV0L21hYzgwMjExLmgg
fCAgIDI2ICsrKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC9tYWM4
MDIxMS5oIGIvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAppbmRleCBkNjkwODFjMzg3ODguLjQ5Zjhl
YTBhZjVmOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAorKysgYi9pbmNsdWRl
L25ldC9tYWM4MDIxMS5oCkBAIC05NzUsMjAgKzk3NSwyMyBAQCBpZWVlODAyMTFfcmF0ZV9nZXRf
dmh0X25zcyhjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX3R4X3JhdGUgKnJhdGUpCiAgKiBAY29udHJv
bC5zaG9ydF9wcmVhbWJsZTogdXNlIHNob3J0IHByZWFtYmxlIChDQ0sgb25seSkKICAqIEBjb250
cm9sLnNraXBfdGFibGU6IHNraXAgZXh0ZXJuYWxseSBjb25maWd1cmVkIHJhdGUgdGFibGUKICAq
IEBjb250cm9sLmppZmZpZXM6IHRpbWVzdGFtcCBmb3IgZXhwaXJ5IG9uIHBvd2Vyc2F2ZSBjbGll
bnRzCisgKiBAY29udHJvbC5lbnF1ZXVlX3RpbWU6IGVucXVldWUgdGltZSAoZm9yIGlUWFFzKQor
ICogQGNvbnRyb2wudHhfdGltZV9lc3Q6IGVzdGltYXRlZCBhaXJ0aW1lIHVzYWdlIChzaGFyZWQg
d2l0aCBAc3RhdHVzKQorICogQGNvbnRyb2wucmVzZXJ2ZWQ6IHVudXNlZCBmaWVsZCB0byBlbnN1
cmUgYWxpZ25tZW50IG9mIGRhdGEgc3RydWN0dXJlCisgKiBAY29udHJvbC5mbGFnczogY29udHJv
bCBmbGFncywgc2VlICZlbnVtIG1hYzgwMjExX3R4X2NvbnRyb2xfZmxhZ3MKICAqIEBjb250cm9s
LnZpZjogdmlydHVhbCBpbnRlcmZhY2UgKG1heSBiZSBOVUxMKQogICogQGNvbnRyb2wuaHdfa2V5
OiBrZXkgdG8gZW5jcnlwdCB3aXRoIChtYXkgYmUgTlVMTCkKLSAqIEBjb250cm9sLmZsYWdzOiBj
b250cm9sIGZsYWdzLCBzZWUgJmVudW0gbWFjODAyMTFfdHhfY29udHJvbF9mbGFncwotICogQGNv
bnRyb2wuZW5xdWV1ZV90aW1lOiBlbnF1ZXVlIHRpbWUgKGZvciBpVFhRcykKICAqIEBkcml2ZXJf
cmF0ZXM6IGFsaWFzIHRvIEBjb250cm9sLnJhdGVzIHRvIHJlc2VydmUgc3BhY2UKICAqIEBwYWQ6
IHBhZGRpbmcKICAqIEByYXRlX2RyaXZlcl9kYXRhOiBkcml2ZXIgdXNlIGFyZWEgaWYgZHJpdmVy
IG5lZWRzIEBjb250cm9sLnJhdGVzCiAgKiBAc3RhdHVzOiB1bmlvbiBwYXJ0IGZvciBzdGF0dXMg
ZGF0YQogICogQHN0YXR1cy5yYXRlczogYXR0ZW1wdGVkIHJhdGVzCiAgKiBAc3RhdHVzLmFja19z
aWduYWw6IEFDSyBzaWduYWwKKyAqIEBzdGF0dXMudHhfdGltZV9lc3Q6IGVzdGltYXRlZCBhaXJ0
aW1lIG9mIHNrYiAoc2hhcmVkIHdpdGggQGNvbnRyb2wpCisgKiBAc3RhdHVzLnR4X3RpbWU6IGFj
dHVhbCBhaXJ0aW1lIGNvbnN1bWVkIGZvciB0cmFuc21pc3Npb24KICAqIEBzdGF0dXMuYW1wZHVf
YWNrX2xlbjogQU1QRFUgYWNrIGxlbmd0aAogICogQHN0YXR1cy5hbXBkdV9sZW46IEFNUERVIGxl
bmd0aAogICogQHN0YXR1cy5hbnRlbm5hOiAobGVnYWN5LCBrZXB0IG9ubHkgZm9yIGl3bGVnYWN5
KQotICogQHN0YXR1cy50eF90aW1lOiBhaXJ0aW1lIGNvbnN1bWVkIGZvciB0cmFuc21pc3Npb24K
ICAqIEBzdGF0dXMuaXNfdmFsaWRfYWNrX3NpZ25hbDogQUNLIHNpZ25hbCBpcyB2YWxpZAogICog
QHN0YXR1cy5zdGF0dXNfZHJpdmVyX2RhdGE6IGRyaXZlciB1c2UgYXJlYQogICogQGFjazogdW5p
b24gcGFydCBmb3IgcHVyZSBBQ0sgZGF0YQpAQCAtMTAyNiwxMSArMTAyOSwxNyBAQCBzdHJ1Y3Qg
aWVlZTgwMjExX3R4X2luZm8gewogCQkJCS8qIG9ubHkgbmVlZGVkIGJlZm9yZSByYXRlIGNvbnRy
b2wgKi8KIAkJCQl1bnNpZ25lZCBsb25nIGppZmZpZXM7CiAJCQl9OworCQkJdW5pb24geworCQkJ
CWNvZGVsX3RpbWVfdCBlbnF1ZXVlX3RpbWU7CisJCQkJc3RydWN0IHsKKwkJCQkJdTE2IHR4X3Rp
bWVfZXN0OyAvKiBzaGFyZWQgd2l0aCBzdGF0dXMgKi8KKwkJCQkJdTE2IHJlc2VydmVkOyAvKiBw
YWRkaW5nIGZvciBhbGlnbm1lbnQgKi8KKwkJCQl9OworCQkJfTsKKwkJCXUzMiBmbGFnczsKIAkJ
CS8qIE5COiB2aWYgY2FuIGJlIE5VTEwgZm9yIGluamVjdGVkIGZyYW1lcyAqLwogCQkJc3RydWN0
IGllZWU4MDIxMV92aWYgKnZpZjsKIAkJCXN0cnVjdCBpZWVlODAyMTFfa2V5X2NvbmYgKmh3X2tl
eTsKLQkJCXUzMiBmbGFnczsKLQkJCWNvZGVsX3RpbWVfdCBlbnF1ZXVlX3RpbWU7CiAJCX0gY29u
dHJvbDsKIAkJc3RydWN0IHsKIAkJCXU2NCBjb29raWU7CkBAIC0xMDM4LDEyICsxMDQ3LDEzIEBA
IHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyB7CiAJCXN0cnVjdCB7CiAJCQlzdHJ1Y3QgaWVlZTgw
MjExX3R4X3JhdGUgcmF0ZXNbSUVFRTgwMjExX1RYX01BWF9SQVRFU107CiAJCQlzMzIgYWNrX3Np
Z25hbDsKKwkJCXUxNiB0eF90aW1lX2VzdDsgLyogc2hhcmVkIHdpdGggY29udHJvbCAqLworCQkJ
dTE2IHR4X3RpbWU7CiAJCQl1OCBhbXBkdV9hY2tfbGVuOwogCQkJdTggYW1wZHVfbGVuOwogCQkJ
dTggYW50ZW5uYTsKLQkJCXUxNiB0eF90aW1lOwogCQkJYm9vbCBpc192YWxpZF9hY2tfc2lnbmFs
OwotCQkJdm9pZCAqc3RhdHVzX2RyaXZlcl9kYXRhWzE5IC8gc2l6ZW9mKHZvaWQgKildOworCQkJ
dm9pZCAqc3RhdHVzX2RyaXZlcl9kYXRhWzE2IC8gc2l6ZW9mKHZvaWQgKildOwogCQl9IHN0YXR1
czsKIAkJc3RydWN0IHsKIAkJCXN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSBkcml2ZXJfcmF0ZXNb
CkBAIC0xMTI2LDYgKzExMzYsOCBAQCBpZWVlODAyMTFfdHhfaW5mb19jbGVhcl9zdGF0dXMoc3Ry
dWN0IGllZWU4MDIxMV90eF9pbmZvICppbmZvKQogCQkgICAgIG9mZnNldG9mKHN0cnVjdCBpZWVl
ODAyMTFfdHhfaW5mbywgY29udHJvbC5yYXRlcykpOwogCUJVSUxEX0JVR19PTihvZmZzZXRvZihz
dHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8sIHN0YXR1cy5yYXRlcykgIT0KIAkJICAgICBvZmZzZXRv
ZihzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8sIGRyaXZlcl9yYXRlcykpOworCUJVSUxEX0JVR19P
TihvZmZzZXRvZihzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8sIGNvbnRyb2wudHhfdGltZV9lc3Qp
ICE9CisJCSAgICAgb2Zmc2V0b2Yoc3RydWN0IGllZWU4MDIxMV90eF9pbmZvLCBzdGF0dXMudHhf
dGltZV9lc3QpKTsKIAlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGllZWU4MDIxMV90eF9p
bmZvLCBzdGF0dXMucmF0ZXMpICE9IDgpOwogCS8qIGNsZWFyIHRoZSByYXRlIGNvdW50cyAqLwog
CWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfVFhfTUFYX1JBVEVTOyBpKyspCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlz
dAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
