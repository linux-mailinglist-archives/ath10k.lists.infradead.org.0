Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26201CC339
	for <lists+ath10k@lfdr.de>; Fri,  4 Oct 2019 21:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hGDMNzUV5buW6w6+ZIfPc4jr65qUSMUC0fCkUhoABt0=; b=uhCyZaPqx1ZvGURtN8P1uMjZB
	ct+Nbkv0YAomTLYpoJuTddz7gk5tF501Fs5v3j0hZTgJqyPRAQ6tpl71UBj8Abjn95l48Z6BMFMQE
	vF3GnnQ/1WHq6MCf9nai5ljxsz3jf6J6ssVHMa0tlJ7p4ZGOzMC5Va0dLsE9WYkZwA08ITDb0KDFi
	M6VFMLADZhOtoR3fvwPM1lKsZj8yqE3f+T9qAOfeQcUogdGoCzj7yhLqWSJDCmxJ0j8h1KEAH2uXl
	0IgJ2glD/1xgTiL485vh09WUR1wlTFLE8duJE3ZThj5H2Sl69JKUSPEHRuRm+FjZuz37P8tfsJZpK
	hIoc952Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSoG-0001Ix-RX; Fri, 04 Oct 2019 19:00:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSl7-00071N-Le
 for ath10k@lists.infradead.org; Fri, 04 Oct 2019 18:57:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 559D760AD1; Fri,  4 Oct 2019 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570215414;
 bh=HddhwGwkCeWXSrQOE0ffx19+ae4C50NE2JNj4YM9ugg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lzefUBgE0PhGPUibXYpZiTua4u5DLXTFv2LEe5cEXOHvfpmujiljmw57uwXiSXSvj
 Qc6I/+2rKtzWAVdQhGwJeQNvbGuw/Egt9vxC5sLik5attnuC/WZA/qqUsXCAJOU+/A
 bjgQ8bpa7jEwZCdFOw2pSh6lPg9OcyNLghB2lOJM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 8744760C5F;
 Fri,  4 Oct 2019 18:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570215411;
 bh=HddhwGwkCeWXSrQOE0ffx19+ae4C50NE2JNj4YM9ugg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dDQTCFGVlr5ubij2d+p0i3/3dU/rtNif/w2BzQP88xLgj9tpoC7kn+Mxrz04HXAon
 BitBHnQAnrEm0zetbeigHu96HoEN3Vqq9HT2Qc+eKWv/4OHiDTiNY0/Ib7FePrVFr/
 CVNIsnKtwdDf6fOxvCuthlB9i1VExI/EDpWYEHKo=
MIME-Version: 1.0
Date: Fri, 04 Oct 2019 11:56:51 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Tom Psyborg <pozega.tomislav@gmail.com>
Subject: Re: [PATCH 5/5] ath10k: pull_svc_rdy code-style fix
In-Reply-To: <CAKR_QVK=XwLtaGgoLeU5-+XQP_-jVvAdWfkGvdyV9WNK_5QUng@mail.gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
 <1569268165-1639-5-git-send-email-pozega.tomislav@gmail.com>
 <87d0fq5kic.fsf@codeaurora.org>
 <CAKR_QVK=XwLtaGgoLeU5-+XQP_-jVvAdWfkGvdyV9WNK_5QUng@mail.gmail.com>
