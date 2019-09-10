Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F60EAECDE
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 16:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XM39zar/dPYAPwUpQTAOEskNbg0ilIAyCHdYE/W33oA=; b=ahTd21bpDxNUm525FchzpJs74
	cgyhqBLbOJxTW/+D87tw4ummU4WPIYxJumHVAe4wlJHSh2+yOHoqYS5pxoj2957wAbHGIj9dAmHvH
	5e1v8Edp2MGRwKIW7tYCYWp2z0ZFIkjCIkSQszG0VO1JVYqmS16mqFpYzaCvGTvTf8P+Kr3Jr7F7k
	1X1OJj+5znGeCQHePX62iL/jCL7ttyuoVTz/TZ3d9jiba0t2tSw7qZdkp5v0S/GrOv0NZGnVKKWyN
	E/dXojCdetqNH8tJ6qdB7dOm/+BAe0s5OpmzCUiANY0uav0YItiw96gasxE7x2Z7cl0jNJxXKSI9c
	oCYAq69ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7h1j-0003FU-QM; Tue, 10 Sep 2019 14:21:51 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7h1e-0003EA-2M
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 14:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=2jwbvyJChklH4kBZDL3e4tOwyzc27GWRhxaEBgNnVhg=; 
 b=vUqQgSMa/xzzm0xBkgEDJEnH6Yz5p2rEoYR0VIaAo4NNJVLNoMW+q2NNCRbuVE3KzfRbYkIiZf92LvsM9eBmRNJUR/Oy8hJJm42OSvMdCaT4jrFj7731oo/FStAwJRFZ9EhHDT4F4UJ3ai3NAlScUEVHIslqnoZn4w6BrBoMkk8=;
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Ben Greear <greearb@candelatech.com>, ath10k@lists.infradead.org
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
 <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
 <87h85kfwfn.fsf@codeaurora.org>
 <CAKR_QVJpGZCBaE3hW6FShykYa=T6hy2dHn22daQVodWGL_-Afw@mail.gmail.com>
 <a1cf238e-ee80-ee81-f7a6-28faff3a35a6@newmedia-net.de>
 <a599bf9a-44ad-2d70-79dc-324e8dbeb1cd@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <c25df199-bfe6-942a-8120-d818a8f387b2@newmedia-net.de>
