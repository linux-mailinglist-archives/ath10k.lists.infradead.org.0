Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1B2BC296
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 09:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgqyUMRs2ll5b7c/JHYq7QUNfyRBq/htKCHbptUNrBg=; b=VuXxHkpR6QP5aX
	n4L9JtrBkKakRoWsniYMpU3N7plJXhGfkKsjjSNEjykb6JDxuwZDML+/69dC9mXxlXeQIriUpb5m5
	DDgOqQ3uXBu2OP4J9zgixISZBZ/uBAkVJAcidO/xMvGK467FU7IqNLHwoK99QurHmLKNswfvr7eqt
	Z1WGdVL+SWnv4Qi9o3pScGRvBMMJbp9hKcaZGb4M2rr1xzzPfCp8edN+8mLpygvVoq032sAqEVFse
	ye3GUa/+qlHIBCU2ixIOoMm9I8MoRuDT5C0BRJFHM/2MbuzJDLghZsOmVQHhisDh80/TulsPmzOfO
	2uKux0GebZ6CtuDY0GDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfEV-00044p-P5; Tue, 24 Sep 2019 07:27:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfEI-0003z6-4e
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569310040;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VrS9VEE8wj7I9sF1sYK3hSJa0lvG+UB1EqYemHawqgU=;
 b=CzwByyJcIuxDX3+TvHKEnOGMnc9M6HGQuUyP3FKZqFyOgRTTz4dEP/WTvDDP5WFrIDRfKn
 O1hOW6AiRebYCYspmuSAXTNeRR/MtdJZMXPVVPystB/5Fwt4dwlrzEfrCIIf8oXUdmQOuH
 yRbL/MGgHde5txR69nqJFH8JnBbGhv0=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-2wI-2nSYPiuCzXyUJ7d0MQ-1; Tue, 24 Sep 2019 03:27:19 -0400
Received: by mail-ed1-f72.google.com with SMTP id p55so510215edc.5
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 00:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=/1VLA+e9xRwyWnJC8ZSrc5rL/HXsWpwr1W6f6XJFn7s=;
 b=sd0aIkMQmQaW8MebSYWvou3VhaysrJBIttkwQiLRxTLB159OJCRaSQHifVUBm74NQx
 /2fJ+GHolIAVVxMs+dd+7OPqwl8uBm5PzZBdSotdusWLZk1p8nm4vj0YsNv0epAsL9P9
 mqRrpYgqY3zB7fpbSCPYqo2rmT2BREuWC5+kgVyS8C6SOvNnu4yFwz0bDS79sjPfQtQl
 pCpxlYihMIg+4f7LXsp+tOUrf8f1ic+SBheUV2h2W1LFnYs1JPGPa6jta83Eu1UMeJNv
 b8knel3PRZ3dZRxRzHcqlp719FGrbTq2uzQMx5+ED0dXBzsdAXpSghri0h6Ny5Fzrd3o
 Ud9Q==
X-Gm-Message-State: APjAAAWJmGp2tk9cjMKy54IbDQtVyXvcz6UhfYAiTtMrmGqirEixnndF
 hNtVmOaTgrNwppB+8DMUD29HMCt4vH9KbRuXQiyGwro1YK00j7NpiSHJeLHQalqSVD3csRJkEmm
 ir72ye3jRYZeetdxrhgq89g==
X-Received: by 2002:aa7:c5c1:: with SMTP id h1mr1185693eds.10.1569310037884;
 Tue, 24 Sep 2019 00:27:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGDjw/G0kxoR0PSfhHk+XP+1yQUVrQ7UOQQZUCO75G11wlytFb9omISqHRvF9miV+baqh0TQ==
X-Received: by 2002:aa7:c5c1:: with SMTP id h1mr1185688eds.10.1569310037768;
 Tue, 24 Sep 2019 00:27:17 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id t30sm197870edt.91.2019.09.24.00.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 00:27:17 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D858218063F; Tue, 24 Sep 2019 09:27:16 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH V3 4/4] mac80211: Sync airtime weight sum with per AC
 synced sta airtime weight together
