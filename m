Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCF5E0504
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 15:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UGRS+bA3TZD4e6Coov+BsK3Fd05futRYGG6RY6SXKsw=; b=pJRGxr2nO8qg9T
	r9osAv/cAo2T/hBqMNDJKo2REgFqoArmZCdKkmquDOaxJVsPHgkHa5EsR68yWU2pPQqmxphhyWqOe
	wf0uYNggupPhUgYBOWM5l2rZ5qIbySXGceQXd9SUVahv45yHahhIRCvoWZsxAQiculuZVrWg1IIzW
	z7/q9R1LETyzipOiZkuKFXLV+upXAbsxniLBF6Ol72BIQ40k3VwzBN6uG+5QIt0yfKb6i6Sj5KczL
	RaHxEGoNybbM1M/R68Me2I0z6YxMWCShN8ruy3URAIJ4KiOoGgPu/5knh903DFW7yrCrA+OR6MW0T
	HZHyYR7O72CHIXcCMgcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuFL-00007l-SD; Tue, 22 Oct 2019 13:30:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuEx-0008DI-3i
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 13:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571751020;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IrDLzKu3QUrojH/OETXB4MdYg9Xjq+HLcPnCemzkA6Q=;
 b=PU7gvp+WdlHQE19OVtZQ8Wo4KX0nM5UyrIWJ01OUqxX14jXbDlGdyqvVKwNVMPSCob3Ix9
 GdmBIixz/vo62UwrI9yODY4eLV0F0wMCOdQ5RPJ78iiKKP3SchQwIkldDEr7iXUmY7RXe5
 dp7y83rNs25zj5TNxs0buMilXJSLung=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-ioUBvXHQNdeM6hclQPXsRw-1; Tue, 22 Oct 2019 09:30:18 -0400
Received: by mail-wm1-f71.google.com with SMTP id z24so6238812wmk.8
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 06:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=HF+1TVAQSxCzMriSPvPocN7qek9sM/0jfjtpbpavxbM=;
 b=UQaX/za040L1l8MGNpbhN9lETXU5O3eE16CleE3eVXsJIkDm27Rya0mfUp8odALVLX
 1czwmSC3mBWMkMU11K8ZYAswD1LW8e05l6OXFjTCrmj5qJ/1antKRZ5V1UKDGS0gVUjt
 p4qUYcFd+Kxf11bUKzUb3LfSljC3/JHDvswQ+bbp17OyASuDqjGUPUSRsnUKNlWPcR/k
 PhUicP6Q2uiMPdGTDxjAH2XmZCww7RUdn/ngrrIt8SNVaYW1RA27ZKDtIiDnf0OjCy8Z
 z2e5It00+4gYd8+DKoojc2SCMsXRwB3y5ZG2Cjy+lNZBQFwXYIOGmmnMrJ47jV/gQ7pY
 YU+A==
X-Gm-Message-State: APjAAAWQx0VO2psUwWyZNOiV41ILmqfeMM++Pd/glMIOR2gDXohOrjSf
 pJktX4phRRsjyp7JqMZKHu7gpu1NIOkt65/U+LiVI3ljCcrk80c4qIqe4urcg9Gi3b3y9D00p1N
 hJH9k8jCeIQVP+qpIFdXEJw==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr2889382wmf.37.1571751017058; 
 Tue, 22 Oct 2019 06:30:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoGxGUot97MZlqwfPaLTsIDEjUXh20FBPZYwIEwIdrmUKHsNxhK9PMFDu5LGyPVlS9+2/g8A==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr2889362wmf.37.1571751016790; 
 Tue, 22 Oct 2019 06:30:16 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id u11sm16355257wmd.32.2019.10.22.06.30.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 06:30:15 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 49BFD1804B1; Tue, 22 Oct 2019 15:30:15 +0200 (CEST)
