Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64586B9D75
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 12:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=85XGYyJ8L5E9gHvn+6Bbzrvv2a1pIzjvHbVz576LQ2I=; b=iJWwP3RZl4Ufba55l8ouSCEiF
	XJJW+lhlz4WDrO9a/c7fXCQjd6pg5O4ic4v01CeXgezm2oabkpyD4H5HnBiTgLYC7sLfUcPYn/RYG
	8gRWChKLGBGovxBVRX4iiHcyemyxTd6o4gho2ASQmDvanaYI01gUAldeO6Ols1535zUYcOjw0LucV
	ASuMKI3BbEHR6x6ZFnrd8bWvqZiFtjcB06/Cc44V/ilEV4YdkTlXX7wRe2eTSGb5s+WyqT5pJZg36
	fgRqrmUPJo/YA632TURvT4kForn9qeEGMu7DidHq0p8ySzX3iJ811egP33cCNT9iEr8MWQWuw36zD
	3YTgwqGwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBcxE-000327-Ch; Sat, 21 Sep 2019 10:49:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBcx9-00031i-4b
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 10:49:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 29629613A8; Sat, 21 Sep 2019 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569062962;
 bh=aMZQ9HI1touQ/bRjnKf8s+b3xSt+69lWcUCqqMGw3jQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LZi2vuwPQrNwt9wd8WrVtU0jJ3S6mY8rl3EKsevHAAh9WyGNocaKIzg1Rrony/Qbi
 XBc84+9W7/DjOBbtdnaoP3s30MTDN6sxGd/amtvJ0xoIEsSS4RxV47MRsgIShBvafr
 BmIqYK9NNO8Gpnl9l5e1IeYLOr+o0rQcNAHJyiy8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id D9D076118C;
 Sat, 21 Sep 2019 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569062960;
 bh=aMZQ9HI1touQ/bRjnKf8s+b3xSt+69lWcUCqqMGw3jQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JD8g88SDQmHfvuD/JE7zxZFacoQDUQB+XE4pFcTOH6SnDXrOxZKBAFUk6eIpUI4UN
 vNPdoxyWnF+9/iAFq/3uPH2inOy7FDjwuiOGvB8KrDiZ+3xaFaPCoaSqb0XrhXDkvT
 hAGLzk6CceOI2uRmjKU6lCGUON3vazLkYLXf2tE0=
