Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9B7BC436
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3REpQi8ehKWmYFLcnI2FHQeUi0Qz1JODD2s1ndF7vh4=; b=f9EnQx/zZ+eqnr
	R8M4Ai5PY0q+CYeXC514hNwmW8DWPAdprkRsN9SdIlo1dCu6RBvQmQPvKGKb7yOr6f0nTgSRAQ9M6
	MVnLLUwLEzU/J9BjAKkUJ8MVbg95e8l8CqsJR4TWd/J32V3oqtDwTxyi29MfFiYqo9q1rF5zTQWtu
	VnXIea+89mj+uoStVPmUgrQmNw8aA4rwctq7J84/DfGneaIyHGMuOL3+/WFd1eFZQPxOLuPek0Hze
	c91S6dJUQshOp4oKox5c8Q2zdkMlKgh9W0kK/y0xw+A7d+vArUFQvn3OGSmiNh98IxPc++U/Vx+Nx
	L9DfTiw33lUvImmpfP0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgQe-0003zX-Qw; Tue, 24 Sep 2019 08:44:12 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgQZ-0003zF-O9
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 08:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569314645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3rkN8MH0IxkN2ptEk2A38ufQaZUiB5IkfFSgtoEu5oY=;
 b=KgkslaluHDQNz9QcOQC28SIr634YgstGHlukhzQ0yEydqDAiL02B9zfk+yhW9L7qfWNMt9
 Th5v3QZeCCMCz6LapJVHUYT5J4pvwgoo+oKwDg6ZnDVljYq++A+bTsykXaLXg1a7BMwr5/
 IphJmH0nkOsREMRkVncXQVsjC4Ifqnk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-l3QVWyOfP8mG0OmlCquzYA-1; Tue, 24 Sep 2019 04:44:04 -0400
Received: by mail-ed1-f71.google.com with SMTP id o92so623657edb.9
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 01:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=0s+wvn51JwcIE6+b/0TfX281k8oD+BZhgHvYh3Sx18c=;
 b=Mnubk4D7xhyZtODetS09qe8M4giLHF8CE9uqvsD+TzXlhCWon3t8FJT+YA+/m6IRnk
 h8e+CYpIqM2Nxy8F7cPzweSfyv7rzTUv4IyDSj9DeHg3eD5543/hVZmvp+O5V+Qy1zLG
 IOYJeq4jUj6XZn5xxBwxiYdMKUYOz+2Txtbg/lOMc6lp9lMkLcK5y5ZQ/n+Lz2yX3fLz
 +EsRjrTOWJLHPEHUphV+XMlCgz2t+lqp7tp+NIcy/T9btpbDv7rVil1lk73ZQh54qHes
 hhjbU2RICAeiODDg0WYfveNccWnZC1fdwDqnyLbNfYCxioDZAhy8dgCUhEFrqS3KhJN7
 aVkA==
X-Gm-Message-State: APjAAAXPyAPSfyZ8rfFaALS34K5T6FzdSQvGEv2KdAbBRQYHQwKnCu+v
 Dh6pwtB8dSbjIbcrqWZPMZkRwIRFM6lDNhbnKqC6ToTlS43B9Sfo2rIVVi9DvxCp/TCIEohGlvz
 3C2xcOikPd5r0+ThW7eM/2A==
X-Received: by 2002:a50:8a9d:: with SMTP id j29mr1427604edj.283.1569314643538; 
 Tue, 24 Sep 2019 01:44:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5GhLsosb8d3+pHn5gjMGcFz9uQMDJluWXWbFjtnzdAbrmy7O7xL/JLo+YgMsFyvkeIJ/M8g==
X-Received: by 2002:a50:8a9d:: with SMTP id j29mr1427590edj.283.1569314643335; 
 Tue, 24 Sep 2019 01:44:03 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id f36sm238153ede.28.2019.09.24.01.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 01:44:02 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 22FD018063F; Tue, 24 Sep 2019 10:44:01 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <4cb086a2ec62b6bb127d933d2dcfb17c@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk> <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk> <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk> <1b3eab1f2481e0102b284f133605c6c4@codeaurora.org>
 <87r24640kb.fsf@toke.dk> <4cb086a2ec62b6bb127d933d2dcfb17c@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 24 Sep 2019 10:44:01 +0200
