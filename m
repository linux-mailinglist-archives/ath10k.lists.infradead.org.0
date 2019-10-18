Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6A4DC499
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 14:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QE1419fuQS0prA1t9WGjVke5E6nEo6PIVcRX1XkJg9w=; b=FjBfgyYCmM4fJ2
	M5zN7kkkyn7dMNjO8bxF9XcD8ZHnDUalb6a+a0+FZin6LGYl+ieLGx/wEiUBMpdu69G9ffdDhDczT
	09HyYm0cy1pPUQz4JNa6mfLxf2mhAp8qtB5lcd8B+DU8blCQosLIVuIGOtjZW2JQRCjUSzTRUiRvN
	HWbpHxh5L89e/ANZZDy5OjMajgox4MqSM2/uYQ9PDB5O4mACIxIpNUQNAvrFomMSIWHe4otSlY9VG
	d3etig03VQxd0YB7yfbM6qnFnQblTg6UGZ7VN/iVN8DNL1oMDBZXNOwRPjZQ7M93mbwTlYolcO/Fq
	rO6VVY9NAGqhHbOgu/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRGe-0000kL-LZ; Fri, 18 Oct 2019 12:22:04 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRGZ-0000gq-Pn
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 12:22:01 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLRGT-00023f-Lb; Fri, 18 Oct 2019 14:21:53 +0200
Message-ID: <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make
 room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, Kan Yan
 <kyan@google.com>
Date: Fri, 18 Oct 2019 14:21:52 +0200
In-Reply-To: <87sgnqe4wg.fsf@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052159_836950_9C8435FD 
X-CRM114-Status: UNSURE (   6.89  )
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEwLTE4IGF0IDEyOjE1ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cgo+IEhvd2V2ZXIsIHRoZXJlJ3MgYSBuaWNlIGp1aWN5ICd1MTYgYWNrX2ZyYW1l
X2lkJyBhdCB0aGUgc3RhcnQgb2YKPiBpZWVlODAyMTFfdHhfaW5mby4gQ291bGQgd2UgcG90ZW50
aWFsbHkgdXNlIHRoYXQ/IFdlIGNvdWxkIHVzZSB0aGUgdG9wCj4gYml0IGFzIGEgZGlzYW1iaWd1
YXRpb24gZmxhZzsgSSB0aGluayB3ZSdyZSBmaW5lIHdpdGggMTUgYml0cyBmb3IgdGhlIFRYCj4g
dGltZSBpdHNlbGYgKGEgc2luZ2xlIHBhY2tldCB3b24ndCBleGNlZWQgOG1zIG9yIFRYIHRpbWUp
LCBzbyBpZiB3ZSBjYW4KPiBsaXZlIHdpdGggMTUgYml0cyBvZiBBQ0sgZnJhbWUgSUQgc3BhY2Us
IHRoYXQgY291bGQgYmUgYSB3YXkgZm9yd2FyZD8KCkkgd2FzIGdvaW5nIHRvIHNheSB0aGF0IHNo
b3VsZCB3b3JrIGFzIHdlIG9ubHkgZXZlciBoYXZlIGEgaGFuZGZ1bCBvZgpBQ0sgZnJhbWUgSURz
LCBidXQgLi4uIHlvdSBzdGlsbCBuZWVkIHRoZSBhaXJ0aW1lIGV2ZW4gZm9yIGEgZnJhbWUgdGhh
dAp1c2Vyc3BhY2Ugd2FudHMgdG8ga25vdyB0aGUgQUNLIHN0YXR1cyBvZiwgbm8/CgpXZSBjb3Vs
ZCBwdWxsIHRoZSBhY2tfZnJhbWVfaWQgb3V0LW9mLWxpbmUgdXNpbmcgdGhlIHNrYiBleHRlbnNp
b25zCmZyYW1ld29yaywgYnV0IEknbSBub3Qgc3VyZSB3ZSBzaG91bGQgYWxsb2NhdGUgb25lIG9m
IHRoZSBwb3NzaWJsZSA4CmV4dGVuc2lvbiBJRHMgZm9yIHRoYXQgZWl0aGVyIC4uLgoKV2hhdCB3
ZSByZWFsbHkgc2hvdWxkIGRvIGlzIGNvbnZlcnQgYWxsIChyZWxldmFudCkgZHJpdmVycyB0byB1
c2UgcmF0ZQp0YWJsZXMgaW5zdGVhZCBvZiBoYXZpbmcgYWxsIHRoZSByYXRlcyBpbiB0aGUgVFgg
aW5mbywgdGhlbiB3ZSdkIGdldCBhCmxvdCBvZiBzcGFjZSwgYnV0IHRoYXQncyBhIGxvdCBvZiB3
b3JrIC4uLgoKam9oYW5uZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
