Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4A193F8C
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 14:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5GVeKA1Ln3pbJAImzgV7Zl0hjCWzgpb2gWa8O48I2A4=; b=Xlm1vMlNm2W+1j+n6Z+5pHd1j
	MTJk8rshur3IWxvC65uGcJ6KJWq92NvPxhJiujDme0U+9DRw/6anfM2m++Xdu2JKu6hKDTKdfql8P
	09bDbTbU7kDs1za4rvbQaZPWsLbF4N7SSdRwCULUT2mk3KBoMkXraGg33p9uq5aRfpp0e4cQyF4xg
	UTjFYTYvVF73kayqhOTLBIB46eh30pQU9xIgsbfooRz0npjtBfA5VNiMUJtXhiO7FJEfOt8Mqz4YO
	NzGr/LkQVexq4MMp+GSJweiiBhYIhyZe3gg5T3wzW7wHHjJTNkD9I0T3ZDN1d7xRbm8taTbM3AKc1
	gxtyGq9sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSM2-0002X4-Oi; Thu, 26 Mar 2020 13:15:26 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSLx-0002WY-57
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 13:15:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585228523; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=p8e+V1RjNThFUhCLpNoZ5DCB/JxOR/HQEKV9PjEzIJg=;
 b=LjD+ApHs5hDPtQ7F+nAFejxkoGumEeyjGi30RwyvdjsCghXYl8AiX/r705naHTXpksukYNPz
 RTTL22Zg/SNfJyo0oXBKkQ9zxayaiHrBW/x2MJ+7M6fucYmw96GCV3ZDpqCUysbTf4andxq4
 vK1wnley5THeX29F0omFi0Ln23M=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7caadb.7ff868643b20-smtp-out-n04;
 Thu, 26 Mar 2020 13:15:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6C58EC43636; Thu, 26 Mar 2020 13:15:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: ssreeela)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9AB83C433D2;
 Thu, 26 Mar 2020 13:15:06 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 18:45:06 +0530
From: ssreeela@codeaurora.org
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: enable VHT160 and VHT80+80 modes
In-Reply-To: <20200326095907.5326BC433BA@smtp.codeaurora.org>
References: <1585148169-2320-1-git-send-email-ssreeela@codeaurora.org>
 <20200326095907.5326BC433BA@smtp.codeaurora.org>
Message-ID: <812e84a585ed3aeda9aa54f7d2b14e93@codeaurora.org>
X-Sender: ssreeela@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_061523_423206_78DA2770 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lei Wang <leiwa@codeaurora.org>, Rick Wu <rwu@codeaurora.org>,
 linux-wireless@vger.kernel.org, Sebastian Gottschall <s.gottschall@dd-wrt.com>,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0yNiAxNToyOSwgS2FsbGUgVmFsbyB3cm90ZToKPiBTb3dtaXlhIFNyZWUgRWxh
