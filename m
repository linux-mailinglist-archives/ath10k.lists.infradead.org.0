Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3243F125B82
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 07:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N43Q/o8WRNW4glXTI1DZMWiESkCnjcGT+i5kWaeRuis=; b=ifzhhvGVWaIrCTNwZwMP51aWj
	B67EGx09kBok4Z0lurXgMEeaCmWPJ+ydCtpllnziTz/UFm3djAx57Y9pjhYDXLykPfRmWzJMP3CcM
	lsNng64f6FUONkAqR41UJ9rFYaGYwOp9+A1gnHAwAFBQ92h0zyIKRrKDPtBIZRPwgAjYkIOyVLQb6
	H4TmIz2iLJO89YOUmBJWXv3u5ybq+8BYew1hwN+zGn8SPOuSW5yutlD3X53glzQ/EqFxAuF+MqlmE
	gnTJE/jmKdzeEfdWZQan0dnPPcFHZkUFsLBYTu1AD8n2cksimZMTdLX2JB1z7Sp06Z8liaOorJvwV
	+StX1LaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpQ9-0007Q7-Uf; Thu, 19 Dec 2019 06:36:25 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpQ5-0007PX-Bv
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 06:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=RxZXmpD1r5rWdodi5dIRAPji6QPoqfkPDV/+JsbJV4M=; 
 b=Mz32dpDnzVbeozVnxjqqewgVDMUfAjJjcrJaGzTGf0DXrQ9k7g9WScuanIbSeyjU1H7YYD5j968pjpGfwgpqHKg6pKl97/6JqF0SySlvHGIccwFvLGFoXl9npxs2dNKaLDxSQCl1jUC+h1dgOGOZaR0Ql0mCVd3Qo5Dt5BLUaik=;
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Tom Psyborg <pozega.tomislav@gmail.com>, Kalle Valo <kvalo@codeaurora.org>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <d24c7821-4e5e-28b5-5d1d-f076cfd762fc@newmedia-net.de>
Date: Thu, 19 Dec 2019 07:36:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
X-Received: from [2003:c9:3f2c:4f00:bc20:1f41:7042:9c0e]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihpOe-0003GP-Hi; Thu, 19 Dec 2019 07:34:52 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_223621_693030_3A83DA51 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CkFtIDE4LjEyLjIwMTkgdW0gMjM6NDUgc2NocmllYiBUb20gUHN5Ym9yZzoKPiBjY2luZyBKb2hh
bm5lcyBCZXJnIHNpbmNlIHVwc3RyZWFtIGNoYW5nZSAobWFjODAyMTEtbmV4dCkgYnJlYWtzIGJ1
aWxkOgo+Cj4gSW4gdGhlIGNvbW1pdCBsb2cgaXRzIHdyaXR0ZW46IHJlbW92ZSBTVVBQT1JUU184
MDIxMV9FTkNBUCBIVyBmbGFnCj4KPiBBbnkgc2FuZSByZWFzb25zIGZvciBkb2luZyB0aGF0PyBt
YWM4MDIxMSBmYWlscyB0byBidWlsZCBiZWNhdXNlIG9mCj4gcmVtb3ZlZCBmbGFncywgdGhpcyBp
cyBvbiBiYWNrcG9ydHMtNS4zLXJjNAo+Cj4gT3RoZXIgdGhhbiB0aGF0IHRoZSBmZWF0dXJlIGRl
bGl2ZXJzIHRoZSBwcm9taXNlZDoKPiBRQ0E5ODgwIGlwZXJmIGJldHdlZW4gd2lyZWQgYW5kIHdp
cmVsZXNzIG1hY2hpbmUKPiBuYXRpdmUgbW9kZSA0NDlNYnBzCj4gZXRoZXJuZXQgbW9kZSA1MjJN
YnBzCmpvaG5zIHBhdGNoIGRvZXMgbm90IHdvcmsgZm9yIHFjYTk4ODAgd2F2ZSAxIGNoaXBzZXRz
LiBpdCB3b3JrcyBvbmx5IGZvciAKMTAuNCBmaXJtYXJlcyBsaWtlIDk5ODQsIGlwcTQweHjCoCBl
dGMuIHRoZSA5ODgwIGhhcyBubyBiZW5lZml0IGZyb20gaXQgCmFuZCBoYXMgbm8gZWZmZWN0LgoK
c28geW91ciB0ZXN0IHNlZW0gdG8gaGF2ZSBmYWxzZSByZXN1bHRzCgpTZWJhc3RpYW4KCj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWls
aW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
