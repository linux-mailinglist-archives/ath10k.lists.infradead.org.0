Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E2AC9F82
	for <lists+ath10k@lfdr.de>; Thu,  3 Oct 2019 15:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAZyFEIEvq9kUiwqMHuY6Vcg/HqR5WDpH/WoB5oWR0A=; b=Z6sF40T5kosJd2
	jUr/zZv0P/D8AvdWMMc1MHWEg70kjsjYuxr+BnhsYmosIrxo0V/o6Ej3eGU+JZycbze2GrWc8FZef
	8/HnSQEc3D0BYrUTXqv+zhKlSzKe007gLzHFb7alCUg1cdJyMnABOZ57fyWJqyasP/ra+1B3YNCJK
	a5wpi7MVBDQX7poh0sX/IjThom0jm4g/xSqhIZbWPLLelIHx/CWpfS42urm586TQ0XX0GIwU5szQS
	8szfTxAW8EnMUaFABqp8a4dX9zUnxHg7ZovWrzEe01YjelOS1VY+kvOQLg9l7fGRLQ2Ee4jWWeSCg
	5uYSWq2fHe4xvEPkeBTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1Ey-0005BC-6g; Thu, 03 Oct 2019 13:33:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1Eu-0005Ao-CZ
 for ath10k@lists.infradead.org; Thu, 03 Oct 2019 13:33:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 01CC0611CE; Thu,  3 Oct 2019 13:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570109632;
 bh=BhQc6BRfl0diz4Cietg+XTpvRy6X9NSbsfG4WqMHLqc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=oeiKwtmwJgVBbqXfIinIKEPwMd04AzehgvnaUHUsXtoYeqOHpYNu5qC9LjA12NW+i
 BSznTILPG5KSsjMqz4Lz29c0Fu3W8wqkcTytsnh38AzX9onEYdcoySNpwSgcWCEpiy
 KORuMyHwkFymAIurnvwXpWzjClLm8wZhtv2oelqI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B83FE60AD9;
 Thu,  3 Oct 2019 13:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570109631;
 bh=BhQc6BRfl0diz4Cietg+XTpvRy6X9NSbsfG4WqMHLqc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=SAp0srajaYD2gp/uHRXYqBtp+aj3gRCC+Vrb4ttoxVTJu8t50GuskljRqgzLhkyxF
 o8M7cRUqQlECM+1OURB0pBWtfDUJsAtNBdiytC32oPU1cgp+kJETNsT/ZRSw6wJtaF
 /hRKRj3R7h5PLbtdO5tc2sJVTjP8Yqq0J+P0PEW0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B83FE60AD9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Tomislav =?utf-8?Q?Po=C5=BEega?= <pozega.tomislav@gmail.com>