MIME-Version: 1.0
Date: Sat, 21 Sep 2019 18:49:20 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <8736gre3bm.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk>
Message-ID: <198124204167325252fcfcd65e3f2733@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_034923_231290_99F87221 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yMCAxNzoxNSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gT24gMjAxOS0wOS0x
OSAxODozNywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gWWlibyBaaGFvIDx5
aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4gCj4+Pj4gT24gMjAxOS0wOS0xOCAxOToy
MywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4+PiBZaWJvIFpoYW8gPHlpYm96
QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+IAo+Pj4+Pj4gT24gMjAxOS0wOS0xOCAwNTox
MCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4+Pj4+IFlpYm8gWmhhbyA8eWli
b3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+PiAKPj4+Pj4+Pj4gSW4gYSBsb29wIHR4
cXMgZGVxdWV1ZSBzY2VuYXJpbywgaWYgdGhlIGZpcnN0IHR4cSBpbiB0aGUgcmJ0cmVlCj4+Pj4+
Pj4+IGdldHMKPj4+Pj4+Pj4gcmVtb3ZlZCBmcm9tIHJidHJlZSBpbW1lZGlhdGVseSBpbiB0aGUg
aWVlZTgwMjExX3JldHVybl90eHEoKSwgCj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+PiBsb29wIHdpbGwg
YnJlYWsgc29vbiBpbiB0aGUgaWVlZTgwMjExX25leHRfdHhxKCkgZHVlIHRvCj4+Pj4+Pj4+IHNj
aGVkdWxlX3Bvcwo+Pj4+Pj4+PiBub3QgbGVhZGluZyB0byB0aGUgc2Vjb25kIHR4cSBpbiB0aGUg
cmJ0cmVlLiBUaHVzLCBkZWZlcmluZyB0aGUKPj4+Pj4+Pj4gcmVtb3ZhbCByaWdodCBiZWZvcmUg
dGhlIGVuZCBvZiB0aGlzIHNjaGVkdWxlIHJvdW5kLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gQ28tZGV2
ZWxvcGVkLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPgo+Pj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPgo+Pj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KPj4+Pj4+
PiAKPj4+Pj4+PiBJIGRpZG4ndCB3cml0ZSB0aGlzIHBhdGNoLCBzbyBwbGVhc2UgZG9uJ3QgdXNl
IG15IHNpZ24tb2ZmLiBJJ2xsCj4+Pj4+Pj4gYWRkCj4+Pj4+Pj4gYWNrIG9yIHJldmlldyB0YWdz
IGFzIGFwcHJvcHJpYXRlIGluIHJlcGx5OyBidXQgYSBmZXcgY29tbWVudHMKPj4+Pj4+PiBmaXJz
dDoKPj4+Pj4+PiAKPj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+ICBpbmNsdWRlL25ldC9tYWM4MDIxMS5o
ICAgICB8IDE2ICsrKysrKysrKystLQo+Pj4+Pj4+PiAgbmV0L21hYzgwMjExL2llZWU4MDIxMV9p
LmggfCAgMyArKysKPj4+Pj4+Pj4gIG5ldC9tYWM4MDIxMS9tYWluLmMgICAgICAgIHwgIDYgKysr
KysKPj4+Pj4+Pj4gIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgNjMKPj4+Pj4+Pj4gKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+Pj4+Pj4+PiAgNCBm
aWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L21hYzgwMjExLmggYi9pbmNsdWRlL25l
dC9tYWM4MDIxMS5oCj4+Pj4+Pj4+IGluZGV4IGFjMmVkOGUuLmJhNWEzNDUgMTAwNjQ0Cj4+Pj4+
Pj4+IC0tLSBhL2luY2x1ZGUvbmV0L21hYzgwMjExLmgKPj4+Pj4+Pj4gKysrIGIvaW5jbHVkZS9u
ZXQvbWFjODAyMTEuaAo+Pj4+Pj4+PiBAQCAtOTI1LDYgKzkyNSw4IEBAIHN0cnVjdCBpZWVlODAy
MTFfdHhfcmF0ZSB7Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAgI2RlZmluZSBJRUVFODAyMTFfTUFYX1RY
X1JFVFJZCQkzMQo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gKyNkZWZpbmUgSUVFRTgwMjExX0FJUlRJTUVf
VFhRX1JNX0NIS19JTlRWX0lOX01TIDEwMAo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICBzdGF0aWMgaW5s
aW5lIHZvaWQgaWVlZTgwMjExX3JhdGVfc2V0X3ZodChzdHJ1Y3QKPj4+Pj4+Pj4gaWVlZTgwMjEx
X3R4X3JhdGUKPj4+Pj4+Pj4gKnJhdGUsCj4+Pj4+Pj4+ICAJCQkJCSAgdTggbWNzLCB1OCBuc3Mp
Cj4+Pj4+Pj4+ICB7Cj4+Pj4+Pj4+IEBAIC02MjMyLDcgKzYyMzQsOCBAQCBzdHJ1Y3Qgc2tfYnVm
ZiAKPj4+Pj4+Pj4gKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdAo+Pj4+Pj4+PiBpZWVlODAy
MTFfaHcgKmh3LAo+Pj4+Pj4+PiAgICogQGFjOiBBQyBudW1iZXIgdG8gcmV0dXJuIHBhY2tldHMg
ZnJvbS4KPj4+Pj4+Pj4gICAqCj4+Pj4+Pj4+ICAgKiBTaG91bGQgb25seSBiZSBjYWxsZWQgYmV0
d2VlbiBjYWxscyB0bwo+Pj4+Pj4+PiBpZWVlODAyMTFfdHhxX3NjaGVkdWxlX3N0YXJ0KCkKPj4+
Pj4+Pj4gLSAqIGFuZCBpZWVlODAyMTFfdHhxX3NjaGVkdWxlX2VuZCgpLgo+Pj4+Pj4+PiArICog
YW5kIGllZWU4MDIxMV90eHFfc2NoZWR1bGVfZW5kKCkuIElmIHRoZSB0eHEgaXMgZW1wdHksIGl0
IAo+Pj4+Pj4+PiB3aWxsCj4+Pj4+Pj4+IGJlCj4+Pj4+Pj4+IGFkZGVkCj4+Pj4+Pj4+ICsgKiB0
byBhIHJlbW92ZSBsaXN0IGFuZCBnZXQgcmVtb3ZlZCBsYXRlci4KPj4+Pj4+Pj4gICAqIFJldHVy
bnMgdGhlIG5leHQgdHhxIGlmIHN1Y2Nlc3NmdWwsICVOVUxMIGlmIG5vIHF1ZXVlIGlzCj4+Pj4+
Pj4+IGVsaWdpYmxlLgo+Pj4+Pj4+PiBJZiBhIHR4cQo+Pj4+Pj4+PiAgICogaXMgcmV0dXJuZWQs
IGl0IHNob3VsZCBiZSByZXR1cm5lZCB3aXRoIAo+Pj4+Pj4+PiBpZWVlODAyMTFfcmV0dXJuX3R4
cSgpCj4+Pj4+Pj4+IGFmdGVyIHRoZQo+Pj4+Pj4+PiAgICogZHJpdmVyIGhhcyBmaW5pc2hlZCBz
Y2hlZHVsaW5nIGl0Lgo+Pj4+Pj4+PiBAQCAtNjI2OCw3ICs2MjcxLDggQEAgdm9pZCBpZWVlODAy
MTFfdHhxX3NjaGVkdWxlX3N0YXJ0KHN0cnVjdAo+Pj4+Pj4+PiBpZWVlODAyMTFfaHcgKmh3LCB1
OCBhYykKPj4+Pj4+Pj4gICAqIEBodzogcG9pbnRlciBhcyBvYnRhaW5lZCBmcm9tIGllZWU4MDIx
MV9hbGxvY19odygpCj4+Pj4+Pj4+ICAgKiBAYWM6IEFDIG51bWJlciB0byBhY3F1aXJlIGxvY2tz
IGZvcgo+Pj4+Pj4+PiAgICoKPj4+Pj4+Pj4gLSAqIFJlbGVhc2UgbG9ja3MgcHJldmlvdXNseSBh
Y3F1aXJlZCBieQo+Pj4+Pj4+PiBpZWVlODAyMTFfdHhxX3NjaGVkdWxlX2VuZCgpLgo+Pj4+Pj4+
PiArICogUmVsZWFzZSBsb2NrcyBwcmV2aW91c2x5IGFjcXVpcmVkIGJ5Cj4+Pj4+Pj4+IGllZWU4
MDIxMV90eHFfc2NoZWR1bGVfZW5kKCkuCj4+Pj4+Pj4+IENoZWNrCj4+Pj4+Pj4+ICsgKiBhbmQg
cmVtb3ZlIHRoZSBlbXB0eSB0eHEgZnJvbSByYi10cmVlLgo+Pj4+Pj4+PiAgICovCj4+Pj4+Pj4+
ICB2b2lkIGllZWU4MDIxMV90eHFfc2NoZWR1bGVfZW5kKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3
LCB1OCBhYykKPj4+Pj4+Pj4gIAlfX3JlbGVhc2VzKHR4cV9sb2NrKTsKPj4+Pj4+Pj4gQEAgLTYy
ODcsNiArNjI5MSwxNCBAQCB2b2lkIGllZWU4MDIxMV9zY2hlZHVsZV90eHEoc3RydWN0Cj4+Pj4+
Pj4+IGllZWU4MDIxMV9odwo+Pj4+Pj4+PiAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEp
Cj4+Pj4+Pj4+ICAJX19hY3F1aXJlcyh0eHFfbG9jaykgX19yZWxlYXNlcyh0eHFfbG9jayk7Cj4+
Pj4+Pj4+IAo+Pj4+Pj4+PiAgLyoqCj4+Pj4+Pj4+ICsgKiBpZWVlODAyMTFfdHhxc19jaGVjayAt
IENoZWNrIHR4cXMgd2FpdGluZyBmb3IgcmVtb3ZhbAo+Pj4+Pj4+PiArICoKPj4+Pj4+Pj4gKyAq
IEB0bXI6IHBvaW50ZXIgYXMgb2J0YWluZWQgZnJvbSBsb2NhbAo+Pj4+Pj4+PiArICoKPj4+Pj4+
Pj4gKyAqLwo+Pj4+Pj4+PiArdm9pZCBpZWVlODAyMTFfdHhxc19jaGVjayhzdHJ1Y3QgdGltZXJf
bGlzdCAqdG1yKTsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArLyoqCj4+Pj4+Pj4+ICAgKiBpZWVlODAy
MTFfdHhxX21heV90cmFuc21pdCAtIGNoZWNrIHdoZXRoZXIgVFhRIGlzIGFsbG93ZWQgdG8KPj4+
Pj4+Pj4gdHJhbnNtaXQKPj4+Pj4+Pj4gICAqCj4+Pj4+Pj4+ICAgKiBUaGlzIGZ1bmN0aW9uIGlz
IHVzZWQgdG8gY2hlY2sgd2hldGhlciBnaXZlbiB0eHEgaXMgYWxsb3dlZCAKPj4+Pj4+Pj4gdG8K
Pj4+Pj4+Pj4gdHJhbnNtaXQgYnkKPj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS9p
ZWVlODAyMTFfaS5oCj4+Pj4+Pj4+IGIvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKPj4+Pj4+
Pj4gaW5kZXggYTQ1NTZmOS4uNDlhYTE0M2UgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL25ldC9tYWM4
MDIxMS9pZWVlODAyMTFfaS5oCj4+Pj4+Pj4+ICsrKyBiL25ldC9tYWM4MDIxMS9pZWVlODAyMTFf
aS5oCj4+Pj4+Pj4+IEBAIC04NDcsNiArODQ3LDcgQEAgc3RydWN0IHR4cV9pbmZvIHsKPj4+Pj4+
Pj4gIAlzdHJ1Y3QgY29kZWxfc3RhdHMgY3N0YXRzOwo+Pj4+Pj4+PiAgCXN0cnVjdCBza19idWZm
X2hlYWQgZnJhZ3M7Cj4+Pj4+Pj4+ICAJc3RydWN0IHJiX25vZGUgc2NoZWR1bGVfb3JkZXI7Cj4+
Pj4+Pj4+ICsJc3RydWN0IGxpc3RfaGVhZCBjYW5kaWRhdGU7Cj4+Pj4+Pj4+ICAJdW5zaWduZWQg
bG9uZyBmbGFnczsKPj4+Pj4+Pj4gCj4+Pj4+Pj4+ICAJLyoga2VlcCBsYXN0ISAqLwo+Pj4+Pj4+
PiBAQCAtMTE0NSw2ICsxMTQ2LDggQEAgc3RydWN0IGllZWU4MDIxMV9sb2NhbCB7Cj4+Pj4+Pj4+
ICAJdTY0IGFpcnRpbWVfdl90W0lFRUU4MDIxMV9OVU1fQUNTXTsKPj4+Pj4+Pj4gIAl1NjQgYWly
dGltZV93ZWlnaHRfc3VtW0lFRUU4MDIxMV9OVU1fQUNTXTsKPj4+Pj4+Pj4gCj4+Pj4+Pj4+ICsJ
c3RydWN0IGxpc3RfaGVhZCByZW1vdmVfbGlzdFtJRUVFODAyMTFfTlVNX0FDU107Cj4+Pj4+Pj4+
ICsJc3RydWN0IHRpbWVyX2xpc3QgcmVtb3ZlX3RpbWVyOwo+Pj4+Pj4+PiAgCXUxNiBhaXJ0aW1l
X2ZsYWdzOwo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gIAljb25zdCBzdHJ1Y3QgaWVlZTgwMjExX29wcyAq
b3BzOwo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL21haW4uYyBiL25ldC9tYWM4
MDIxMS9tYWluLmMKPj4+Pj4+Pj4gaW5kZXggZTlmZmE4ZS4uNzhmZTI0YSAxMDA2NDQKPj4+Pj4+
Pj4gLS0tIGEvbmV0L21hYzgwMjExL21haW4uYwo+Pj4+Pj4+PiArKysgYi9uZXQvbWFjODAyMTEv
bWFpbi5jCj4+Pj4+Pj4+IEBAIC02NjcsMTAgKzY2NywxNSBAQCBzdHJ1Y3QgaWVlZTgwMjExX2h3
Cj4+Pj4+Pj4+ICppZWVlODAyMTFfYWxsb2NfaHdfbm0oc2l6ZV90IHByaXZfZGF0YV9sZW4sCj4+
Pj4+Pj4+IAo+Pj4+Pj4+PiAgCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfTlVNX0FDUzsgaSsr
KSB7Cj4+Pj4+Pj4+ICAJCWxvY2FsLT5hY3RpdmVfdHhxc1tpXSA9IFJCX1JPT1RfQ0FDSEVEOwo+
Pj4+Pj4+PiArCQlJTklUX0xJU1RfSEVBRCgmbG9jYWwtPnJlbW92ZV9saXN0W2ldKTsKPj4+Pj4+
Pj4gIAkJc3Bpbl9sb2NrX2luaXQoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbaV0pOwo+Pj4+Pj4+
PiAgCX0KPj4+Pj4+Pj4gIAlsb2NhbC0+YWlydGltZV9mbGFncyA9IEFJUlRJTUVfVVNFX1RYIHwg
QUlSVElNRV9VU0VfUlg7Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiArCXRpbWVyX3NldHVwKCZsb2NhbC0+
cmVtb3ZlX3RpbWVyLCBpZWVlODAyMTFfdHhxc19jaGVjaywgMCk7Cj4+Pj4+Pj4+ICsJbW9kX3Rp
bWVyKCZsb2NhbC0+cmVtb3ZlX3RpbWVyLAo+Pj4+Pj4+PiArCQkgIGppZmZpZXMgKwo+Pj4+Pj4+
PiBtc2Vjc190b19qaWZmaWVzKElFRUU4MDIxMV9BSVJUSU1FX1RYUV9STV9DSEtfSU5UVl9JTl9N
UykpOwo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICAJSU5JVF9MSVNUX0hFQUQoJmxvY2FsLT5jaGFuY3R4
X2xpc3QpOwo+Pj4+Pj4+PiAgCW11dGV4X2luaXQoJmxvY2FsLT5jaGFuY3R4X210eCk7Cj4+Pj4+
Pj4+IAo+Pj4+Pj4+PiBAQCAtMTMwNSw2ICsxMzEwLDcgQEAgdm9pZCBpZWVlODAyMTFfdW5yZWdp
c3Rlcl9odyhzdHJ1Y3QKPj4+Pj4+Pj4gaWVlZTgwMjExX2h3Cj4+Pj4+Pj4+ICpodykKPj4+Pj4+
Pj4gIAl0YXNrbGV0X2tpbGwoJmxvY2FsLT50eF9wZW5kaW5nX3Rhc2tsZXQpOwo+Pj4+Pj4+PiAg
CXRhc2tsZXRfa2lsbCgmbG9jYWwtPnRhc2tsZXQpOwo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gKwlkZWxf
dGltZXJfc3luYygmbG9jYWwtPnJlbW92ZV90aW1lcik7Cj4+Pj4+Pj4+ICAjaWZkZWYgQ09ORklH
X0lORVQKPj4+Pj4+Pj4gIAl1bnJlZ2lzdGVyX2luZXRhZGRyX25vdGlmaWVyKCZsb2NhbC0+aWZh
X25vdGlmaWVyKTsKPj4+Pj4+Pj4gICNlbmRpZgo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvbmV0L21h
YzgwMjExL3R4LmMgYi9uZXQvbWFjODAyMTEvdHguYwo+Pj4+Pj4+PiBpbmRleCBkMDBiYWFhLi40
MmNhMDEwIDEwMDY0NAo+Pj4+Pj4+PiAtLS0gYS9uZXQvbWFjODAyMTEvdHguYwo+Pj4+Pj4+PiAr
KysgYi9uZXQvbWFjODAyMTEvdHguYwo+Pj4+Pj4+PiBAQCAtMTQ1MCw2ICsxNDUwLDcgQEAgdm9p
ZCBpZWVlODAyMTFfdHhxX2luaXQoc3RydWN0Cj4+Pj4+Pj4+IGllZWU4MDIxMV9zdWJfaWZfZGF0
YSAqc2RhdGEsCj4+Pj4+Pj4+ICAJY29kZWxfc3RhdHNfaW5pdCgmdHhxaS0+Y3N0YXRzKTsKPj4+
Pj4+Pj4gIAlfX3NrYl9xdWV1ZV9oZWFkX2luaXQoJnR4cWktPmZyYWdzKTsKPj4+Pj4+Pj4gIAlS
Ql9DTEVBUl9OT0RFKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7Cj4+Pj4+Pj4+ICsJSU5JVF9MSVNU
X0hFQUQoJnR4cWktPmNhbmRpZGF0ZSk7Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAgCXR4cWktPnR4cS52
aWYgPSAmc2RhdGEtPnZpZjsKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IEBAIC0zNzI0LDYgKzM3MjUsOSBA
QCB2b2lkIGllZWU4MDIxMV9zY2hlZHVsZV90eHEoc3RydWN0Cj4+Pj4+Pj4+IGllZWU4MDIxMV9o
dwo+Pj4+Pj4+PiAqaHcsCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAgCXNwaW5fbG9ja19iaCgmbG9jYWwt
PmFjdGl2ZV90eHFfbG9ja1thY10pOwo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gKwlpZiAoIWxpc3RfZW1w
dHkoJnR4cWktPmNhbmRpZGF0ZSkpCj4+Pj4+Pj4+ICsJCWxpc3RfZGVsX2luaXQoJnR4cWktPmNh
bmRpZGF0ZSk7Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gIAlpZiAoIVJCX0VNUFRZX05PREUoJnR4cWkt
PnNjaGVkdWxlX29yZGVyKSkKPj4+Pj4+Pj4gIAkJZ290byBvdXQ7Cj4+Pj4+Pj4+IAo+Pj4+Pj4+
PiBAQCAtMzc4Myw2ICszNzg3LDIwIEBAIHN0YXRpYyB2b2lkCj4+Pj4+Pj4+IF9faWVlZTgwMjEx
X3Vuc2NoZWR1bGVfdHhxKHN0cnVjdAo+Pj4+Pj4+PiBpZWVlODAyMTFfaHcgKmh3LAo+Pj4+Pj4+
PiAgCVJCX0NMRUFSX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsKPj4+Pj4+Pj4gIH0KPj4+
Pj4+Pj4gCj4+Pj4+Pj4+ICt2b2lkIGllZWU4MDIxMV9yZW1vdmVfdHhxKHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LAo+Pj4+Pj4+PiArCQkJICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxKQo+Pj4+
Pj4+PiArewo+Pj4+Pj4+PiArCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0gaHdfdG9f
bG9jYWwoaHcpOwo+Pj4+Pj4+PiArCXN0cnVjdCB0eHFfaW5mbyAqdHhxaSA9IHRvX3R4cV9pbmZv
KHR4cSk7Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2NhbC0+
YWN0aXZlX3R4cV9sb2NrW3R4cS0+YWNdKTsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCWlmICghUkJf
RU1QVFlfTk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpKSB7Cj4+Pj4+Pj4+ICsJCV9faWVlZTgw
MjExX3Vuc2NoZWR1bGVfdHhxKGh3LCB0eHEpOwo+Pj4+Pj4+PiArCQlsaXN0X2RlbF9pbml0KCZ0
eHFpLT5jYW5kaWRhdGUpOwo+Pj4+Pj4+PiArCX0KPj4+Pj4+Pj4gK30KPj4+Pj4+Pj4gKwo+Pj4+
Pj4+PiAgdm9pZCBpZWVlODAyMTFfdW5zY2hlZHVsZV90eHEoc3RydWN0IGllZWU4MDIxMV9odyAq
aHcsCj4+Pj4+Pj4+ICAJCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxKQo+Pj4+Pj4+
PiAgCV9fYWNxdWlyZXModHhxX2xvY2spIF9fcmVsZWFzZXModHhxX2xvY2spCj4+Pj4+Pj4+IEBA
IC0zNzkwLDcgKzM4MDgsNyBAQCB2b2lkIGllZWU4MDIxMV91bnNjaGVkdWxlX3R4cShzdHJ1Y3QK
Pj4+Pj4+Pj4gaWVlZTgwMjExX2h3ICpodywKPj4+Pj4+Pj4gIAlzdHJ1Y3QgaWVlZTgwMjExX2xv
Y2FsICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3KTsKPj4+Pj4+Pj4gCj4+Pj4+Pj4+ICAJc3Bpbl9s
b2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW3R4cS0+YWNdKTsKPj4+Pj4+Pj4gLQlfX2ll
ZWU4MDIxMV91bnNjaGVkdWxlX3R4cShodywgdHhxKTsKPj4+Pj4+Pj4gKwlpZWVlODAyMTFfcmVt
b3ZlX3R4cShodywgdHhxKTsKPj4+Pj4+Pj4gIAlzcGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2
ZV90eHFfbG9ja1t0eHEtPmFjXSk7Cj4+Pj4+Pj4+ICB9Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBAQCAt
MzgwMywxMSArMzgyMSw0OCBAQCB2b2lkIGllZWU4MDIxMV9yZXR1cm5fdHhxKHN0cnVjdAo+Pj4+
Pj4+PiBpZWVlODAyMTFfaHcKPj4+Pj4+Pj4gKmh3LAo+Pj4+Pj4+PiAgCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbdHhxLT5hY10pOwo+Pj4+Pj4+PiAKPj4+Pj4+
Pj4gIAlpZiAoIVJCX0VNUFRZX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKSAmJgo+Pj4+Pj4+
PiAtCSAgICAoc2tiX3F1ZXVlX2VtcHR5KCZ0eHFpLT5mcmFncykgJiYKPj4+Pj4+Pj4gIXR4cWkt
PnRpbi5iYWNrbG9nX3BhY2tldHMpKQo+Pj4+Pj4+PiAtCQlfX2llZWU4MDIxMV91bnNjaGVkdWxl
X3R4cShodywgdHhxKTsKPj4+Pj4+Pj4gKwkJIXR4cV9oYXNfcXVldWUoJnR4cWktPnR4cSkgJiYK
Pj4+Pj4+Pj4gKwkJbGlzdF9lbXB0eSgmdHhxaS0+Y2FuZGlkYXRlKSkKPj4+Pj4+Pj4gKwkJbGlz
dF9hZGRfdGFpbCgmdHhxaS0+Y2FuZGlkYXRlLCAKPj4+Pj4+Pj4gJmxvY2FsLT5yZW1vdmVfbGlz
dFt0eHEtPmFjXSk7Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gIH0KPj4+Pj4+Pj4gIEVYUE9SVF9TWU1C
T0woaWVlZTgwMjExX3JldHVybl90eHEpOwo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gK3ZvaWQgX19pZWVl
ODAyMTFfY2hlY2tfdHhxcyhzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCwgaW50Cj4+Pj4+
Pj4+IGFjKQo+Pj4+Pj4+PiArewo+Pj4+Pj4+PiArCXN0cnVjdCB0eHFfaW5mbyAqaXRlciwgKnRt
cDsKPj4+Pj4+Pj4gKwlzdHJ1Y3Qgc3RhX2luZm8gKnN0YTsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiAr
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKPj4+Pj4+
Pj4gKwo+Pj4+Pj4+PiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShpdGVyLCB0bXAsICZsb2Nh
bC0+cmVtb3ZlX2xpc3RbYWNdLAo+Pj4+Pj4+PiArCQkJCSBjYW5kaWRhdGUpIHsKPj4+Pj4+Pj4g
KwkJc3RhID0gY29udGFpbmVyX29mKGl0ZXItPnR4cS5zdGEsIHN0cnVjdCBzdGFfaW5mbywgc3Rh
KTsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCQlpZiAodHhxX2hhc19xdWV1ZSgmaXRlci0+dHhxKSkK
Pj4+Pj4+Pj4gKwkJCWxpc3RfZGVsX2luaXQoJml0ZXItPmNhbmRpZGF0ZSk7Cj4+Pj4+Pj4+ICsJ
CWVsc2UKPj4+Pj4+Pj4gKwkJCWllZWU4MDIxMV9yZW1vdmVfdHhxKCZsb2NhbC0+aHcsICZpdGVy
LT50eHEpOwo+Pj4+Pj4+PiArCX0KPj4+Pj4+Pj4gK30KPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArdm9p
ZCBpZWVlODAyMTFfdHhxc19jaGVjayhzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKPj4+Pj4+Pj4gK3sK
Pj4+Pj4+Pj4gKwlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGZyb21fdGltZXIobG9j
YWwsIHQsCj4+Pj4+Pj4+IHJlbW92ZV90aW1lcik7Cj4+Pj4+Pj4+ICsJc3RydWN0IHR4cV9pbmZv
ICppdGVyLCAqdG1wOwo+Pj4+Pj4+PiArCXN0cnVjdCBzdGFfaW5mbyAqc3RhOwo+Pj4+Pj4+PiAr
CWludCBhYzsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCWZvciAoYWMgPSAwOyBhYyA8IElFRUU4MDIx
MV9OVU1fQUNTOyBhYysrKSB7Cj4+Pj4+Pj4+ICsJCXNwaW5fbG9ja19iaCgmbG9jYWwtPmFjdGl2
ZV90eHFfbG9ja1thY10pOwo+Pj4+Pj4+PiArCQlfX2llZWU4MDIxMV9jaGVja190eHFzKGxvY2Fs
LCBhYyk7Cj4+Pj4+Pj4+ICsJCXNwaW5fdW5sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2Nr
W2FjXSk7Cj4+Pj4+Pj4+ICsJfQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICsJbW9kX3RpbWVyKCZsb2Nh
bC0+cmVtb3ZlX3RpbWVyLAo+Pj4+Pj4+PiArCQkgIGppZmZpZXMgKwo+Pj4+Pj4+PiBtc2Vjc190
b19qaWZmaWVzKElFRUU4MDIxMV9BSVJUSU1FX1RYUV9STV9DSEtfSU5UVl9JTl9NUykpOwo+Pj4+
Pj4+PiArfQo+Pj4+Pj4+IAo+Pj4+Pj4+IEknbGwgYXNrIHRoZSBzYW1lIGFzIEkgZGlkIGxhc3Qg
dGltZSAod2hlcmUgeW91IHRvbGQgbWUgdG8gaG9sZCAKPj4+Pj4+PiBvZmYKPj4+Pj4+PiB1bnRp
bCB0aGlzIHJvdW5kKToKPj4+Pj4+PiAKPj4+Pj4+PiBXaHkgZG8geW91IG5lZWQgdGhlIHRpbWVy
IGFuZCB0aGUgcGVyaW9kaWMgY2hlY2s/IElmIFRYUXMgYXJlIAo+Pj4+Pj4+IGFkZGVkCj4+Pj4+
Pj4gdG8KPj4+Pj4+PiB0aGUgcmVtb3ZlIGxpc3QgZHVyaW5nIHRoZSBzY2hlZHVsaW5nIHJ1biwg
YW5kCj4+Pj4+Pj4gX19pZWVlODAyMTFfY2hlY2tfdHhxcygpCj4+Pj4+Pj4gaXMgcnVuIGZyb20g
c2NoZWR1bGVfZW5kKCksIGlzbid0IHRoYXQgc3VmZmljaWVudCB0byBjbGVhciB0aGUKPj4+Pj4+
PiBsaXN0Pwo+Pj4+Pj4gSXMgaXQgcG9zc2libGUgdGhhdCBhIHR4cSBpcyBub3QgYWRkZWQgdG8g
dGhlIHJlbW92ZSBsaXN0IGJ1dCB0aGVuCj4+Pj4+PiBwYWNrZXRzIGluIGl0IGFyZSBkcm9wcGVk
IGJ5IGZxX2NvZGVsIGFsZ28/IExpa2UgdGhlIHN0YXRpb24KPj4+Pj4+IGRpc2Nvbm5lY3RzCj4+
Pj4+PiB3aXRob3V0IGFueSBub3RpZmljYXRpb24uCj4+Pj4+IAo+Pj4+PiBXZWxsIGFzIGxvbmcg
YXMgYWxsIHRoZSBvdGhlciBjbGVhbnVwIHBhdGhzIGNhbGwgZGlyZWN0bHkgaW50bwo+Pj4+PiBf
X3Vuc2NoZWR1bGVfdHhxKCksIHRoYXQgc2hvdWxkIHJlbW92ZSBzdGF0aW9ucyBmcm9tIHRoZSBz
Y2hlZHVsZXIKPj4+Pj4gd2hlbgo+Pj4+PiB0aGV5IGRpc2Nvbm5lY3QgZXRjLgo+Pj4+IFllcywg
dGhlIGRpc2Nvbm5lY3Qgc2NlbmFyaW8gaXMgYSBiYWQgZXhhbXBsZS4gTXkgY29uY2VybiBpcywg
c2F5LCAKPj4+PiB3ZQo+Pj4+IGhhdmUgMTAgc3RhdGlvbnMgYW5kIG9ubHkgb25lIG9mIHRoZW0g
aXMgYXNzaWduZWQgYSB2ZXJ5IHNtYWxsIAo+Pj4+IHdlaWdodAo+Pj4+IGNvbXBhcmVkIHdpdGgg
dGhhdCBvZiBvdGhlcnMuIFN1cHBvc2UsIGFmdGVyIGl0cyBjaGFuY2Ugb2YgVHgsIGl0IGlzCj4+
Pj4gbW9zdCBsaWtlbHkgdG8gYmUgcGxhY2VkIGluIHRoZSByaWdodG1vc3Qoc3RpbGwgaGFzIHNv
bWUgcGFja2V0cyBpbgo+Pj4+IHRoZQo+Pj4+IHR4cSkgYW5kIG5vIG1vcmUgaW5jb21pbmcgZGF0
YSBmb3IgaXQuIFRoZSByZW1haW5pbmcgcGFja2V0cyBpbiB0eHEKPj4+PiB3aWxsCj4+Pj4gYmUg
ZHJvcHBlZCBkdWUgdG8gdGltZW91dCBhbGdvIGluIGNvZGVsKGNvcnJlY3QgbWUgaWYgSSBhbSB3
cm9uZykgCj4+Pj4gYnV0Cj4+Pj4gdGhpcyBlbXB0eSB0eHEgd2lsbCBzdGF5IG9uIHRoZSByYnRy
ZWUgdW50aWwgb3RoZXIgdHhxcyBnZXQgZHJhaW5lZCAKPj4+PiBvcgo+Pj4+IGdsb2JhbCB2dCBj
YXRjaCB1cCB3aXRoIGl0cyB2dC4gVGhlIHN0YXlpbmcgdGltZSBjb3VsZCBiZSBsb25nIGlmCj4+
Pj4gd2VpZ2h0Cj4+Pj4gaXMgZXh0cmVtZWx5IHNtYWxsLiBUaGVuIGRvIHdlIG5lZWQgdGltZXIg
dG8gY2hlY2sgb3IgYW55IG90aGVyIAo+Pj4+IGJldHRlcgo+Pj4+IHNvbHV0aW9uPwo+Pj4gCj4+
PiBBaCwgSSBzZWUgd2hhdCB5b3UgbWVhbi4gTm8sIEkgZG9uJ3QgdGhpbmsgdGhpcyB3aWxsIGJl
IGEgcHJvYmxlbTsgCj4+PiB0aGUKPj4+IHNjZW5hcmlvIHlvdSdyZSBkZXNjcmliaW5nIHdvdWxk
IHBsYXkgb3V0IGxpa2UgdGhpczoKPj4+IAo+Pj4gMS4gU3RhdGlvbiBlbmRzIHRyYW5zbWl0dGlu
Zywgc3RpbGwgaGFzIGEgc2luZ2xlIHBhY2tldCBxdWV1ZWQsIGdldHMKPj4+ICAgIG1vdmVkIHRv
IHRoZSBlbmQgb2YgdGhlIHJidHJlZSAoYW5kIHN0YXlzIHRoZXJlIGZvciBhIHdoaWxlKS4KPj4+
IAo+Pj4gMi4gV2hlbiB3ZSBmaW5hbGx5IGdldCB0byB0aGUgcG9pbnQgd2hlcmUgdGhpcyBzdGF0
aW9uIGdldHMgYW5vdGhlcgo+Pj4gICAgY2hhbmNlIHRvIHRyYW5zbWl0LCB0aGUgQ29EZWwgZHJv
cCB0aW1lciB0cmlnZ2VycyBhbmQgdGhlIGxhc3QKPj4+IHBhY2tldAo+Pj4gICAgaXMgZHJvcHBl
ZFswXS4gVGhpcyBtZWFucyB0aGF0IHRoZSBxdWV1ZSB3aWxsIGp1c3QgYmUgZW1wdHkKPj4+ICAg
IChhbmQgaWVlZTgwMjExX3R4X2RlcXVldWUoKSB3aWxsIHJldHVybiBOVUxMKS4KPj4+IAo+Pj4g
My4gQmVjYXVzZSB0aGUgcXVldWUgaXMgZW1wdHksIGllZWU4MDIxMV9yZXR1cm5fdHhxKCkgd2ls
bCBub3QgcHV0IGl0Cj4+PiAgICBiYWNrIG9uIHRoZSByYnRyZWUuCj4+PiAKPj4+IENydWNpYWxs
eSwgaW4gMi4gdGhlIENvRGVsIGFsZ29yaXRobSBkb2Vzbid0IGtpY2sgaW4gdW50aWwgdGhlIHBv
aW50IAo+Pj4gb2YKPj4+IHBhY2tldCBkZXF1ZXVlLiBCdXQgZXZlbiBpZiBhbiBlbXB0eSBxdWV1
ZSBzdGF5cyBvbiB0aGUgcmJ0cmVlIGZvciBhCj4+PiB3aGlsZSwgdGhlcmUgaXMgbm8gaGFybSBp
biB0aGF0OiBldmVudHVhbGx5IGl0IHdpbGwgZ2V0IGl0cyB0dXJuLCBpdAo+Pj4gd2lsbCB0dXJu
IG91dCB0byBiZSBlbXB0eSwgYW5kIGp1c3QgYmUgc2tpcHBlZCBvdmVyLgo+PiBUaGVuIHRoYXQg
d2lsbCBiZSBmaW5lLiBUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiBvZiB0aGUgZHJvcHBpbmcg
Cj4+IHBhcnQKPj4gaW4gQ29EZWwgYWxnb3JpdGhtLgo+IAo+IFl1cCwgdGhpbmsgc28uIEFuZCB5
b3UncmUgd2VsY29tZSA6KQo+IAo+Pj4gVGhlIGlzc3VlIHdlIG5lZWQgdG8gYmUgY29uY2VybmVk
IGFib3V0IGlzIHRoZSBvcHBvc2l0ZTogSWYgd2UgaGF2ZSBhCj4+PiBxdWV1ZSB0aGF0ICpkb2Vz
KiBoYXZlIHBhY2tldHMgcXVldWVkLCBidXQgd2hpY2ggaXMgKm5vdCogc2NoZWR1bGVkIAo+Pj4g
Zm9yCj4+PiB0cmFuc21pc3Npb24sIHRoYXQgd2lsbCBzdGFsbCBUWC4KPj4gSXMgaXQgYnkgZGVz
aWduIHNpbmNlIGl0cyB2dCBpcyBtb3JlIHRoYW4gZ2xvYmFsIHZ0LCByaWdodD8gVGhlIAo+PiBs
YXR0ZW5jeQo+PiBtYXkgc29tZWhvdyBnZXQgaW1wYWN0ZWQgdGhvdWdoLgo+IAo+IFdlbGwsIGl0
IHNob3VsZCBzdGlsbCBzdGF5IG9uIHRoZSByYnRyZWUgYXMgbG9uZyBhcyBpdCBoYXMgcGFja2V0
cwo+IHF1ZXVlZC4gV2UgZG9uJ3QgaGF2ZSBhIGNoZWNrIGFueXdoZXJlIHRoYXQgcmVzY2hlZHVs
ZXMgVFhRcyB3aG9zZSB2X3QKPiBkcm9wcyBiZWxvdyBnbG9iYWwgdl90Li4uCj4gCj4+PiBbMF0g
Q29EZWwgaW4gbW9zdCBjYXNlcyBvbmx5IGRyb3BzIGEgc2luZ2xlIHBhY2tldCBhdCBhIHRpbWUs
IHNvIGl0Cj4+PiB3aWxsCj4+PiBub3QgY2xlYXIgb3V0IGFuIGVudGlyZSBxdWV1ZSB3aXRoIG11
bHRpcGxlIHBhY2tldHMgaW4gb25lIGdvLiBCdXQgCj4+PiB5b3UKPj4+IGFyZSByaWdodCB0aGF0
IGl0IGNvdWxkIGNvbmNlaXZhYmx5IGRyb3AgdGhlIGxhc3QgcGFja2V0IGluIGEgcXVldWUuCj4+
PiAKPj4+Pj4gV2Ugb25seSBuZWVkIHRvIGRlZmVyIHJlbW92YWwgaW5zaWRlIGEgc2luZ2xlICJz
Y2hlZHVsaW5nIHJvdW5kIgo+Pj4+PiAoaS5lLiwKPj4+Pj4gYmV0d2VlbiBhIHBhaXIgb2YgaWVl
ZTgwMjExX3R4cV9zY2hlZHVsZV9zdGFydC9lbmQuIFNvIGlmIHdlIGp1c3QKPj4+Pj4gd2Fsawo+
Pj4+PiB0aGUgcmVtb3ZlIGxpc3QgaW4gc2NoZWR1bGVfZW5kKCkgd2Ugc2hvdWxkIGJlIGVub3Vn
aCwgbm8/Cj4+Pj4+IAo+Pj4+PiBIbW0sIG9yIG1heWJlIGEgc2ltcGxlciB3YXkgdG8gZml4IHRo
ZSBvcmlnaW5hbCBpc3N1ZSBpcyBqdXN0IHRvIAo+Pj4+PiBoYXZlCj4+Pj4+IHVuc2NoZWR1bGVf
dHhxKCkgdXBkYXRlIHRoZSBzY2hlZHVsZV9wb3MoKSBwb2ludGVyPwo+Pj4+PiAKPj4+Pj4gSS5l
LiwgdW5zY2hlZHVsZV90eHEgY2hlY2tzIGlmIHRoZSB0eHEgYmVpbmcgcmVtb3ZlZCBpcyBjdXJy
ZW50bHkKPj4+Pj4gYmVpbmcKPj4+Pj4gcG9pbnRlZCB0byBieSBzY2hlZHVsZV9wb3NbYWNdLCBh
bmQgaWYgaXQgaXMsIGl0IHVwZGF0ZXMgCj4+Pj4+IHNjaGVkdWxlX3Bvcwo+Pj4+PiB0bwo+Pj4+
PiBiZSB0aGUgcmJfbmV4dCBvZiB0aGUgY3VycmVudCB2YWx1ZT8KPj4+PiBBY3R1YWxseSwgaWYg
c2NoZWR1bGVfcG9zIGlzIHVwZGF0ZWQgdG8gcmJfbmV4dCBvZiB0aGUgY3VycmVudCAKPj4+PiB2
YWx1ZSwKPj4+PiB0aGVuIGluIHRoZSBuZXh0X3R4cSgpIHdoZXJlIHdlIGFyZSBnb2luZyB0byB1
c2UgcmJfbmV4dCBhZ2FpbiBhbmQKPj4+PiBmaW5hbGx5IHBpY2sgdGhlIG5leHQgbm9kZSBvZiB0
aGUgbm9kZSB3ZSByZWFsbHkgd2FudC4gSXMgaXQgZmluZSB0bwo+Pj4+IHVwZGF0ZSBzY2hlZHVs
ZV9wb3MgdG8gTlVMTD8KPj4+IAo+Pj4gSG1tLCB5ZWFoLCBnb29kIHBvaW50Lgo+Pj4gCj4+PiBJ
ZiB3ZSBkbyBlbmQgdXAgc2V0dGluZyBzY2hlZHVsZV9wb3MgdG8gTlVMTCBpbiB0aGUgbWlkZGxl
IG9mIGEKPj4+IHNjaGVkdWxpbmcgcm91bmQsIHRoYXQgd2lsbCBtYWtlIG5leHRfdHhxKCkgInN0
YXJ0IG92ZXIiLCBhbmQgZG8KPj4+IGFub3RoZXIKPj4+IGxvb3AgdGhyb3VnaCB0aGUgd2hvbGUg
dGhpbmcuIEkgZ3Vlc3Mgd2UgbWF5IGJlIGFibGUgaGl0IGEgY2FzZSB3aGVyZQo+Pj4gdGhpbmdz
IGNhbiBvc2NpbGxhdGUgYmFjayBhbmQgZm9ydGggYmV0d2VlbiBhZGRpdGlvbiBhbmQgcmVtb3Zh
bAo+Pj4gcmVzdWx0aW5nIGluIGFuIGluZmluaXRlIGxvb3A/IE5vdCBzdXJlLCBidXQgYXQgbGVh
c3QgSSBjYW4ndCBzZWVtIHRvCj4+PiBjb252aW5jZSBteXNlbGYgdGhhdCB0aGlzIGNhbid0IGhh
cHBlbi4KPj4gCj4+IEFzIHRoZSBsb29wIG9mIG5leHRfdHhxIHVuZGVyIGxvY2sgcHJvdGVjdGlv
biBhcyBiZWxvdywKPj4gCj4+IHR4cV9zY2hlZHVsZV9zdGFydCgpOwo+PiB3aGlsZSh0eHE9bmV4
dF90eHEoKSl7Cj4+IC4uLgo+PiByZXR1cm5fdHhxKHR4cSk7Cj4+IH0KPj4gdHhxX3NjaGVkdWxl
X2VuZCgpOwo+PiAKPj4gSSBkbyBub3Qgc2VlIGFueSBjaGFuY2Ugb2YgYWRkaXRpb24sIG5vPwo+
IAo+IEFzIHlvdSBub3RlZCBpbiB5b3VyIG90aGVyIGVtYWlsLCBGZWxpeCByZWR1Y2VkIHRoZSBs
b2NraW5nLiBBbmQgeWVhaCwKPiB3ZSBuZWVkIHRvIHJlYmFzZSB0aGlzIHNlcmllcyB0byBhbHNv
IGluY29ycG9yYXRlIHRoYXQuIEkgZmlndXJlIEkgY2FuCj4gc2VuZCBhbiB1cGRhdGVkIHZlcnNp
b24gb2YgdGhlIGZpcnN0IHBhdGNoIGluIHRoZSBzZXJpZXMgb25jZSB3ZSd2ZQo+IHdvcmtlZCBv
dXQgdGhlIHJlbWFpbmluZyBpc3N1ZXMgd2l0aCB5b3VyIGZvbGxvdy11cCBwYXRjaGVzLgo+IApP
aCwgSSB3YXMgdGhpbmtpbmcgd2Ugd2VyZSBkaXNjdXNzaW5nIHdpdGhvdXQgbG9ja2luZyByZWR1
Y2VkLiBZZXMsIEkgCmFsc28gYWdyZWUgdGhlcmUgbWlnaHQgYmUgYSBjYXNlIGNhdXNpbmcgaW5m
aW5pdGUgbG9vcC4gV2l0aCBsb2NraW5nIApyZWR1Y2VkLCB0aGUgdHJlZSBjYW4gYmUgYWRqdXN0
ZWQgYmV0d2VlbiBuZXh0X3R4cSgpIGFuZCByZXR1cm5fdHhxKCkgaW4gCnRoZSBsb29wIHNpdHVh
dGlvbi4gRm9yIGZ1cnRoZXIgZGlzY3Vzc2lvbiwgbGV0ICdzIGNvbnNpZGVyLAoxKSB0aGUgdHJl
ZSBzdGFydHMgbGlrZToKICAgICAgICBBLT5CLT5DLT5ELT5FCjIpIHRoZW4gbmV4dF90eHEoKSBy
ZXR1cm5zIEEgZm9yIGRlcXVldWluZwozKSBkcml2ZXIgZGVxdWV1ZXMgQSBhbmQgZHJhaW5lcyBB
IHdpdGhvdXQgYW55IGFjdGl2ZSB0eHEgbG9ja2VkIG1lYW5pbmcgCnRoZSB0cmVlIGNvdWxkIGJl
IGNoYW5nZWQgdXBvbiBUeCBjb21wZWxldGlvbi4KNCkgdGhlbiBpbiByZXR1cm5fdHhxKCksIHRo
ZSB0cmVlIGNvdWxkIGJlLAogICAgICAgIGkgICBBLT5CLT5DLT5ELT5FIO+8iEEgaXMgZW1wdHks
IGFuZCBtYXliZSBzb29uIGJlIGFkZGVkIGJhY2sgCmJlZm9yZSB0aGUgbG9vcCBlbmTvvIkKICAg
ICAgICBpaSAgQi0+Qy0+QS0+RC0+RSDvvIhBIGlzIGVtcHR5LCBhbmQgbWF5YmUgc29vbiBiZSBh
ZGRlZCBiYWNrIApiZWZvcmUgdGhlIGxvb3AgZW5k77yJCiAgICAgICAgaWlpIEItPkMtPkQtPkUt
PkEg77yIQSBpcyBlbXB0eSwgYW5kIG1heWJlIHNvb24gYmUgYWRkZWQgYmFjayAKYmVmb3JlIHRo
ZSBsb29wIGVuZCkKCndpdGggdGhpcyBjaGFuZ2U6CiAgbG9jYWwtPnNjaGVkdWxlX3Bvc1thY10g
PSByYl9uZXh0KG5vZGUpID86IHJiX3ByZXYobm9kZSk7Cgpmb3IgY2FzZSBpLCBsb2NhbC0+c2No
ZWR1bGVfcG9zW2FjXSBpcyByYl9uZXh0KEEpIHdoaWNoIGlzIEIsIGFuZCBpbiAKbmV4dF90eHEo
KSwgcmJfbmV4dChCKSBpcyB3aGF0IHdlIHJldHVybnMgd2hpY2ggYWN0dWFsbHkgaXMgQyBhbmQg
QiBpcyAKc2tpcHBlZCwgbm8/CgpTaW1pbGlhciBmb3IgY2FzZSBpaSwgd2Ugc2tpcCBCLCBDLCBE
LgoKQWxzbyBJIGFtIHdvbmRlcmluZyBpZiB0aGVyZSB3aWxsIGJlIHNvbWUgU01QIGlzc3VlcyBy
ZWxhdGluZyB3aXRoIApsb2NhbC0+c2NoZWR1bGVfcG9zW2FjXS4KCj4+IEluIGF0aDEwaywgd2Ug
d2lsbCB1c3VhbGx5IHB1c2ggcGFja2V0cyBvZiBmaXJzdCB0eHEgYXMgbWFueSBhcyB3ZSBjYW4K
Pj4gdW50aWwgaXQgaXMgZHJhaW5lZCBhbmQgdGhlbiBtb3ZlIHRvIHRoZSBuZXh0IG9uZS4gU28g
aWYgYSB0eHEgZ2V0cwo+PiByZW1vdmVkIGluIHRoZSByZXR1cm5fdHhxLCBpdCBzaG91bGQgYWx3
YXlzIGJlIHRoZSBsZWZ0bW9zdC4gQW5kCj4+IGR1cmluZyB0aGlzIHBlcmlvZCwgbmVpdGhlciB2
dCBvZiBhbnkgc3RhdGlvbiBvciBnbG9iYWwgdnQgY2FuIGJlCj4+IHVwZGF0ZWQgZHVlIHRvIGxv
Y2sgcHJvdGVjdGlvbi4KPj4gCj4+PiAKPj4+IEJ1dCBpbiB0aGF0IGNhc2UsIHdlIGNvdWxkIGZp
eCBpdCBieSBqdXN0IGNvbmRpdGlvbmFsbHkgYXNzaWduaW5nCj4+PiBlaXRoZXIKPj4+IHJiX25l
eHQgb3IgcmJfcHJldiB0byB0aGUgc2NoZWR1bGVfcG9zIGluIHVuc2NoZWR1bGVfdHhxKCk/IEku
ZS4sCj4+PiBzb21ldGhpbmcgbGlrZToKPj4+IAo+Pj4gbG9jYWwtPnNjaGVkdWxlX3Bvc1thY10g
PSByYl9uZXh0KG5vZGUpID86IHJiX3ByZXYobm9kZSk7Cj4+IEkgYW0gbm90IHN1cmUgSSBhbSBn
ZXR0aW5nIHlvdXIgcG9pbnQuIFN0aWxsIGluIG5leHRfdHhxLAo+PiBzY2hlZHVsZV9wb3NbYWNd
IHdpbGwgbGVhZCB1cyB0byB0aGUgbmV4dCBub2RlIG9mIHRoZSBvbmUgd2Ugd2FudC4KPiAKPiBU
aGUgbG9naWMgaW4gbmV4dF90eHEgaXMgZGlmZmVyZW50IHdoZW4gc2NoZWR1bGVfcG9zW2FjXSBp
cyBOVUxMLCB2cwo+IHdoZW4gcmJfbmV4dChzY2hlZHVsZV9wb3NbYWNdKSBpcyBOVUxMLiBUaGUg
Zm9ybWVyIHJlc3RhcnRzIGEgbmV3Cj4gc2NoZWR1bGluZyByb3VuZCwgd2hpbGUgdGhlIGxhdHRl
ciBlbmRzIHRoZSBjdXJyZW50IHJvdW5kLgo+IAo+IC1Ub2tlCgotLSAKWWlibwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlz
dAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
