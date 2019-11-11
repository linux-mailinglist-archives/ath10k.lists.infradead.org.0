Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4A5F73C9
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 13:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=or4172XzSO5yHpIMNuYokSvrLvLRcPuu/UijmKFs4dM=; b=pNg2bluWd2HVId
	MuKQ/rtibfKyadiuazKg/TA7ptEck9H/TqpbrA7UcxEYTyxLGDpLRdc4WH7p8O2Jj+UNBNh38hvuB
	zrzKk7jAqwSKdk6q6cbpjUVXaKTHPa+BcREvnPivixxxPIrPnIRqmUSt31Vq71JSUHhErdF5JKhdL
	zGVY+Qe2dOayfONd4LaZti6D1UqLI6ldWyDGpJ/jjAEEmIBo2Lu7MDmbak2CWZP/LzUQ1b8F6W8fb
	0FsyULzmM8Bmug4DZQfs/YSgXTP9PusUj26TJ1dYdILlvDvRFlpsoBkqM6e4WGDIJ4CYNb/3apaUX
	shbIf/tcG1azYVqPxBKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8jc-0000Dx-Hq; Mon, 11 Nov 2019 12:23:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8jY-0000DV-3a
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 12:23:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4FFD360591; Mon, 11 Nov 2019 12:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573475031;
 bh=+U/zNmU7ZFRJPfXrBaeI836hI1qD6Bufi05gKUoZShw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=kdw2nlnQbniq1SVWU7Ci3V4I+7aTSrs1tp2VO8QLPgK4VXnmeS/xPnq92jXesRUE9
 2NyjD7tbl1Nz09U8i3c7BK3c5B8cBjz35X1zzSwrU19VwZlpSFoovxzaxWm77C1Lq3
 wEF7vbrRrsKQzbI23PagtwSY9jn95MH21RAwIVg0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B8C196055C;
 Mon, 11 Nov 2019 12:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573475030;
 bh=+U/zNmU7ZFRJPfXrBaeI836hI1qD6Bufi05gKUoZShw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=NKSm+lKOZf34cY+2mSplW94+1JqETyLzgba+2mf6fbbu+kjt5ihz9obGkIMatlWaX
 BUM1+Z9onLrwCcyaoNH/I0iKG80ZZNzhldG2EW8EVgkaLKJjGXJqYR2+Xq3h4gZEky
 sxvvgdG6DWts77utlT2j+3g/qrJolqqKQwYK7QBU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B8C196055C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
 <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
 <3f3641ad49a2664d346558760e38b404@codeaurora.org>
 <70f8f208f631a2a2c7337f45b873a16e@codeaurora.org>
Date: Mon, 11 Nov 2019 14:23:45 +0200
In-Reply-To: <70f8f208f631a2a2c7337f45b873a16e@codeaurora.org> (Wen Gong's
 message of "Mon, 11 Nov 2019 18:47:32 +0800")
Message-ID: <87r22ewqi6.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_042352_182725_B6350BBC 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V2VuIEdvbmcgPHdnb25nQGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cgo+IE9uIDIwMTktMTEtMDEg
MTU6NDIsIFdlbiBHb25nIHdyb3RlOgo+PiBPbiAyMDE5LTEwLTMxIDE3OjA4LCBLYWxsZSBWYWxv
IHdyb3RlOgo+PiDjgIE+IEkganVzdCByZWFsaXNlZCB0aGF0IHRoaXMgaXMgUlggcGF0aCBzbyB3
ZSBzaG91bGQgdXNlCj4+IEFUSDEwS19TS0JfUlhDQigpCj4+PiBpbnN0ZWFkLiBJIG1hZGUgdGhl
IGNoYW5nZSBiZWxvdyB0byB0aGlzIGNvbW1pdCBpbiBwZW5kaW5nIGJyYW5jaDoKPj4+Cj4+IEkg
d2lsbCB0ZXN0IHdpdGggdGhlIG5ldyBwYXRjaCB0b2dldGhlciB3aXRoIG90aGVyIHBlcmZvcm1h
bmNlIHBhdGNoZXMuCj4gSGkgS2FsbGUsIEkgaGF2ZSB0ZXN0ZWQgd2l0aCB0aGUgcGF0Y2hlcyBv
ZiBwZW5kaW5nIGJyYW5jaCwgaXQgaXMKPiBzdWNjZXNzLgo+IHJlc3VsdCBpcyBzYW1lIHdpdGgg
dGhlIHB1YmxpYyByZXZpZXcgd2hpY2ggSSB0ZXN0ZWQgYmVmb3JlLgo+Cj4gdGhlIHBhdGNoZXMg
SSB0ZXN0ZWQgb24gcGVuZGluZyBicmFuY2g6Cj4KPiBhdGgxMGs6IGVuYWJsZSBhbHQgZGF0YSBv
ZiBUWCBwYXRoIGZvciBzZGlvCj4gYXRoMTBrOiBhZGQgaHR0IFRYIGJ1bmRsZSBmb3Igc2Rpbwo+
IGF0aDEwazogZGlzYWJsZSBUWCBjb21wbGV0ZSBpbmRpY2F0aW9uIG9mIGh0dCBmb3Igc2Rpbwo+
IGF0aDEwazogZW5hYmxlIG5hcGkgb24gUlggcGF0aCBmb3Igc2Rpbwo+IGF0aDEwazogc2Rpbzog
cmVtb3ZlIHN0cnVjdCBhdGgxMGtfc2Rpb19yeF9kYXRhOjpzdGF0dXMKPiBhdGgxMGs6IHNkaW86
IGNvc21ldGljIGNsZWFudXAKPiBhdGgxMGs6IGFkZCB3b3JrcXVldWUgZm9yIFJYIHBhdGggb2Yg
c2Rpbwo+IGF0aDEwazogY2hhbmdlIG1heCBSWCBidW5kbGUgc2l6ZSBmcm9tIDggdG8gMzIgZm9y
IHNkaW8KPiBhdGgxMGs6IGVuYWJsZSBSWCBidW5kbGUgcmVjZWl2ZSBmb3Igc2RpbwoKVmVyeSBn
b29kLCB0aGFua3MgZm9yIHRlc3RpbmcuCgotLSAKS2FsbGUgVmFsbwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgx
MGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2F0aDEwawo=
