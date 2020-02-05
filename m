Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320E61538CA
	for <lists+ath10k@lfdr.de>; Wed,  5 Feb 2020 20:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XMa3FuitwHOb8+rMqkXZKivjD0hkU6CSqf8z+DUmAw8=; b=EuYC9X0DXIxXAM
	n51sZPlkAF3V1boFGVYCdHNN2DNwl0MFYSMgUCfmsXJBm5Vy1bgS9jkGalmNSbrmnTKTy20W5bL/3
	8zChLNpryY4NWv0eaw/LyxwTWC8ufC8Q748cHX1IPGG+5z9lK5fLOdEvHJMMnZAcmOszRIl1OHW/i
	qlTWj9G0RDm/pjxLY/X0UskLDsRXI6JugwUlh7EcQpzA+yVB4GsI2R140+NZm089A91G3fF6HOVpb
	qScmmo8hl8oDfbd6InRWHKNKD0uI+YfI1mbD0S8C0dIKe4xlDQ+ib9sZTbWcmdHAugWhGNzBc4udy
	Xa/vfcf9aM7k3y14cmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izQ5L-0004ER-U4; Wed, 05 Feb 2020 19:11:39 +0000
Received: from mail.aperture-lab.de ([138.201.29.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izQ5I-0004Db-JA
 for ath10k@lists.infradead.org; Wed, 05 Feb 2020 19:11:38 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1580929879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oR8zVIyJPPLtcbIaEesyxlzKUGtwe37C23vEgBL6VjQ=;
 b=f2/oKsD4u8CWbuveyA+cr1Cn3MuN6+uYKh6gv0Nm07gzKgM/MtcCWQnbFIJFD2IxP/XjUd
 PIAUqa2WGyb1TD4CIaiLYWX6g7erH1gWMuPB2gj6USmG3GyKOJZDUxObIqpIEh7NzciYm+
 vNKiq04a4eUoRcbQTzDbgmjwoicaozyZ/YUrgrMiCKcfLZBdwjyWPrYtDTutj6F/7LM4fT
 aLVvuS6RSoBiQQEpUM5o8gKk3d+duyqJDfwfsp01aieu7AHNA7x+61wPfewyTfqgbWsESM
 lu9byc5nx1ai+ELzeE6iUYnVYG5/LF001YWdEICVhkKe/l7YvG/ZhW6wldblDg==
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: increase rx buffer size to 2048
Date: Wed,  5 Feb 2020 20:10:43 +0100
Message-Id: <20200205191043.21913-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_111136_781021_A0D899C4 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.201.29.205 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ben Greear <greearb@candelatech.com>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RnJvbTogTGludXMgTMO8c3NpbmcgPGxsQHNpbW9ud3VuZGVybGljaC5kZT4KCkJlZm9yZSwgb25s
eSBmcmFtZXMgd2l0aCBhIG1heGltdW0gc2l6ZSBvZiAxNTI4IGJ5dGVzIGNvdWxkIGJlCnRyYW5z
bWl0dGVkIGJldHdlZW4gdHdvIDgwMi4xMXMgbm9kZXMuCgpGb3IgYmF0bWFuLWFkdiBmb3IgaW5z
dGFuY2UsIHdoaWNoIGFkZHMgaXRzIG93biBoZWFkZXIgdG8gZWFjaCBmcmFtZSwKd2UgdHlwaWNh
bGx5IG5lZWQgYW4gTVRVIG9mIGF0IGxlYXN0IDE1MzIgYnl0ZXMgdG8gYmUgYWJsZSB0byB0cmFu
c21pdAp3aXRob3V0IGZyYWdtZW50YXRpb24uCgpUaGlzIHBhdGNoIG5vdyBpbmNyZWFzZXMgdGhl
IG1heG1pbXVtIGZyYW1lIHNpemUgZnJvbSAxNTI4IHRvIDE2NTYKYnl0ZXMuCgpUZXN0ZWQgd2l0
aCB0d28gYXRoMTBrIGRldmljZXMgaW4gODAyLjExcyBtb2RlLCBhcyB3ZWxsIGFzIHdpdGgKYmF0
bWFuLWFkdiBvbiB0b3Agb2YgODAyLjExcyB3aXRoIGZvcndhcmRpbmcgZGlzYWJsZWQuCgpGaXgg
b3JpZ2luYWxseSBmb3VuZCBhbmQgZGV2ZWxvcGVkIGJ5IEJlbiBHcmVlYXIuCgpMaW5rOiBodHRw
czovL2dpdGh1Yi5jb20vZ3JlZWFyYi9hdGgxMGstY3QvaXNzdWVzLzg5Ckxpbms6IGh0dHBzOi8v
Z2l0aHViLmNvbS9ncmVlYXJiL2F0aDEway1jdC9jb21taXQvOWU1YWIyNTAyN2UwOTcxZmEyNGNj
ZjkzMzczMzI0YzA4YzRlOTkyZApDYzogQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5j
b20+ClNpZ25lZC1vZmYtYnk6IExpbnVzIEzDvHNzaW5nIDxsbEBzaW1vbnd1bmRlcmxpY2guZGU+
Ci0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHQuaCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0LmggYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9hdGgvYXRoMTBrL2h0dC5oCmluZGV4IDRhMTI1NjRmYzMwZS4uNmEyYjVlMTBlNTY4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0dC5oCisrKyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0LmgKQEAgLTIyMjAsNyArMjIyMCw3IEBAIHN0
cnVjdCBodHRfcnhfY2hhbl9pbmZvIHsKICAqIFNob3VsZCBiZTogc2l6ZW9mKHN0cnVjdCBodHRf
aG9zdF9yeF9kZXNjKSArIG1heCByeCBNU0RVIHNpemUsCiAgKiByb3VuZGVkIHVwIHRvIGEgY2Fj
aGUgbGluZSBzaXplLgogICovCi0jZGVmaW5lIEhUVF9SWF9CVUZfU0laRSAxOTIwCisjZGVmaW5l
IEhUVF9SWF9CVUZfU0laRSAyMDQ4CiAjZGVmaW5lIEhUVF9SWF9NU0RVX1NJWkUgKEhUVF9SWF9C
VUZfU0laRSAtIChpbnQpc2l6ZW9mKHN0cnVjdCBodHRfcnhfZGVzYykpCiAKIC8qIFJlZmlsbCBh
IGJ1bmNoIG9mIFJYIGJ1ZmZlcnMgZm9yIGVhY2ggcmVmaWxsIHJvdW5kIHNvIHRoYXQgRlcvSFcg
Y2FuIGhhbmRsZQotLSAKMi4yNS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
