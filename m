Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6151C7E86
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 02:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=whu1q6apgLxsNIgTDb18OFY8amsHC+w1xYsa76X0Sww=; b=FbxSj8ICa1GNbc
	1pBuRUdMrfsBw+dCbpm5MwzoVleIWZ1YE9jU8HD1rdSzSbcDB+7D2eoHNFuVPGEE3nBcmyn0MKNMy
	xmpQcfRo6KLMUrIiyskOl3WFbEkdyR8HnrJl9veUlUj9mo5JgIPPqykKrTm7VFf8ReWdvpxx/YWAG
	9naxd2Nkt1285uyCkigTpMWikGLGnJGx2Jh36i/cRawXksGek5aL/kHszjlujNKEcgZjl1x0uKYgY
	pRHrn9ZGmnaGaF6T+Ix4t1QEHMJEjJU4lmQWqedMX0Tg4/PMjKXVD6Xg5FUkvGm6lWl+PHAn3M+bF
	A/yFseoVbaO8uD8EGHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWULE-00047i-Ls; Thu, 07 May 2020 00:24:44 +0000
Received: from smtprelay0170.hostedemail.com ([216.40.44.170]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWULB-00047O-8G
 for ath10k@lists.infradead.org; Thu, 07 May 2020 00:24:42 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 5A2242C12
 for <ath10k@lists.infradead.org>; Thu,  7 May 2020 00:24:39 +0000 (UTC)
X-Session-Marker: 6E69636B406D617272696F74742E6F7267
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, nick@marriott.org, ,
 RULES_HIT:41:152:355:379:541:599:960:967:973:988:989:1260:1261:1277:1311:1313:1314:1345:1381:1437:1513:1515:1516:1518:1521:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2693:2859:2895:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3867:3868:3870:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4362:4384:5007:6117:6119:6670:7652:7903:7974:8957:9025:9036:9040:9707:10004:10400:10848:11216:11218:11232:11658:11914:12043:12219:12297:12438:12555:12698:12737:12740:12895:12926:13069:13311:13357:13618:14096:14097:14181:14721:18000:21063:21080:21365:21451:21627:21740:21939:30009:30054:30070:30074:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: shelf60_b80b0ccc7503
X-Filterd-Recvd-Size: 1893
Received: from [192.168.43.16] (c-174-50-105-153.hsd1.ga.comcast.net
 [174.50.105.153]) (Authenticated sender: nick@marriott.org)
 by omf17.hostedemail.com (Postfix) with ESMTPA
 for <ath10k@lists.infradead.org>; Thu,  7 May 2020 00:24:38 +0000 (UTC)
From: Nick Marriott <nick@marriott.org>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: Re: Compex WLE600VX AP mode 5GHz doesn't work since kernel 5.6
Message-Id: <D188D5DB-87A5-4588-BFB0-6E8CC4EBD781@marriott.org>
Date: Wed, 6 May 2020 20:24:37 -0400
To: ath10k@lists.infradead.org
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_172441_351798_9B6102A0 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.170 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SeKAmW0gaGF2aW5nIHRoZSBzYW1lIGlzc3VlIHdpdGggdGhlIHJlZyBkb20gb24gbXkgY29tcGV4
IGNhcmQgb24gS2VybmVsIDUuNiwgcHJldmVudGluZyBpdCBmcm9tIHdvcmtpbmcgYXMgYW4gQVAu
ICBUaGUgaXNzdWUgaXMgc3RpbGwgcHJlc2VudCBvbiA1LjYuMTAgb24gRmVkb3JhLgpBbnkgaWRl
YSBob3cgbG9uZyBpdCB3aWxsIHRha2UgdG8gZ2V0IHRoZSBwYXRjaCByZXZlcnRlZD8KClRoYW5r
cyBtdWNoIQoKCk9uIDIwMjAtMDQtMTYgMjA6MzIsIEthbGxlIFZhbG8gd3JvdGU6Cj4gc3ZwIDxz
dnBtIGF0IHlhbmRleC5ydT4gd3JpdGVzOgo+IAo+PiBJIG5lZWQgaGVscCB3aXRoIG15IHNvZnRB
UCBpbnN0YWxsYXRpb24uCj4+IENvbXBleCBXTEU2MDBWWCBtaW5pUENJZSBjYXJkIGNhbid0IHN0
YXJ0IGF0IDVHSHogQVAgbW9kZSBhZnRlciB1cGRhdGUKPj4gdG8ga2VybmVsIDUuNiBvbiBBcmNo
TGludXgKPj4gV2l0aCBrZXJuZWwgNS41LnggYW5kIExUUyBhbGwgaXMgT0sKPj4gU29tZSBsb2dz
IGFuZCBkZXRhaWxzIGlzIGluIHRoaXMgQXJjaExpbnV4IGZvcnVtIHRvcGljCj4+IGh0dHBzOi8v
YmJzLmFyY2hsaW51eC5vcmcvdmlld3RvcGljLnBocD9pZD0yNTQ1MzUKPiAKPiBTbyBpZiBJIHJl
YWQgdGhlIGxpbmsgY29ycmVjdGx5IHRoaXMgY29tbWl0IGNhdXNlcyB0aGUgcmVncmVzc2lvbiAK
PiAod2hpY2gKPiB3YXMgaW50cm9kdWNlZCBpbiB2NS42LXJjMSk6Cj4gCj4gY29tbWl0IDJkYzAx
NjU5OWNmYTk2NzJhMTQ3NTI4Y2EyNmQ3MGMzNjU0YTU0MjMKPiBBdXRob3I6ICAgICBXZW4gR29u
ZyA8d2dvbmcgYXQgY29kZWF1cm9yYS5vcmc+Cj4gQXV0aG9yRGF0ZTogRnJpIE5vdiAyOSAwNzoz
NDowOSAyMDE5ICswMDAwCj4gQ29tbWl0OiAgICAgS2FsbGUgVmFsbyA8a3ZhbG8gYXQgY29kZWF1
cm9yYS5vcmc+Cj4gQ29tbWl0RGF0ZTogTW9uIERlYyAyIDEyOjA4OjAxIDIwMTkgKzAyMDAKPiAK
PiAgICAgYXRoOiBhZGQgc3VwcG9ydCBmb3Igc3BlY2lhbCAweDAgcmVndWxhdG9yeSBkb21haW4K
PiAKPiBXZW4sIHBsZWFzZSB0YWtlIGEgbG9vay4gU2hvdWxkIEkgcmV2ZXJ0IHRoaXMgY29tbWl0
PyBSZWdyZXNzaW9ucyBhcmUKPiBub3Qgb2suClllcywgcGxlYXNlIHJldmVydCBpdC4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcg
bGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