dmFsYWdhbiA8c3NyZWVlbGFAY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+IAo+PiBGcm9tOiBMZWkg
V2FuZyA8bGVpd2FAY29kZWF1cm9yYS5vcmc+Cj4+IAo+PiBTZXQgcmlnaHQgY2hhbm5lbCBmcmVx
dWVuY2llcyBpbiBWSFQxNjAgbW9kZSBhY2NvcmRpbmcgdG8gdGhlIFZIVDE2MAo+PiBpbnRlcm9w
ZXJhYmlsaXR5IHdvcmthcm91bmQgYWRkZWQgYXMgcGFydCBvZiBJRUVFIFN0ZCA4MDIuMTHihKIt
MjAxNiBpbgo+PiAiVGFibGUgOS0yNTLigJRWSFQgT3BlcmF0aW9uIEluZm9ybWF0aW9uIHN1YmZp
ZWxkcyIsIGJhbmRfY2VudGVyX2ZyZXEyCj4+IGNvcnJlc3BvbmRzIHRvIENDRlMxIGluIFRhYmxl
IDktMjUzLiBQcmV2aW91cyBpbXBsZW1lbnRhdGlvbgo+PiAoYmFuZF9jZW50ZXJfZnJlcTIgPSAw
IGZvciBWSFQxNjApIGlzIG9ubHkgZGVwcmVjYXRlZC4KPj4gCj4+IEVuYWJsZSBWSFQ4MCs4MCBt
b2RlIGFuZCBzZXQgdGhlIHByb3BlciBwZWVyIFJYIG5zcyB2YWx1ZSBmb3IgVkhUMTYwIAo+PiBh
bmQKPj4gVkhUODArODAgbW9kZS4KPj4gCj4+IEJhc2VkIG9uIHBhdGNoZXMgYnkgU2ViYXN0aWFu
IEdvdHRzY2hhbGw6Cj4+IAo+PiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMTgwNzA0MDk1
NDQ0LjY2Mi0xLXMuZ290dHNjaGFsbEBkZC13cnQuY29tCj4+IAo+PiBodHRwczovL2xrbWwua2Vy
bmVsLm9yZy9yLzIwMTgwNzA0MTIwNTE5LjY0NzktMS1zLmdvdHRzY2hhbGxAZGQtd3J0LmNvbQo+
PiAKPj4gVGVzdGVkOiBxY2E5OTg0IHdpdGggZmlybXdhcmUgdmVyIDEwLjQtMy4xMC0wMDA0Nwo+
PiAKPj4gQ28tZGV2ZWxvcGVkLWJ5OiBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxs
QGRkLXdydC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdv
dHRzY2hhbGxAZGQtd3J0LmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBSaWNrIFd1IDxyd3VAY29k
ZWF1cm9yYS5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IFJpY2sgV3UgPHJ3dUBjb2RlYXVyb3JhLm9y
Zz4KPj4gU2lnbmVkLW9mZi1ieTogTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJvcmEub3JnPgo+PiBT
aWduZWQtb2ZmLWJ5OiBTb3dtaXlhIFNyZWUgRWxhdmFsYWdhbiA8c3NyZWVlbGFAY29kZWF1cm9y
YS5vcmc+Cj4gCj4gRmFpbHMgdG8gYnVpbGQgb24gR0NDIDguMS4gRGlkIHlvdSB0ZXN0IHRoaXM/
Cj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9idWcuaDo1
LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjgz
LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6NSwKPiAgICAg
ICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oOjE2LAo+ICAgICAgICAg
ICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5oOjEwLAo+
ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21h
Yy5jOjg6Cj4gSW4gZnVuY3Rpb24gJ2F0aDEwa19wZWVyX2Fzc29jX2hfdmh0JywKPiAgICAgaW5s
aW5lZCBmcm9tICdhdGgxMGtfcGVlcl9hc3NvY19wcmVwYXJlJyBhdAo+IGRyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6Mjc5MDoyOgo+IC4vaW5jbHVkZS9saW51eC9jb21waWxl
ci5oOjM1MDozODogZXJyb3I6IGNhbGwgdG8KPiAnX19jb21waWxldGltZV9hc3NlcnRfMjYzMScg
ZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6Cj4gQlVJTERfQlVHX09OIGZhaWxlZDogKCgo
KCgofigoKDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgzKSkgKyAxKSAmCj4gKH4oKCgwVUwpKSkg
Pj4gKDY0IC0gMSAtICg1KSkpKSkgKyAoMVVMTCA8PAo+IChfX2J1aWx0aW5fZmZzbGwoKCgofigo
KDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgzKSkgKyAxKSAmCj4gKH4oKCgwVUwpKSkgPj4gKDY0
IC0gMSAtICg1KSkpKSkgLSAxKSkpICYgKCgoKCgofigoKDBVTCkpKSkgLQo+ICgoKCgxVUwpKSkg
PDwgKDMpKSArIDEpICYgKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICg1KSkpKSkgKyAoMVVMTCA8
PAo+IChfX2J1aWx0aW5fZmZzbGwoKCgofigoKDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgzKSkg
KyAxKSAmCj4gKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICg1KSkpKSkgLSAxKSkpIC0gMSkpICE9
IDAKPiAgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVf
YXNzZXJ0XywgX19MSU5FX18pCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCj4gLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzMxOjQ6IG5vdGU6IGluIGRlZmluaXRp
b24gb2YgbWFjcm8KPiAnX19jb21waWxldGltZV9hc3NlcnQnCj4gICAgIHByZWZpeCAjIyBzdWZm
aXgoKTsgICAgXAo+ICAgICBefn5+fn4KPiAuL2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6
Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gJ19jb21waWxldGltZV9hc3NlcnQnCj4g
ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2Vy
dF8sIF9fTElORV9fKQo+ICAgXn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4vaW5jbHVkZS9saW51eC9i
dWlsZF9idWcuaDozOTozNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gJ2NvbXBpbGV0
aW1lX2Fzc2VydCcKPiAgI2RlZmluZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGls
ZXRpbWVfYXNzZXJ0KCEoY29uZCksIG1zZykKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmg6
NDk6Mzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIAo+ICdCVUlMRF9CVUdfT05fTVNHJwo+
ICAgIEJVSUxEX0JVR19PTl9NU0coX19idWlsdGluX2NvbnN0YW50X3AoX3ZhbCkgPyAgXAo+ICAg
IF5+fn5+fn5+fn5+fn5+fn4KPiAuL2luY2x1ZGUvbGludXgvYml0ZmllbGQuaDo4MTozOiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8gCj4gJ19fQkZfRklFTERfQ0hFQ0snCj4gICAgX19CRl9G
SUVMRF9DSEVDSyhfbWFzaywgMFVMTCwgX3ZhbCwgIkZJRUxEX1BSRVA6ICIpOyBcCj4gICAgXn5+
fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6MjYz
MTo0OiBub3RlOiBpbiBleHBhbnNpb24gb2YKPiBtYWNybyAnRklFTERfUFJFUCcKPiAgICAgRklF
TERfUFJFUChXTUlfUEVFUl9OU1NfODBfODBNSFpfTUFTSywgKHJ4X25zcyAtIDEpKTsKPiAgICAg
Xn5+fn5+fn5+fgo+IC4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM1MDozODogZXJyb3I6IGNh
bGwgdG8KPiAnX19jb21waWxldGltZV9hc3NlcnRfMjYyNycgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1
dGUgZXJyb3I6Cj4gQlVJTERfQlVHX09OIGZhaWxlZDogKCgoKCgofigoKDBVTCkpKSkgLSAoKCgo
MVVMKSkpIDw8ICgwKSkgKyAxKSAmCj4gKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICgyKSkpKSkg
KyAoMVVMTCA8PAo+IChfX2J1aWx0aW5fZmZzbGwoKCgofigoKDBVTCkpKSkgLSAoKCgoMVVMKSkp
IDw8ICgwKSkgKyAxKSAmCj4gKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICgyKSkpKSkgLSAxKSkp
ICYgKCgoKCgofigoKDBVTCkpKSkgLQo+ICgoKCgxVUwpKSkgPDwgKDApKSArIDEpICYgKH4oKCgw
VUwpKSkgPj4gKDY0IC0gMSAtICgyKSkpKSkgKyAoMVVMTCA8PAo+IChfX2J1aWx0aW5fZmZzbGwo
KCgofigoKDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgwKSkgKyAxKSAmCj4gKH4oKCgwVUwpKSkg
Pj4gKDY0IC0gMSAtICgyKSkpKSkgLSAxKSkpIC0gMSkpICE9IDAKPiAgIF9jb21waWxldGltZV9h
c3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19MSU5FX18pCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gLi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyLmg6MzMxOjQ6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8KPiAnX19jb21w
aWxldGltZV9hc3NlcnQnCj4gICAgIHByZWZpeCAjIyBzdWZmaXgoKTsgICAgXAo+ICAgICBefn5+
fn4KPiAuL2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mjogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvCj4gJ19jb21waWxldGltZV9hc3NlcnQnCj4gICBfY29tcGlsZXRpbWVfYXNzZXJ0
KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fTElORV9fKQo+ICAgXn5+
fn5+fn5+fn5+fn5+fn5+fgo+IC4vaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDozOTozNzogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gJ2NvbXBpbGV0aW1lX2Fzc2VydCcKPiAgI2RlZmlu
ZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRpbWVfYXNzZXJ0KCEoY29uZCks
IG1zZykKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmg6NDk6Mzogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIAo+ICdCVUlMRF9CVUdfT05fTVNHJwo+ICAgIEJVSUxEX0JVR19PTl9NU0co
X19idWlsdGluX2NvbnN0YW50X3AoX3ZhbCkgPyAgXAo+ICAgIF5+fn5+fn5+fn5+fn5+fn4KPiAu
L2luY2x1ZGUvbGludXgvYml0ZmllbGQuaDo4MTozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8gCj4gJ19fQkZfRklFTERfQ0hFQ0snCj4gICAgX19CRl9GSUVMRF9DSEVDSyhfbWFzaywgMFVM
TCwgX3ZhbCwgIkZJRUxEX1BSRVA6ICIpOyBcCj4gICAgXn5+fn5+fn5+fn5+fn5+fgo+IGRyaXZl
cnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6MjYyNzo0OiBub3RlOiBpbiBleHBhbnNp
b24gb2YKPiBtYWNybyAnRklFTERfUFJFUCcKPiAgICAgRklFTERfUFJFUChXTUlfUEVFUl9OU1Nf
MTYwTUhaX01BU0ssIChyeF9uc3MgLSAxKSk7Cj4gICAgIF5+fn5+fn5+fn4KPiBtYWtlWzVdOiAq
KiogW2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLm9dIEVycm9yIDEKPiBtYWtl
WzVdOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+IG1ha2VbNF06ICoqKiBb
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEwa10gRXJyb3IgMgo+IG1ha2VbM106ICoqKiBb
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoXSBFcnJvciAyCj4gbWFrZVsyXTogKioqIFtkcml2ZXJz
L25ldC93aXJlbGVzc10gRXJyb3IgMgo+IG1ha2VbMV06ICoqKiBbZHJpdmVycy9uZXRdIEVycm9y
IDIKPiBtYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKPiAKPiBQYXRjaCBzZXQgdG8gQ2hhbmdl
cyBSZXF1ZXN0ZWQuCgpIaSBLYWxsZSwKCkkgY2hlY2tlZCB0aGUgYnVpbGQuIEJ1aWxkIHdhcyBz
dWNjZXNzZnVsIHdpdGggR0NDIHZlcnNpb24gNC44LgpXaWxsIGZpeCB0aGUgZXJyb3IgYW5kIHVw
ZGF0ZSB0aGUgcGF0Y2guCgpUaGFua3MsClNvd21peWEgU3JlZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2F0aDEwawo=
