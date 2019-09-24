Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F69BC3B5
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0tIUwPzZsnLgblDn1usZlQrN89L/gkH14r810vfAgY=; b=SXDRFgwbTYeZDO
	gkGlI3DbsNRcwdyUHD3BwR/YN3ENrXhCnrbA3I7NmjNxptBV2zCkm6OoAnz87jLpSZ5nC1X4RlsTt
	CYcGoeAOu7EKdZmPg5TbeDRIZrlJkZWwFGMZ9AhpzmLl4M6hli1Sm1atQJyWyVwPo10xwX/OlwaRZ
	lAMMbqnKK1+R+XA0Gn4wmAtFKx/XmuORem0kiHrPwUw5sWveMCZedprPjJAAcMExKFcy7iElZ+YBx
	g5N1uHKyB156nQ7mwCUAGAcGg7//zfiUnkDn7bra3etuVQBVRhdeL3vBwZUBiV3xOii009O7gQ8Hk
	zmQ3rBDVt6DN0zrv8XqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfnI-0004Om-Ss; Tue, 24 Sep 2019 08:03:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfZY-0006Nn-C8
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:49:24 +0000
Received: by mail-ot1-x344.google.com with SMTP id z6so662247otb.2
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 00:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HVZDBzFnn/+6/eX2i6ZvoSlRuJ3gztniPjuOgTp9/dk=;
 b=n8OfIJ7s4YOK4wUING3b8Y7BfaOB4T6MA+Ys/5+Vbh2+YRQfEdBCIkahUSco88/RwZ
 FyOGVH6WpTZSbNxkbcHvxipsUuiWoFdjVynUY3RvmoUxW125VAzkh5gH77Dk/yTJgp1S
 Are2idhLJkDX0y4Y79HUbvOMVA7qB4PpgR0u+xvgnjyMmPUwCPMx81lBfuUjBNommOmk
 Wn1FARh9Ia/DJ5oppLkdhzaNtB9oafOWqJf6HbPbE9O1Ayz9tLc82f6+r/OYy1N5VNM5
 SaqVpDQxR+MyI1Lhcw0qCztqsSUsOyFHKxbMwcKcoiaud82Z9spuqCpcrmGtET2lU6Wk
 9H/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HVZDBzFnn/+6/eX2i6ZvoSlRuJ3gztniPjuOgTp9/dk=;
 b=DfdZMmQ1nCxUYiB4GLyngh+/weHihp9dTgfcDAYvcXVxURsbo8Q/wX8eBHTMKXUnQS
 TpiT91BaR9pADfqP8EuBB8z64/Te6WQcIYUIt42nm5gsn0e4ieIk6+/GujmlfN/xD7am
 nnOzUAAOwkEWDOXWMKMmGb5ZDryvQu09NN49j4OcDBLDcEcQwhNdRh3LsOkZbG0h6eZz
 egGymB0sK+4ys+AQToHhzmVtiwKH1ZeWWY0Rzy5rCFfZLgfzv7HPKh+QhEseMYcWJ5X3
 4qCNkOz58cQAkXC1yDW+vGSqUWMttR18/yx1fq6w2OdClBQ9mgSYGhB8jCSJSRk4MPIg
 C2gw==
X-Gm-Message-State: APjAAAUQ4J8kLGFVaqtGJlt2mIkLvmIwoFR58MN89VDN9AHz5qPnN58K
 517k3U51hEJSURZsw8jvlnQvI8+8PtXmDogp9P0=
X-Google-Smtp-Source: APXvYqzegMetRoVOqRGe1NS8PMI7YmLR/6NHLj0xcPYup7lHxHXMqTMG0/TKnNGFxX9JWPFVIVGwk4qc7xTb36M2Ats=
X-Received: by 2002:a9d:5f9a:: with SMTP id g26mr768874oti.27.1569311359420;
 Tue, 24 Sep 2019 00:49:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP; Tue, 24 Sep 2019 00:49:18
 -0700 (PDT)
In-Reply-To: <87d0fq5kic.fsf@codeaurora.org>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
 <1569268165-1639-5-git-send-email-pozega.tomislav@gmail.com>
 <87d0fq5kic.fsf@codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 24 Sep 2019 09:49:18 +0200
