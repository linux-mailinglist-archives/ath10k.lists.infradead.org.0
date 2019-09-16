Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70FEB50EF
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 17:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjHCyxkjMVViEC4UdLHGqgFnneKY1wb/ByP3F7JgP2E=; b=jMeu0Toq1dP79K
	fZAdkH2WpsNnNiQw4Pc5trdjDoojnbiBl1Ua4+69tOVRHYt61RZrPMtMKg3592g/QYIl9ZhQBCTKs
	1wH0L0hDIjwFiXsQ+qrSOfjSq6lc1yKMYQjL7+ZLq/o8CgpedgFshDiBDoIHLJJ9xk++f1Cn+V89q
	Nw51RVx61T2ZyQWuItJyRkImehgr2b0+eE/376/jmphTfQbdMA57yXRJCK8WBawLQo3YCl+34Aslg
	k/beJQHDP5/sX7CEorymI2xFMEbnOxWHb8BOeInKLBmJp0l3QThj6Gc8rFd4460/BcakkQ/uPU7+R
	TNlDtmh2S/k9rbROr5vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAF0n-0005oe-N4; Tue, 17 Sep 2019 15:03:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAF0i-0005oG-C9
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 15:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568732598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=39CxzmaLHz+D7ZHqUHBYncwyADZWR/ZBJ8QLgYTPZ5c=;
 b=H3vcWrUkJzvn4F6Jc9tGT0LDXlCqsGInDil7R/oxjPUmDlfsxckE17PNfkCUM8Q96qdyQY
 BAcc1ons75obTBaihCULnGl/wUxkBD1pPbBknm7hGZpDHXZVVYwUs74iPOpEPwWD5DAUaj
 3QN6P7qyqIXubimSLhrj5LO7lTArmSg=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-vKjdDEV4NJiSHyChi1NjMA-1; Tue, 17 Sep 2019 11:03:15 -0400
Received: by mail-ed1-f69.google.com with SMTP id j8so2362761edl.11
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 08:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=39CxzmaLHz+D7ZHqUHBYncwyADZWR/ZBJ8QLgYTPZ5c=;
 b=YmEvfyT22GCqife0l4gsgdVAtVWVCZAejEAftK2QUKUb1yx7bP5O9ZV44ROd/fElxb
 XKws4xal1NsmVqsVUGjg61QLIhcYr8K2pLXprNHKiISSfiO2NcxOajszozRRP6g93Dj+
 vUN3JWzDn3cUvBTJjgbhGGuEbnnBEbOwgkklAg/5PwEpXj29b7tZVw3sxZofNPRphg44
 BvAXizW8LecEYPtkgwwGEDZ7h9ZOKCRzrHJY0cTH5B80gz9zuEEfrUL5SyvIHucAbQdx
 DTShqq3qmeqffPa3oYCTDhUVMiN6I+2UByMCzooY12WObcZCw8INY+K4gpQaMTuVvSCN
 tbMQ==
X-Gm-Message-State: APjAAAUS97APqruGyhGkQA+YNaTFqbuHRspn9NJZu+kcOOoKQYAPGScG
 nHaA6UZusKCtcpbAoMf/ltyb7enDzY1RDi7tTZ+8Rl9S21hMQnLXtebUjSl/se/lv5sk4zlpYde
 YBsuVadnL4/y7UJcZIrctIg==
X-Received: by 2002:a50:9f42:: with SMTP id b60mr5270486edf.192.1568732594558; 
 Tue, 17 Sep 2019 08:03:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/E887Tte6e2oBD2MkVPvI8rpiPAdKjjBr+LaXcr+16wXfYbi4NwaiBprYRSL89rNdw5LFLw==
X-Received: by 2002:a50:9f42:: with SMTP id b60mr5270470edf.192.1568732594384; 
 Tue, 17 Sep 2019 08:03:14 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id w21sm479000eda.90.2019.09.17.08.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 08:03:12 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 4A3C21800EA; Mon, 16 Sep 2019 16:51:37 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH 1/4] mac80211: Switch to a virtual time-based airtime
 scheduler
In-Reply-To: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 16 Sep 2019 16:51:37 +0200
Message-ID: <877e68l2fa.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: vKjdDEV4NJiSHyChi1NjMA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_080320_548761_D4BBF19A 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
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
ZWZvcmUuIFRoaXMgaGFzIGEKPiBjb3VwbGUgb2YgYWR2YW50YWdlczoKClRoYW5rIHlvdSBmb3Ig
a2VlcGluZyBhdCB0aGlzISBJJ2xsIHRha2UgYSBsb29rIGF0IHRoZSBzZXJpZXMgaW4gZGV0YWls
CnRvbW9ycm93LgoKV2hpbGUgeW91J3JlIHRlc3RpbmcgdGhpbmdzIHJlbGF0ZWQgdG8gdGhpcywg
SSd2ZSBhbHNvIHByb3RvdHlwZWQgYSBwb3J0Cm9mIHRoZSAiYWlydGltZSBxdWV1ZSBsaW1pdCIg
ZmVhdHVyZSBmcm9tIGNocm9tZW9zIGludG8gbWFpbmxpbmUuIEl0J3MKY3VycmVudGx5IGluIG15
IHRyZWUgaGVyZToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9rZS9saW51eC5naXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wMQoKSWYgeW91IGhhdmUgdGlt
ZSB0byB0ZXN0IGl0IGF0IHNvbWUgcG9pbnQsIHRoYXQgd291bGQgYmUgYXdlc29tZS4gSSdtCnBs
YW5uaW5nIHRvIHN1Ym1pdCBpdCBhcyBhbiBSRkMsIGJ1dCBpdCBuZWVkcyBhIGJpdCBtb3JlIHdv
cmsgZmlyc3QuCkFsc28sIGl0J3MgY29tcGxldGVseSB1bnRlc3RlZCwgYnV0IGl0IGRvZXMgY29t
cGlsZSA6KQoKLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
