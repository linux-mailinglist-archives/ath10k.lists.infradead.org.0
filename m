Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ACFDC5A4
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 15:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CzXQrCcWiKnWmK8tOT3QcfW8eexCiHIXPI5J95ZR9q4=; b=SRyebN8h6Kb5iv6REskcCUifA
	iobieKUg7XiMRDb9zxfCm1cPTHVhmDY1JXTkg6YxUAuP15BKhPWC3hKzN6oFv6GwFfAN47Pdnpost
	ik661GKfiytbZA/v7JYqCxzAJWw+uDbBAZ080607+AmRBGNak6zaDMrs4Iungu/RKCrVw0/3Bt7UD
	/4oxLep+aKMht7NuxUDYolZBs0knJtCi8uI8ayeaDcVfe5osyBYYZJQmta8amExnEADin0YYVGXAH
	jy9XNf3vRc1pvhwr4fu5zONaCBPDyI04Jm6Seiv/4rXWdbZq3C6Yq6m0QA3DkOy+2m8VrH3rlUICE
	K9pio7pYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRso-00032W-UF; Fri, 18 Oct 2019 13:01:30 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRsl-00031Y-Jy
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 13:01:29 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 54019137566;
 Fri, 18 Oct 2019 06:01:24 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 54019137566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1571403685;
 bh=05vVSmqtLW47sf9Rc6MdFNX56EEXBS4FCPBzksR0BBU=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=jxDuiSzx/ZZgjhMYWzw/B71/TOWFpvnWECNzIr6qxryERkzE1+Fw9kS1pqDf/yr3o
 IGFVVCEcNuMXsBkhxj2jqgpXAM0r3i7bhotOF0WDtqVhi0D+JskMCsNC65jXKiYbnz
 0kvJfMOB4fPHiXbEddzWdHBOLHGo0BbujnDa1e3E=
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
To: Johannes Berg <johannes@sipsolutions.net>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Kan Yan <kyan@google.com>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <4bc17c32337888a57a78a0e2c874abd462faef21.camel@sipsolutions.net>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <237a3110-69c1-6679-6ffb-892c3815049c@candelatech.com>
Date: Fri, 18 Oct 2019 06:01:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4bc17c32337888a57a78a0e2c874abd462faef21.camel@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_060127_704513_F841FDF8 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CgpPbiAxMC8xOC8yMDE5IDA1OjM1IEFNLCBKb2hhbm5lcyBCZXJnIHdyb3RlOgo+IE9uIEZyaSwg
MjAxOS0xMC0xOCBhdCAxMjoxNSArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3Rl
Ogo+PiBLYW4gWWFuIDxreWFuQGdvb2dsZS5jb20+IHdyaXRlczoKPj4KPj4+IFRoZSAidHhfdGlt
ZV9lc3QiIGZpZWxkLCBzaGFyZWQgYnkgY29udHJvbCBhbmQgc3RhdHVzLCBpcyBub3QgYWJsZSB0
bwo+Pj4gc3Vydml2ZSB1bnRpbCB0aGUgc2tiIHJldHVybnMgdG8gdGhlIG1hYzgwMjExIGxheWVy
IGluIHNvbWUKPj4+IGFyY2hpdGVjdHVyZXMuIFRoZSBzYW1lIHNwYWNlIGlzIGRlZmluZWQgYXMg
ZHJpdmVyX2RhdGEgYW5kIHNvbWUKPj4+IHdpcmVsZXNzIGRyaXZlcnMgdXNlIGl0IGZvciBvdGhl
ciBwdXJwb3NlcywgYXMgdGhlIGNiIGluIHRoZSBza19idWZmCj4+PiBpcyBmcmVlIHRvIGJlIHVz
ZWQgYnkgYW55IGxheWVyLgo+Pj4KPj4+IEluIHRoZSBjYXNlIG9mIGF0aDEwaywgdGhlIHR4X3Rp
bWVfZXN0IGdldCBjbG9iYmVyZWQgYnkKPj4+IHN0cnVjdCBhdGgxMGtfc2tiX2NiIHsKPj4+ICAg
ICAgICAgZG1hX2FkZHJfdCBwYWRkcjsKPj4+ICAgICAgICAgdTggZmxhZ3M7Cj4+PiAgICAgICAg
IHU4IGVpZDsKPj4+ICAgICAgICAgdTE2IG1zZHVfaWQ7Cj4+PiAgICAgICAgIHUxNiBhaXJ0aW1l
X2VzdDsKPj4+ICAgICAgICAgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZjsKPj4+ICAgICAgICAg
c3RydWN0IGllZWU4MDIxMV90eHEgKnR4cTsKPj4+IH0gX19wYWNrZWQ7Cj4+Cj4+IEFoLCBidWdn
ZXIsIG9mIGNvdXJzZSB0aGUgZHJpdmVyIHRoYXQgYWN0dWFsbHkgbmVlZHMgdGhpcyBpcyB1c2lu
ZyB0aGUKPj4gZnVsbCBkcml2ZXJfZGF0YSBzcGFjZSA6UAo+Cj4gTG9va3MgbGlrZSB5b3UgY291
bGQgc2hyaW5rICp0aGlzKiBmYWlybHkgZWFzaWx5IHRob3VnaC4KPgo+IEUuZy4gbW9zdCBsaWtl
bHkgdmlmID09IHR4cS0+dmlmIHVubGVzcyB0eHE9PU5VTEwsIHNvIGl0J3MgZG93biB0byAyMgo+
IGJ5dGVzIHBsdXMgYSBiaXQvZmxhZyBmb3Iga25vd2luZyB3aGV0aGVyIHRoZSBwb2ludGVyIGlz
IGEgdmlmIGRpcmVjdGx5Cj4gKGlmIG5vIFRYUSkgb3IgYSBUWFEuCgpBbmQgb2YgY291cnNlIHlv
dSBnZXQgdHdvIGJpdHMgaW4gZXZlcnkgcG9pbnRlciAoMHgzKSBhbmQgbGlrZWx5IHRoZQpkbWEg
YWRkciB0b28uICBQbGVudHkgb2Ygc3BhY2UhCgpUaGFua3MsCkJlbgoKLS0gCkJlbiBHcmVlYXIg
PGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6
Ly93d3cuY2FuZGVsYXRlY2guY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
