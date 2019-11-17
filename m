Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370EAFFB97
	for <lists+ath10k@lfdr.de>; Sun, 17 Nov 2019 21:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elhCg0B5twu0X0sW3Y/OXmVfI948adACx906OvpDwzQ=; b=j7qxJNmMMjcGP8
	27XThinz6h/Z39ei4DOR8i18wtSeC+rZKDBbjf5CYIIn47jXi8/poHijzXz1vkwZGXy3uz8Kl/7eQ
	tW5ZoTmxMuxiMF3BrfenOtzRWoBcEs+zxXR02XOz3aeT8KnjByU4adWkbKhLu52si+ke9er5sWwKk
	wQ6hEf4y0QGKAA7/I+a31joyQG7eDpybHsrjtbar8RWf1snceQeEOi49noLub8w3j+FJxRkBRnvis
	iveHq60POEbZr7siJil5652lj1tsqPg0R5xnnq9YAF7CQ4WvT2nIdX3NDqalf3FBhMQ4XYL5Hj+bj
	Pvi+XYagkIAKVFt6uJhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWR6i-0004lx-5G; Sun, 17 Nov 2019 20:25:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWR6d-0004A4-Dt
 for ath10k@lists.infradead.org; Sun, 17 Nov 2019 20:25:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id m4so11477428ljj.8
 for <ath10k@lists.infradead.org>; Sun, 17 Nov 2019 12:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ql6OPsK4uQYSkaAsGyBu94gd3BNPrccgvPAvpalrUQQ=;
 b=ZPoAuICAkjxKQgHPGL+AyFKDAZTJ/RODCKSZyZQsYEh6LdpYJ/u7vQiYPUhupoMhAI
 TlD7L+W4j7LiGb5I2eAx0CQx9DiuZU7b1QNUf/MfGqFG80Y9tEAjsYnQ/dsXRzRg94h8
 NitnzK7p10yjnqfmVLUcJQ4eomZ7v/gDqJ2Re3wBqMj1bODmxZriGDwDv1uIgaNM2kkQ
 Awwkc7Qfn/XIp6GZ6NDZhrqbOXidR9ye1RLt1BJ4D9XGvQif3RCskt37XF7D3QDSzhJW
 MtqwO2us/w5OYOraunBCV9PLbSzJvChKRQ6H+6/5g/0mcWzleihT04816Yzwu8LQPqO3
 8Ytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ql6OPsK4uQYSkaAsGyBu94gd3BNPrccgvPAvpalrUQQ=;
 b=EzxSYMyb95DUNO/agfW+rX+l/XPurTCqpUJuQ6b/QhYLaj/GMAOO4BWw5d4D64hfUu
 XXQvQHkmYCInoIFtEmXk4POuJ2G7dP51Fr5z0hhv5o8qw7H6p7XzJH006noJi7GMXCE4
 /efLAkTQxE9iwV9BHQ9NHfSSXxboKi6lmJvFbyIty8fCgu/Xje/9yGjMAAjwlZR5PabA
 EbYz/rKeiV/qy3EnSEvUnuSprjnb5nWNDi19odD49D3khWQc18ci0iDmS/0crAk2lJfZ
 uc/u5y80WbaoNC+6lQrPXPbpozeSnhPmks7O3zsBgz9kLHus/Mz00ZAWsd6WooJ8ZF+y
 6ANA==
X-Gm-Message-State: APjAAAXLOW0xUkRWZshQK/asjrrtsq/JXipEOH3IknzEGKxstFjbESsO
 5jOOq/5YiFYNXl8ET3FVsI19jAGiN+udX/Cdph2viw==
X-Google-Smtp-Source: APXvYqxzsZMoMt7ussfhZ81q9Qzzfp+hPUHwHwDwXa5B5t/Rm64rKUAT1TzDysvU7bbQyn5VqFKYBy5YQFLS8gcB4N0=
X-Received: by 2002:a2e:9ad8:: with SMTP id p24mr7233950ljj.114.1574022302590; 
 Sun, 17 Nov 2019 12:25:02 -0800 (PST)
MIME-Version: 1.0
References: <157382403672.580235.12525941420808058808.stgit@toke.dk>
 <157382404118.580235.14216392299709793599.stgit@toke.dk>
 <CA+iem5tF+TN-osfGxu=EU5Xt1Uq+PcKgBVaoAmZY3a3JzS5JzQ@mail.gmail.com>
 <87y2wgjas4.fsf@toke.dk>
