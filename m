Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF85B47C0
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 08:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFilecC5Q8qB/VmvQsBgc28wignSqJ9LEj3kWc847HQ=; b=PuLK9ho91R51WU
	MWGAWSEXe7DGVJZzWK/3qSKtWpS4MRJtjQ/AZD6TFc7kBML9RZyruyRxPZFBcls31QmZIE39ctTrt
	uzl/3kkja3QTXEamdkqRcy6bo+qztjLISjZ26sfYUDYfZs2IfvafERaBaU5y0rH+LFYxVwj+eMWZW
	rkDVRUf7dHnyzT2oQhNskMWwKNciDNzekr4TBclZQH2FmRFkD5chu7Xixzw4sUDGhhA7m5kYEQcgb
	83YV2IxgMeAKkMQb1T8tNoqmEuBBRAkGHViefYVfbMfaTeQyShOLrhaocFrTDcFLHssmEGWb/EIWo
	Ar/jO6GCeGaN7oXDl5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7Om-0003vN-7G; Tue, 17 Sep 2019 06:55:40 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7Of-0003ur-I2
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 06:55:34 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iA7OA-0004kY-3e; Tue, 17 Sep 2019 08:55:02 +0200
Message-ID: <dd8ee4a2e5cffa1bb6ab4176a57c2b66d495d3ac.camel@sipsolutions.net>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>
Date: Tue, 17 Sep 2019 08:55:01 +0200
In-Reply-To: <8e4cd872d082c6bce598c87411a2125f@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20190916_151039_049848_BE125514)
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
 <8e4cd872d082c6bce598c87411a2125f@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_235533_598141_ED312139 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-wireless-owner@vger.kernel.org,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA5LTE3IGF0IDE0OjM2ICswODAwLCBZaWJvIFpoYW8gd3JvdGU6Cj4gCj4g
RG8geW91IG1lYW4gaXQgc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgo+IAo+IENvLWRldmVsb3Bl
ZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cj4gU2lnbmVkLW9m
Zi1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KClllcywgSSB0aGluayB5b3Ug
bWVhbiB0aGUgcmlnaHQgdGhpbmcuIEZvciB0aGUgcmVjb3JkLCBpdCBzZWVtcyB0byBtZSBpdApz
aG91bGQgYmUKCkZyb206IEEgPC4uLj4KClsuLi5dCgpDby1kZXZlbG9wZWQtYnk6IEIgPC4uLj4K
U2lnbmVkLW9mZi1ieTogQiA8Li4uPgpTaWduZWQtb2ZmLWJ5OiBBIDwuLi4+CgpvciBzby4KCklP
VywgSSB0aGluayBoYXZpbmcgdGhlIHNhbWUgIkZyb206IiAod2hpY2ggZ2V0cyBwcmVzZXJ2ZWQg
aW4gZ2l0IGFzCiJBdXRob3IiKSBhbmQgIkNvLWRldmVsb3BlZC1ieSIgbWFrZXMgbm8gc2Vuc2U/
CgpZb3VyICJGcm9tIiBsaW5lIHdhcyBpbXBsaWVkLCBidXQgSSBzdXBwb3NlIHlvdSBkaWQgbWVh
biB0aGF0IEZyb20gd291bGQKYmUgeW91cnNlbGYgKGFzIGl0IHdhcyBpbiB0aGUgcGF0Y2gpIGFu
ZCB0aGVuIHRoZSBhYm92ZSBzZWVtcyByaWdodC4KCk9yIHlvdSBjYW4gYWRkIGEgIkZyb206IFRv
a2UgLi4uIiB0byB5b3VyIHBhdGNoIG1lc3NhZ2UgYW5kIGxlYXZlIHRoZQoiQ28tZGV2ZWxvcGVk
LWJ5OiB5b3Vyc2VsZiIgSSBzdXBwb3NlLCB0aGUgZGlmZmVyZW5jZSBpcyBpbiBob3cgZ2l0IHdp
bGwKcmVjb3JkIGl0LgoKam9oYW5uZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBr
Cg==
