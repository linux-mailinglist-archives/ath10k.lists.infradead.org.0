Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A045EBE8D
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 08:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bAzJEhlikMESHhEEBTQrati3XJZAMyZCKZJP4rT4HCU=; b=kzus97/WS9IDkz/UbUdBUfXQI
	dmXccOjDEytYPR1a51jIF5QQMhYXBkaERQJbIAmeCx2+wL8q90m/YYdrucMyYSzBAUm15t+Zx6Mrl
	a4FO82DI9sJLBIVPzPtpp+IMihI3u09rJA0lSWoEvAIpGR9Kp3zbGskg3XdUPMIAvSMs2XKHJfzBa
	wKU2tH6k7n/IZa2dt4bk+72uE9UlRG6Ao76031o6VKR2b73Oy0iJhAHcZJY6k5xkNt1pswjCIg4LW
	GqSqg05wtHCWKB4/f/a80odFMG8vKJfncjFgcbpLWaQWCQhz0QH77EqGPw4wulOaSDr6dFD9kx+YG
	LSflzd0gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRaJ-0006QO-CR; Fri, 01 Nov 2019 07:43:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRa4-0006NI-Oq
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 07:42:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4029460A73; Fri,  1 Nov 2019 07:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572594168;
 bh=8L181n29D2wv/Vu1RML6oHrvstHDa8RPAf92NzGwY0I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E2s/h6tm7Umoq2m7Sjao9Sn3G+pSX3Zg1ZClKPNhkPfk5vdmlhoDGw5U/9Acvaq6D
 0lhhTPrHdjbYTGqYZipTIT4XB52RmAuTZXOHxJvkq81r2e2U3yBf/ho4L2/r4YvnU6
 RpiklyyO2pfkmV4fqjZmWuidXMR3Rp9hD9iR2EA0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id E1E6C602F0;
 Fri,  1 Nov 2019 07:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572594167;
 bh=8L181n29D2wv/Vu1RML6oHrvstHDa8RPAf92NzGwY0I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jgYQzoPJ6IDZz0ctM3DJL0mt4WM9OWVFepHrpNEdtDFcoC9a6HakEnm+ipyMvKFt1
 2AyegcQGmDGSoFKpyGeztfnm9irC3fdEjTY/tj0b0jRydVBIIDxlU4tu+gYOvl3KJu
 O5Ae5IbO7HLGa9kK5Rj64SKKolXszRxNkCCJFoJE=
MIME-Version: 1.0
Date: Fri, 01 Nov 2019 15:42:47 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
In-Reply-To: <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
 <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
