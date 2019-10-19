Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF0DD894
	for <lists+ath10k@lfdr.de>; Sat, 19 Oct 2019 13:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3x7gy9kWUXs+L+S+zS7oTmp8T4KQ5MqBQ/C588xv2I8=; b=rkA/7+3idD8jay
	OO/R5Q7CpTBOKnyun6feQsU30Zc1m6QZEaV3lkS+SisOoESN1+Du6RZU9B8jXxWX0Vhq1rXPbScPr
	yzIxtNi5/fg+ljcKrN/DdQ2oqMmIzGj9UZO+zOXEf5aia+lBziBdo347cAyh+cbWoDUePF2mXhDtb
	3iR2bPDpt6VUbmsk5Gk05pDGD/EvVNzf6at16sseHKoS5ARj9SENRwD089hBsbZxCDOy8X0zZZMuM
	KSfMZ1nG89MjREueho/UE7QEfXzydFEY59E0ilqW7XpPNOmrfF8tcHsO8Ks/v4fxQUjnHOi2DuJwq
	jBfwul0lY98mM/8vBRww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLn31-0003u6-8n; Sat, 19 Oct 2019 11:37:27 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLn2w-0003sy-Ux
 for ath10k@lists.infradead.org; Sat, 19 Oct 2019 11:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571485041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=muExcf0yCS6wTiOGyHLKDSUQbgUBrcGix+0WiNdqPFM=;
 b=fGW28cXeYXtxne8RKNOjSO6Ds4++egU+1ACFGN92+ssbxVmP75pf4MNJRmi0Z5iTBqjKSw
 OSwZKFAn2GKr0dIQGwollXHu8RxY4O0dc0Rrqtk7eaCt44MDqTNXdAxh/xE5Rz0TFhNY3c
 X2phSXgzMihIkEhnmEmNJi4eE6TAzVI=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-Ha3JI0bLMNKIy6GK46-rnA-1; Sat, 19 Oct 2019 07:37:17 -0400
Received: by mail-lf1-f71.google.com with SMTP id o2so600797lfb.12
 for <ath10k@lists.infradead.org>; Sat, 19 Oct 2019 04:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=qR0qPuNr+iUroIduE98U31BmbYV0VOc1XPfPgGkQcq8=;
 b=liSPGuLbEIDqBPrTuqgcnLnPmL6VvyqhrB2RvYLBQR1DjObYeAmZpjcsYiZtYEM1jM
 YFKDRNLsw55ny0J0zbJE8Id09hapI2UKYFiuDpNl3Tmxbum/GsJPfUnKwu/KMhOgZzw4
 O0jkaSYL7nDGTH+y6xGE+UtDmO5iA4vO/h0P4F+U3c4HRBjt8t6VfYlIOUfP1rHMAb+C
 Ol5RhUySP0GVeIXj+Woe5rViBlGRk8kWDiAz5LHGEtn3B1zDJM5zpKYCY+rIRR4xgHde
 hYR0oUfUOCw/frE0MpptyzNA5WDgGzFhhllERUEmp/NjkcRaWX1ntPmsBVMG4QrkOBU6
 PGYA==
X-Gm-Message-State: APjAAAV/kbQ3RgYbxCwpodD0Mt5n7t7zxd32WswmtyZykJr25lOtmt5j
 z1Vznc5e/1DXktsi6MDSg6sst5eY9r6UbO6FFamBoRqFTXQZ3GM/DwOxqNRqr95eWfCPijmnGnB
 EnN0Uls77a5N00zxh0nGE/g==
X-Received: by 2002:a19:ad4c:: with SMTP id s12mr9451090lfd.49.1571485035935; 
 Sat, 19 Oct 2019 04:37:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgYpL1rydi5XQWs/yj8s7rfZ6wHgMQtlj+W+mhe/lrCRacyZBa1z3mpBfKXWwigRyz+9hsrA==
X-Received: by 2002:a19:ad4c:: with SMTP id s12mr9451070lfd.49.1571485035712; 
 Sat, 19 Oct 2019 04:37:15 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id 3sm6388408ljs.20.2019.10.19.04.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 04:37:14 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 42A901804C8; Sat, 19 Oct 2019 13:37:14 +0200 (CEST)
