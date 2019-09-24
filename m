Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE09BC421
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h8Wiue6030HaRuZmnp7QIwY2eqWnzQcHn2vdvu6whyo=; b=fM7hsbtYPlYXubJE5Yjq9HI1i
	IcUZttk4oKlBwrnqGW9KWjIcbCMtQo3FN0hglKtH8ZT+fbc3gZ5/BDpwdbzDWlbfFlDSBtUtrATzJ
	uhRbqGOvFn0ZVPZP11xGdQxBQN99FL5D07UcfzJvjA9u5ZasdH4nV8/XAk2Ie/pdJZO/EopePSJn7
	VNnzLsfsd3FtQlg88drkUUXwz+cG3i5Nap321jD1BNMTmXAYZJEWTSjqaVj1N4p/pulPnT2kaT5dg
	iA12BzcPfeKokcR+6s79/F6YuuxkcemP0bNNlc9EoSw0mOUZ4iayNZOziTD9nkMyPGAd5JbpHwG/0
	D5kTGqi1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgEA-0008Q0-IK; Tue, 24 Sep 2019 08:31:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgE5-0008Pc-IS
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 08:31:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8B53360A00; Tue, 24 Sep 2019 08:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569313872;
 bh=GqzelFHQnjIfdc+3zM21cWOQ47JyWKqJ7pJbqCO19yo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AXJQlBHlhk43AwSeP4z2UkYVbv9pJzY+6VVLQ2Yu8nSz/w3fKlyXbRnEEUypC97Y0
 d5SGmWbiiJm3emo/T63QAuuabOt+r6fl2Xq2PCDRkhb6S7P65ipKO1xWH58Eo3nmqU
 Fx8jCX/e1bhvuJUNDPeGgh2YOC9gJgs+jzjfkKYI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 3D02160397;
 Tue, 24 Sep 2019 08:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569313872;
 bh=GqzelFHQnjIfdc+3zM21cWOQ47JyWKqJ7pJbqCO19yo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AXJQlBHlhk43AwSeP4z2UkYVbv9pJzY+6VVLQ2Yu8nSz/w3fKlyXbRnEEUypC97Y0
 d5SGmWbiiJm3emo/T63QAuuabOt+r6fl2Xq2PCDRkhb6S7P65ipKO1xWH58Eo3nmqU
 Fx8jCX/e1bhvuJUNDPeGgh2YOC9gJgs+jzjfkKYI=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 16:31:12 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <87r24640kb.fsf@toke.dk>
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
 <87r24640kb.fsf@toke.dk>
Message-ID: <4cb086a2ec62b6bb127d933d2dcfb17c@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_013113_644624_5A7D0164 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yNCAxNToyNiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4g
SG1tLCB5ZWFoLCBJIGd1ZXNzIHdlIGNvdWxkIGVuZCB1cCB3aXRoIGEgbG9vcCBsaWtlIHRoYXQg
YXMgd2VsbC4KPj4+IEtlZXBpbmcgdGhlIHNjaGVkdWxlX3JvdW5kIHdvdWxkIGJlIGEgd2F5IHRv
IGZpeCBpdCwgYnV0IEknbSBub3Qgc3VyZQo+Pj4gd2UKPj4+IHNob3VsZCBqdXN0IHNraXAgdGhh
dCBzdGF0aW9uOyBtYXliZSB3ZSBzaG91bGQganVzdCBlbmQgdGhlIHJvdW5kCj4+PiBpbnN0ZWFk
Pwo+PiBJIGFtIG5vdCBzdXJlLiBJIGJlbGlldmUsIGluIHNvbWUgY2FzZXMsIHRoZSByZXN0IG9m
IHRoZSBub2RlcyB3aGljaAo+PiBjb3VsZCBiZSBtb3N0IG9mIHRoZSBub2RlcyBpbiB0aGUgdHJl
ZSB3aWxsIG5vdCBoYXZlIHRoZSBjaGFuY2UgdG8gYmUKPj4gc2NoZWR1bGVkIGluIHRoaXMgcm91
bmQuCj4gCj4gTXkgZ3Vlc3Mgd291bGQgYmUgdGhhdCBpdCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIs
IGJlY2F1c2UgaW4gbW9zdCBjYXNlcwo+IGVhY2ggc2NoZWR1bGUgcm91bmQgd2lsbCBvbmx5IGFj
dHVhbGx5IGVuZCB1cCBxdWV1ZWluZyBwYWNrZXRzIGZyb20gb25lCj4gb3IgdHdvIHN0YXRpb25z
OyBhcyB0aGUgZHJpdmVyIHdpbGwgcHVsbCBtdWx0aXBsZSBwYWNrZXRzIGZyb20gdGhhdCBvbmUK
PiBzdGF0aW9uIHdoaWNoIHdpbGwgb2Z0ZW4gZmlsbCB1cCB0aGUgZmlybXdhcmUgcXVldWVzIChl
c3BlY2lhbGx5IG9uY2UgCj4gd2UKPiBzdGFydCB0aHJvdHRsaW5nIHRoYXQgd2l0aCB0aGUgQVFM
IHN0dWZmKS4KPiAKPiBTbyBJIGd1ZXNzIHdlIGNhbiBqdXN0IHNraXAgVFhRcyB0aGF0IHdlJ3Zl
IGFscmVhZHkgc2VlbiB0aGlzIAo+IHNjaGVkdWxpbmcKPiByb3VuZCwgYW5kIGxldCB0aGUgdl90
IGNvbXBhcmUgZGV0ZXJtaW5lIHRyYW5zbWl0IGVsaWdpYmlsaXR5IDopCgpJIGFtIGEgbGl0dGxl
IGNvbmZ1c2VkLiBTbyBkbyB5b3UgbWVhbiBpdCBpcyBmaW5lIGZvciB5b3UgdG8gc2tpcCB0aGUg
ClRYUXMgd2UgbWV0IGluIHRoaXMgcm91bmQgYmVmb3JlIGFuZCBjb250aW51ZSB0aGUgbG9vcCB1
bnRpbCB0aGUgZW5kIG9yIAp2dCBjb21wYXJpc29uIGZhaWx1cmU/Cgo+IAo+IC1Ub2tlCgotLSAK
WWlibwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRo
MTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
