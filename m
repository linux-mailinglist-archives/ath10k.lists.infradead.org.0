Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AA3B579A
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 23:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTuRlhp3EJQL9QWwL5AWyjzCb0x3kkdROpVaDIWLemA=; b=UtNCFHb/dL8tnX
	ZDPKu1EtlGKjmqhTK2bUs60hIX/PBA6dI41wcz8p4sUNG/UGHMaOvsSWRkkFZfee+nGQh6cn1ph/f
	X3E0dvWnQggu00HScsk+9Lf+U944nvek5QGO8VEyWpfHPFLhDYtQ3DRJrRH0UCtXBEmosrXNUiXXK
	TnYPgem6vUzJAyaZIqQS2FSKboSiIr2VC/CKHesDIXERga4CHznbosMNj4dLL5I2KpPf+lK0YY4dd
	qpsW3eqdYAUDmtRilwN7jOkM4p2sqBnK4nV3oFfSY3Cutwek2rElJ71POjIvfUtwJLe/ytGSErOb1
	W9mRFx9lfAhXMAfgKR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAL4K-0005YV-5s; Tue, 17 Sep 2019 21:31:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAL49-0005WW-Ov
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 21:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568755876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JVaGqS/TFjKhE/EptfKk75z9gnGR8vTzonot4HX3CsY=;
 b=JFTjixwlaV6i/WKlNAJSw8IvaTtdQn0lBwyzQGm8WuefInDTw6Gw8iM8dkD28gD3VX9b2h
 MFGZGa03dsyyn3y9n6pzD2ufnRV1gMvZDENQggy4L/53/YynjbhTekCDp3jBuPKuqOaD2T
 1QsuSz/8WVW5sB6pjPouGSpvh927X44=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-oxEvhZtrN2SlboKYV8_Y_A-1; Tue, 17 Sep 2019 17:31:10 -0400
Received: by mail-ed1-f70.google.com with SMTP id s3so3003789edr.15
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 14:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=JVaGqS/TFjKhE/EptfKk75z9gnGR8vTzonot4HX3CsY=;
 b=jHr8TzoDDaBnjtPDViHIzQuQ1OggynFQHMQMVmKmKHC8iLDMicTrE0CZ56DghMZ/tm
 VoC5FhnmI3ZvPzM09835xkP6xMraiTtWD6l6oQsem4Ojgo7DN60X4hr3jTnevnOMUjzr
 Y2lxK0Qz/IcyisEXD/kxmaipLTN4m74qWp0sMQoISUgHD5kM6mx7bqZ2aGRNPVDcVj/B
 b7ZJSHBjQPP79dbRnUX4KJ4LXLbxBMeew3VYCGlKbpAgZHK1O7QukAVNdfwLOdIF+Y+I
 6iK/aJY1mSZ/abCDLLKnRHSlgGGUHU3tgi1YDTH0ReVlREcqqFjX6srniQTfi/CgJzli
 biPQ==
X-Gm-Message-State: APjAAAV8vIVh6US+o2UnFkolWGNEAWH9sBsjeDrcqeLZrMj+ZnwM1fFT
 hrT+uqGhbOeKDG9fKoq58Z0kEEBFhkCPm3hlhSlx3VOY8og9WI4/3iDtylqBS7Lj7CxiJ1q/rhQ
 SHleFsEe0NrbM5rharXk+MQ==
X-Received: by 2002:a05:6402:78b:: with SMTP id
 d11mr4964740edy.14.1568755869725; 
 Tue, 17 Sep 2019 14:31:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1wjlX98Jj01zS5MwohtCyWE1osliaa7sfDb/BoubXMW52uGvVGR84W7o5lDopiiD4H9If2Q==
X-Received: by 2002:a05:6402:78b:: with SMTP id
 d11mr4964726edy.14.1568755869581; 
 Tue, 17 Sep 2019 14:31:09 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id z39sm638848edd.46.2019.09.17.14.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 14:31:08 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 62B041800B9; Tue, 17 Sep 2019 23:31:08 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH 1/4] mac80211: Switch to a virtual time-based airtime
 scheduler