Date: Tue, 10 Sep 2019 16:20:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <a599bf9a-44ad-2d70-79dc-324e8dbeb1cd@candelatech.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i7h1k-0005Wg-Gl; Tue, 10 Sep 2019 16:21:52 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_072146_400959_8AF6CB1F 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CkFtIDEwLjA5LjIwMTkgdW0gMTY6MTEgc2NocmllYiBCZW4gR3JlZWFyOgo+Cj4KPiBPbiAwOS8x
MC8yMDE5IDA2OjUxIEFNLCBTZWJhc3RpYW4gR290dHNjaGFsbCB3cm90ZToKPj4gdGhlIHRwbGlu
ayBhcmNoZXIgYzcgdjEgaW5kZWVkIGhhcyB0aGlzIGh3IDEgdmVyc2lvbi4gYnV0IHRoYXRzIHRo
ZSAKPj4gb25seSBkZXZpY2UgaSBrbm93IGNvbW1pbmcgd2l0aCB0aGlzIGNoaXBzZXQgdmVyc2lv
bgo+PiBidXQgdGhlIHYxIGhhcyBhbHNvIGEgbWluaXBjaWUgc2xvdCBhbmQgaXMgbm90IHNvbGRl
cmVkIGxpa2UgYWxsIAo+PiBvdGhlciByZXZpc2lvbnMuwqAgc28gaSBqdXN0IHJlcGxhY2VkIHRo
ZSBjYXJkIG9uIG15IHRlc3QgZGV2aWNlLgo+PiBpbiBhZGRpdGlvbiB3ZSBtYXkgYXNrIGJlbiBn
cmVhciBpZiBoZSBpcyBhYmxlIHRvIHByb3ZpZGUgYSB2MSAKPj4gZmlybXdhcmUgZnJvbSBoaXMg
Y3QgdHJlZSBzaW5jZSB0aGUgcWNhIHNvdXJjZWNvZGVzIGRvIGNvbnRhaW4gc3VwcG9ydAo+PiBm
b3IgdGhlIHYxIHJldmlzaW9uLiBidXQgZG9udCBleHBlY3QgdG9vIG11Y2guIHRoZXJlIHdhcyBh
IHJlYXNvbiB3aHkgCj4+IHYxIHdhcyBuZXZlciByZWFsbHkgb24gdGhlIG1hcmtldAo+Cj4gSGVs
bG8sCj4KPiBJIGRvbid0IHRoaW5rIEkgY2FuIGV2ZW4gYnVpbGQgYSB2MSBmaXJtd2FyZSBpZiBJ
IHdhbnRlZCB0bywgYW5kIEknZCAKPiBtdWNoIHJhdGhlciB3b3JrIG9uIG5ld2VyCj4gY2hpcHMu
wqAgVGhhdCB2MSB3YXMgYW4gdW5zdGFibGUgd3JlY2sgZnJvbSB0aGUgYmVnaW5uaW5nLCBhdCBs
ZWFzdCAKPiB3aXRoIG9wZW4tc291cmNlIGRyaXZlci4KPgo+IFRoYW5rcywKPiBCZW4KdGhhdHMg
d2hhdCBpIG1lYW4uIHRoZSB2MSBpcyBrbm93biB0byBiZSBhIGJ1Z2d5IGNoaXBzZXQuIGkgaGF2
ZSBzdGlsbCAKb25lIGJ1dCBuZXZlciBwbGF5ZWQgbXVjaCB3aXRoIGl0LiBidXQgb3duZXJzIG9m
IHRoZSBvbGQgYXJjaGVyIHY3IHYxIApvZnRlbiBhc2sgZm9yIHN1cHBvcnQKPgo+Pgo+PiBBbSAx
MC4wOS4yMDE5IHVtIDE0OjU5IHNjaHJpZWIgVG9tIFBzeWJvcmc6Cj4+PiBPbiAxMC8wOS8yMDE5
LCBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9yZz4gd3JvdGU6Cj4+Pj4gKGRyb3BwaW5n
IHN0YWJsZSBsaXN0KQo+Pj4+Cj4+Pj4gVG9tIFBzeWJvcmcgPHBvemVnYS50b21pc2xhdkBnbWFp
bC5jb20+IHdyaXRlczoKPj4+Pgo+Pj4+PiBBY2NvcmRpbmcgdG8gdGhpcyB2ZXJ5IG9sZCBwb3N0
Cj4+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9hdGgxMGsvMjAxMy1K
dWx5LzAwMDAyMS5odG1sCj4+Pj4+IHNlZW1zIGxpa2UgeW91J3ZlIGJlZW4gbWlzaW5mb3JtZWQg
b24gYW1vdW50IG9mIHRoZXNlIGNhcmRzIHRoYXQgd2VyZQo+Pj4+PiBwdXQgb3V0IGluIHRoZSBt
YXJrZXQuCj4+Pj4+Cj4+Pj4+IEF0IGxlYXN0IGRpZ2lwYXJ0IG9ubHkgaGF2ZSA+NDAwMDAgdW5p
dHMgaW4gc3RvY2tzCj4+Pj4+IGh0dHBzOi8vd3d3LmRpZ2lwYXJ0LmNvbS9wYXJ0L1FDQTk4ODAt
QVIxQSBhbmQgb3RoZXIgcmV0YWlsZXJzCj4+Pj4+IHByb2JhYmx5IGZldyB0aG91c2FuZHMgbW9y
ZS4KPj4+Pj4KPj4+Pj4gV2l0aCB0aGF0IGxhcmdlIGFtb3VudCBvZiBjYXJkcyBJIHRoaW5rIGl0
IGlzIGp1c3RpZmllZCB0byByZXF1ZXN0Cj4+Pj4+IGZpcm13YXJlIHN1cHBvcnQgZm9yIHRoZSBj
aGlwLiBBbmQgcHJvYmFibHkgYSBsb3QgZWFzaWVyIHRvIG1ha2UgZmV3Cj4+Pj4+IGZpcm13YXJl
IG1vZGlmaWNhdGlvbnMgdGhhbiBnbyBoYWNraW5nIGEgYnVuY2ggb2YgQVBJIGNhbGxzIHNvIGl0
Cj4+Pj4+IHdvcmtzIHdpdGggdjIgZmlybXdhcmUuCj4+Pj4gSSdtIHZlcnkgc3VycHJpc2VkIHRo
YXQgUUNBOTg4MCBodzEuMCBib2FyZHMgYXJlIHN0aWxsIGF2YWlsYWJsZSwgCj4+Pj4gYWZ0ZXIK
Pj4+PiBzaXggeWVhcnMuIERpZCB5b3UgY29uZmlybSB0aGF0IGl0IHJlYWxseSBpcyBodzEuMCBh
bmQgbm90IGp1c3Qgc29tZQo+Pj4+IG1peHVwIHdpdGggaGFyZHdhcmUgaWRzIG9yIHNvbWV0aGlu
ZyBsaWtlIHRoYXQ/Cj4+PiBQcmludCBvbiB0aGUgY2hpcCBjbGVhcmx5IHNheXMgUUNBOTg4MC1B
UjFBLiBJRCBzYW1lIGFzIGZvciB2MiAtIDAwM0MuCj4+Pgo+Pj4+IG9sZCBodzEuMCBmaXJtd2Fy
ZSB0byBzZWUgaWYgaXQgd29ya3MuCj4+PiBJIGRvbid0IGtub3cgd2hpY2ggZncgYmxvYiB2ZXJz
aW9uIHRoYXQgaXMuIEkgY291bGQgbm90IGZpbmQgaXQKPj4+IG9ubGluZS4gQWxsIGZpbGVzIGFy
ZSB2MiByZWxhdGVkLgo+Pj4KPj4+PiBCdXQgaWYgaXQncyByZWFsbHkgaXMgaHcxLjAgSSBkb3Vi
dCB0aGVyZSB3aWxsIGJlIGFueSBzdXBwb3J0IGZvciAKPj4+PiB0aGF0Lgo+Pj4+IEkgcmVjb21t
ZW5kIHRvIGF2b2lkIGh3MS4wIGFsdG9nZXRoZXIuCj4+Pj4KPj4+PiAtLSAKPj4+PiBLYWxsZSBW
YWxvCj4+Pj4KPj4+IFRoYXQgd291bGQgYmUgdG9vIGJhZCwgZXZlbiB3b3JzZSB3aGVuIHlvdSBm
aW5kIG91dCB0aGF0Cj4+PiBxY2Etd2lmaS0xMC4yLjQuNTguMSBkcml2ZXIgZmFpbHMgdG8gbG9h
ZCBmaXJtd2FyZSB0b28uIFRoZSBvbmx5IG9uZQo+Pj4gdGhhdCB3b3JrcyBpcyBxY2Etd2lmaSB0
aGF0IGNvbWVzIHdpdGggdHAtbGluayBmaXJtd2FyZSwgc29tZSB2ZXJ5Cj4+PiBlYXJseSB2ZXJz
aW9uIDEwLjAuMTA4IG9yIHNvbXRlaGluZyBsaWtlIHRoYXQgdGhhdCBoYXMgbm8gYXZhaWxhYmxl
Cj4+PiBzb3VyY2VzLi4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gYXRoMTBrIG1haWxpbmcgbGlzdAo+Pj4gYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBhdGgxMGsgbWFpbGluZyBsaXN0Cj4+IGF0aDEwa0BsaXN0cy5pbmZyYWRl
YWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRo
MTBrCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0
aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