Subject: [PATCH v5 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 22 Oct 2019 15:30:15 +0200
Message-ID: <157175101518.104114.6722791270722911023.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: ioUBvXHQNdeM6hclQPXsRw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063023_314137_94AA4932 
X-CRM114-Status: GOOD (  12.82  )
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
aXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wMgoKQ2hhbmdlbG9nOgoKdjU6CiAgLSBBZGQgbWlzc2lu
ZyBleHBvcnQgb2YgaWVlZTgwMjExX2NhbGNfcnhfYWlydGltZSgpIGFuZCBtYWtlCiAgICBpZWVl
ODAyMTFfY2FsY190eF9haXJ0aW1lX3JhdGUoKSBzdGF0aWMgKGtidWlsZGJvdCkuCiAgLSBVc2Ug
c2tiX2dldF9xdWV1ZV9tYXBwaW5nKCkgdG8gZ2V0IHRoZSBBQyBmcm9tIHRoZSBza2IuCiAgLSBU
YWtlIGJhc2ljIHJhdGUgY29uZmlndXJhdGlvbiBmb3IgdGhlIEJTUyBpbnRvIGFjY291bnQgd2hl
biBjYWxjdWxhdGluZwogICAgbXVsdGljYXN0IHJhdGUuCnY0OgogIC0gRml4IGNhbGN1bGF0aW9u
IHRoYXQgY2xhbXBzIHRoZSBtYXhpbXVtIGFpcnRpbWUgdG8gZml0IGludG8gMTAgYml0cwogIC0g
SW5jb3Jwb3JhdGUgUmljaCBCcm93bidzIG5pdHMgZm9yIHRoZSBjb21taXQgbWVzc2FnZSBpbiBL
YW4ncyBwYXRjaAogIC0gQWRkIGZld2VyIGxvY2FsIHZhcmlhYmxlcyB0byBpZWVlODAyMTFfdHhf
ZGVxdWV1ZSgpCnYzOgogIC0gTW92ZSB0aGUgdHhfdGltZV9lc3QgZmllbGQgc28gaXQncyBzaGFy
ZWQgd2l0aCBhY2tfZnJhbWVfaWQsIGFuZCB1c2UgdW5pdHMKICAgIG9mIDR1cyBmb3IgdGhlIHZh
bHVlIHN0b3JlZCBpbiBpdC4KICAtIE1vdmUgdGhlIGFkZGl0aW9uIG9mIHRoZSBFdGhlcm5ldCBo
ZWFkZXIgc2l6ZSBpbnRvIGllZWU4MDIxMV9jYWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoKQp2MjoK
ICAtIEludGVncmF0ZSBLYW4ncyBhcHByb2FjaCB0byBhaXJ0aW1lIHRocm90dGxpbmcuCiAgLSBI
b3BlZnVsbHkgZml4IHRoZSBjYiBzdHJ1Y3QgYWxpZ25tZW50IG9uIGJpZy1lbmRpYW4gYXJjaGl0
ZWN0dXJlcy4KCi0tLQoKS2FuIFlhbiAoMSk6CiAgICAgIG1hYzgwMjExOiBJbXBsZW1lbnQgQWly
dGltZS1iYXNlZCBRdWV1ZSBMaW1pdCAoQVFMKQoKVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuICgz
KToKICAgICAgbWFjODAyMTE6IFNocmluayB0aGUgc2l6ZSBvZiBhY2tfZnJhbWVfaWQgdG8gbWFr
ZSByb29tIGZvciB0eF90aW1lX2VzdAogICAgICBtYWM4MDIxMTogSW1wb3J0IGFpcnRpbWUgY2Fs
Y3VsYXRpb24gY29kZSBmcm9tIG10NzYKICAgICAgbWFjODAyMTE6IFVzZSBBaXJ0aW1lLWJhc2Vk
IFF1ZXVlIExpbWl0cyAoQVFMKSBvbiBwYWNrZXQgZGVxdWV1ZQoKCiBpbmNsdWRlL25ldC9jZmc4
MDIxMS5oICAgICB8ICAgIDcgKwogaW5jbHVkZS9uZXQvbWFjODAyMTEuaCAgICAgfCAgIDQ1ICsr
KysrCiBuZXQvbWFjODAyMTEvTWFrZWZpbGUgICAgICB8ICAgIDMgCiBuZXQvbWFjODAyMTEvYWly
dGltZS5jICAgICB8ICAzOTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKIG5ldC9tYWM4MDIxMS9jZmcuYyAgICAgICAgIHwgICAgMiAKIG5ldC9tYWM4MDIxMS9k
ZWJ1Z2ZzLmMgICAgIHwgICA3OCArKysrKysrKysKIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5j
IHwgICA0MyArKysrLQogbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmggfCAgICA4ICsKIG5ldC9t
YWM4MDIxMS9tYWluLmMgICAgICAgIHwgICAgOSArCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uYyAg
ICB8ICAgMzIgKysrKwogbmV0L21hYzgwMjExL3N0YV9pbmZvLmggICAgfCAgICA4ICsKIG5ldC9t
YWM4MDIxMS9zdGF0dXMuYyAgICAgIHwgICAyOCArKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICAg
ICAgIHwgICA2OSArKysrKysrLQogMTMgZmlsZXMgY2hhbmdlZCwgNzA0IGluc2VydGlvbnMoKyks
IDE4IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG5ldC9tYWM4MDIxMS9haXJ0aW1l
LmMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgx
MGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
