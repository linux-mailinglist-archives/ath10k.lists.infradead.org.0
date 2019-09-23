Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554D9BB367
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 14:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5R1/X7PN8lYZIP8XiA0nLW9fnSwPvfPNOXbPRIrOEes=; b=EdLzNu31HE0d0hrZ4nS3NnmfQ
	GYnwgHTMKbcgv1jTstkYRNtuDkfn3VJsi+L6EoyQnskLQ98dNV+G8kBSpRhQ62nq4+cJezIcM0Twt
	t4nnc7FcevpbHeZQpQ6f+WGCtcVqcnX/1OUmsZHF44oVKJkF4fo/a7edYwk3k0/5GV2pXxGjpzOoU
	7gUDjzdnVhj/crXYNdJTnFfW7CmOkgyaiSWNscqmmD09aIwxVSt1UBOrtRh4A3jQGNzKzfFQMwgsG
	o3nJKh9785Da3/1si3M271Mlrlap4w6TgfbNza8vnqXQfWKtmiM7nCFxl+1P205PNODS/KUpDnudc
	i5LgvDbXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNCW-0002OS-3w; Mon, 23 Sep 2019 12:12:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNCO-0002Nx-D2
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 12:12:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0A82C60740; Mon, 23 Sep 2019 12:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569240732;
 bh=HPVEQ3qiV4dE5Y7MN8XXgTbjV11uMPNbSBokopg4sog=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bgL7iO9pVYoTDKid7fDzpfxcFV5+K/BNGFT12AHb7pVDMoe879f0qKzbZnQjErLfx
 8WnRuTK3CXYac9+SnRD2YMBEAddhXvoSdRjs4eWsGF97wVZ+sEIZZPhMsljFo4HQqE
 ulwqVR3D5aMEKRj9Y0MIagwWRUTcNYrW6/a5bO9Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 787AB6013C;
 Mon, 23 Sep 2019 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569240731;
 bh=HPVEQ3qiV4dE5Y7MN8XXgTbjV11uMPNbSBokopg4sog=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iQhJqro0695diy/Mv9ZHAGi0vqvzg8md86xhrwDqkj2lUjm5NIeUNoHfqt/lho4fD
 L7EbyL3T/1Kpq+/Yju1TN4rYMWwULDAfOiPEodWi4/nxzcp1IrIN3ZEuh7aNu71gGj
 QFWl+dAR60sLY35CXhAgsQJowlWkZjQVmJOnIzYo=
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 20:12:11 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
In-Reply-To: <87v9tj6y5p.fsf@codeaurora.org>
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
 <874l15c20j.fsf@codeaurora.org>
 <6b7927f633cb7cbe2ba0d958d7d06f9a@codeaurora.org>
 <87v9tj6y5p.fsf@codeaurora.org>
Message-ID: <e61e7cbe3fd9dfad4679bd1d686bc44d@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_051212_461676_726CF081 
X-CRM114-Status: GOOD (  11.79  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yMyAxOTozNywgS2FsbGUgVmFsbyB3cm90ZToKPiBXZW4gR29uZyA8d2dvbmdA
Y29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gT24gMjAxOS0wOS0yMSAxOTozOCwgS2FsbGUg
VmFsbyB3cm90ZToKPj4+IAo+Pj4gV2hhdCdzIHdyb25nIHdpdGggYXRoMTBrX3NkaW9faGlmX2Rp
YWdfcmVhZCgpPyBBRkFJQ1MgdGhpcyB3aG9sZQo+Pj4gZnVuY3Rpb24gZHVwbGljYXRlcyBqdXN0
IHdoYXQgaXQgZG9lcy4KPj4gCj4+IGF0aDEwa19zZGlvX2hpZl9kaWFnX3JlYWQncyBidWZmZXIg
c2l6ZSBpcyBsaW1pdCwKPj4gYW5kIHRoZSBkdW1wIG1lbW9yeS9yZWdpc3RlcidzIGJ1ZmZlciBz
aXplIGlzIGxhcmdlciB0aGFuIHRoZSBkaWFnCj4+IHdpbmRvdydzIGxpbWl0LAo+PiBpZiB1c2Ug
aXQgZGlyZWN0bHkgd2lsbCB0cmlnZ2VyIGNyYXNoIGxpa2UgdGhpcyBmb3IgZXZlcnkgdGltZS4K
PiAKPiBZb3Ugc2hvdWxkbid0IGJsaW5kbHkgYWRkIGV4dHJhIGNvZGUgdG8gYXRoMTBrIHdvcmth
cm91bmQgaXNzdWVzLiBBbmQgCj4gaWYKPiB5b3UgcmVhbGx5IG5lZWQgdG8gdXNlIGEgd29ya2Fy
b3VuZCwgdGhlbiBpdCBuZWVkcyB0byBwcm9wZXJseSAKPiBleHBsYWluZWQKPiBpbiB0aGUgY29t
bWl0IGFuZCBhcyB3ZWxsIGFzIGNvbW1lbnRlZCBpbiB0aGUgY29kZS4gQnV0IGJlZm9yZSB0aGF0
IHRoZQo+IGlzc3VlIG5lZWRzIHRvIGJlIHRob3JvdWdobHkgaW52ZXN0aWdhdGVkIGFuZCB1bmRl
cnN0b29kIHdoZXJlIHRoZQo+IHByb2JsZW0gaXMgY29taW5nIGZyb20uIEJlY2F1c2UgaXQgbWln
aHQgYmUgZXZlbiBjb21wbGV0ZWx5IHVucmVsYXRlZCAKPiB0bwo+IGF0aDEway4KCj4gCj4+IFsg
IDE0OS45NDc2MjRdIGF0aDEwa19zZGlvIG1tYzE6MDAwMToxOiBhdGgxMGtfc2Rpb19oaWZfZGlh
Z19yZWFkCj4+IGJ1Zl9sZW4gOjQKPj4gWyAgMTQ5Ljk1NDc0MV0gYXRoMTBrX3NkaW8gbW1jMTow
MDAxOjE6IGF0aDEwa19zZGlvX2hpZl9kaWFnX3JlYWQKPj4gYnVmX2xlbiA6MjQwCj4+IFsgIDE1
MS4wMDUxNDNdIFVuYWJsZSB0byBoYW5kbGUga2VybmVsIHBhZ2luZyByZXF1ZXN0IGF0IHZpcnR1
YWwKCj4+IFsgIDE1MS4xMTQ1MzddIFByb2Nlc3Mgc3dhcHBlci8wIChwaWQ6IDAsIHN0YWNrIGxp
bWl0ID0KPj4gMHgwMDAwMDAwMGUzMGRjNjY1KQrjgIEKPiAKPiBEaWQgeW91IGludmVzdGlnYXRl
IHRoaXM/IElzIHRoZSBidWZmZXIgeW91IHJlYWRpbmcgdG8gRE1BIGFjY2Vzc2libGU/Cj4gV2hh
dCBhYm91dCB0aGUgYWxpZ25tZW50PyBJcyB0aGVyZSBhIGNlcnRhaW4gbGVuZ3RoIHdoaWNoIGlz
IHRoZSBsaW1pdAo+IGZvciBjcmFzaGVzPyBBbmQgc28gb24uLi4KdGhlIGxpbWl0IGlzIDQgYnl0
ZS4KZm9yIDUgYnl0ZXMsIGl0IHdpbGwgY3Jhc2guCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==
