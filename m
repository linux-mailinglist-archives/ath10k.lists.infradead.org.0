Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076BFBB9C9
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 18:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NYBc/aXyF3f+DUjx0V95BpdJypbcVGoewv/QDkyHgQ=; b=hWDk7pA3tuWBR7
	Qdf3flnyjBB7LICOgdDXU++evN1uJZVMoFhivarXBbZgy1nbSvVdQP/Ik2emxLSWr3Gk89iGq1hdE
	64iQH8LLxkIHB3TVRtexGCiJEazfolPXsiZzM7yVkunIUdUwuOdFNmS12zlcv2YVMVwHcMgFsDh0O
	eA3t+RI9tOZbWnrTuJpTvPJfK9G7IquI6Rts8C67JcOvSyXrP2PH2gMN7CVMft13O1OC5mScxRYR0
	2NYq16VnMfnxtrI/x8Nqng3/PjtftOHV1XTDgjQOeREsqUGFRJKq0q3yzuXAtXMBn3GE95zzzoBR7
	SmmDdTGJg5mpAP9HFbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRNT-0005xq-QK; Mon, 23 Sep 2019 16:39:56 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRNF-0005wR-Dr
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 16:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569256779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cG6g8FWFhJNU2pFuuSQ3wDeFo55uwqFpwiewpVNDDMk=;
 b=TaeRm61JNa7jJXAkRLUGQFFl7R4T4mJUPAr++og7npbEpqt9OQNE7BLYewCK0rN/G6XtlZ
 uzpkCSxPgeYG79bggKKSS1rnb0OkS1TxqthefpPZb89Fu0+cnSdF8yqY31Y2ureSTZKsol
 /U/NChhdvVG0v68FyAA4c0RJ0N1Pvm8=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-Jo87-SaXNEi--J6TjAazHw-1; Mon, 23 Sep 2019 12:39:37 -0400
Received: by mail-ed1-f71.google.com with SMTP id h12so9797795eda.19
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 09:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=HyuhdIWnvw+MB2y5Xe1fi//iQfAWHI+rX11knAQoHQo=;
 b=LtKa0z6LNoNoiSlwiHgw+HytGz6uGFXQCJ+ZetZj0SaNILxWJb6z5smgBn+/TtrzWQ
 LK4ND2UqQYW+1DQwR0sQhb1W7IoRF/ghVZj7t9EJQ1yT68KBRHwGxYylS7dygPDxNlgX
 2HvtpaGipHiAlNwZ+YBduCp/FND540bNvzBC3354vxXWc4rxMAagqmouXBubVXWsSAXY
 hLXncOmUv9xT5xXKAKYFK0SEp+IncnYBRQQvHNxdkbg7NklBHkPJnZtJxjLeFOl2KwXt
 kcBGto5OPP3r5IfFsP3lIyso85d1WRd56MN72Sx1Q3PJlAMTWfZaSh7Z0aJnBqkhxRAS
 B7Xw==
X-Gm-Message-State: APjAAAW6R1F6dbrOF8dl/KtNkcEpGYn0DOSiLJOx4SARYW0u8EECn0+/
 +EsVYwZISolMr7sm7SgWdBwtqU9/7JsRYJ7VwsfPPWtDhDkYevrCbaqeIvtptFO1M40WDWXotYe
 QkCwFaMkzbZRU6USnHq9bZA==
X-Received: by 2002:a17:906:b84c:: with SMTP id
 ga12mr758540ejb.0.1569256776598; 
 Mon, 23 Sep 2019 09:39:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIK4BocAnGRpl4BZk23ytDqoFV+OFHOviTCmWt7eKGp8IoKRipaFYqBPbK+ZPr5H8Lyg3wGg==
X-Received: by 2002:a17:906:b84c:: with SMTP id
 ga12mr758524ejb.0.1569256776382; 
 Mon, 23 Sep 2019 09:39:36 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id h3sm1193119ejp.77.2019.09.23.09.39.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 09:39:35 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E52251804C8; Mon, 23 Sep 2019 18:39:34 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <87r2476xy5.fsf@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk> <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk> <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk> <87r2476xy5.fsf@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 23 Sep 2019 18:39:34 +0200
Message-ID: <875zlj55mh.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Jo87-SaXNEi--J6TjAazHw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_093942_165113_DFFB73E9 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCj4gVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKPgo+PiBZaWJvIFpoYW8gPHlp
Ym96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Cj4+PiBPbiAyMDE5LTA5LTIxIDIyOjAwLCBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2Rl
YXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+IAo+Pj4+PiBPbiAyMDE5LTA5LTIxIDIxOjAyLCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96QGNvZGVh
dXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+PiAKPj4+Pj4+PiBPbiAyMDE5LTA5LTIxIDE5OjI3LCBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pA
Y29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTIw
IDE3OjE1LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4gWWlibyBa
aGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+
PiBPbiAyMDE5LTA5LTE5IDE4OjM3LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+
Pj4+Pj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+
Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTE4IDE5OjIzLCBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1
cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+Pj4+PiBPbiAyMDE5
LTA5LTE4IDA1OjEwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Cj4gR3V5cywg
UExFQVNFIHBsZWFzZSBjb25zaWRlciB1cyBwb29yIG1haW50YWluZXJzIGRyb3duaW5nIGluIGVt
YWlsIGFuZAo+IGVkaXQgeW91ciBxdW90ZXMgOikgVGhpcyBzdHlsZSBvZiBkaXNjdXNzaW9uIG1h
a2VzIHBhdGNod29yayB1bnVzYWJsZToKPgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTExNDcwMTkvCgpIZWgsIG9vcHMsIGRpZG4ndCByZWFsaXNlIHlvdSB3ZXJlIGZvbGxv
d2luZyB0aGUgZGlzY3Vzc2lvbiBmcm9tCnBhdGNod29yazsgc29ycnksIHdpbGwgYmUgc3VyZSB0
byBjdXQgdGhpbmdzIGluIHRoZSBmdXR1cmUuCgpUaGUgcXVvdGUgbWFya3MgZG8gbWFrZSBhIHZl
cnkgbmljZSAocmV2ZXJzZSkgY2hyaXN0bWFzIHRyZWUsIHRob3VnaCA7KQoKLVRva2UKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGlu
ZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
