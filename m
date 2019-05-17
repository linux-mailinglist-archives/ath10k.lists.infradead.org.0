Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA4B21A49
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 17:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sh8iRjZDLK38IPT1LPbsxMJ3T4euPr7dU9ksHlXuXIo=; b=RKJP+Yw8uu7NzGxFuZRd0BnDn
	j7kYUG+tbU56kWFBSrU2QDdisVJa+DCTmorKGqoZtfeuJAk8T8gFCkPQAlRtQ8OvnJObp3X6txNIf
	wGlpwpoQCptETVs1AsH0bSXhsJxnl2B6FehNKYA4zZKubFZpD5ZUGBpCRtUVo7ZX5aF5wl/qKsR8n
	ruidPgfd2MVAYQisg+Ki4YW8331uCA5bxLhG/njZ+v6fcrHef6oMC1gYIuPDmViX0s3O8UC6D5rNv
	eTwoZahAitCFnlTpozsg4veRdE7rl8PS1hD6Riwg2PzcpjilEGK8kmRDv+qD805globd4NF+DxvUO
	/Gq0EDxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReQr-0005wZ-Rx; Fri, 17 May 2019 15:06:01 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReQn-0005wG-8D
 for ath10k@lists.infradead.org; Fri, 17 May 2019 15:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=sWRJ9PY4gdmzgI7YJh1Y2TzqUlD0B3+tDJ9dpsLqryE=; 
 b=kLP3mnspxG4m/Z0+8hdrb9yhixQh4u/HMWdtBAH+zA3lp/62fyNn4OYEzutd6SEcSII1WUKR96Bo5kIkPHYboWjdI/4auhsJ0dm4MDrLtq9ddLcVgEys7sG7yGTAsnlvG6YD0tjDyMpuG7ilOgJ1Bg9szGriC9K8igadzxcs0R8=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: ath10k@lists.infradead.org
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
Date: Fri, 17 May 2019 17:05:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hReQr-0003Dx-TY
 for ath10k@lists.infradead.org; Fri, 17 May 2019 17:06:01 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_080557_583771_BF7D38B6 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

