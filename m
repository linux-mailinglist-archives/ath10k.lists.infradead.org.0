Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39328BC162
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 07:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCIGGSW9vipbF2TPy3GtRxjxn9PbziCmW5rnFYEn8S8=; b=g3oV7udvSZF1LK
	RxeJ7dsw0nMhz1y+AE2JBP+VR66VmpWdKkHdUscDfCH0l07jWDzMfaNI1lbNzA+PybBO9ogDqWIWe
	0VV9MrKQpLQ0J9YPBfHxXK0sAh8R3x04BIox1NWr/lR2ieZQPSIpy7mRNfjFOqU2zCAG1avMgZ3Ry
	SoTzgg7yvy/qpCTrm4urtn4/NkA7KEpmw35/0cmSd3GBpuCwUz/U1AvioLiwLbXix5AC1d5KQk43d
	v6ToAOk8EGS+0HjhkvzVIayEu6B3a24YbN+2pnWbygmre2x0OrOZEKTe1H/nG2z2m4fT2tYcTQLBO
	iM2O2lEwzTl+9w/kAEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdMV-0004ZU-L3; Tue, 24 Sep 2019 05:27:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCdMQ-0004ZC-VF
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 05:27:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 615C360397; Tue, 24 Sep 2019 05:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569302858;
 bh=iqreBXqW1z+PvVPcT2A+y7vEG6T1jEfF1BdCXbZUI9Y=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cWNo/Z1yt6exvdlf1zwZ43aVajPzWOEEWpEkf1eDwjJBKpeS86Qs1F0hG+KDb8n56
 VM+l99LIUWT17Dvjo4O1XWyZSZeMSfV7/WIWCAfQKtPZkKJiJhlZcIB/FglEe8mkoK
 CmbRsJTBYFgYH7qr1ZXrdDilw1IBMaH9wscMWwpc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CA3CF60240;
 Tue, 24 Sep 2019 05:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569302858;
 bh=iqreBXqW1z+PvVPcT2A+y7vEG6T1jEfF1BdCXbZUI9Y=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cWNo/Z1yt6exvdlf1zwZ43aVajPzWOEEWpEkf1eDwjJBKpeS86Qs1F0hG+KDb8n56
 VM+l99LIUWT17Dvjo4O1XWyZSZeMSfV7/WIWCAfQKtPZkKJiJhlZcIB/FglEe8mkoK
 CmbRsJTBYFgYH7qr1ZXrdDilw1IBMaH9wscMWwpc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CA3CF60240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk>
 <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk>
 <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk>
 <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk>
 <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk>
 <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk>
 <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk>
 <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk> <87r2476xy5.fsf@codeaurora.org>
 <875zlj55mh.fsf@toke.dk>
Date: Tue, 24 Sep 2019 08:27:34 +0300
In-Reply-To: <875zlj55mh.fsf@toke.dk> ("Toke \=\?utf-8\?Q\?H\=C3\=B8iland-J\?\=
 \=\?utf-8\?Q\?\=C3\=B8rgensen\=22's\?\= message of
 "Mon, 23 Sep 2019 18:39:34 +0200")
Message-ID: <87h8525kmx.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_222739_050759_86DA90BB 
X-CRM114-Status: UNSURE (   8.29  )
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

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gS2Fs
bGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPgo+PiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JpdGVzOgo+Pgo+Pj4gWWlibyBaaGFvIDx5
aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4KPj4+PiBPbiAyMDE5LTA5LTIxIDIyOjAw
LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pA
Y29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4gCj4+Pj4+PiBPbiAyMDE5LTA5LTIxIDIxOjAy
LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4gWWlibyBaaGFvIDx5aWJv
ekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+IAo+Pj4+Pj4+PiBPbiAyMDE5LTA5LTIx
IDE5OjI3LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+PiBZaWJvIFpo
YW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiBP
biAyMDE5LTA5LTIwIDE3OjE1LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+
Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+Pj4+
Pj4gCj4+Pj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTE5IDE4OjM3LCBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9y
Zz4gd3JpdGVzOgo+Pj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTE4IDE5
OjIzLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4+PiBZaWJv
IFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+Pj4+Pj4+Pj4+PiAKPj4+
Pj4+Pj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTE4IDA1OjEwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5v
cmc+IHdyaXRlczoKPj4KPj4gR3V5cywgUExFQVNFIHBsZWFzZSBjb25zaWRlciB1cyBwb29yIG1h
aW50YWluZXJzIGRyb3duaW5nIGluIGVtYWlsIGFuZAo+PiBlZGl0IHlvdXIgcXVvdGVzIDopIFRo
aXMgc3R5bGUgb2YgZGlzY3Vzc2lvbiBtYWtlcyBwYXRjaHdvcmsgdW51c2FibGU6Cj4+Cj4+IGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTExNDcwMTkvCj4KPiBIZWgsIG9vcHMs
IGRpZG4ndCByZWFsaXNlIHlvdSB3ZXJlIGZvbGxvd2luZyB0aGUgZGlzY3Vzc2lvbiBmcm9tCj4g
cGF0Y2h3b3JrOyBzb3JyeSwgd2lsbCBiZSBzdXJlIHRvIGN1dCB0aGluZ3MgaW4gdGhlIGZ1dHVy
ZS4KClRvIGJlIGhvbmVzdCwgSSdtIG5vdCBzdXJlIGhvdyBtdWNoIEpvaGFubmVzIHVzZXMgcGF0
Y2h3b3JrLiBCdXQgSSBjaGVjawpldmVyeXRoaW5nIGZyb20gcGF0Y2h3b3JrIDk1JSBvZiB0aGUg
dGltZSBhbmQgdHJ5IHRvIGtlZXAgbXkgZW1haWwgYm94ZXMKY2xlYW4uCgo+IFRoZSBxdW90ZSBt
YXJrcyBkbyBtYWtlIGEgdmVyeSBuaWNlIChyZXZlcnNlKSBjaHJpc3RtYXMgdHJlZSwgdGhvdWdo
IDspCgpJdCBkaWQhIEkgaGFkIHRvIGluY2x1ZGUgdGhhdCB0byBteSByYW50IDopCgotLSAKS2Fs
bGUgVmFsbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
