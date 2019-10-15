Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC12D7D4A
	for <lists+ath10k@lfdr.de>; Tue, 15 Oct 2019 19:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wDdIlc1TnWWQPsSeqLvC4uc6i6SFcpOzht7q8WI/J8w=; b=mIL6YK745/2fz/
	gdQsV3lgl57c1Uy4nEbFxGRfVEfxQZRnvIJCooOxjA+d0B/jcFwx3SEC/+lHs7H0BrOkECQCFf7Ze
	OpmMomncUH6Sc5rWwS4zFNoR3veNBYnSP1ien9oNcQ8fchQsTav6pk0yhLrLAmdp8zTORc38UKc/0
	22TvDgh0Yz2wV/Ddq7LngXlXhq2ZswAee5mq7avKgAMTfJwvslBD+WfP5cf1TZAQjzTmDHjLmMbsY
	hFGvmwEdhRxfGRT/cyjJgy+JxpSDy9n6uJhy88/WdMHZOk59cLADw0Qp8unVsjlBra2wRD9ajW5XQ
	EZCj0Y/vKvqYFCGoAXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQTW-0006zT-9W; Tue, 15 Oct 2019 17:19:10 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQTR-0006yN-Ad
 for ath10k@lists.infradead.org; Tue, 15 Oct 2019 17:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571159943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=aiICBq+klD7gts5SC7Lw3KPTDcrLbo2thywzxGgTe5U=;
 b=a8ygi3Z5h1JihYNzjpsxf73M0d5eNV0TVdqPxenhfRFl5uO3iAUgymhOCQS/BFtrgxvPCN
 ZPmFPazC/Luiio3y0xHMXjiEB6jzXYclNE5Kax7J34PtpV5Xety5ONe+7+5nRQDvbeQjWw
 zvSDU7ZLPFKAapPSfP5t6yRUvUa6f2I=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-3Q168Y-SNr6yUlJJR2tqtA-1; Tue, 15 Oct 2019 13:19:01 -0400
Received: by mail-lj1-f198.google.com with SMTP id e3so4044568ljj.16
 for <ath10k@lists.infradead.org>; Tue, 15 Oct 2019 10:19:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=Y9ZicZO6b29gZwYmEAgc0Vga9o23GaUpVran/Wv7Gas=;
 b=LXutZqWF55LX3JYxR0leu6ddwbflHcygW2oK7jIHIqrwv7fsPoOyLG/znCuxFbjcWd
 S9v1XFqPLYnmQ38/EIR/I0zssGrn9PBZJIP/kMbGH2N/hrgKakqYsr5Io1dY2mK4+/ii
 sf2uqDKJ9UTokmFijk4CeyMOOfEfWKUUGpAINucp1SdXPRDwx3K6h3XiRm9rxbGX9k3A
 JxYmeGPiYQRz5VHvd0BuBcmT4UzYLafnUq0hVe/JGy6OContLsRdSEVdNDGiZsPZRbgX
 u6MSmlSgWmlykw5JcX1naijm4bsd3raK/Sat+TdriD1Ie3289tSVSbX62VfQESMZQQpd
 QS+A==
X-Gm-Message-State: APjAAAWfcSoqAFVZqtMOgL3377MMKcxy7D2icaDbc5tHKHqrFRpdutrZ
 XcM2HjCUGEqw8BV4/rRSneD4r514am/wlndi+f/9iSQJhFZk6SVtvtD6ukBwetESJ/pN/whxgMj
 CRzXOV+EllOZJo7/ZvlCYdA==
X-Received: by 2002:ac2:46d9:: with SMTP id p25mr9407711lfo.174.1571159939659; 
 Tue, 15 Oct 2019 10:18:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4GGvaQ++TIAujXuUFP1I9PfblNVucnrgy1g/FJr66h0DYi2to2kGkxbuh0iD28epJYmQE3Q==
X-Received: by 2002:ac2:46d9:: with SMTP id p25mr9407696lfo.174.1571159939436; 
 Tue, 15 Oct 2019 10:18:59 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id v1sm5331272lfa.87.2019.10.15.10.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:18:58 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A2AF31803A8; Tue, 15 Oct 2019 19:18:57 +0200 (CEST)
Subject: [PATCH v2 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 15 Oct 2019 19:18:57 +0200
Message-ID: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: 3Q168Y-SNr6yUlJJR2tqtA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101905_843480_5C96F7FB 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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
aXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wMgoKQ2hhbmdlbG9nOgoKdjI6CiAgLSBJbnRlZ3JhdGUg
S2FuJ3MgYXBwcm9hY2ggdG8gYWlydGltZSB0aHJvdHRsaW5nLgogIC0gSG9wZWZ1bGx5IGZpeCB0
aGUgY2Igc3RydWN0IGFsaWdubWVudCBvbiBiaWctZW5kaWFuIGFyY2hpdGVjdHVyZXMuCgotLS0K
CkthbiBZYW4gKDEpOgogICAgICBtYWM4MDIxMTogSW1wbGVtZW50IEFpcnRpbWUtYmFzZWQgUXVl
dWUgTGltaXQgKEFRTCkKClRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiAoMyk6CiAgICAgIG1hYzgw
MjExOiBSZWFycmFuZ2UgaWVlZTgwMjExX3R4X2luZm8gdG8gbWFrZSByb29tIGZvciB0eF90aW1l
X2VzdAogICAgICBtYWM4MDIxMTogSW1wb3J0IGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBmcm9t
IG10NzYKICAgICAgbWFjODAyMTE6IFVzZSBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExpbWl0cyAoQVFM
KSBvbiBwYWNrZXQgZGVxdWV1ZQoKCiBpbmNsdWRlL25ldC9jZmc4MDIxMS5oICAgICB8ICAgIDcg
KwogaW5jbHVkZS9uZXQvbWFjODAyMTEuaCAgICAgfCAgIDUyICsrKysrLQogbmV0L21hYzgwMjEx
L01ha2VmaWxlICAgICAgfCAgICAzIAogbmV0L21hYzgwMjExL2FpcnRpbWUuYyAgICAgfCAgMzc1
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBuZXQvbWFjODAy
MTEvZGVidWdmcy5jICAgICB8ICAgNzggKysrKysrKysrCiBuZXQvbWFjODAyMTEvZGVidWdmc19z
dGEuYyB8ICAgNDMgKysrKy0KIG5ldC9tYWM4MDIxMS9pZWVlODAyMTFfaS5oIHwgICAgOCArCiBu
ZXQvbWFjODAyMTEvbWFpbi5jICAgICAgICB8ICAgIDkgKwogbmV0L21hYzgwMjExL3N0YV9pbmZv
LmMgICAgfCAgIDMyICsrKysKIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oICAgIHwgICAgOCArCiBu
ZXQvbWFjODAyMTEvc3RhdHVzLmMgICAgICB8ICAgMzggKysrKwogbmV0L21hYzgwMjExL3R4LmMg
ICAgICAgICAgfCAgIDYyICsrKysrKysKIDEyIGZpbGVzIGNoYW5nZWQsIDY5MyBpbnNlcnRpb25z
KCspLCAyMiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBuZXQvbWFjODAyMTEvYWly
dGltZS5jCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
