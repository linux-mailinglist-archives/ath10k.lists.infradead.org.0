Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C12BC27D
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 09:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARMxLB9XW6ktV4tl8iIObKhGAbJXcPt0NlrcR8MyQvQ=; b=iyVi6fKlnmNaHi
	H1zG30tC3sdnVQJ0i4zPosei8pZLXHBxhSiID9udODhb5KWmM1as9Pw3HFbL2TPoo4UEnRMKL2kpv
	KZzQ/YJ39/Etw7oLcuVxDIKVcgBeNDtnyj2r74G4vWsYABeVuC7wZr3aKrYvthfNrtgoS/xKmSkvv
	H7yAB9R/JXURWYG564h54gKqRiwJyGkLiFD6pjf6Tr8blZoEH4ypD4fuwMnxEyJfAVaoeXK58sVSm
	7iyYP1k5Z55eNfQ5ZDVzEL2IRww9a6CN+RbrzGSg+bnYfTqatMl7OYeEr345qUjlysAKGNVUM3Goz
	9GqBDRi5PLfEnarHP/lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfAv-0001bl-1C; Tue, 24 Sep 2019 07:23:53 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfAh-0001aV-5e
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569309817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0G4JZaYvwCxjnxKsq32f8WqDp3EglcnSucMrr0/3h5s=;
 b=VKQoNCrr5Wf8nK5VxF2CIbld6ugCEK4toz6Ca8SmTt0TekUfXt6a9NuDVoqhi5kE4BMjba
 Unq72lDFUUQvWg6UmBLafbOBXOINdbpZ+RTAFzkZfMhAeHbF+w5e0M13FlNCVUamIxTgrf
 qd+GkEG4B/MY3TieXVPtbYCemPJf7h4=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-2uGvn_fdNoKweg5PHiOPDQ-1; Tue, 24 Sep 2019 03:23:36 -0400
Received: by mail-lj1-f200.google.com with SMTP id b90so155070ljf.11
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 00:23:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=eNy0OsfgUovPrgaczSkGKc/qoZ1UwMaFnAS8E3+Ys5A=;
 b=pIoxuiEtUd7PTd3Me92FlV6jyDkoYFotMggXVZVC9Xp+UmQqFpQF2lk698Y4Bso8i0
 PKay2WmfeXl/d5rXJa6SYzTXb7XJhvddZY5jkBkUbMLINH3o3Ba17DSMlfxkVXSg7OZ+
 4XYO1Kma2NQInz9uOA4bzbj9misqY6ZpFmM+sL0P5rZTPJfEOX4vhVfBJ2IulRtCq1Gt
 JJ/qiMUvQM9vUTNUrUwZDACaGJT6JseC7DHOWUe0arsGl8FxD+F7xZW3Hn1eszR0BqK7
 POVg5rqxialoB1jlLmK9iKOcfjeyjOOTllohgFTfQbxGNkTtkDCNoGXWWsk5FEpLwoxA
 Aw0A==
X-Gm-Message-State: APjAAAXy7vXpeH90DIsjaNxbEck4kL6BbWWrsRjwFIDgpB5yJbajWwiw
 3kEv1kxPH7TaVHgNZkuKaHcozB2confMZa0hAFzaY5/R34bT93jgAkUiZnfn9a6GqvK2gGpeV8F
 Q6N68kphoR2X8eUJdsWIPXQ==
X-Received: by 2002:a2e:3004:: with SMTP id w4mr1003717ljw.21.1569309814665;
 Tue, 24 Sep 2019 00:23:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7H5q3IT0g+d+H6LD07mIHz30Z7SyPa4apmHxLcO9AyhV335O5RMeH1RxVc/aOkY1Vs+x2DA==
X-Received: by 2002:a2e:3004:: with SMTP id w4mr1003704ljw.21.1569309814471;
 Tue, 24 Sep 2019 00:23:34 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id 126sm273533lfh.45.2019.09.24.00.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 00:23:33 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BE5DA18063F; Tue, 24 Sep 2019 09:23:32 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <87h8525kmx.fsf@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk> <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk> <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk> <87r2476xy5.fsf@codeaurora.org>
 <875zlj55mh.fsf@toke.dk> <87h8525kmx.fsf@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 24 Sep 2019 09:23:32 +0200
Message-ID: <87tv9240p7.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 2uGvn_fdNoKweg5PHiOPDQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002339_332861_78B75778 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCj4gVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKPgo+PiBLYWxsZSBWYWxvIDxr
dmFsb0Bjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pgo+Pj4gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu
c2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKPj4+Cj4+Pj4gWWlibyBaaGFvIDx5aWJvekBj
b2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Cj4+Pj4+IE9uIDIwMTktMDktMjEgMjI6MDAsIFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pAY29k
ZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+IAo+Pj4+Pj4+IE9uIDIwMTktMDktMjEgMjE6MDIs
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4gWWlibyBaaGFvIDx5aWJv
ekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IE9uIDIwMTktMDkt
MjEgMTk6MjcsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+PiBZaWJv
IFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+
Pj4+IE9uIDIwMTktMDktMjAgMTc6MTUsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToK
Pj4+Pj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+
Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+Pj4+IE9uIDIwMTktMDktMTkgMTg6MzcsIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2Rl
YXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4+Pj4+IE9uIDIw
MTktMDktMTggMTk6MjMsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+
Pj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+Pj4+
Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIDIwMTktMDktMTggMDU6MTAsIFRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWli
b3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Cj4+PiBHdXlzLCBQTEVBU0UgcGxlYXNlIGNv
bnNpZGVyIHVzIHBvb3IgbWFpbnRhaW5lcnMgZHJvd25pbmcgaW4gZW1haWwgYW5kCj4+PiBlZGl0
IHlvdXIgcXVvdGVzIDopIFRoaXMgc3R5bGUgb2YgZGlzY3Vzc2lvbiBtYWtlcyBwYXRjaHdvcmsg
dW51c2FibGU6Cj4+Pgo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE0
NzAxOS8KPj4KPj4gSGVoLCBvb3BzLCBkaWRuJ3QgcmVhbGlzZSB5b3Ugd2VyZSBmb2xsb3dpbmcg
dGhlIGRpc2N1c3Npb24gZnJvbQo+PiBwYXRjaHdvcms7IHNvcnJ5LCB3aWxsIGJlIHN1cmUgdG8g
Y3V0IHRoaW5ncyBpbiB0aGUgZnV0dXJlLgo+Cj4gVG8gYmUgaG9uZXN0LCBJJ20gbm90IHN1cmUg
aG93IG11Y2ggSm9oYW5uZXMgdXNlcyBwYXRjaHdvcmsuIEJ1dCBJCj4gY2hlY2sgZXZlcnl0aGlu
ZyBmcm9tIHBhdGNod29yayA5NSUgb2YgdGhlIHRpbWUgYW5kIHRyeSB0byBrZWVwIG15Cj4gZW1h
aWwgYm94ZXMgY2xlYW4uCgpOb3RlZC4gSSdsbCB0cnkgdG8gYmUgbmljZSB0byBwYXRjaHdvcmss
IHRoZW4gOikKCj4+IFRoZSBxdW90ZSBtYXJrcyBkbyBtYWtlIGEgdmVyeSBuaWNlIChyZXZlcnNl
KSBjaHJpc3RtYXMgdHJlZSwgdGhvdWdoIDspCj4KPiBJdCBkaWQhIEkgaGFkIHRvIGluY2x1ZGUg
dGhhdCB0byBteSByYW50IDopCgo6RAoKLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==