CkFtIDE3LjA1LjIwMTkgdW0gMTM6NDggc2NocmllYiBCZW4gR3JlZWFyOgo+Cj4KPiBPbiAwNS8x
Ni8yMDE5IDA5OjIxIFBNLCBTZWJhc3RpYW4gR290dHNjaGFsbCB3cm90ZToKPj4KPj4gQW0gMTYu
MDUuMjAxOSB1bSAyMTo0MCBzY2hyaWViIEJlbiBHcmVlYXI6Cj4+PiBPbiA1LzE1LzE5IDY6MDAg
QU0sIEJlbiBHcmVlYXIgd3JvdGU6Cj4+Pj4gT24gNS8xNS8xOSA1OjI2IEFNLCBTZWJhc3RpYW4g
R290dHNjaGFsbCB3cm90ZToKPj4+Pj4KPj4+Pj4gQW0gMTUuMDUuMjAxOSB1bSAxNDoyMCBzY2hy
aWViIEJlbiBHcmVlYXI6Cj4+Pj4+PiBPbiAwNS8xNC8yMDE5IDA5OjI2IFBNLCBTZWJhc3RpYW4g
R290dHNjaGFsbCB3cm90ZToKPj4+Pj4+PiBjYW4geW91IHNlbmQgbWUgYSBkZXRhaWxlZCBpbnN0
cnVjdGlvbiBmb3IgdGVzdGluZyB0aGlzIG9uIG15IAo+Pj4+Pj4+IGRldmljZXM/IHNvIHdoaWNo
IGNvbW1hbmRzIGhhdmUgYmVlbiB1c2VkIGZvciBnZW5lcmF0aW5nIHRoZSAKPj4+Pj4+PiB0cmFm
ZmljIGV0Yy4gKGlwZXJmMz8pCj4+Pj4+Pgo+Pj4+Pj4gSSBhbSB1c2luZyBvdXIgb3duIHRyYWZm
aWMgZ2VuZXJhdG9yLCBidXQgSSBpbWFnaW5lIGlwZXJmMyBzaG91bGQgCj4+Pj4+PiB3b3JrIGZp
bmUgdG9vLgo+Pj4+Pj4KPj4+Pj4+IEkgYW0gdGVzdGluZyBvbiB4ODYtNjQgYW5kIHNvIGZvcnRo
LsKgIE1heWJlIHlvdSBjYW4gdGVzdCB3aXRoIFVEUCAKPj4+Pj4+IHNtYWxsLXBhY2tldCBsb2Fk
IG9uIHlvdXIgcGxhdGZvcm0KPj4+Pj4+IGluIHJvdXRlZCBtb2RlIChpZSwgZXh0ZXJuYWwgaXBl
cmYgZ2VuZXJhdG9yIHRocm91Z2ggeW91ciBBUCkgYW5kIAo+Pj4+Pj4gc2VlIGlmIHlvdSBzZWUg
aXNzdWVzPwo+Pj4+PiB0aGF0cyB0aGUgcGxhbi4gY2FuIHlvdSBkbyBhIHRlc3Qgd2l0aCBpcGVy
ZjMgdG8gc2VlIGlmIGl0cyAKPj4+Pj4gcmVwcm9kdWNlYWJsZS4gaSBtZWFuIGkgd2lsbCB0ZXN0
IGl0IG9uIGlwcSBiYXNlZCBib2FyZHMgYW5kIHg2NC4gCj4+Pj4+IGJ1dCB0byBtYWtlIHN1cmUg
dGhhdCB0aGUgc2NlbmFyaW8KPj4+Pj4gaXMgaWRlbnRpY2FsIHdoaWNoIHJhaXNlZCB1cCB5b3Vy
IGlzc3VlLCBpdCB3b3VsZCBiZSBmaW5kIGlmIHdlIAo+Pj4+PiBoYXZlIGlkZW50aWNhbCBzb2Z0
d2FyZSBmb3IgdGVzdGluZyBpbmNsdWRpbmcgdGhlIHNhbWUgb3B0aW9ucwo+Pj4KPj4+IEkgdGhp
bmsgSSBmb3VuZCB0aGUgaXNzdWUuwqAgVGhlIHJhdGUtY3RybCBsb2dpYyBpbiB0aGUgZmlybXdh
cmUgCj4+PiBhbGxvd3MgYSB0cmFuc2l0aW9uIGZyb20gSFQvVkhUIDIwIE1DUzAgZG93biB0byBP
RkRNIHJhdGVzLgo+Pj4gSXQgc2VlbXMgdGhlIGhhcmR3YXJlIGRvZXMgbm90IGxpa2UgdG8gc2Vl
IGFuIEFNUERVIHdpdGggYW4gT0ZETSAKPj4+IHJhdGUgZm9yIDIwTWh6IGFuZCBhIFZIVCByYXRl
IGZvciA4ME1oeiAob3IgbWF5YmUganVzdCB0aGUKPj4+IHNpbmdsZSBPRkRNIHJhdGUgaXMgdGhl
IGZhdWx0KS4KPj4+Cj4+PiBJZiB5b3UgY2FuIGVkaXQgZmlybXdhcmUsIHRoZW4gc2V0dGluZyB0
aGlzIHRvIDAgcHJvYmFibHkgZml4ZXMgdGhlIAo+Pj4gaXNzdWUuCj4+Pgo+Pj4gZ19yY19jY2tf
cmF0ZV9hbGxvd2VkCj4+Cj4+IGFjY29yZGluZyB0byB0aGUgY29kZSB0aGlzIHZhcmlhYmxlIGhh
cyBvbmx5IGVmZmVjdCBvbiAyLjQgZ2h6LiB0aGUgCj4+IGZhbGxiYWNrIHRvIGNjayByYXRlcyB3
aWxsIG9ubHkgYmUgZG9uZSBpZiBwaHltb2RlIGlzIDIuNCBnaHoKPgo+IE9rLCBtYXliZSB0aGUg
c3ltcHRvbSBJIHNhdyB3aXRoIHN0b2NrLWlzaCBmaXJtd2FyZSB3YXMgZHVlIHRvIHNvbWUgCj4g
b3RoZXIgY2F1c2UuwqAgSW4gbXkgZmlybXdhcmUsCj4gSSBoYWQgImZpeGVkIiB0aGF0IGNjay1m
YWxsYmFjayB0byB1c2UgT0ZETSByYXRlcyBpbiBjYXNlIENDSyB3YXMgbm90IAo+IGF2YWlsYWJs
ZSwgc28gbWluZSB3YXMKPiBkZWZpbml0ZWx5IHRyeWluZyB0byB1c2UgYW4gT0ZETSByYXRlLgo+
Cj4gVGhhdCBzYWlkLCB2ZXJ5IGxpa2VseSB0aGUgc2FtZSBidWcgZXhpc3RzIGluIHVwc3RyZWFt
IFFDQSBmaXJtd2FyZSAKPiBmb3IgMi40R2h6IHJhZGlvcyB3aGVyZSBDQ0sgaXMgYXZhaWxhYmxl
LAo+IHNvIHN0aWxsIG1pZ2h0IGJlIHdvcnRoIGZpeGluZyBvciBhdCBsZWFzdCBhZGRpbmcgQVBJ
IHRvIGxldCB0aGUgdXNlciAKPiBkaXNhYmxlIHRoZSBmYWxsYmFjayBpbiBjYXNlIHN0cmFuZ2UK
PiBwcm9ibGVtcyBhcmUgc2Vlbi4KPgo+IEkgYW0gZ3Vlc3NpbmcgdGhhdCBpZiBpdCByZWFsbHkg
d2FudHMgdG8gc2VuZCBPRkRNL0NDSyByYXRlcywgdGhlbiBpdCAKPiB3aWxsIGhhdmUgdG8gdXNl
IGEgZGlmZmVyZW50Cj4gVElEIHRoYXQgaXMgbm90IHNldCB1cCBmb3IgQU1QRFVzLCBhbmQgdGhl
IGN1cnJlbnQgY29kZSBkb2VzIG5vdCBkZWFsIAo+IHdpdGggdGhhdCBhcyBmYXIgYXMgSSBjYW4g
dGVsbC4KcGVyc29uYWxseSBpIHRoaW5rIGdvaW5nIGJhY2sgdG8gYmFzaWMgcmF0ZXMgbGlrZSAy
IG1iaXQgbWFrZXMgbm8gc2Vuc2UgCmFueXdheS4gaXRzIHRoYXQgZGVhZCBzbG93IHRoYXQgYSBj
b25uZWN0aW9uIG11c3QgYnJlYWsgYW5kIGhhcyB0byBiZSAKYnJva2VuIGlmIHRoaXMgZG9lc250
IHdvcmsuCnN0aWxsIGEgc2hhbWUgdGhhdCBiZWFjb25zIGFyZSBzdGlsbCB0cmFuc21pdHRlZCBp
biB0aGlzIHdheSBhbmQgCm11bHRpY2FzdC9icm9hZGNhc3QgcGFja2V0cyBhcyB3ZWxsIHdoaWNo
IGNhdXNlcyBhIGhlbGwgb2YgcHJvYmxlbXMuIGJ1dCAKdGhhdHMgZm9yIGJhY2t3YXJkIGNvbXBh
dGliaWxpdHkgb2YgY2F1c2UKPgo+IFRoYW5rcywKPiBCZW4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2F0aDEwawo=