Message-ID: <998c7ce60b99865835f619dee86b301b@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115657_796266_22B052E6 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yNCAwMDo0OSwgVG9tIFBzeWJvcmcgd3JvdGU6Cj4gT24gMjQvMDkvMjAxOSwg
S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+PiBUb21pc2xhdiBQb8W+
ZWdhIDxwb3plZ2EudG9taXNsYXZAZ21haWwuY29tPiB3cml0ZXM6Cj4+IEFjdHVhbGx5IEkgcHJl
ZmVyIHRoZSBvcmlnaW5hbCBzdHlsZSwgc28gdGhhdCB3ZSBmaXJzdCBjaGVjayB0aGUgZGF0YSAK
Pj4gaW4KPj4gc2tiIGlzIHZhbGlkIGFuZCBvbmx5IHRoZW4gYXNzaWduIHRoZSBkYXRhIHRvIGV2
Lgo+PiAKPj4gLS0KPj4gS2FsbGUgVmFsbwo+PiAKPiAKPiBJdCBjYW1lIHRvIG15IG1pbmQgdGhh
dCB0aGlzIG1pZ2h0IGJlIHRoZSByZWFzb24gd2h5IHRoZSBjdXJyZW50Cj4gZHJpdmVyIGRpZCBu
b3QgZ2l2ZSBtZSB3YXJuaW5nIGFib3V0IHRvbyBzaG9ydCBzZXJ2aWNlIHJlYWR5IGV2ZW50LAo+
IGJ1dCB0aGVyZSB3YXMgbm8gd2FybmluZyBhYm91dCBldmVudCBsZW5ndGggaW4gZWl0aGVyIGNh
c2UuCj4gSSBldmVuIHRlc3RlZCB0aGlzIHdpdGggY29tcGF0IHdpcmVsZXNzIGZyb20gMjAxMy4g
YW5kIHRoZXJlIHRoZQo+IHNpdHVhdGlvbiB3YXMgdGhlIG9wcG9zaXRlOiBpbiBib3RoIGNhc2Vz
IHRoZXJlIHdhcyB3YXJuaW5nIGFib3V0Cj4gc2VydmljZSByZWFkeSBsZW5ndGguCgpIbW1tLCBt
eSB1bmRlcnN0YW5kaW5nIG9mIHRoZSB3YXkgdGhlIFRMViBXTUkgaXMgc3VwcG9zZWQgdG8gd29y
ayBpcyAKdGhhdCB0aGUgaW5kaXZpZHVhbCBkYXRhIHN0cnVjdHVyZXMgYXJlIGV4dGVuc2libGUs
IGFuZCBpbiB0aGUgY2FzZSAKd2hlcmUgYSBkYXRhIHN0cnVjdHVyZSBpcyByZWNlaXZlZCB3aXRo
IGEgInNob3J0IiBsZW5ndGggdGhlIHJlY2lwaWVudCAKaXMgc3VwcG9zZWQgdG8gemVyby1leHRl
bmQgdG8gdGhlIGV4cGVjdGVkIGxlbmd0aCwgYW5kIHRoZW4gaGFuZGxlIHRoZSAKInplcm9lZCIg
ZmllbGQocykgYXBwcm9wcmlhdGVseS4gVGhpcyBpcyBzdXBwb3NlZCB0byBob2xkIGZvciBib3Ro
IApob3N0PT5maXJtd2FyZSBhbmQgZmlybXdhcmU9Pmhvc3QuIFNpbmNlIHRoZSB3bWlfc2Vydmlj
ZV9yZWFkeV9ldmVudCBoYXMgCmJlZW4gZXh0ZW5kZWQgb3ZlciB0aW1lIHRoaXMgYmVoYXZpb3Ig
aXMgbmVjZXNzYXJ5IGluIHRoZSBjYXNlIG9mIGEgaG9zdCAKYnVpbHQgd2l0aCB0aGUgY3VycmVu
dCBmb3JtYXQgaW50ZXJmYWNpbmcgdG8gYSBmaXJtd2FyZSBidWlsdCB3aXRoIGFuIAplYXJsaWVy
IHZlcnNpb24gb2YgdGhlIGZvcm1hdC4gSSdtIG5vdCBzdXJlIHdoeSBhdGgxMGsgaXNuJ3Qgc3Vw
cG9ydGluZyAKdGhpcyBzaW5jZSB0aGUgUVRJICJvdXQgb2YgdHJlZSIgZHJpdmVyIChteSBhcmVh
IG9mIGZvY3VzKSBoYXMgdGhhdCAKc3VwcG9ydC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9h
dGgxMGsK