Message-ID: <CAKR_QVK=XwLtaGgoLeU5-+XQP_-jVvAdWfkGvdyV9WNK_5QUng@mail.gmail.com>
Subject: Re: [PATCH 5/5] ath10k: pull_svc_rdy code-style fix
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004920_644803_8084D9A9 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjQvMDkvMjAxOSwgS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+
IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20+IHdyaXRlczoKPgo+
PiBEcm9wIHVubmVlZGVkIGxpbmVzIGJ5IG1vdmluZyBza2IgZGF0YSBpbiBib3RoIG1haW4gYW5k
IDEweCBXTUkKPj4gcHVsbCBzZXJ2aWNlIHJlYWR5IGV2ZW50IG9wZXJhdGlvbnMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20+
Cj4+IC0tLQo+PiAgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYyB8ICAgIDYg
KystLS0tCj4+ICAxIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21p
LmMKPj4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jCj4+IGluZGV4IDU5
ZDJkMmEuLjhhYjE3OGMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGgxMGsvd21pLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWku
Ywo+PiBAQCAtNTM0NSwxMyArNTM0NSwxMiBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2Nf
aG9zdF9tZW0oc3RydWN0IGF0aDEwawo+PiAqYXIsIHUzMiByZXFfaWQsCj4+ICBhdGgxMGtfd21p
X21haW5fb3BfcHVsbF9zdmNfcmR5X2V2KHN0cnVjdCBhdGgxMGsgKmFyLCBzdHJ1Y3Qgc2tfYnVm
Zgo+PiAqc2tiLAo+PiAgCQkJCSAgIHN0cnVjdCB3bWlfc3ZjX3JkeV9ldl9hcmcgKmFyZykKPj4g
IHsKPj4gLQlzdHJ1Y3Qgd21pX3NlcnZpY2VfcmVhZHlfZXZlbnQgKmV2Owo+PiArCXN0cnVjdCB3
bWlfc2VydmljZV9yZWFkeV9ldmVudCAqZXYgPSAodm9pZCAqKXNrYi0+ZGF0YTsKPj4gIAlzaXpl
X3QgaSwgbjsKPj4KPj4gIAlpZiAoc2tiLT5sZW4gPCBzaXplb2YoKmV2KSkKPj4gIAkJcmV0dXJu
IC1FUFJPVE87Cj4+Cj4+IC0JZXYgPSAodm9pZCAqKXNrYi0+ZGF0YTsKPgo+IEFjdHVhbGx5IEkg
cHJlZmVyIHRoZSBvcmlnaW5hbCBzdHlsZSwgc28gdGhhdCB3ZSBmaXJzdCBjaGVjayB0aGUgZGF0
YSBpbgo+IHNrYiBpcyB2YWxpZCBhbmQgb25seSB0aGVuIGFzc2lnbiB0aGUgZGF0YSB0byBldi4K
Pgo+IC0tCj4gS2FsbGUgVmFsbwo+CgpJdCBjYW1lIHRvIG15IG1pbmQgdGhhdCB0aGlzIG1pZ2h0
IGJlIHRoZSByZWFzb24gd2h5IHRoZSBjdXJyZW50CmRyaXZlciBkaWQgbm90IGdpdmUgbWUgd2Fy
bmluZyBhYm91dCB0b28gc2hvcnQgc2VydmljZSByZWFkeSBldmVudCwKYnV0IHRoZXJlIHdhcyBu
byB3YXJuaW5nIGFib3V0IGV2ZW50IGxlbmd0aCBpbiBlaXRoZXIgY2FzZS4KSSBldmVuIHRlc3Rl
ZCB0aGlzIHdpdGggY29tcGF0IHdpcmVsZXNzIGZyb20gMjAxMy4gYW5kIHRoZXJlIHRoZQpzaXR1
YXRpb24gd2FzIHRoZSBvcHBvc2l0ZTogaW4gYm90aCBjYXNlcyB0aGVyZSB3YXMgd2FybmluZyBh
Ym91dApzZXJ2aWNlIHJlYWR5IGxlbmd0aC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgx
MGsK
