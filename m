Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A177F7277
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 11:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6qRAGyUyrqJ148VtjBTiEl+Fb3Nj0TRu4uvLtByU1S4=; b=Kft3osl6k35JCAa4otbeb6VQT
	1BrkRSHo/eR9IX+nXCyRvYHZARGBJjrkKrFY70IbVvw49mGlcJsjbBHTzpp6nuFJtKU6mSKs3Swrg
	ByBzWZxDGu8WlO401TaRawX3vOi/s2QzXutAQEyhGbMr7Mjk9g+qA+kmpCdjEoDkAM+tqqA5tVvym
	5oBwie4vVv7KemKCqnPkb/qQyvTcBJJROcHqoU/62ZwKX7CuIl1xIB2uEj2qw9zonEPmugdt2cK55
	HS0zNN5a8ToEnXbDqK8UCthgNYz2hvKxwrP8t2u46Yez0p1TdNe7V3wS77gZpLpH94EKwNPosaE2K
	VeYaKa05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7Eq-0005wp-E5; Mon, 11 Nov 2019 10:48:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7EN-0005vl-8A
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 10:47:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 092E56092D; Mon, 11 Nov 2019 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573469253;
 bh=b/nwPztZBKNlDkwNmJw1aM7FU3Q5/+p+Y9WObfBkYBQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XjtiVsZ7PmhSoT6c+SWv6qParZhVDl5xFolrTjMdtNPtHWY+Wvsbj8NelNmROGckp
 JjmOTLl8m/gy/evVbD2Xvgqn3SLcRfUfUgTLIiYRYhfrnEBI3MOvOpdyqxUKChBHhd
 jr1hMTkRnf4otPnvHPmmzH4OiScmAsWvaVfiyWOk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 8ACCA6083E;
 Mon, 11 Nov 2019 10:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573469252;
 bh=b/nwPztZBKNlDkwNmJw1aM7FU3Q5/+p+Y9WObfBkYBQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JBxEiM6VY2Z0rsO1wJ7pLHRWnpPccMFSHCCLS8bhOj9id4TZj5R/2e57LYJh20yjI
 X9/kt+O/+K3f/F6m4WGe5wkLrju95YnasiryxZL0yeXvyoVv6IACtX5KW+m+ZnIXK9
 gt02a8bWC6Yp5BKX+YMljyKvpxpXHLaNDxSVoY40=
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 18:47:32 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
In-Reply-To: <3f3641ad49a2664d346558760e38b404@codeaurora.org>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
 <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
 <3f3641ad49a2664d346558760e38b404@codeaurora.org>
Message-ID: <70f8f208f631a2a2c7337f45b873a16e@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_024735_315316_563659B3 
X-CRM114-Status: UNSURE (   7.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0wMSAxNTo0MiwgV2VuIEdvbmcgd3JvdGU6Cj4gT24gMjAxOS0xMC0zMSAxNzow
OCwgS2FsbGUgVmFsbyB3cm90ZToKPiDjgIE+IEkganVzdCByZWFsaXNlZCB0aGF0IHRoaXMgaXMg
UlggcGF0aCBzbyB3ZSBzaG91bGQgdXNlIAo+IEFUSDEwS19TS0JfUlhDQigpCj4+IGluc3RlYWQu
IEkgbWFkZSB0aGUgY2hhbmdlIGJlbG93IHRvIHRoaXMgY29tbWl0IGluIHBlbmRpbmcgYnJhbmNo
Ogo+PiAKPiBJIHdpbGwgdGVzdCB3aXRoIHRoZSBuZXcgcGF0Y2ggdG9nZXRoZXIgd2l0aCBvdGhl
ciBwZXJmb3JtYW5jZSBwYXRjaGVzLgpIaSBLYWxsZSwgSSBoYXZlIHRlc3RlZCB3aXRoIHRoZSBw
YXRjaGVzIG9mIHBlbmRpbmcgYnJhbmNoLCBpdCBpcyAKc3VjY2Vzcy4KcmVzdWx0IGlzIHNhbWUg
d2l0aCB0aGUgcHVibGljIHJldmlldyB3aGljaCBJIHRlc3RlZCBiZWZvcmUuCgp0aGUgcGF0Y2hl
cyBJIHRlc3RlZCBvbiBwZW5kaW5nIGJyYW5jaDoKCmF0aDEwazogZW5hYmxlIGFsdCBkYXRhIG9m
IFRYIHBhdGggZm9yIHNkaW8KYXRoMTBrOiBhZGQgaHR0IFRYIGJ1bmRsZSBmb3Igc2RpbwphdGgx
MGs6IGRpc2FibGUgVFggY29tcGxldGUgaW5kaWNhdGlvbiBvZiBodHQgZm9yIHNkaW8KYXRoMTBr
OiBlbmFibGUgbmFwaSBvbiBSWCBwYXRoIGZvciBzZGlvCmF0aDEwazogc2RpbzogcmVtb3ZlIHN0
cnVjdCBhdGgxMGtfc2Rpb19yeF9kYXRhOjpzdGF0dXMKYXRoMTBrOiBzZGlvOiBjb3NtZXRpYyBj
bGVhbnVwCmF0aDEwazogYWRkIHdvcmtxdWV1ZSBmb3IgUlggcGF0aCBvZiBzZGlvCmF0aDEwazog
Y2hhbmdlIG1heCBSWCBidW5kbGUgc2l6ZSBmcm9tIDggdG8gMzIgZm9yIHNkaW8KYXRoMTBrOiBl
bmFibGUgUlggYnVuZGxlIHJlY2VpdmUgZm9yIHNkaW8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==
