Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB90DBC04D
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 04:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8SRcTZCqr0J1RHlzldqtWCrUiBUrua/IfhkSq6hpLIo=; b=glzuU18ixQY8ux4VeBVEUSqas
	Z6rYCiyGM9AAtaufiQ9I/uw4Xp9Z3s0MqwEtYxh94eI5jhUtMz4ZVUcKjl0l8rAMZzo06JqarPHo4
	1Iw5hykynIBsJd7VBjZyJSbSeu8h3xOFwTblAA5/VumujoV0BCMhAnZmwnvS7t+J7tD9ie80tvSfi
	TN+TqTHB/Qm1iOUcgSb5Afutp2UZhrwdcpS92PtsaA6gNKqlPK072tK/60aJBfT20Vm8nElB9UmGE
	DgoEFwn4hL4XQypA8Mipb6Okh+Cjb59HkwOZyfEP07OOUg5Zk79Fm/e1pbZbzsFhE/cYbwFk4RrQx
	Iv4/UsEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCapl-00038Q-JV; Tue, 24 Sep 2019 02:45:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaph-00037u-QN
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 02:45:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C87836076C; Tue, 24 Sep 2019 02:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569293139;
 bh=iTfu/83qFIlqNFUe+RnkDzMhW8LE4h055QqEN0+Skbk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FR18QJsPlDJ1f5fpR5tRiTKc+RzV1EeD3Z3/ybJNLlFeeAfypUiNlCJvXTk+NWnpc
 McfYMkpMfYLaXreTm/PjXDO+Pjqpqp/vqHn+dM3e8c7r81LFTbhfly3AcyjT/Au1C6
 2maU7xqoa+9VrUBSKQNF5ln81FIxfymrjcQIDRtY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 5533D602B8;
 Tue, 24 Sep 2019 02:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569293139;
 bh=iTfu/83qFIlqNFUe+RnkDzMhW8LE4h055QqEN0+Skbk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FR18QJsPlDJ1f5fpR5tRiTKc+RzV1EeD3Z3/ybJNLlFeeAfypUiNlCJvXTk+NWnpc
 McfYMkpMfYLaXreTm/PjXDO+Pjqpqp/vqHn+dM3e8c7r81LFTbhfly3AcyjT/Au1C6
 2maU7xqoa+9VrUBSKQNF5ln81FIxfymrjcQIDRtY=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 10:45:39 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <87lfuf5ly2.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk> <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk> <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk>
Message-ID: <1b3eab1f2481e0102b284f133605c6c4@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_194541_904624_C4205AA0 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yMyAxODo0NywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+IFNvLCBpbnN0ZWFkIHdl
IG5lZWQgdG8ga2VlcCBuZXh0X3R4cSgpIHRoZSB3YXkgaXQgaXMsIGFuZCBqdXN0IGFkZAo+PiAK
Pj4gUmlnaHQsIHNob3VsZCBrZWVwIG5leHRfdHhxKCkgdGhlIHdheSBpdCBpcy4KPj4gCj4+PiAK
Pj4+IGxvY2FsLT5zY2hlZHVsZV9wb3NbYWNdID0gcmJfcHJldihub2RlKTsKPj4+IAo+Pj4gd2hl
bmV2ZXIgd2UgcmVtb3ZlIGEgbm9kZSAoYm90aCBpbiByZXR1cm5fdHhxKCkgYW5kIHJlc29ydF90
eHEoKSkuCj4+IAo+PiBBZ3JlZSwgYW5kIGFsc28gd2UgbWF5IG5lZWQgdG8gY29uc2lkZXIgY2Fz
ZSBsaWtlIEEgaXMgcmVtb3ZlZCBhbmQgCj4+IHNvb24KPj4gYmUgYWRkZWQgYmFjayBqdXN0IHRo
ZSBzYW1lIGFzIGlpKSwKPj4gICAgICAgICBCLT5DLT5BLT5ELT5FCj4+IHRoZW4gQiBpcyBzY2hl
ZHVsZSwgcmVtb3ZlZCBhbmQgc29vbiBhZGRlZCBiYWNrLAo+PiAgICAgICAgIEMtPkEtPkItPkQt
PkUKPj4gQSBhbmQgQiB3aWxsIGhhdmUgYSBzZWNvbmQgY2hhbmNlIHRvIGJlIHNjaGVkdWxlZCBh
bmQgdGhpcyBtYXkgaGFwcGVuIAo+PiB0bwo+PiBvdGhlcnMgYXMgd2VsbCBsZWFkaW5nIHRvIHRo
ZSBpbmZpbml0ZSBsb29wIGFzIHlvdSBoYXZlIG1lbnRpb25lZAo+PiBwcmV2aW91c2x5LCBzbyBk
byB3ZSBuZWVkIHRvIG1haW50YWluIGEgc2NoZWR1bGVfcm91bmQgbGlrZSB3ZSBkbyBpbgo+PiBE
UlI/IExpa2UsCj4+ICAgICAgLSBJZiB0aGUgbm9kZSBpcyBpbiB0aGUgc2FtZSByb3VuZCwgYnkg
cGFzcyBzY2hlZHVsZSwgZ28gdG8KPj4gcmJfbmV4dCgpLCBlaXRoZXIgY29udGludWUgbG9vcCB0
aGlzIHJvdW5kIG9yIGVuZCB0aGlzIHJvdW5kLgo+PiAgICAgIC0gSW5jcmVhc2UgdGhlIHNjaGVk
dWxlX3JvdW5kIGF0IHRoZSBzY2hlZHVsZV9zdGFydCgpIG9ubHkgd2hlbiAKPj4gdGhlCj4+IHNj
aGVkdWxlX3BvcyBpcyBOVUxMLgo+IAo+IEhtbSwgeWVhaCwgSSBndWVzcyB3ZSBjb3VsZCBlbmQg
dXAgd2l0aCBhIGxvb3AgbGlrZSB0aGF0IGFzIHdlbGwuCj4gS2VlcGluZyB0aGUgc2NoZWR1bGVf
cm91bmQgd291bGQgYmUgYSB3YXkgdG8gZml4IGl0LCBidXQgSSdtIG5vdCBzdXJlIAo+IHdlCj4g
c2hvdWxkIGp1c3Qgc2tpcCB0aGF0IHN0YXRpb247IG1heWJlIHdlIHNob3VsZCBqdXN0IGVuZCB0
aGUgcm91bmQKPiBpbnN0ZWFkPwpJIGFtIG5vdCBzdXJlLiBJIGJlbGlldmUsIGluIHNvbWUgY2Fz
ZXMsIHRoZSByZXN0IG9mIHRoZSBub2RlcyB3aGljaCAKY291bGQgYmUgbW9zdCBvZiB0aGUgbm9k
ZXMgaW4gdGhlIHRyZWUgd2lsbCBub3QgaGF2ZSB0aGUgY2hhbmNlIHRvIGJlIApzY2hlZHVsZWQg
aW4gdGhpcyByb3VuZC4KCj4gCj4+Pj4+IFdlJ2Qgc3RpbGwgbmVlZCBhIGNoZWNrIGluIHJlc29y
dF90eHEoKSB0aGVuLCBidXQgaXQgd291bGQgbWFrZSBpdAo+Pj4+PiBzYWZlCj4+Pj4+IHRvIHVu
c2NoZWR1bGUgaW4gcmV0dXJuX3R4cSgpLi4uCj4+Pj4gWWVzLCBhZ3JlZSB3aXRoIHRoYXQuCj4+
Pj4gCgoKCi0tIApZaWJvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
