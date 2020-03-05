Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8380D17AEC3
	for <lists+ath10k@lfdr.de>; Thu,  5 Mar 2020 20:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R1gYsgzRoqTiKqyWUnZXARUM0VGj/HqG+AjTzQhR8oo=; b=bLWPhFSi62nNLc
	+DAvY2IpEl3lFOMZ5e9UtPLPc4EG7E6mtF8Q8Z4KRh4Ogfm3e9ZJAYaGhEec1t3AGG/eUrqIUslXo
	x1kspWA/cjIwqEAtYvaz9/oeI1XO/xgk5rnN0lj9mlYUbYO54nwT59hhheO2O4K3o8l/CSzdnV+PM
	2zkfUsOg34KkXfalIrzS4k6ktbCANggmHCWROJdH7nOcmrYTjt71r5Qeou70JwbEX/dv6Jb2Qrrqg
	8zkO6FfGVb/5qXQH/39E6FkJTYl7nRtO7JpICft+9xoUK+2sc7NccvDm7CdA93fFrjzV6TpJv5qGL
	mBH1kfmTk0e/Eucq7yKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vrB-0003WA-IB; Thu, 05 Mar 2020 19:08:29 +0000
Received: from mail.lenbrook.com ([69.156.198.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vr7-0003Vl-Io
 for ath10k@lists.infradead.org; Thu, 05 Mar 2020 19:08:26 +0000
Received: from [192.168.0.70] (192.168.0.70) by MAIL1.pickering.lenbrook.com
 (192.168.0.250) with Microsoft SMTP Server id 14.3.487.0; Thu, 5 Mar 2020
 14:08:24 -0500
From: jbagg <jbagg@lenbrook.com>
Subject: [PATCH RFT] ath10k: add QCA9377 sdio hw_param item
To: <ath10k@lists.infradead.org>
Message-ID: <1d659299-19b8-2908-207c-b0e300e67b1b@lenbrook.com>
Date: Thu, 5 Mar 2020 14:08:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_110825_693245_2E3B21F1 
X-CRM114-Status: UNSURE (   2.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SSBhbHNvIGRpZCBzb21lIGlwZXJmIHRlc3Rpbmcgd2l0aCBrZXJuZWwgNS42LXJjNCB3aXRoIHRo
aXMgcGF0Y2ggb24gYSAKUUNBOTM3NyBTRElPIHdpZmkgbW9kdWxlLsKgIEkgY291bGRuJ3Qga2ls
bCB0aGUgd2lmaS7CoCBObyBhYm5vcm1hbCAKYWN0aXZpdHkgd2FzIGZvdW5kLsKgIGlwZXJmIHRl
c3RzIGludm9sdmVkIHR4LCByeCBhbmQgc2ltdWx0YW5lb3VzIHJ4IHR4IAp0cmFuc2ZlcnMuCgpX
ZSBhbHNvIGhhdmUgKzYwayB1bml0cyA8aHR0cHM6Ly93d3cuYmx1ZXNvdW5kLmNvbS9wcm9kdWN0
cy9ub2RlLz4gd2l0aCAKdGhlIFFDQTkzNzcgU0RJTyB3aWZpIG1vZHVsZSBpbiB0aGUgZmllbGQg
aW4gY3VzdG9tZXJzIGhhbmRzIGZvciBvdmVyIGEgCnllYXIgcnVubmluZyAvRXJpayBTdHJvbWRh
aGwncyBzZGlvIHBhdGNoZXMuCi8KCi4KCi0tIApKb25hdGhhbiBCYWdnCkVtYmVkZGVkIFN5c3Rl
bXMgRGV2ZWxvcGVyCk5BRCBFbGVjdHJvbmljcyB8IExlbmJyb29rIEluZHVzdHJpZXMgTGltaXRl
ZAo2MzMgR3Jhbml0ZSBDb3VydCwgUGlja2VyaW5nLCBPbnRhcmlvLCBDYW5hZGEgTDFXIDNLMSB8
IDkwNS04MzEtMDc5OSBleHQgNDQ3OCB8aHR0cDovL3d3dy5uYWRlbGVjdHJvbmljcy5jb20KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFp
bGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