In-Reply-To: <ffe79f35d4dcb50aa31dc04035855f79@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-5-git-send-email-yiboz@codeaurora.org>
 <87blvb5lb9.fsf@toke.dk> <ffe79f35d4dcb50aa31dc04035855f79@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 24 Sep 2019 09:27:16 +0200
Message-ID: <87o8za40iz.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 2wI-2nSYPiuCzXyUJ7d0MQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002722_336215_0F42C7CD 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBPbiAyMDE5LTA5LTIz
IDE5OjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4KPj4+IC0JaWYgKHBhcmFt
cy0+YWlydGltZV93ZWlnaHQpCj4+PiAtCQlzdGEtPmFpcnRpbWVfd2VpZ2h0ID0gcGFyYW1zLT5h
aXJ0aW1lX3dlaWdodDsKPj4+ICsJaWYgKHBhcmFtcy0+YWlydGltZV93ZWlnaHQgJiYKPj4+ICsJ
ICAgIHBhcmFtcy0+YWlydGltZV93ZWlnaHQgIT0gc3RhLT5haXJ0aW1lX3dlaWdodCkgewo+PiAK
Pj4gVGhpcyBjaGVjayBkb2Vzbid0IHdvcmsgSSB0aGluaz8gWW91J3JlIG5vdCB1c2luZyB0aGUg
YXJyYXktYmFzZWQKPj4gc3RhLT5haXJ0aW1lX3dlaWdodFtdLCBhbmQgdGhlcmUgYXJlIGxvY2tp
bmcgaXNzdWVzIGJ5IGp1c3QgY2hlY2tpbmcKPj4gbGlrZSB0aGlzOyBzbyBtYXliZSBqdXN0IGtl
ZXAgdGhlIGlmKCkgb24gcGFyYW1zLT5haXJ0aW1lX3dlaWdodCwgYW5kIAo+PiBkbwo+PiB0aGUg
Y2hlY2tpbmcgaW5zaWRlIHRoZSBsb29wIHdoaWxlIGhvbGRpbmcgdGhlIGxvY2s/Cj4KPiBJdCBz
aG91bGQgYmUgYXJyYXktYmFzZWQgc3RhLT5haXJ0aW1lX3dlaWdodFtdIGFuZCBJIGFtIG1pc3Np
bmcgdGhhdCAKPiBwYXJ0IGR1cmluZyB0aGUgcG9ydGluZy4gQnV0IHlvdSBhcmUgcmlnaHQgYWJv
dXQgd2Ugc2hvdWxkIGNoZWNrIGl0IAo+IGluc2lkZSB0aGUgbG9vcCB3aXRoIHRoZSBsb2NrLgo+
Cj4+IAo+PiBPciBjb3VsZCB3ZSBqdXN0IHR1cm4gdGhlIHdlaWdodHMgaW50byBhdG9taWNzIHRv
IGF2b2lkIHRoZSBsb2NraW5nCj4+IGVudGlyZWx5Pwo+Cj4gQWN0dWFsbHksIHdlIHN0aWxsIG5l
ZWQgdGhlIGFjdGl2ZSB0eHEgbG9ja2luZyB0byBtYWtlIHN1cmUgdGhlIHR4cSBpcyAKPiBvbiB0
aGUgcmJ0cmVlLiBPdGhlcndpc2UsIG5vIG5lZWQgdG8gY2hhbmdlIGFpcnRpbWUgd2VpZ2h0IHN1
bS4KClRydWUuIEp1c3QgbW92aW5nIHRoZSBjaGVjayBpbnNpZGUgdGhlIGxvY2tpbmcgd2lsbCBi
ZSB0aGUgcmlnaHQgdGhpbmcKdG8gZG8sIHRoZW4uCgotVG9rZQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hdGgxMGsK
