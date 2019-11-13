Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AE7FA758
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 04:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rx+F4qHdTiR0EZhuJr0W5Yh2/Pq/WQVJyZqKkqvU0PA=; b=EBGveHG1jtxWZRWf5E2FLHMi8
	Uso0gKAkvX7WLWtSS1TcqpwkpRKoSd8NskEZsXBbxa70DQD4vFvjvhhXfvFFEjqOT2gi1XDPCHFpj
	25gY3VWncsALTEMQxuJQkTaV2ScGbw2+qYVK5uU+uDlfzurtKBG1bsERQjQckTXHJLc4ipm+Xgsxt
	6Y2QTwhViXTKmCmBcZOPKb+4mBel1pauZjOI9a6xol2RiRiAE3LWi9b+JsQ3MmG3gBkipigblsGoR
	5P/QC7P7gnZjn1t0GJcFlwMzkoCKXm8nw3msYq5kT7Gr+KBzaudA8k1J9zHystGAdE6g/rSob+VDN
	r6sRbAQGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjTp-0002qm-Ge; Wed, 13 Nov 2019 03:38:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjTl-0002qE-4H
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 03:38:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 465AB602EE; Wed, 13 Nov 2019 03:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573616278;
 bh=GEBgaE4DdNY7qFa24EInCgdSI0JAGHtKkaCNGSQWEpo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NRtfCdPdoaUfDngdFCmj2RtA5t6p/IyYO/860f6GKn0H4VYasYcGLyBnlX9NrtYhX
 f00+dwv4A0N5jfw9/8JU2uCcRrq1ZhnYSg+/5/zQ2F27hESX681yG1Ch3YyC+I1kTa
 p3fb3Z+3bnNvA2BCMgMFqmGDfC2gLz1lWA+BFBMY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id BCA8C601E7;
 Wed, 13 Nov 2019 03:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573616277;
 bh=GEBgaE4DdNY7qFa24EInCgdSI0JAGHtKkaCNGSQWEpo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E8PM8j6AtSy5jbglHF8pcJqGCJ9WhpxRqFw9ZnhJth3HeXGTWPjibTFXg4K1AN6K/
 cpSTv50vWcg2JTU7RAQhCyN/7VBz5KKGSTECycbILk5aUyRTEqojDC6YK5WZwPk9Zp
 qeJ+Bd3+VFET4NdbTgq6jrq5WcRNRjE6URZo28G0=
MIME-Version: 1.0
Date: Wed, 13 Nov 2019 11:37:57 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
In-Reply-To: <87r22ewqi6.fsf@codeaurora.org>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
 <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
 <3f3641ad49a2664d346558760e38b404@codeaurora.org>
 <70f8f208f631a2a2c7337f45b873a16e@codeaurora.org>
 <87r22ewqi6.fsf@codeaurora.org>
Message-ID: <ee6539c50cff626968984df3b511a5a8@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_193801_194527_1127A34A 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0xMSAyMDoyMywgS2FsbGUgVmFsbyB3cm90ZToKPiBXZW4gR29uZyA8d2dvbmdA
Y29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gT24gMjAxOS0xMS0wMSAxNTo0MiwgV2VuIEdv
bmcgd3JvdGU6Cj4+PiBPbiAyMDE5LTEwLTMxIDE3OjA4LCBLYWxsZSBWYWxvIHdyb3RlOgo+Pj4g
44CBPiBJIGp1c3QgcmVhbGlzZWQgdGhhdCB0aGlzIGlzIFJYIHBhdGggc28gd2Ugc2hvdWxkIHVz
ZQo+Pj4gQVRIMTBLX1NLQl9SWENCKCkKPj4+PiBpbnN0ZWFkLiBJIG1hZGUgdGhlIGNoYW5nZSBi
ZWxvdyB0byB0aGlzIGNvbW1pdCBpbiBwZW5kaW5nIGJyYW5jaDoKPj4+PiAKPj4+IEkgd2lsbCB0
ZXN0IHdpdGggdGhlIG5ldyBwYXRjaCB0b2dldGhlciB3aXRoIG90aGVyIHBlcmZvcm1hbmNlIAo+
Pj4gcGF0Y2hlcy4KPj4gSGkgS2FsbGUsIEkgaGF2ZSB0ZXN0ZWQgd2l0aCB0aGUgcGF0Y2hlcyBv
ZiBwZW5kaW5nIGJyYW5jaCwgaXQgaXMKPj4gc3VjY2Vzcy4KPj4gcmVzdWx0IGlzIHNhbWUgd2l0
aCB0aGUgcHVibGljIHJldmlldyB3aGljaCBJIHRlc3RlZCBiZWZvcmUuCj4+IAo+PiB0aGUgcGF0
Y2hlcyBJIHRlc3RlZCBvbiBwZW5kaW5nIGJyYW5jaDoKPj4gCj4+IGF0aDEwazogZW5hYmxlIGFs
dCBkYXRhIG9mIFRYIHBhdGggZm9yIHNkaW8KPj4gYXRoMTBrOiBhZGQgaHR0IFRYIGJ1bmRsZSBm
b3Igc2Rpbwo+PiBhdGgxMGs6IGRpc2FibGUgVFggY29tcGxldGUgaW5kaWNhdGlvbiBvZiBodHQg
Zm9yIHNkaW8KPj4gYXRoMTBrOiBlbmFibGUgbmFwaSBvbiBSWCBwYXRoIGZvciBzZGlvCj4+IGF0
aDEwazogc2RpbzogcmVtb3ZlIHN0cnVjdCBhdGgxMGtfc2Rpb19yeF9kYXRhOjpzdGF0dXMKPj4g
YXRoMTBrOiBzZGlvOiBjb3NtZXRpYyBjbGVhbnVwCj4+IGF0aDEwazogYWRkIHdvcmtxdWV1ZSBm
b3IgUlggcGF0aCBvZiBzZGlvCj4+IGF0aDEwazogY2hhbmdlIG1heCBSWCBidW5kbGUgc2l6ZSBm
cm9tIDggdG8gMzIgZm9yIHNkaW8KPj4gYXRoMTBrOiBlbmFibGUgUlggYnVuZGxlIHJlY2VpdmUg
Zm9yIHNkaW8KPiAKPiBWZXJ5IGdvb2QsIHRoYW5rcyBmb3IgdGVzdGluZy4KSGkgS2FsbGUsCgp0
aGlzIHBhdGNoIHdpbGwgdHJpZ2dlciBjb25uZWN0IGZhaWwgZm9yIFBTSyBtb2RlIEFQOgphdGgx
MGs6IGFkZCB3b3JrcXVldWUgZm9yIFJYIHBhdGggb2Ygc2RpbwoKSSBoYXZlIHNlbnQgcGF0Y2gg
dG8gZml4IGl0OgphdGgxMGs6IGNsZWFyIGllZWU4MDIxMV9yeF9zdGF0dXMgZm9yIHNkaW8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWls
aW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