Subject: Re: [PATCH] ath10k: Fix ASPM L1 state on QCA988X
References: <1553025580-6118-1-git-send-email-pozega.tomislav@gmail.com>
Date: Thu, 03 Oct 2019 16:33:46 +0300
In-Reply-To: <1553025580-6118-1-git-send-email-pozega.tomislav@gmail.com>
 ("Tomislav \=\?utf-8\?Q\?Po\=C5\=BEega\=22's\?\= message of "Tue, 19 Mar 2019
 20:59:40 +0100")
Message-ID: <87wodmgdhh.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_063352_465227_F022A88A 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

KHBsZWFzZSBhbHdheXMgQ0MgYXRoMTBrIGxpc3Qgc28gdGhhdCBhdGgxMGsgcGF0Y2hlcyBhcmUg
ZWFzeSB0byBmaW5kKQoKVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNv
bT4gd3JpdGVzOgoKPiBPbiBzb21lIHN5c3RlbXMgdGhlcmUgYXJlIGhlYXZ5IGNyYXNoZXMgaWYg
dGhlIGtlcm5lbCBjb25maWcKPiBvcHRpb24gQ09ORklHX1BDSUVBU1BNX1BFUkZPUk1BTkNFIGlz
IG5vdCBzZXQuIFBhdGNoIHByb3ZpZGVkIGJ5Cj4gU3VqaXRoIGZvciBhdGg5ayBmaXhlcyB0aGlz
IGlzc3VlIGFuZCB0aGUgY2FyZCBvcGVyYXRlcyB3aXRob3V0Cj4gY3Jhc2hlcyB3aXRoIGtlcm5l
bCBkZWZhdWx0IENPTkZJR19QQ0lFQVNQTV9ERUZBVUxUIG9wdGlvbiB0aGF0IHVzZXMKPiBCSU9T
IHByb3ZpZGVkIEFTUE0gc2V0dGluZ3MuIFRlc3RlZCB3aXRoIFFDQTk4NjIgbVBDSWUgY2FyZC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFN1aml0aCBNYW5vaGFyYW4gPGNfbWFub2hhQHFjYS5xdWFsY29t
bS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2
QGdtYWlsLmNvbT4KClNvIEknbGwgc3VtbWFyaXNlIHRoZSBkaXNjdXNzaW9uIGZyb20gcGF0Y2h3
b3JrOgoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg2MDMwMS8KClN1aml0
aCB3cm90ZSB0aGlzIHdvcmthcm91bmQgZmlyc3QgZm9yIGF0aDlrIGFuZCB5b3UgcG9ydGVkIGl0
IHRvCmF0aDEwazoKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXdpcmVsZXNzLzEzNzc0
MjE5ODktMjEyNDAtMS1naXQtc2VuZC1lbWFpbC1zdWppdGhAbXN1aml0aC5vcmcvCgpodHRwczov
L2dpdC5rZXJuZWwub3JnL2xpbnVzL2IzODBhNDNiNTJiZQoKQW5kIHlvdSBoYXZlIFBDSSBwcm9i
bGVtcyBhZnRlciBRQ0E5ODhYIGZpcm13YXJlIGhhcyBjcmFzaGVkIG9uIEhQCkNvbXBhcSA2NzM1
YiBsYXB0b3AsIGFwcGFyZW50bHkgdGhlIGRldmljZSBqdXN0IGRvZXMgbm90IHJlc3BvbmQgb24g
UENJCmJ1cyBhdCB0aGF0IHBvaW50LiBBbmQgdGhpcyB3b3JrYXJvdW5kIHNvbHZlcyB0aGUgaXNz
dWUgYW5kIHlvdSBkb24ndApoYXZlIGFueSBwcm9ibGVtcyBhbnltb3JlLgoKUGxlYXNlIGNvcnJl
Y3QgaWYgSSBoYXZlIG1pc3VuZGVyc3Rvb2QuCgo+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvcGNpLmMKPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L3BjaS5jCj4gQEAgLTI3ODcsMTQgKzI3ODcsMjUgQEAgc3RhdGljIGludCBhdGgxMGtfcGNpX2hp
Zl9wb3dlcl91cChzdHJ1Y3QgYXRoMTBrICphciwKPiAgCQkJCSAgIGVudW0gYXRoMTBrX2Zpcm13
YXJlX21vZGUgZndfbW9kZSkKPiAgewo+ICAJc3RydWN0IGF0aDEwa19wY2kgKmFyX3BjaSA9IGF0
aDEwa19wY2lfcHJpdihhcik7Cj4gKwlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGFyX3BjaS0+cGRl
djsKPiAgCWludCByZXQ7Cj4gKwl1MzIgdmFsOwo+ICAKPiAgCWF0aDEwa19kYmcoYXIsIEFUSDEw
S19EQkdfQk9PVCwgImJvb3QgaGlmIHBvd2VyIHVwXG4iKTsKPiAgCj4gLQlwY2llX2NhcGFiaWxp
dHlfcmVhZF93b3JkKGFyX3BjaS0+cGRldiwgUENJX0VYUF9MTktDVEwsCj4gKwlpZiAoYXItPmRl
dl9pZCA9PSBRQ0E5ODhYXzJfMF9ERVZJQ0VfSUQpIHsKPiArCQlwY2lfcmVhZF9jb25maWdfZHdv
cmQocGRldiwgMHg3MGMsICZ2YWwpOwo+ICsJCWlmICgodmFsICYgMHhmZjAwMDAwMCkgPT0gMHgx
NzAwMDAwMCkgewo+ICsJCQl2YWwgJj0gMHgwMGZmZmZmZjsKPiArCQkJdmFsIHw9IDB4MjcwMDAw
MDA7Cj4gKwkJCXBjaV93cml0ZV9jb25maWdfZHdvcmQocGRldiwgMHg1NzBjLCB2YWwpOwo+ICsJ
CX0KPiArCX0gZWxzZSB7Cj4gKwkJcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZChhcl9wY2ktPnBk
ZXYsIFBDSV9FWFBfTE5LQ1RMLAo+ICAJCQkJICAmYXJfcGNpLT5saW5rX2N0bCk7Cj4gLQlwY2ll
X2NhcGFiaWxpdHlfd3JpdGVfd29yZChhcl9wY2ktPnBkZXYsIFBDSV9FWFBfTE5LQ1RMLAo+ICsJ
CXBjaWVfY2FwYWJpbGl0eV93cml0ZV93b3JkKGFyX3BjaS0+cGRldiwgUENJX0VYUF9MTktDVEws
Cj4gIAkJCQkgICBhcl9wY2ktPmxpbmtfY3RsICYgflBDSV9FWFBfTE5LQ1RMX0FTUE1DKTsKPiAr
CX0KCk1hZ2ljIHZhbHVlcyBhcmUgbm90IG5pY2UsIGl0J3MgYmV0dGVyIHRvIGhhdmUgcHJvcGVy
IGRlZmluZXMuIFN1aml0aAphbHJlYWR5IHByb3ZpZGVkIG1lYW5pbmcgZm9yIDB4NzBjLCBidXQg
SSBkb24ndCBrbm93IHdoYXQgMHg1NzBjIG1lYW5zCihvciBJIGd1ZXNzIDB4NTAwIG9mZnNldCk/
CgpBbHNvIHBsZWFzZSB1c2UgR0VOTUFTSygpIGFuZCBGSUVMRF9QUkVQKCkuIE90aGVyd2lzZSBs
b29rcyBnb29kIHRvIG1lLgoKLS0gCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2Vu
L2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAph
dGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2F0aDEwawo=
