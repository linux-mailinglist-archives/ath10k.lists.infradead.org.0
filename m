Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C3DE0519
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 15:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWO4LK9Lon9ZW4nMMPfDvnX+tYrnmOsQ7bYuUZwlYTI=; b=UeGMeyMweqiQCe
	s0zrHKGxA3w8uWsBaPx7n5IGSkCn8oo39VLaNAM9Te+I3AE2x26MfxR+oBSlH4G+xkrsWbTfVXSZB
	HWquS8Qt86uIDvTQXPfJ5F+20ZfJW0RZkvm63Kpwdhd0ykGC89uwzLuiyXGN6v7qgWvSmuvyhgr+7
	DZxtqyBDuWykltF1LZRK6vdPoLLeuZP4viRFrdUtgRVoStzdRdCW2zo2EtOmdDS9DJOlwDfr82z4Q
	296A1RvOf83ilKZmVJlVfUJVs69GrOUFGz0k5hOfqMhmTiMzW2YS36iN3byg6kMAkVCd87NmgKjfG
	Mo6LNUA8WpQDaPDXZrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuG8-0000qj-NU; Tue, 22 Oct 2019 13:31:36 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuF2-0008Is-Ru
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 13:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571751026;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bfi5GeAeASQB1mQGyA998jFPTSgjtLqljftKsgNmsmA=;
 b=EZgW7JPW3vHrOJFGv92GV/M1aadT4v3FZpOukYNX4OIYHph8pudTk3HHWDeVRbpSET1S2j
 2LJc9lMMxMnSHqIlpyhCVd4SPevO1er4Tfj0Dz7/pWrgRQskWs0pKOnt5XF3t869Sct5UB
 H6pAreDT0vjiRL8eZq1vXVtQ/ne2y1s=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-gtYdTvv9Ny6QsEmb2nHAZg-1; Tue, 22 Oct 2019 09:30:22 -0400
Received: by mail-wr1-f70.google.com with SMTP id v8so8275589wrt.16
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 06:30:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=F3IUzbWrPuZHLVvq2XMf85ecX3kHWPzPpSEeKPTtYeU=;
 b=JM5gA4OQZ/fb7xrnTd9ZkMjcek7L7UT7pUY8Ssnjm+ZIpB/eAVUB/tKyqS4WqVCnqu
 cg7LjQjUxfoQcm05hHzfSIg5mbu7umktYG+sRR2AfVoDiiNCxKsqHdw7Axio39m75fpd
 pmG9N16RLq7OZ55ZTJoHMbJyU9tF+NC44Gj6wd+FiUk8s2UzanulRzfp1KbWI2BZzsc6
 tmdqshmavkfjPsFImdDJSUu1YgF8ct8ZzAyCE6pbRxmCLvWMjep/6wEUVH3R8QubNPQC
 h55RBxfLDWyPIdG77XtiAdkdzkDxTWIPkfkn80HiGzHRNf5BSfyoUqbv6rUzJ0uxz9HB
 Ca/Q==
X-Gm-Message-State: APjAAAU31My8f1BGfNYOAdsAoZmboPdWGKzfRpIcJLBsCYWq8dm429Qb
 /dhONZhcfuqPZL7lfRrAUj7eBIipFDNvSyoDquxkCpC+N0cZy8vJEv5o5i/+MQppEeVw53lD4Bp
 rs9Cep+OAxThDac4uQ0YWkw==
X-Received: by 2002:a1c:7219:: with SMTP id n25mr2894076wmc.23.1571751021128; 
 Tue, 22 Oct 2019 06:30:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziX4ekm8/1EpyD3Im3QUBAKWW7u9wMWWw/uuSmmFI0HTkPrNzx3so3jUSjzVYxgaQs9oaw8Q==
X-Received: by 2002:a1c:7219:: with SMTP id n25mr2894066wmc.23.1571751020898; 
 Tue, 22 Oct 2019 06:30:20 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a17sm13394388wmb.8.2019.10.22.06.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 06:30:20 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9D5FF1804B6; Tue, 22 Oct 2019 15:30:19 +0200 (CEST)