Message-ID: <87ftkm3wz2.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: l3QVWyOfP8mG0OmlCquzYA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_014408_022457_8D9D0515 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBPbiAyMDE5LTA5LTI0
IDE1OjI2LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4gSG1tLCB5ZWFoLCBJ
IGd1ZXNzIHdlIGNvdWxkIGVuZCB1cCB3aXRoIGEgbG9vcCBsaWtlIHRoYXQgYXMgd2VsbC4KPj4+
PiBLZWVwaW5nIHRoZSBzY2hlZHVsZV9yb3VuZCB3b3VsZCBiZSBhIHdheSB0byBmaXggaXQsIGJ1
dCBJJ20gbm90IHN1cmUKPj4+PiB3ZQo+Pj4+IHNob3VsZCBqdXN0IHNraXAgdGhhdCBzdGF0aW9u
OyBtYXliZSB3ZSBzaG91bGQganVzdCBlbmQgdGhlIHJvdW5kCj4+Pj4gaW5zdGVhZD8KPj4+IEkg
YW0gbm90IHN1cmUuIEkgYmVsaWV2ZSwgaW4gc29tZSBjYXNlcywgdGhlIHJlc3Qgb2YgdGhlIG5v
ZGVzIHdoaWNoCj4+PiBjb3VsZCBiZSBtb3N0IG9mIHRoZSBub2RlcyBpbiB0aGUgdHJlZSB3aWxs
IG5vdCBoYXZlIHRoZSBjaGFuY2UgdG8gYmUKPj4+IHNjaGVkdWxlZCBpbiB0aGlzIHJvdW5kLgo+
PiAKPj4gTXkgZ3Vlc3Mgd291bGQgYmUgdGhhdCBpdCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIsIGJl
Y2F1c2UgaW4gbW9zdCBjYXNlcwo+PiBlYWNoIHNjaGVkdWxlIHJvdW5kIHdpbGwgb25seSBhY3R1
YWxseSBlbmQgdXAgcXVldWVpbmcgcGFja2V0cyBmcm9tIG9uZQo+PiBvciB0d28gc3RhdGlvbnM7
IGFzIHRoZSBkcml2ZXIgd2lsbCBwdWxsIG11bHRpcGxlIHBhY2tldHMgZnJvbSB0aGF0IG9uZQo+
PiBzdGF0aW9uIHdoaWNoIHdpbGwgb2Z0ZW4gZmlsbCB1cCB0aGUgZmlybXdhcmUgcXVldWVzIChl
c3BlY2lhbGx5IG9uY2UgCj4+IHdlCj4+IHN0YXJ0IHRocm90dGxpbmcgdGhhdCB3aXRoIHRoZSBB
UUwgc3R1ZmYpLgo+PiAKPj4gU28gSSBndWVzcyB3ZSBjYW4ganVzdCBza2lwIFRYUXMgdGhhdCB3
ZSd2ZSBhbHJlYWR5IHNlZW4gdGhpcyAKPj4gc2NoZWR1bGluZwo+PiByb3VuZCwgYW5kIGxldCB0
aGUgdl90IGNvbXBhcmUgZGV0ZXJtaW5lIHRyYW5zbWl0IGVsaWdpYmlsaXR5IDopCj4KPiBJIGFt
IGEgbGl0dGxlIGNvbmZ1c2VkLiBTbyBkbyB5b3UgbWVhbiBpdCBpcyBmaW5lIGZvciB5b3UgdG8g
c2tpcCB0aGUgCj4gVFhRcyB3ZSBtZXQgaW4gdGhpcyByb3VuZCBiZWZvcmUgYW5kIGNvbnRpbnVl
IHRoZSBsb29wIHVudGlsIHRoZSBlbmQgb3IgCj4gdnQgY29tcGFyaXNvbiBmYWlsdXJlPwoKWWVh
aC4gSW4gbW9zdCBjYXNlcyBpdCB3b24ndCBtYWtlIGFueSBkaWZmZXJlbmNlOyBidXQgaXQnbGwg
bWFrZSBzdXJlIHdlCnZpc2l0IGFsbCBlbGlnaWJsZSBUWFFzIGluIGFsbCBjYXNlcywgc28gd2Ug
bWlnaHQgYXMgd2VsbCBkbyB0aGF0IGlmCndlJ3JlIHRyYWNraW5nIHRoZSBzY2hlZHVsaW5nIHJv
dW5kIGFueXdheS4KCi1Ub2tlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
