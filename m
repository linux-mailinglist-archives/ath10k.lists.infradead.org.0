Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A2AEA773
	for <lists+ath10k@lfdr.de>; Thu, 31 Oct 2019 00:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pr4DHYRGB1TPvG8F8SJvOeiiKtHpMgBzyOV99d83Ea8=; b=sUu2F1gtxwM4fCND8WtAL2gTk
	uAIGpg8B8a2cCJZGe+PAAhL1idAaGsaRrlpK8Z3WsMBgh3fZWivzmepdT/pGHBQjF26TpagLLDzMx
	X7cm6IfzXCZnTlS4Pl/SqYqy9LL+iXXrsGhSNzNN1Z4yjxi5Hwa0KCJrDMRKr8azPSuYrv1ZRT9CR
	EuTeWu0QNWCOc1lkKYu51Qb+P9auMVJ35rABt6sK2fcc2eC6ZKZqDzFlgUEkKNTBMEhxP/iyAO0iy
	BzWWhQtgbFuTmkyv1GILS28u3KTRGj6iykK5ds8jHuoen9tCwSx6/tPftaM91RYd74V7+rVarBoap
	/H71JJnng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPwyO-0001Lm-G8; Wed, 30 Oct 2019 23:01:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPwyK-0001LC-Cr
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 23:01:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id p12so2556911pgn.6
 for <ath10k@lists.infradead.org>; Wed, 30 Oct 2019 16:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=8Lz1NNvigcKa6eRoeOWl2YolOALtlfrxF/EmT63uI+Y=;
 b=uB3dyAzVlNxnwlYOYXWGhK20MKllXL+uJTuMZvZmsbLUF1gCbFXi9F5YLP8hC5fnNS
 8n6XmP1sYzPDz7ZDkFYyOWGjrUyZQlaZCaKyizbMv4rsKBxkjBZuh+UZjgvUurCfRIso
 NLw4dAaATcnd39sEP3itAjI5dS4f/G0ZQIUWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=8Lz1NNvigcKa6eRoeOWl2YolOALtlfrxF/EmT63uI+Y=;
 b=Yqi5KVcykHfJirEyPowBzfifopI56eSfwuGpA630N4VtrNuEbAL0kmD4uuSMr4jjdQ
 wTiagHLf1YIBRaSQoyxsBY3EMT98g43C4EFbeF6oggi0hAZL/RjHAH/+a/uPZF13/gmU
 oA29WXUHvcbm37NpC+DjllYB+yeEPnJGSMu+32cXwbfs9Yua1MikBYqVXm7ZcEBhJx5n
 mTp3NnxZqhFIFF5UBITgrMeraAFuu+OMpqziH9J6pECB2wDr18SMjj59JWZZaAwAS0Xz
 DYS8U5pyrDTlwKBoYFsqAePoc/QBis4Sg47+j33dPxSjgPQCYrDs2eTaI66BJJHVpmwl
 H7tQ==
X-Gm-Message-State: APjAAAVqj3I5bCdhZSxZu4RvxIMjlBcXbVg0tbqPy9ALSwojwUpbMWOh
 0NOYb3VbxFfPlBAg8dxhfnUX2g==
X-Google-Smtp-Source: APXvYqwuydGy/fwcla17q99240a+6A7gF6qG3YHcI8hCejGE9jNRoVUcp9RAlNVwFfQWkWyiNjrwNA==
X-Received: by 2002:a63:ed4a:: with SMTP id m10mr2076498pgk.255.1572476506100; 
 Wed, 30 Oct 2019 16:01:46 -0700 (PDT)
Received: from [10.0.2.15] (eero.static.monkeybrains.net. [199.116.72.162])
 by smtp.gmail.com with ESMTPSA id c12sm1028271pfp.178.2019.10.30.16.01.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 16:01:45 -0700 (PDT)
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: zhichen@codeaurora.org
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
 <8c6d531f6474faf4df55f90185466774@codeaurora.org>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <3f108a96-3ea5-79c0-54d5-b2f26a3e0a9a@eero.com>
Date: Wed, 30 Oct 2019 16:01:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8c6d531f6474faf4df55f90185466774@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_160148_439895_875429D8 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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

Ck9uIDEwLzI5LzE5IDExOjE2IFBNLCB6aGljaGVuQGNvZGVhdXJvcmEub3JnIHdyb3RlOgo+IE9u
IDIwMTktMTAtMjMgMDE6MTYsIFBldGVyIE9oIHdyb3RlOgo+Pgo+PiBIb3cgY2FuIHlvdSBzYXkg
dmFsdWUgMCAoSSBiZWxpZXZlIGl0J3MgNjQgYnl0ZXMpIERNQSBidXJzdCBzaXplCj4+IGNhdXNl
cyB0aGUgc3ltcHRvbSBhbmQgMSBmaXhlcyBpdD8KPj4KPj4gUGV0ZXIKPgo+IENvbmZpcm1lZCBm
cm9tIEhXIHRlYW0gdGhhdCB0aGUgY29uZmlndXJhdGlvbiBjb250cm9scyBBWEkgYnVyc3Qgc2l6
ZSAKPiBvZiB0aGUgUkQvV1IgYWNjZXNzIHRvIHRoZSBIT1NUIE1FTS4KPiAwLcKgwqDCoCBObyBz
cGxpdCAsIFJBVyByZWFkL3dyaXRlIHRyYW5zZmVyIHNpemUgZnJvbSBNQUMgaXMgcHV0IG91dCBv
biAKPiBidXMgYXMgYnVyc3QgbGVuZ3RoLgo+IDEtwqDCoMKgIFNwbGl0IGF0IDI1NiBieXRlIGJv
dW5kYXJ5Cj4gMiwzLSBSZXNlcnZlZAo+Ckkgd291bGQgQUNLIHRvIHRoaXMgY2hhbmdlLiBBbHRo
b3VnaCBRQ0E0MDE5IGhvc3QgbWVtIG1heCBBWEkgcmVhZC93cml0ZSAKcmVnaXN0ZXJzIGhhdmUg
ZGlmZmVyZW50IGRlc2NyaXB0aW9ucyBmcm9tIGFib3ZlLCB0aGV5IHNheSAxICgyNTYtYnl0ZSkg
CmlzIGRlZmF1bHQgYW5kIHRoZSB2YWx1ZXMsIDAsIDIsIGFuZCAzIGFyZSByZXNlcnZlZC4gU28g
Y2hhbmdpbmcgaXQgYmFjayAKdG8gMSBpcyByZWFzb25hYmxlIHRvIG1lLgoKClRoYW5rcywKClBl
dGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRo
MTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