Subject: [PATCH v5 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 22 Oct 2019 15:30:19 +0200
Message-ID: <157175101956.104114.5352455639882457638.stgit@toke.dk>
In-Reply-To: <157175101518.104114.6722791270722911023.stgit@toke.dk>
References: <157175101518.104114.6722791270722911023.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: gtYdTvv9Ny6QsEmb2nHAZg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063029_024922_072CD42F 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
LS0KIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyB8ICAgMjggKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwogbmV0L21hYzgwMjExL3R4LmMgICAgIHwgICAyMSArKysrKysrKysrKysrKysrKysrKysK
IDIgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL25ldC9tYWM4
MDIxMS9zdGF0dXMuYyBiL25ldC9tYWM4MDIxMS9zdGF0dXMuYwppbmRleCBhYjhiYTU4MzVjYTAu
LmYxMjU5ODRkNWJlYiAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YXR1cy5jCisrKyBiL25l
dC9tYWM4MDIxMS9zdGF0dXMuYwpAQCAtNjc2LDYgKzY3NiwyMyBAQCBzdGF0aWMgdm9pZCBpZWVl
ODAyMTFfcmVwb3J0X3VzZWRfc2tiKHN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsLAogCWlm
IChkcm9wcGVkKQogCQlhY2tlZCA9IGZhbHNlOwogCisJaWYgKGluZm8tPnR4X3RpbWVfZXN0KSB7
CisJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOworCQlzdHJ1Y3Qgc3RhX2lu
Zm8gKnN0YSA9IE5VTEw7CisKKwkJcmN1X3JlYWRfbG9jaygpOworCisJCXNkYXRhID0gaWVlZTgw
MjExX3NkYXRhX2Zyb21fc2tiKGxvY2FsLCBza2IpOworCQlpZiAoc2RhdGEpCisJCQlzdGEgPSBz
dGFfaW5mb19nZXRfYnNzKHNkYXRhLCBza2JfbWFjX2hlYWRlcihza2IpKTsKKworCQlpZWVlODAy
MTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHN0YSwKKwkJCQkJCSAgICAgc2ti
X2dldF9xdWV1ZV9tYXBwaW5nKHNrYiksCisJCQkJCQkgICAgIGluZm8tPnR4X3RpbWVfZXN0IDw8
IDIsCisJCQkJCQkgICAgIHRydWUpOworCQlyY3VfcmVhZF91bmxvY2soKTsKKwl9CisKIAlpZiAo
aW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfSU5URkxfTUxNRV9DT05OX1RYKSB7CiAJCXN0cnVj
dCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOwogCkBAIC05MzAsNiArOTQ3LDE3IEBAIHN0
YXRpYyB2b2lkIF9faWVlZTgwMjExX3R4X3N0YXR1cyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywK
IAkJCXRpZCA9IHFjWzBdICYgMHhmOwogCQl9CiAKKwkJaWYgKGluZm8tPnR4X3RpbWVfZXN0KSB7
CisJCQkvKiBEbyB0aGlzIGhlcmUgdG8gYXZvaWQgdGhlIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhl
IHN0YQorCQkJICogaW4gaWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpLgorCQkJICovCisJCQlp
ZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHN0YSwKKwkJCQkJCQkg
ICAgIHNrYl9nZXRfcXVldWVfbWFwcGluZyhza2IpLAorCQkJCQkJCSAgICAgaW5mby0+dHhfdGlt
ZV9lc3QgPDwgMiwKKwkJCQkJCQkgICAgIHRydWUpOworCQkJaW5mby0+dHhfdGltZV9lc3QgPSAw
OworCQl9CisKIAkJaWYgKCFhY2tlZCAmJiBpZWVlODAyMTFfaXNfYmFja19yZXEoZmMpKSB7CiAJ
CQl1MTYgY29udHJvbDsKIApkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL3R4LmMgYi9uZXQvbWFj
ODAyMTEvdHguYwppbmRleCAxMjY1M2Q4NzNiOGMuLjE0MDUzMDRkODk5NCAxMDA2NDQKLS0tIGEv
bmV0L21hYzgwMjExL3R4LmMKKysrIGIvbmV0L21hYzgwMjExL3R4LmMKQEAgLTM1NDIsNiArMzU0
Miw5IEBAIHN0cnVjdCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1Y3QgaWVlZTgw
MjExX2h3ICpodywKIAogCVdBUk5fT05fT05DRShzb2Z0aXJxX2NvdW50KCkgPT0gMCk7CiAKKwlp
ZiAoIWllZWU4MDIxMV90eHFfYWlydGltZV9jaGVjayhodywgdHhxKSkKKwkJcmV0dXJuIE5VTEw7
CisKIGJlZ2luOgogCXNwaW5fbG9ja19iaCgmZnEtPmxvY2spOwogCkBAIC0zNjUyLDYgKzM2NTUs
MjQgQEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LAogCX0KIAogCUlFRUU4MDIxMV9TS0JfQ0Ioc2tiKS0+Y29udHJvbC52aWYgPSB2
aWY7CisKKwlpZiAobG9jYWwtPmFpcnRpbWVfZmxhZ3MgJiBBSVJUSU1FX1VTRV9BUUwpIHsKKwkJ
dTMyIGFpcnRpbWU7CisKKwkJYWlydGltZSA9IGllZWU4MDIxMV9jYWxjX2V4cGVjdGVkX3R4X2Fp
cnRpbWUoaHcsIHZpZiwgdHhxLT5zdGEsCisJCQkJCQkJICAgICBza2ItPmxlbik7CisJCWlmIChh
aXJ0aW1lKSB7CisJCQkvKiBXZSBvbmx5IGhhdmUgMTAgYml0cyBpbiB0eF90aW1lX2VzdCwgc28g
c3RvcmUgYWlydGltZQorCQkJICogaW4gaW5jcmVtZW50cyBvZiA0dXMgYW5kIGNsYW1wIHRoZSBt
YXhpbXVtIHRvIDIqKjEyLTEKKwkJCSAqLworCQkJYWlydGltZSA9IG1pbl90KHUzMiwgYWlydGlt
ZSwgNDA5NSkgJiB+M1U7CisJCQlpbmZvLT50eF90aW1lX2VzdCA9IGFpcnRpbWUgPj4gMjsKKwkJ
CWllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWlydGltZShsb2NhbCwgdHguc3RhLAorCQkJ
CQkJCSAgICAgdHhxLT5hYywgYWlydGltZSwKKwkJCQkJCQkgICAgIGZhbHNlKTsKKwkJfQorCX0K
KwogCXJldHVybiBza2I7CiAKIG91dDoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBr
Cg==
