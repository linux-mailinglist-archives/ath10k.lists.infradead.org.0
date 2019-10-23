Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318BDE171E
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 11:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BhREk7d5KEHQCVMX9AoMkZDe8fUWshP96P56NmXSvvU=; b=mU4tzVwX9hhlht
	gMY2U59hzdrTQ6lUw5HY7RULVb1+d0JsaRlRfNM0lZ0NPEoX218xwIbWkXYjJoTLIqoU2UiKp73Bw
	RBhKM0RqC2vRW8zAp3O6szAIpSj0RwNx37Vkh1my9q6MLX6a8oiUkBR12fkXvjghIpNfMDEKBdiqp
	bq+O14RY5LSVQF8tR+KpQo8X4fcsRVMUXD3Bp7Xo6Awe7Epw7SJqEQZqRQwmhUvqJ+nPGomzvXOh2
	/QoH/w03Eg/7wwsCAuPsd67fZljbnk8rZV1Yb1OKyZJsgvAOvjAvuu7+hngvZKqFCalSE8CPlSoI8
	zzcxg29CnxOq73NyOiMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDQ5-0004sl-KF; Wed, 23 Oct 2019 09:59:09 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDQ2-0004qR-9A
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 09:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571824745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4pXgKJBnjUz11VWkqBfpqr53KxozwKIwmkHNMl/9+zw=;
 b=V0xt0jpx9FhIfygkJm27NI8mvFSP8OwcUHAN1L9MMpvoAl0vUo6cGPBOXwnFeC4GsWaaDC
 wlUOofm15TU+yeeX/5zBWgYFpGUlbe40VqBineXq1IYQCBk7440OLdqheiCjAieVWyHEVN
 re2a9+4aQZ5gjb7mPTylO7jtOwTWdm4=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-_K0p6OtvPCaMthsKDnprtQ-1; Wed, 23 Oct 2019 05:59:03 -0400
Received: by mail-lj1-f198.google.com with SMTP id x13so3489762ljj.18
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 02:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=3MdYMdnRKSV1nWFKnq3bdn9+gHDBMXYlX8Fslkg9MNs=;
 b=Ios3mcsw0VxQixNUqQt2VUHEG6Uv4E1ah53So+W+w6VsnFIZjJVPtVTKb8SxA9zYGI
 yjqga63X4v9BNI6Foo0VuQlrQmc/tAWugUqggDuDmV+AoG8PlIL+3bArVxiuqP/CQ75/
 fNH+2djd240xqHpZqz825WSaYilOnuC7Rz7v2zP+OOEle2nRn6mk/unYv2B1rhi2WRbA
 gWTZy6kZTdPvmYVulwS1AFGhoT7npGgk48D01yC4daNWySrgZNZlfSXGngTwdhrbpPQ1
 Zxvsu3Cy/jKvQIfI4FSTwHs5RHPh5bC2NQA7QInZvsHMw+Bgi6vt5XklALHtMWGtZft3
 CSOA==
X-Gm-Message-State: APjAAAU1mvzGxPgOEr6bQK6r02NfponnDw6d6nbCnNXM6zyABkupsq/3
 M8mMQLiJiRVwagiQBXoKJVDVTH6tAgpqQCHGEcrsZLj48eAf3hbuv0yJkRziS2KJs5JYLv4QQHN
 5ID5y6ebFAD+FZfzlZurw7Q==
X-Received: by 2002:a19:ad0c:: with SMTP id t12mr21890689lfc.149.1571824742220; 
 Wed, 23 Oct 2019 02:59:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsccYFxdpe6TJ9G5owaW/IC69cMu7dyocQsa5i4gjDIRydu1slZLTJ+S7n4J8F2QYqIktmXA==
X-Received: by 2002:a19:ad0c:: with SMTP id t12mr21890675lfc.149.1571824742010; 
 Wed, 23 Oct 2019 02:59:02 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id x5sm12560666lfg.71.2019.10.23.02.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 02:59:00 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9B33A1804B1; Wed, 23 Oct 2019 11:58:59 +0200 (CEST)