In-Reply-To: <87y2wgjas4.fsf@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Sun, 17 Nov 2019 12:24:51 -0800
Message-ID: <CA+iem5vVhwTsTvAgnC_HF0utMDSfgyLCe2M=gfUOFU2VjjCB8Q@mail.gmail.com>
Subject: Re: [PATCH v9 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_122511_493745_0415D973 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiA+IEdpdmVuIHRoZSBmYWN0IHRoYXQgQVFMIGlzIG9ubHkgdGVzdGVkIGluIHZlcnkgbGltaXRl
ZCBwbGF0Zm9ybXMsCj4gPiBzaG91bGQgd2Ugc2V0IHRoZSBkZWZhdWx0IHRvIGRpc2FibGVkIGJ5
IHJlbW92aW5nIHRoaXMgY2hhbmdlIGluIHRoZQo+ID4gbmV4dCB1cGRhdGU/Cj4gPgo+ID4gLSAg
ICAgICBsb2NhbC0+YWlydGltZV9mbGFncyA9IEFJUlRJTUVfVVNFX1RYIHwgQUlSVElNRV9VU0Vf
Ulg7Cj4gPiArCj4gPiArICAgICAgIGxvY2FsLT5haXJ0aW1lX2ZsYWdzID0gQUlSVElNRV9VU0Vf
VFggfAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFJUlRJTUVfVVNFX1JYIHwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBSVJUSU1FX1VTRV9BUUw7Cj4gPiAr
ICAgICAgIGxvY2FsLT5hcWxfdGhyZXNob2xkID0gSUVFRTgwMjExX0FRTF9USFJFU0hPTEQ7Cj4g
PiArICAgICAgIGF0b21pY19zZXQoJmxvY2FsLT5hcWxfdG90YWxfcGVuZGluZ19haXJ0aW1lLCAw
KTsKPiBXZWxsLCB3ZSBoYXZlIHRoZSB3aG9sZSAtcmMgc2VyaWVzIHRvIGdldCBtb3JlIHRlc3Rp
bmcgaW4gaWYgd2UgbWVyZ2UgaXQKPiBhcy1pcy4gSXQncyB1cCB0byB0aGUgbWFpbnRhaW5lcnMs
IG9mIGNvdXJzZSwgYnV0IEkgd291bGQgYmUgaW4gZmF2b3VyCj4gb2YgbWVyZ2luZyBhcy1pcywg
dGhlbiBvcHRpb25hbGx5IGJhY2tpbmcgb3V0IHRoZSBkZWZhdWx0IGJlZm9yZSB0aGUKPiBmaW5h
bCByZWxlYXNlIGlmIHByb2JsZW1zIGRvIHR1cm4gdXAuIEJ1dCBJIHdvdWxkIGhvcGUgdGhhdCB0
aGUgbGltaXRzCj4gYXJlIHN1ZmZpY2llbnRseSBjb25zZXJ2YXRpdmUgdGhhdCBpdCB3b3VsZCBu
b3QgcmVzdWx0IGluIGFueSBwcm9ibGVtcyA6KQoKU291bmRzIGdvb2QuIFRoZSBjdXJyZW50IGRl
ZmF1bHQgbGltaXRzIGFyZSByZWFzb25hYmx5IGNvbnNlcnZhdGl2ZQphbmQgYXJlIHR1bmFibGUg
dmlhIGRlYnVnZnMuCgpJIHdpbGwgZ2l2ZSB0aGUgdjEwIHZlcnNpb24gb2YgdGhpcyBwYXRjaCBz
ZXJpYWwgYSBxdWljayB0ZXN0IGFuZApob3BlZnVsbHkgd2UgY2FuIHdyYXAgaXQgdXAgc29vbi4K
Ci1LYW4KCgpPbiBTYXQsIE5vdiAxNiwgMjAxOSBhdCAzOjU1IEFNIFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IEthbiBZYW4gPGt5YW5AZ29vZ2xl
LmNvbT4gd3JpdGVzOgo+Cj4gPj4gK3N0YXRpYyBpbmxpbmUgdTE2Cj4gPj4gK2llZWU4MDIxMV9p
bmZvX3NldF90eF90aW1lX2VzdChzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKmluZm8sIHUxNiB0
eF90aW1lX2VzdCkKPiA+PiArewo+ID4+ICsgICAgICAgLyogV2Ugb25seSBoYXZlIDEwIGJpdHMg
aW4gdHhfdGltZV9lc3QsIHNvIHN0b3JlIGFpcnRpbWUKPiA+PiArICAgICAgICAqIGluIGluY3Jl
bWVudHMgb2YgNHVzIGFuZCBjbGFtcCB0aGUgbWF4aW11bSB0byAyKioxMi0xCj4gPj4gKyAgICAg
ICAgKi8KPiA+PiArICAgICAgIGluZm8tPnR4X3RpbWVfZXN0ID0gbWluX3QodTE2LCB0eF90aW1l
X2VzdCwgNDA5NSkgPj4gMjsKPiA+PiArICAgICAgIHJldHVybiBpbmZvLT50eF90aW1lX2VzdDsK
PiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGlubGluZSB1MTYKPiA+PiAraWVlZTgwMjExX2lu
Zm9fZ2V0X3R4X3RpbWVfZXN0KHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAqaW5mbykKPiA+PiAr
ewo+ID4+ICsgICAgICAgcmV0dXJuIGluZm8tPnR4X3RpbWVfZXN0IDw8IDI7Cj4gPj4gK30KPiA+
PiArCj4gPgo+ID4gc2V0X3R4X3RpbWVfZXN0KCkgcmV0dXJucyBhaXJ0aW1lIGluIGRpZmZlcmVu
dCB1bml0cyAoNHVzKSB0aGFuCj4gPiBnZXRfdHhfdGltZV9lc3QoKSwgdGhpcyB3aWxsIGNhdXNl
IHRoZSBwZW5kaW5nX2FpcnRpbWUgb3V0IG9mIHdoYWNrLgo+Cj4gSHVoLCB5b3UncmUgcXVpdGUg
cmlnaHQ7IG9vcHMhIEkgbWVhbnQgdG8gc2hpZnQgdGhhdCBiYWNrIGJlZm9yZQo+IHJldHVybmlu
Zy4gV2lsbCBmaXguCj4KPiA+IEdpdmVuIHRoZSBmYWN0IHRoYXQgQVFMIGlzIG9ubHkgdGVzdGVk
IGluIHZlcnkgbGltaXRlZCBwbGF0Zm9ybXMsCj4gPiBzaG91bGQgd2Ugc2V0IHRoZSBkZWZhdWx0
IHRvIGRpc2FibGVkIGJ5IHJlbW92aW5nIHRoaXMgY2hhbmdlIGluIHRoZQo+ID4gbmV4dCB1cGRh
dGU/Cj4gPgo+ID4gLSAgICAgICBsb2NhbC0+YWlydGltZV9mbGFncyA9IEFJUlRJTUVfVVNFX1RY
IHwgQUlSVElNRV9VU0VfUlg7Cj4gPiArCj4gPiArICAgICAgIGxvY2FsLT5haXJ0aW1lX2ZsYWdz
ID0gQUlSVElNRV9VU0VfVFggfAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFJ
UlRJTUVfVVNFX1JYIHwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBSVJUSU1F
X1VTRV9BUUw7Cj4gPiArICAgICAgIGxvY2FsLT5hcWxfdGhyZXNob2xkID0gSUVFRTgwMjExX0FR
TF9USFJFU0hPTEQ7Cj4gPiArICAgICAgIGF0b21pY19zZXQoJmxvY2FsLT5hcWxfdG90YWxfcGVu
ZGluZ19haXJ0aW1lLCAwKTsKPgo+IFdlbGwsIHdlIGhhdmUgdGhlIHdob2xlIC1yYyBzZXJpZXMg
dG8gZ2V0IG1vcmUgdGVzdGluZyBpbiBpZiB3ZSBtZXJnZSBpdAo+IGFzLWlzLiBJdCdzIHVwIHRv
IHRoZSBtYWludGFpbmVycywgb2YgY291cnNlLCBidXQgSSB3b3VsZCBiZSBpbiBmYXZvdXIKPiBv
ZiBtZXJnaW5nIGFzLWlzLCB0aGVuIG9wdGlvbmFsbHkgYmFja2luZyBvdXQgdGhlIGRlZmF1bHQg
YmVmb3JlIHRoZQo+IGZpbmFsIHJlbGVhc2UgaWYgcHJvYmxlbXMgZG8gdHVybiB1cC4gQnV0IEkg
d291bGQgaG9wZSB0aGF0IHRoZSBsaW1pdHMKPiBhcmUgc3VmZmljaWVudGx5IGNvbnNlcnZhdGl2
ZSB0aGF0IGl0IHdvdWxkIG5vdCByZXN1bHQgaW4gYW55IHByb2JsZW1zIDopCj4KPiAtVG9rZQo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