Subject: [PATCH v4 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 19 Oct 2019 13:37:14 +0200
Message-ID: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: Ha3JI0bLMNKIy6GK46-rnA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_043723_082729_0F265328 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
aXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wMgoKQ2hhbmdlbG9nOgoKdjQ6CiAgLSBGaXggY2FsY3Vs
YXRpb24gdGhhdCBjbGFtcHMgdGhlIG1heGltdW0gYWlydGltZSB0byBmaXQgaW50byAxMCBiaXRz
CiAgLSBJbmNvcnBvcmF0ZSBSaWNoIEJyb3duJ3Mgbml0cyBmb3IgdGhlIGNvbW1pdCBtZXNzYWdl
IGluIEthbidzIHBhdGNoCiAgLSBBZGQgZmV3ZXIgbG9jYWwgdmFyaWFibGVzIHRvIGllZWU4MDIx
MV90eF9kZXF1ZXVlKCkKdjM6CiAgLSBNb3ZlIHRoZSB0eF90aW1lX2VzdCBmaWVsZCBzbyBpdCdz
IHNoYXJlZCB3aXRoIGFja19mcmFtZV9pZCwgYW5kIHVzZSB1bml0cwogICAgb2YgNHVzIGZvciB0
aGUgdmFsdWUgc3RvcmVkIGluIGl0LgogIC0gTW92ZSB0aGUgYWRkaXRpb24gb2YgdGhlIEV0aGVy
bmV0IGhlYWRlciBzaXplIGludG8gaWVlZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZSgp
CnYyOgogIC0gSW50ZWdyYXRlIEthbidzIGFwcHJvYWNoIHRvIGFpcnRpbWUgdGhyb3R0bGluZy4K
ICAtIEhvcGVmdWxseSBmaXggdGhlIGNiIHN0cnVjdCBhbGlnbm1lbnQgb24gYmlnLWVuZGlhbiBh
cmNoaXRlY3R1cmVzLgoKLS0tCgpLYW4gWWFuICgxKToKICAgICAgbWFjODAyMTE6IEltcGxlbWVu
dCBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExpbWl0IChBUUwpCgpUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gKDMpOgogICAgICBtYWM4MDIxMTogU2hyaW5rIHRoZSBzaXplIG9mIGFja19mcmFtZV9pZCB0
byBtYWtlIHJvb20gZm9yIHR4X3RpbWVfZXN0CiAgICAgIG1hYzgwMjExOiBJbXBvcnQgYWlydGlt
ZSBjYWxjdWxhdGlvbiBjb2RlIGZyb20gbXQ3NgogICAgICBtYWM4MDIxMTogVXNlIEFpcnRpbWUt
YmFzZWQgUXVldWUgTGltaXRzIChBUUwpIG9uIHBhY2tldCBkZXF1ZXVlCgoKIGluY2x1ZGUvbmV0
L2NmZzgwMjExLmggICAgIHwgICAgNyArCiBpbmNsdWRlL25ldC9tYWM4MDIxMS5oICAgICB8ICAg
MzAgKysrLQogbmV0L21hYzgwMjExL01ha2VmaWxlICAgICAgfCAgICAzIAogbmV0L21hYzgwMjEx
L2FpcnRpbWUuYyAgICAgfCAgMzc3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiBuZXQvbWFjODAyMTEvY2ZnLmMgICAgICAgICB8ICAgIDIgCiBuZXQvbWFjODAy
MTEvZGVidWdmcy5jICAgICB8ICAgNzggKysrKysrKysrCiBuZXQvbWFjODAyMTEvZGVidWdmc19z
dGEuYyB8ICAgNDMgKysrKy0KIG5ldC9tYWM4MDIxMS9pZWVlODAyMTFfaS5oIHwgICAgOCArCiBu
ZXQvbWFjODAyMTEvbWFpbi5jICAgICAgICB8ICAgIDkgKwogbmV0L21hYzgwMjExL3N0YV9pbmZv
LmMgICAgfCAgIDMyICsrKysKIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oICAgIHwgICAgOCArCiBu
ZXQvbWFjODAyMTEvc3RhdHVzLmMgICAgICB8ICAgMzggKysrKwogbmV0L21hYzgwMjExL3R4LmMg
ICAgICAgICAgfCAgIDY5ICsrKysrKysrCiAxMyBmaWxlcyBjaGFuZ2VkLCA2ODYgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgbmV0L21hYzgwMjExL2Fp
cnRpbWUuYwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
