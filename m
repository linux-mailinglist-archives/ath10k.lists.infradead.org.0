Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA8EDFDAC
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 08:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUizMBeGNIlMJZGl79EZwvfqaraaVAWkL2SrdOsBA0g=; b=WKKcaMEjiRZ9Sm
	iC/7LLgVhjMVqD8kfm34OXGSay8qOG1Iiy6T1z7EHpslROwyfD1HD1ZMPmuiUQh8yYeQ5mxRgAxMz
	oUgEah4d2jI4QVjGwPrGuzHnWce3PHZv0so1TstyTQO9+iv5wjfQM8EflK5LPHGi5sKpVNZ4pA3Kc
	Vve/JMtFjXnqY6jxKYBmdudfBDxL0AmUracTAXcEA8Ai7/fSCw+H1IeJ01B+TM0uaPDtwj+9eOA/4
	y5ZGEAs2b8P0Zk13u565pnTq4YMo0zV9GqgbqF3VC2u3zZKwT+pwpFp6d3DLS90omu6Ccp9N8dCEY
	ZtgH0HR4SZb6+xIgcwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMnXL-0003tt-0m; Tue, 22 Oct 2019 06:20:55 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMnXG-0003t6-S0
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 06:20:52 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so11471338lfa.12
 for <ath10k@lists.infradead.org>; Mon, 21 Oct 2019 23:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P89YVq7mabnbReOmcuX3tbFnU1/HsoCVT0wVL7HYmgo=;
 b=H6fbYWTqwfAzUI0aZwG24lhF9WJY8zUGD2ZkDaEt8GdDT3wSosRcnrLTg5vgYNVQti
 xB5HLN+lsDlUxmw5ZwXpIOmfknFtbmHgejpU4A97IvOx1PPiW/lJEzROMOyUXQ4/4Mun
 KezH0Ku9mtAfva3+2KDK2dL2Lcnx0FFucpiemXhTcm4HjHVfEBQcMJeG4jl3NoY4x54A
 4jdUHr3gyn03Fa6aTId0V5CPkB1fflYZs1Sv4H1a3HRqv3TSkpvmESxTofmTnhItZiyz
 7lA76VICm3+uVUEPzJ0rG72KEUk2OuTkj71bOvxOMRuBgoVIBlVDHoNZ4C4sS76WncCB
 nYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P89YVq7mabnbReOmcuX3tbFnU1/HsoCVT0wVL7HYmgo=;
 b=LW9vq4zyLFbCUTVrRtRkVWonZfLpHSf6/WhwoxD8Y3gMa6bWCZ1gEIiHY8snFJ3OEt
 BjjwIGc954yhuMwR/kQcEbyqoXRhG4IbevuGpZSSNezYozctcD6tm357gYDZZH9bKGQi
 F1hC0p5N6c6I1Du8gTWSA4l3mEaBfFEilktDX4Qa24v8omG/GJ9hj7ogHRS4P729nwPz
 N4dl/BieCP1g7uaKnpyDykuBd78IT6mehBfePIqvrmHF2QexIuhe7CDMRYog4F2Na6+T
 uMIUwNH4cYVIP9HYCouT8/efmck/AsHF/dzPnRAEhTc740oopK6BEabeXmJ5Dltuvf9r
 v4Uw==
X-Gm-Message-State: APjAAAXPrtJFBlOwbu41acqbM/m9r+/HLds1J7N8cgVlhvuEQzPXkzXW
 ko7pRATuwkEjcWsEs6sZmP4aHNBJbM6wmqgKrXTVOw==
X-Google-Smtp-Source: APXvYqxl8ImxyIIaYe9Nt5SgAG5+hUWTullxdEbjF0/6jry2TDPqWN0jbmS+AN13XvzxT1JqVAOWFjuhHFtVQsZDa3s=
X-Received: by 2002:a19:9144:: with SMTP id y4mr12326104lfj.168.1571725245884; 
 Mon, 21 Oct 2019 23:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