Subject: [PATCH v6 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 23 Oct 2019 11:58:59 +0200
Message-ID: <157182473951.150713.7978051149956899705.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: _K0p6OtvPCaMthsKDnprtQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_025906_398408_0C1F7200 
X-CRM114-Status: GOOD (  13.28  )
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

VGhpcyBzZXJpZXMgaXMgYSBmaXJzdCBhdHRlbXB0IGF0IHBvcnRpbmcgdGhlIEFpcnRpbWUgUXVl
dWUgTGltaXRzIGNvbmNlcHQgZnJvbQp0aGUgb3V0LW9mLXRyZWUgYXRoMTBrIGltcGxlbWVudGF0
aW9uWzBdIHRvIG1hYzgwMjExLiBUaGlzIHZlcnNpb24gdGFrZXMgS2FuJ3MKcGF0Y2ggdG8gZG8g
dGhlIHRocm90dGxpbmcgaW4gbWFjODAyMTEsIGFuZCByZXBsYWNlcyB0aGUgZHJpdmVyIEFQSSB3
aXRoIHRoZQptZWNoYW5pc20gZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiBteSBzZXJpZXMs
IHdoaWNoIGluc3RlYWQgY2FsY3VsYXRlZCB0aGUKZXhwZWN0ZWQgYWlydGltZSBhdCBkZXF1ZXVl
IHRpbWUgaW5zaWRlIG1hYzgwMjExLCBzdG9yaW5nIGl0IGluIHRoZSBTS0IgY2IKZmllbGQuCgpU
aGlzIHNlcmllcyBhbHNvIGltcG9ydHMgRmVsaXgnIGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBm
cm9tIG10NzYgaW50bwptYWM4MDIxMSwgYWRqdXN0aW5nIHRoZSBBUEkgc28gaXQgY2FuIGJlIHVz
ZWQgZnJvbSBUWCBkZXF1ZXVlLCBieSBleHRyYWN0aW5nIHRoZQpsYXRlc3QgVFggcmF0ZSBmcm9t
IHRoZSB0eF9zdGF0cyBzdHJ1Y3R1cmUga2VwdCBmb3IgZWFjaCBzdGF0aW9uLgoKQXMgYmVmb3Jl
LCBJJ3ZlIG9ubHkgY29tcGlsZSB0ZXN0ZWQgdGhpcyAobGFja2luZyB0aGUgcHJvcGVyIGhhcmR3
YXJlIHRvIGRvIG1vcmUKdGVzdGluZykuIFNvIEknbSBob3Bpbmcgc29tZW9uZSB3aXRoIGEgcHJv
cGVyIHRlc3Rpbmcgc2V0dXAgY2FuIHRha2UgdGhlIHdob2xlCnRoaW5nIGZvciBhIHNwaW4uLi4g
OikKClRoZSBzZXJpZXMgaXMgYWxzbyBhdmFpbGFibGUgaW4gbXkgZ2l0IHJlcG8gaGVyZToKaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9rZS9saW51eC5n
aXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wNgoKQ2hhbmdlbG9nOgoKdjY6CiAgLSBGaXggc3RhIGxv
b2t1cCBpbiBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuCiAgLSBNb3ZlIGNhbGwgdG8gaWVl
ZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkgdG8gYSBiaXQgbGF0ZXIgaW4KICAg
IF9faWVlZTgwMjExX3R4X3N0YXR1cygpIAp2NToKICAtIEFkZCBtaXNzaW5nIGV4cG9ydCBvZiBp
ZWVlODAyMTFfY2FsY19yeF9haXJ0aW1lKCkgYW5kIG1ha2UKICAgIGllZWU4MDIxMV9jYWxjX3R4
X2FpcnRpbWVfcmF0ZSgpIHN0YXRpYyAoa2J1aWxkYm90KS4KICAtIFVzZSBza2JfZ2V0X3F1ZXVl
X21hcHBpbmcoKSB0byBnZXQgdGhlIEFDIGZyb20gdGhlIHNrYi4KICAtIFRha2UgYmFzaWMgcmF0
ZSBjb25maWd1cmF0aW9uIGZvciB0aGUgQlNTIGludG8gYWNjb3VudCB3aGVuIGNhbGN1bGF0aW5n
CiAgICBtdWx0aWNhc3QgcmF0ZS4KdjQ6CiAgLSBGaXggY2FsY3VsYXRpb24gdGhhdCBjbGFtcHMg
dGhlIG1heGltdW0gYWlydGltZSB0byBmaXQgaW50byAxMCBiaXRzCiAgLSBJbmNvcnBvcmF0ZSBS
aWNoIEJyb3duJ3Mgbml0cyBmb3IgdGhlIGNvbW1pdCBtZXNzYWdlIGluIEthbidzIHBhdGNoCiAg
LSBBZGQgZmV3ZXIgbG9jYWwgdmFyaWFibGVzIHRvIGllZWU4MDIxMV90eF9kZXF1ZXVlKCkKdjM6
CiAgLSBNb3ZlIHRoZSB0eF90aW1lX2VzdCBmaWVsZCBzbyBpdCdzIHNoYXJlZCB3aXRoIGFja19m
cmFtZV9pZCwgYW5kIHVzZSB1bml0cwogICAgb2YgNHVzIGZvciB0aGUgdmFsdWUgc3RvcmVkIGlu
IGl0LgogIC0gTW92ZSB0aGUgYWRkaXRpb24gb2YgdGhlIEV0aGVybmV0IGhlYWRlciBzaXplIGlu
dG8gaWVlZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZSgpCnYyOgogIC0gSW50ZWdyYXRl
IEthbidzIGFwcHJvYWNoIHRvIGFpcnRpbWUgdGhyb3R0bGluZy4KICAtIEhvcGVmdWxseSBmaXgg
dGhlIGNiIHN0cnVjdCBhbGlnbm1lbnQgb24gYmlnLWVuZGlhbiBhcmNoaXRlY3R1cmVzLgoKLS0t
CgpLYW4gWWFuICgxKToKICAgICAgbWFjODAyMTE6IEltcGxlbWVudCBBaXJ0aW1lLWJhc2VkIFF1
ZXVlIExpbWl0IChBUUwpCgpUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gKDMpOgogICAgICBtYWM4
MDIxMTogU2hyaW5rIHRoZSBzaXplIG9mIGFja19mcmFtZV9pZCB0byBtYWtlIHJvb20gZm9yIHR4
X3RpbWVfZXN0CiAgICAgIG1hYzgwMjExOiBJbXBvcnQgYWlydGltZSBjYWxjdWxhdGlvbiBjb2Rl
IGZyb20gbXQ3NgogICAgICBtYWM4MDIxMTogVXNlIEFpcnRpbWUtYmFzZWQgUXVldWUgTGltaXRz
IChBUUwpIG9uIHBhY2tldCBkZXF1ZXVlCgoKIGluY2x1ZGUvbmV0L2NmZzgwMjExLmggICAgIHwg
ICAgNyArCiBpbmNsdWRlL25ldC9tYWM4MDIxMS5oICAgICB8ICAgNDUgKysrKysKIG5ldC9tYWM4
MDIxMS9NYWtlZmlsZSAgICAgIHwgICAgMyAKIG5ldC9tYWM4MDIxMS9haXJ0aW1lLmMgICAgIHwg
IDM5MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogbmV0L21h
YzgwMjExL2NmZy5jICAgICAgICAgfCAgICAyIAogbmV0L21hYzgwMjExL2RlYnVnZnMuYyAgICAg
fCAgIDc4ICsrKysrKysrKwogbmV0L21hYzgwMjExL2RlYnVnZnNfc3RhLmMgfCAgIDQzICsrKyst
CiBuZXQvbWFjODAyMTEvaWVlZTgwMjExX2kuaCB8ICAgIDggKwogbmV0L21hYzgwMjExL21haW4u
YyAgICAgICAgfCAgICA5ICsKIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5jICAgIHwgICAzMiArKysr
CiBuZXQvbWFjODAyMTEvc3RhX2luZm8uaCAgICB8ICAgIDggKwogbmV0L21hYzgwMjExL3N0YXR1
cy5jICAgICAgfCAgIDMzICsrKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgICA2OSAr
KysrKysrLQogMTMgZmlsZXMgY2hhbmdlZCwgNzA5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG5ldC9tYWM4MDIxMS9haXJ0aW1lLmMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBs
aXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