Message-ID: <3f3641ad49a2664d346558760e38b404@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004248_846257_1BF894D9 
X-CRM114-Status: GOOD (  11.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMjAxOS0xMC0zMSAxNzowOCwgS2FsbGUgVmFsbyB3cm90ZToK44CBPiBJIGp1c3QgcmVhbGlz
ZWQgdGhhdCB0aGlzIGlzIFJYIHBhdGggc28gd2Ugc2hvdWxkIHVzZSAKQVRIMTBLX1NLQl9SWENC
KCkKPiBpbnN0ZWFkLiBJIG1hZGUgdGhlIGNoYW5nZSBiZWxvdyB0byB0aGlzIGNvbW1pdCBpbiBw
ZW5kaW5nIGJyYW5jaDoKPiAKSSB3aWxsIHRlc3Qgd2l0aCB0aGUgbmV3IHBhdGNoIHRvZ2V0aGVy
IHdpdGggb3RoZXIgcGVyZm9ybWFuY2UgcGF0Y2hlcy4KPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9rdmFsby9hdGguZ2l0L2NvbW1pdC8/aD1wZW5kaW5n
JmlkPTI4ZGExZmU3YTNmZmE1YzU1YzUyMzI4YzIxMTY1ZDllZmRmMmU5NGMKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9jb3JlLmgKPiBiL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oCj4gaW5kZXggYWY2OGViNWQwNzc2Li5jNTQw
N2Y1MDgwYjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9j
b3JlLmgKPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaAo+IEBA
IC0xMjQsNiArMTI0LDcgQEAgc3RydWN0IGF0aDEwa19za2JfY2Igewo+ICBzdHJ1Y3QgYXRoMTBr
X3NrYl9yeGNiIHsKPiAgCWRtYV9hZGRyX3QgcGFkZHI7Cj4gIAlzdHJ1Y3QgaGxpc3Rfbm9kZSBo
bGlzdDsKPiArCXU4IGVpZDsKPiAgfTsKPiAKPiAgc3RhdGljIGlubGluZSBzdHJ1Y3QgYXRoMTBr
X3NrYl9jYiAqQVRIMTBLX1NLQl9DQihzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3NkaW8uYwo+IGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDEway9zZGlvLmMKPiBpbmRleCBjMzQ2Mzc4ODEyMTkuLmM3ZDA5YjA3
YTM4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3NkaW8u
Ywo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvc2Rpby5jCj4gQEAgLTQx
OSw3ICs0MTksNyBAQCBzdGF0aWMgaW50Cj4gYXRoMTBrX3NkaW9fbWJveF9yeF9wcm9jZXNzX3Bh
Y2tldHMoc3RydWN0IGF0aDEwayAqYXIsCj4gIAlzdHJ1Y3QgYXRoMTBrX2h0YyAqaHRjID0gJmFy
LT5odGM7Cj4gIAlzdHJ1Y3QgYXRoMTBrX3NkaW9fcnhfZGF0YSAqcGt0Owo+ICAJc3RydWN0IGF0
aDEwa19odGNfZXAgKmVwOwo+IC0Jc3RydWN0IGF0aDEwa19za2JfY2IgKmNiOwo+ICsJc3RydWN0
IGF0aDEwa19za2JfcnhjYiAqY2I7Cj4gIAllbnVtIGF0aDEwa19odGNfZXBfaWQgaWQ7Cj4gIAlp
bnQgcmV0LCBpLCAqbl9sb29rYWhlYWRfbG9jYWw7Cj4gIAl1MzIgKmxvb2thaGVhZHNfbG9jYWw7
Cj4gQEAgLTQ2Niw3ICs0NjYsNyBAQCBzdGF0aWMgaW50Cj4gYXRoMTBrX3NkaW9fbWJveF9yeF9w
cm9jZXNzX3BhY2tldHMoc3RydWN0IGF0aDEwayAqYXIsCj4gIAkJCWdvdG8gb3V0Owo+IAo+ICAJ
CWlmICghcGt0LT50cmFpbGVyX29ubHkpIHsKPiAtCQkJY2IgPSBBVEgxMEtfU0tCX0NCKHBrdC0+
c2tiKTsKPiArCQkJY2IgPSBBVEgxMEtfU0tCX1JYQ0IocGt0LT5za2IpOwo+ICAJCQljYi0+ZWlk
ID0gaWQ7Cj4gCj4gIAkJCXNrYl9xdWV1ZV90YWlsKCZhcl9zZGlvLT5yeF9oZWFkLCBwa3QtPnNr
Yik7Cj4gQEAgLTEzMzMsMTQgKzEzMzMsMTQgQEAgc3RhdGljIHZvaWQKPiBhdGgxMGtfcnhfaW5k
aWNhdGlvbl9hc3luY193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgCQkJCQkJICAg
YXN5bmNfd29ya19yeCk7Cj4gIAlzdHJ1Y3QgYXRoMTBrICphciA9IGFyX3NkaW8tPmFyOwo+ICAJ
c3RydWN0IGF0aDEwa19odGNfZXAgKmVwOwo+IC0Jc3RydWN0IGF0aDEwa19za2JfY2IgKmNiOwo+
ICsJc3RydWN0IGF0aDEwa19za2JfcnhjYiAqY2I7Cj4gIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwo+
IAo+ICAJd2hpbGUgKHRydWUpIHsKPiAgCQlza2IgPSBza2JfZGVxdWV1ZSgmYXJfc2Rpby0+cnhf
aGVhZCk7Cj4gIAkJaWYgKCFza2IpCj4gIAkJCWJyZWFrOwo+IC0JCWNiID0gQVRIMTBLX1NLQl9D
Qihza2IpOwo+ICsJCWNiID0gQVRIMTBLX1NLQl9SWENCKHNrYik7Cj4gIAkJZXAgPSAmYXItPmh0
Yy5lbmRwb2ludFtjYi0+ZWlkXTsKPiAgCQllcC0+ZXBfb3BzLmVwX3J4X2NvbXBsZXRlKGFyLCBz
a2IpOwo+ICAJfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
