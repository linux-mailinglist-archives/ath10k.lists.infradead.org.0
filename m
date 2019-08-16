Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7840790572
	for <lists+ath10k@lfdr.de>; Fri, 16 Aug 2019 18:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P6bIv62rDD55AgugdKELCUPLg5zQiJcmoD0YvsHmx3A=; b=bzPgGOIxkC/2iMrSTV4sE7KEix
	WqNeVPI3WZDkqt9CuI4uX4ONNbK7bThtzjqiaUIZA51le9aPuWoacctMwsyydY0kmohw4Mf362q0W
	s4x0B372yBMmVctrU5QMTi6FtyrnDHfzf4BwmGyjP3I5kRVUF8+vOg/K/pc/+mrZhPULQUW5JS/qx
	T0Vj5aJqJXL9zmDhJBA+8QqJyLIr3kDq0Qc7dWWPVZgA0GN7+A2pq9PGDb0Bzl2HrRIAEAXyTQLJ5
	/fJvPC6n+SP7eOtRtt+x62IVbFXoEpWWzi/DyP8H630uLK1U1JtIt2gQA+1bia2arPB+s55P5J2dW
	0ceY3SpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyemY-0005VH-UF; Fri, 16 Aug 2019 16:08:51 +0000
Received: from mout2.fh-giessen.de ([212.201.18.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyemR-0005NC-3N
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 16:08:45 +0000
Received: from mx2.fh-giessen.de ([212.201.18.41])
 by mout2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hyemB-0003t1-8u; Fri, 16 Aug 2019 18:08:27 +0200
Received: from mailgate-2.its.fh-giessen.de ([212.201.18.14])
 by mx2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hyemB-006LjD-4G; Fri, 16 Aug 2019 18:08:27 +0200
Received: from p2e561b42.dip0.t-ipconnect.de ([46.86.27.66]
 helo=[192.168.1.24]) by mailgate-2.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1hyemA-000UF7-Qz; Fri, 16 Aug 2019 18:08:26 +0200
To: kvalo@codeaurora.org, davem@davemloft.net, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, nicoleotsuka@gmail.com, hch@lst.de,
 m.szyprowski@samsung.com, robin.murphy@arm.com,
 iommu@lists.linux-foundation.org
From: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Subject: regression in ath10k dma allocation
Message-ID: <8fe8b415-2d34-0a14-170b-dcb31c162e67@mni.thm.de>
Date: Fri, 16 Aug 2019 18:08:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:70.0) Gecko/20100101
 Thunderbird/70.0a1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090843_286912_0679E875 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.201.18.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: tobias.klausmann@freenet.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SGVsbG8gYWxsLAoKd2l0aGluIHRoZSBjdXJyZW50IGRldmVsb3BtZW50IGN5Y2xlIGkgbm90ZWQg
dGhlIGF0aDEwayBkcml2ZXIgZmFpbGluZyAKdG8gc2V0dXA6CgpbwqDCoMKgIDMuMTg1NjYwXSBh
dGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogZmFpbGVkIHRvIGFsbG9jIENFIGRlc3QgcmluZyAxOiAt
MTIKW8KgwqDCoCAzLjE4NTY2NF0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGZhaWxlZCB0byBh
bGxvY2F0ZSBjb3B5IGVuZ2luZSAKcGlwZSAxOiAtMTIKW8KgwqDCoCAzLjE4NTY2N10gYXRoMTBr
X3BjaSAwMDAwOjAyOjAwLjA6IGZhaWxlZCB0byBhbGxvY2F0ZSBjb3B5IGVuZ2luZSAKcGlwZXM6
IC0xMgpbwqDCoMKgIDMuMTg1NjY5XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogZmFpbGVkIHRv
IHNldHVwIHJlc291cmNlOiAtMTIKW8KgwqDCoCAzLjE4NTY5Ml0gYXRoMTBrX3BjaTogcHJvYmUg
b2YgMDAwMDowMjowMC4wIGZhaWxlZCB3aXRoIGVycm9yIC0xMgoKdGhlIGFjdHVhbCBmYWlsdXJl
IGNvbWVzIGZyb20gWzFdIGFuZCBpbmRlZWQgYmlzZWN0aW5nIGJyb3VnaHQgbWUgdG8gYSAKcmVs
YXRlZCBjb21taXQgImRtYS1jb250aWd1b3VzOiBhZGQgZG1hX3thbGxvYyxmcmVlfV9jb250aWd1
b3VzKCkgCmhlbHBlcnMiIFsyXS4gUmV2ZXJ0aW5nIHRoZSBjb21taXQgZml4ZXMgdGhlIHByb2Js
ZW0sIHlldCB0aGlzIG1pZ2h0IApqdXN0IGJlIHRoZSBkcml2ZXIgYWJ1c2luZyB0aGUgZG1hIGlu
ZnJhc3RydWN0dXJlLCBzbyBob3BlZnVsbHkgc29tZW9uZSAKY2FuIGhhdmUgYSBsb29rIGF0IGl0
LCBhcyBpJ20gbm90IGZhbWlsaWFyIHdpdGggdGhlIGNvZGUhCgoKWzFdOiAKaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3Ry
ZWUvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9jZS5jP2g9djUuMy1yYzQjbjE2NTAK
ClsyXTogCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWIxZDJkYzAwOWRlY2U0Y2Q3ZTYyOTQxOWI1MjI2
NmJhNTE5NjBhNmIKCgpHcmVldGluZ3MsCgpUb2JpYXMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==