In-Reply-To: <157148503865.2989444.7118792679603045723.stgit@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Mon, 21 Oct 2019 23:20:34 -0700
Message-ID: <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_232050_932726_41EA4B9A 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiArICAgICAgICAgICAgICAgaWYgKGllZWU4MDIxMV9pc19kYXRhX3FvcyhoZHItPmZyYW1lX2Nv
bnRyb2wpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcWMgPSBpZWVlODAyMTFfZ2V0X3Fv
c19jdGwoaGRyKTsKPiArICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1swXSAmIDB4ZjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBhYyA9IGllZWU4MDIxMV9hY19mcm9tX3RpZCh0aWQp
Owo+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGFj
ID0gSUVFRTgwMjExX0FDX0JFOwo+ICsgICAgICAgICAgICAgICB9CgpUaGUgdGlkL2FjIGlzIGlu
Y29ycmVjdCBlaXRoZXIgaGVyZSBvciBpbiBfX2llZWU4MDIxMV90eF9zdGF0dXMoKSB3aGVuCnRl
c3RlZCB3aXRoIGF0aDEway4gVGhlIGFjIGlzIHNldCB0byBBQ19CRSB3aXRoIHRlc3QgZG9uZSB1
c2luZyBCSwpjbGFzcyB0cmFmZmljLCAgaGVuY2UgdGhlIHBlbmRpbmcgYWlydGltZSBnZXQgdXBk
YXRlZCBmb3IgdGhlIHdyb25nCnR4cS4KClRoZSByZXN0IG9mIHRoZSBwYXRjaCBzZWVtcyB0byB3
b3JrIGFzIGV4cGVjdGVkLCBhZnRlciBJIGRpZCBhIHF1aWNrCmhhY2sgdG8gcmVsZWFzZSB0aGUg
cGVuZGluZyBhaXJ0aW1lIGZyb20gYXRoMTBrX3R4cnhfdHhfdW5yZWYoKQppbnN0ZWFkLCB3aGVy
ZSB0aGUgYWMvdGlkIGNhbiBiZSBkaXJlY3RseSByZXRyaWV2ZWQgZnJvbSBzdHJ1Y2sgc3RydWN0
CmllZWU4MDIxMV90eC4KCgpPbiBTYXQsIE9jdCAxOSwgMjAxOSBhdCA0OjM3IEFNIFRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IEZyb206IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+Cj4gVGhlIHByZXZpb3VzIGNv
bW1pdCBhZGRlZCB0aGUgYWJpbGl0eSB0byB0aHJvdHRsZSBzdGF0aW9ucyB3aGVuIHRoZXkgcXVl
dWUKPiB0b28gbXVjaCBhaXJ0aW1lIGluIHRoZSBoYXJkd2FyZS4gVGhpcyBjb21taXQgZW5hYmxl
cyB0aGUgZnVuY3Rpb25hbGl0eSBieQo+IGNhbGN1bGF0aW5nIHRoZSBleHBlY3RlZCBhaXJ0aW1l
IHVzYWdlIG9mIGVhY2ggcGFja2V0IHRoYXQgaXMgZGVxdWV1ZWQgZnJvbQo+IHRoZSBUWFFzIGlu
IG1hYzgwMjExLCBhbmQgYWNjb3VudGluZyB0aGF0IGFzIHBlbmRpbmcgYWlydGltZS4KPgo+IFRo
ZSBlc3RpbWF0ZWQgYWlydGltZSBmb3IgZWFjaCBza2IgaXMgc3RvcmVkIGluIHRoZSB0eF9pbmZv
LCBzbyB3ZSBjYW4KPiBzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0
b3RhbCB3aGVuIHRoZSBza2IgaXMgZnJlZWQgb3IKPiByZWN5Y2xlZC4gVGhlIHRocm90dGxpbmcg
bWVjaGFuaXNtIHJlbGllcyBvbiB0aGlzIGFjY291bnRpbmcgdG8gYmUKPiBhY2N1cmF0ZSAoaS5l
LiwgdGhhdCB3ZSBhcmUgbm90IGZyZWVpbmcgc2ticyB3aXRob3V0IHN1YnRyYWN0aW5nIGFueQo+
IGFpcnRpbWUgdGhleSB3ZXJlIGFjY291bnRlZCBmb3IpLCBzbyB3ZSBwdXQgdGhlIHN1YnRyYWN0
aW9uIGludG8KPiBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuIEFzIGFuIG9wdGltaXNhdGlv
biwgd2UgYWxzbyBzdWJ0cmFjdCB0aGUKPiBhaXJ0aW1lIG9uIHJlZ3VsYXIgVFggY29tcGxldGlv
biwgemVyb2luZyBvdXQgdGhlIHZhbHVlIHN0b3JlZCBpbiB0aGUKPiBwYWNrZXQgYWZ0ZXJ3YXJk
cywgdG8gYXZvaWQgaGF2aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlCj4gc3Rh
dGlvbiBmcm9tIHRoZSBwYWNrZXQgZGF0YSBvbiBldmVyeSBwYWNrZXQuCj4KPiBUaGlzIHBhdGNo
IGRvZXMgKm5vdCogaW5jbHVkZSBhbnkgbWVjaGFuaXNtIHRvIHdha2UgYSB0aHJvdHRsZWQgVFhR
IGFnYWluLAo+IG9uIHRoZSBhc3N1bXB0aW9uIHRoYXQgdGhpcyB3aWxsIGhhcHBlbiBhbnl3YXkg
YXMgYSBzaWRlIGVmZmVjdCBvZiB3aGF0ZXZlcgo+IGZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9u
bHkgYSBUWCBjb21wbGV0aW9uKS4KPgo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IC0tLQo+ICBuZXQvbWFjODAyMTEvc3RhdHVzLmMg
fCAgIDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIG5ldC9tYWM4
MDIxMS90eC5jICAgICB8ICAgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgNTkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS9zdGF0
dXMuYyBiL25ldC9tYWM4MDIxMS9zdGF0dXMuYwo+IGluZGV4IGFiOGJhNTgzNWNhMC4uOTA1YjRh
ZmQ0NTdkIDEwMDY0NAo+IC0tLSBhL25ldC9tYWM4MDIxMS9zdGF0dXMuYwo+ICsrKyBiL25ldC9t
YWM4MDIxMS9zdGF0dXMuYwo+IEBAIC02NzYsNiArNjc2LDMzIEBAIHN0YXRpYyB2b2lkIGllZWU4
MDIxMV9yZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwsCj4gICAg
ICAgICBpZiAoZHJvcHBlZCkKPiAgICAgICAgICAgICAgICAgYWNrZWQgPSBmYWxzZTsKPgo+ICsg
ICAgICAgaWYgKGluZm8tPnR4X3RpbWVfZXN0KSB7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBp
ZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOwo+ICsgICAgICAgICAgICAgICBzdHJ1Y3Qgc3Rh
X2luZm8gKnN0YSA9IE5VTEw7Cj4gKyAgICAgICAgICAgICAgIHU4ICpxYywgYWM7Cj4gKyAgICAg
ICAgICAgICAgIGludCB0aWQ7Cj4gKwo+ICsgICAgICAgICAgICAgICByY3VfcmVhZF9sb2NrKCk7
Cj4gKwo+ICsgICAgICAgICAgICAgICBzZGF0YSA9IGllZWU4MDIxMV9zZGF0YV9mcm9tX3NrYihs
b2NhbCwgc2tiKTsKPiArICAgICAgICAgICAgICAgaWYgKHNkYXRhKQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHN0YSA9IHN0YV9pbmZvX2dldF9ic3Moc2RhdGEsIHNrYl9tYWNfaGVhZGVyKHNr
YikpOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKGllZWU4MDIxMV9pc19kYXRhX3FvcyhoZHIt
PmZyYW1lX2NvbnRyb2wpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcWMgPSBpZWVlODAy
MTFfZ2V0X3Fvc19jdGwoaGRyKTsKPiArICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1sw
XSAmIDB4ZjsKPiArICAgICAgICAgICAgICAgICAgICAgICBhYyA9IGllZWU4MDIxMV9hY19mcm9t
X3RpZCh0aWQpOwo+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGFjID0gSUVFRTgwMjExX0FDX0JFOwo+ICsgICAgICAgICAgICAgICB9Cj4gKwo+ICsg
ICAgICAgICAgICAgICBpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWws
IHN0YSwgYWMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpbmZvLT50eF90aW1lX2VzdCA8PCAyLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1ZSk7Cj4gKyAgICAgICAgICAgICAgIHJj
dV9yZWFkX3VubG9jaygpOwo+ICsKPiArICAgICAgIH0KPiArCj4gICAgICAgICBpZiAoaW5mby0+
ZmxhZ3MgJiBJRUVFODAyMTFfVFhfSU5URkxfTUxNRV9DT05OX1RYKSB7Cj4gICAgICAgICAgICAg
ICAgIHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOwo+Cj4gQEAgLTkzMCw2ICs5
NTcsMTcgQEAgc3RhdGljIHZvaWQgX19pZWVlODAyMTFfdHhfc3RhdHVzKHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHRpZCA9IHFjWzBdICYgMHhmOwo+
ICAgICAgICAgICAgICAgICB9Cj4KPiArICAgICAgICAgICAgICAgaWYgKGluZm8tPnR4X3RpbWVf
ZXN0KSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgLyogRG8gdGhpcyBoZXJlIHRvIGF2b2lk
IHRoZSBleHBlbnNpdmUgbG9va3VwIG9mIHRoZSBzdGEKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgKiBpbiBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICovCj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWVlZTgwMjExX3N0YV91cGRhdGVf
cGVuZGluZ19haXJ0aW1lKGxvY2FsLCBzdGEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGllZWU4MDIxMV9hY19mcm9tX3RpZCh0
aWQpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpbmZvLT50eF90aW1lX2VzdCA8PCAyLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0cnVlKTsKPiArICAgICAg
ICAgICAgICAgICAgICAgICBpbmZvLT50eF90aW1lX2VzdCA9IDA7Cj4gKyAgICAgICAgICAgICAg
IH0KPiArCj4gICAgICAgICAgICAgICAgIGlmICghYWNrZWQgJiYgaWVlZTgwMjExX2lzX2JhY2tf
cmVxKGZjKSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIHUxNiBjb250cm9sOwo+Cj4gZGlm
ZiAtLWdpdCBhL25ldC9tYWM4MDIxMS90eC5jIGIvbmV0L21hYzgwMjExL3R4LmMKPiBpbmRleCAx
MjY1M2Q4NzNiOGMuLmI4ZmY1NmQxZDY2MSAxMDA2NDQKPiAtLS0gYS9uZXQvbWFjODAyMTEvdHgu
Ywo+ICsrKyBiL25ldC9tYWM4MDIxMS90eC5jCj4gQEAgLTM1NDIsNiArMzU0Miw5IEBAIHN0cnVj
dCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywK
Pgo+ICAgICAgICAgV0FSTl9PTl9PTkNFKHNvZnRpcnFfY291bnQoKSA9PSAwKTsKPgo+ICsgICAg
ICAgaWYgKCFpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soaHcsIHR4cSkpCj4gKyAgICAgICAg
ICAgICAgIHJldHVybiBOVUxMOwo+ICsKPiAgYmVnaW46Cj4gICAgICAgICBzcGluX2xvY2tfYmgo
JmZxLT5sb2NrKTsKPgo+IEBAIC0zNjUyLDYgKzM2NTUsMjQgQEAgc3RydWN0IHNrX2J1ZmYgKmll
ZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAo+ICAgICAgICAgfQo+
Cj4gICAgICAgICBJRUVFODAyMTFfU0tCX0NCKHNrYiktPmNvbnRyb2wudmlmID0gdmlmOwo+ICsK
PiArICAgICAgIGlmIChsb2NhbC0+YWlydGltZV9mbGFncyAmIEFJUlRJTUVfVVNFX0FRTCkgewo+
ICsgICAgICAgICAgICAgICB1MzIgYWlydGltZTsKPiArCj4gKyAgICAgICAgICAgICAgIGFpcnRp
bWUgPSBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+c3Rh
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBza2ItPmxlbik7Cj4gKyAgICAgICAgICAgICAgIGlmIChhaXJ0aW1lKSB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgLyogV2Ugb25seSBoYXZlIDEwIGJpdHMgaW4gdHhfdGltZV9l
c3QsIHNvIHN0b3JlIGFpcnRpbWUKPiArICAgICAgICAgICAgICAgICAgICAgICAgKiBpbiBpbmNy
ZW1lbnRzIG9mIDQgdXMgYW5kIGNsYW1wIHRoZSBtYXhpbXVtIHRvIDIqKjEyLTEKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICBhaXJ0aW1lID0g
bWluX3QodTMyLCBhaXJ0aW1lLCA0MDk1KSAmIH4zVTsKPiArICAgICAgICAgICAgICAgICAgICAg
ICBpbmZvLT50eF90aW1lX2VzdCA9IGFpcnRpbWUgPj4gMjsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHR4LnN0YSwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdHhxLT5hYywgYWlydGltZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmFsc2UpOwo+ICsgICAgICAgICAgICAgICB9
Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcmV0dXJuIHNrYjsKPgo+ICBvdXQ6Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5n
IGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