In-Reply-To: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Sep 2019 23:31:08 +0200
Message-ID: <87ftkuip9f.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: oxEvhZtrN2SlboKYV8_Y_A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_143117_902346_9BCED1CF 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBGcm9tOiBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KPgo+IFRoaXMgc3dpdGNoZXMgdGhl
IGFpcnRpbWUgc2NoZWR1bGVyIGluIG1hYzgwMjExIHRvIHVzZSBhIHZpcnR1YWwgdGltZS1iYXNl
ZAo+IHNjaGVkdWxlciBpbnN0ZWFkIG9mIHRoZSByb3VuZC1yb2JpbiBzY2hlZHVsZXIgdXNlZCBi
ZWZvcmUuIFRoaXMgaGFzIGEKPiBjb3VwbGUgb2YgYWR2YW50YWdlczoKPgo+IC0gTm8gbmVlZCB0
byBzeW5jIHVwIHRoZSByb3VuZC1yb2JpbiBzY2hlZHVsZXIgaW4gZmlybXdhcmUvaGFyZHdhcmUg
d2l0aAo+ICAgdGhlIHJvdW5kLXJvYmluIGFpcnRpbWUgc2NoZWR1bGVyLgo+Cj4gLSBJZiBzZXZl
cmFsIHN0YXRpb25zIGFyZSBlbGlnaWJsZSBmb3IgdHJhbnNtaXNzaW9uIHdlIGNhbiBzY2hlZHVs
ZSBib3RoIG9mCj4gICB0aGVtOyBubyBuZWVkIHRvIGhhcmQtYmxvY2sgdGhlIHNjaGVkdWxpbmcg
cm90YXRpb24gdW50aWwgdGhlIGhlYWQgb2YgdGhlCj4gICBxdWV1ZSBoYXMgdXNlZCB1cCBpdHMg
cXVhbnR1bS4KPgo+IC0gVGhlIGNoZWNrIG9mIHdoZXRoZXIgYSBzdGF0aW9uIGlzIGVsaWdpYmxl
IGZvciB0cmFuc21pc3Npb24gYmVjb21lcwo+ICAgc2ltcGxlciAoaW4gaWVlZTgwMjExX3R4cV9t
YXlfdHJhbnNtaXQoKSkuCj4KPiBUaGUgZHJhd2JhY2sgaXMgdGhhdCBzY2hlZHVsaW5nIGJlY29t
ZXMgc2xpZ2h0bHkgbW9yZSBleHBlbnNpdmUsIGFzIHdlIG5lZWQKPiB0byBtYWludGFpbiBhbiBy
YnRyZWUgb2YgVFhRcyBzb3J0ZWQgYnkgdmlydHVhbCB0aW1lLiBUaGlzIG1lYW5zIHRoYXQKPiBp
ZWVlODAyMTFfcmVnaXN0ZXJfYWlydGltZSgpIGJlY29tZXMgTyhsb2dOKSBpbiB0aGUgbnVtYmVy
IG9mIGN1cnJlbnRseQo+IHNjaGVkdWxlZCBUWFFzLiBIb3dldmVyLCBob3BlZnVsbHkgdGhpcyBu
dW1iZXIgcmFyZWx5IGdyb3dzIHRvbyBiaWcgKGl0J3MKPiBvbmx5IFRYUXMgY3VycmVudGx5IGJh
Y2tsb2dnZWQsIG5vdCBhbGwgYXNzb2NpYXRlZCBzdGF0aW9ucyksIHNvIGl0Cj4gc2hvdWxkbid0
IGJlIHRvbyBiaWcgb2YgYW4gaXNzdWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KCkknbGwgbm90ZSB0aGF0IHRoaXMgcGF0Y2gg
c3RpbGwgaGFzIHRoZSB0d28gaXNzdWVzIHRoYXQgRmVsaXggcG9pbnRlZApvdXQgd2hlbiBJIHBv
c3RlZCB0aGUgUkZDIHZlcnNpb24uIE5hbWVseToKCi0gVGhlIHVzZSBvZiBkaXZpc2lvbnMgaW4g
dGhlIGZhc3QgcGF0aC4gSSBndWVzcyBJIG5lZWQgdG8gZ28gd3JpdGUgc29tZQogIHJlY2lwcm9j
YWwtY2FsY3VsYXRpb24gY29kZSwgc2luY2UgdGhhdCBpcyBhbHNvIGFuIGlzc3VlIHdpdGggdGhl
IEFRTAogIHBhdGNoZXMgSSBsaW5rZWQgdG8gYmVmb3JlLgoKLSBUaGUgZmFjdCB0aGF0IHdlIGRv
bid0IGNvdW50IHRoZSBhaXJ0aW1lIHVzYWdlIG9mIG11bHRpY2FzdCB0cmFmZmljLAogIHdoaWNo
IHdpdGggdGhpcyBzZXJpZXMgbWVhbnMgdGhhdCB0aGUgdmlmIFRYUSB3aWxsIGdldCBwcmlvcml0
eSBvdmVyCiAgdGhlIG90aGVycy4gSSB0aGluayB3ZSBhZ3JlZWQgdG8gZml4IHRoaXMgYnkganVz
dCBhZGRpbmcgYW4gYWlydGltZQogIHZfdCB0byB0aGUgdmlmIGFzIHdlbGwgYW5kIHVzZSB0aGF0
IGZvciBzY2hlZHVsaW5nIHRoZSBUWFEuIERvZXMKICBhdGgxMGsgcmVwb3J0IGFpcnRpbWUgdXNh
Z2UgZm9yIG11bHRpY2FzdCBhcyB3ZWxsLCBvciBvbmx5IGZvcgogIHN0YXRpb25zPwoKCi1Ub2tl
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBr
IG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
