Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A63DC61D
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 15:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6PTkxICzGB5llJxs0Yk3ritpMYPHHCnXhmM4jS2Yio=; b=uhFuG8GmaNQvxB
	c5WenGufNvHf2WqEUjN/BdWEXf0N+zOpY5i8mhRWgDJ2qjYMlXwDOgNdfitZOni6jspzvHUo1PY5m
	AcVfAeB6NnG7UNvvIeQmMTutflj/U3f9W9FQCuO8v9NtT3voT+jOblJK7dCo5kBCnnlK5ttA0R22o
	QwXqGngmJFg5oezg7AhU10Lc/aIIrC2GXLTPIpvY8AYJ9ga645CAr0W8FFVSlr70mFRbV/O4BntZG
	h4JE7G/E4gz4odA6hUUYG8GJsiA+yDm7FW5UbQRMmazIVvB6HjrhLJPFzE+q1bnCFu/7pUeEPJtFL
	uJK6+cthN6GkOzozKBFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSMS-0004Te-5I; Fri, 18 Oct 2019 13:32:08 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSMO-0004Sb-B1
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 13:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571405521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cODPLBBVonkUiIpH4f4PqhtfdSO3phWXnys6GllvTEg=;
 b=MUeIYi0GsztQHYM6oAfLN1h7ok59IcC/Kioa0jhI9r7WQTBVVWmB2lMPsl1vKfd9q0dwoo
 wLJ9Os1arbML5hj9zysas4ukd68AlDgEvauwLCAH/aek6ZoDfEonNIS+1jOw1/O51/1sJh
 UBgvX/ImdYib4RsTvKl6+8NkrRNqSSE=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-t9viXhmXOsSYz6k2FWT_og-1; Fri, 18 Oct 2019 09:31:59 -0400
Received: by mail-lj1-f197.google.com with SMTP id m8so1083946ljb.3
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 06:31:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=XN/8OjVppdRnLblVaPpSKD9DtkrDEMBwYKQu+M/VWcw=;
 b=sTAs+IM2gCK5XsFvbc6Una7fvWwMucYKrdOQPfwzp2iwidoKsvG58HcOS8vHksZSWv
 jz9BTp9KV+9XAxp4dCeHkn7yPdQFxodOjHHCEO54jOAGLxq3+O34gPzOwO5Pewg9Vrjg
 6M/cmu8ysmyN52W1OiKkA8jjj6am12zvEX+78BPKzMnqvrv81s+sqhjSN0ZVEkBIH1by
 PTZkBL6LwB0nGZHS9XmUURP1FTkuQbuPHRc+mHNJGFWlnZGpmTLThenUNPVKyCcT9KNG
 DlMJOJMRi/NtCcZqFAIsjF3aOb1GJUiSXnmKQvR2wYoN5fS7/QvJxeNYBbeXFfUK/O7d
 QjYQ==
X-Gm-Message-State: APjAAAXrx9jBnvAPcdJN6cuftY5QuRs7LgBa59La6S6l1GKais02TgkF
 cnI1C7RC5zsTX1vHeiu9J6UD5SPf2M37C9UzYjoDehgOpwTL49fRDdxVhSMZE8PnaraoRjh1t8P
 VzafqIL7Q1hv539R0xc/dQA==
X-Received: by 2002:a2e:9d06:: with SMTP id t6mr6315641lji.253.1571405518207; 
 Fri, 18 Oct 2019 06:31:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzobtq2iwjsmdwouFLGuBz34E9/3KDGP7qHrvOlf6dl4IKYvTs4reNBPkKTi0p7qMtrwryUwg==
X-Received: by 2002:a2e:9d06:: with SMTP id t6mr6315616lji.253.1571405517859; 
 Fri, 18 Oct 2019 06:31:57 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id n17sm2124674ljc.44.2019.10.18.06.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 06:31:57 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 566B21804B6; Fri, 18 Oct 2019 15:31:56 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
In-Reply-To: <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 15:31:56 +0200
Message-ID: <87imomdvsj.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: t9viXhmXOsSYz6k2FWT_og-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_063204_616854_86719FBE 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBG
cmksIDIwMTktMTAtMTggYXQgMTI6MTUgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPgo+PiBIb3dldmVyLCB0aGVyZSdzIGEgbmljZSBqdWljeSAndTE2IGFja19mcmFtZV9p
ZCcgYXQgdGhlIHN0YXJ0IG9mCj4+IGllZWU4MDIxMV90eF9pbmZvLiBDb3VsZCB3ZSBwb3RlbnRp
YWxseSB1c2UgdGhhdD8gV2UgY291bGQgdXNlIHRoZSB0b3AKPj4gYml0IGFzIGEgZGlzYW1iaWd1
YXRpb24gZmxhZzsgSSB0aGluayB3ZSdyZSBmaW5lIHdpdGggMTUgYml0cyBmb3IgdGhlIFRYCj4+
IHRpbWUgaXRzZWxmIChhIHNpbmdsZSBwYWNrZXQgd29uJ3QgZXhjZWVkIDhtcyBvciBUWCB0aW1l
KSwgc28gaWYgd2UgY2FuCj4+IGxpdmUgd2l0aCAxNSBiaXRzIG9mIEFDSyBmcmFtZSBJRCBzcGFj
ZSwgdGhhdCBjb3VsZCBiZSBhIHdheSBmb3J3YXJkPwo+Cj4gSSB3YXMgZ29pbmcgdG8gc2F5IHRo
YXQgc2hvdWxkIHdvcmsgYXMgd2Ugb25seSBldmVyIGhhdmUgYSBoYW5kZnVsIG9mCj4gQUNLIGZy
YW1lIElEcywgYnV0IC4uLiB5b3Ugc3RpbGwgbmVlZCB0aGUgYWlydGltZSBldmVuIGZvciBhIGZy
YW1lIHRoYXQKPiB1c2Vyc3BhY2Ugd2FudHMgdG8ga25vdyB0aGUgQUNLIHN0YXR1cyBvZiwgbm8/
CgpPaCwgcmlnaHQuCgpXZWxsLCBsZXQncyB0cnkgdG8gZG8gdGhlIGFjdHVhbCBtYXRoLi4uIEEg
ZnVsbC1zaXplICgxNTM4IGJ5dGVzKSBwYWNrZXQKdGFrZXMgfjIwNTAgbWljcm9zZWNvbmRzIHRv
IHRyYW5zbWl0IGF0IDYgTWJwcy4gQWRkaW5nIGluIG92ZXJoZWFkLCBpdCdzCmNlcnRhaW5seSBz
dGlsbCBsZXNzIHRoYXQgNDA5NiB1cywgc28gMTIgYml0cyBpcyBwbGVudHkuIFRoYXQgbGVhdmVz
CmZvdXIgYml0cyBmb3IgdGhlIEFDSyBzdGF0dXMgSUQgaWYgd2UganVzdCBzcGxpdCB0aGUgdTE2
OyBpZiB3ZSBvbmx5CmV2ZXIgaGF2ZSAiYSBoYW5kZnVsIiwgdGhhdCBzaG91bGQgYmUgZW5vdWdo
LCBubz8KCldlIGNvdWxkIGFsc28gc3BsaXQgNS8xMS4gVGhhdCB3b3VsZCBzdXBwb3J0IHVwIHRv
IDMyIEFDSyBJRHMsIGFuZCB3ZQpjYW4ganVzdCB0cnVuY2F0ZSB0aGUgYWlydGltZSBhdCAyMDQ4
IHVzLCB3aGljaCBpcyBub3QgYSBiaWcgZGVhbCBJJ2QKc2F5LiBXZSBjb3VsZCBldmVuIHNwbGl0
IDYvMTAgYW5kIG9ubHkgbmVlZCB0byB0cnVuY2F0ZSB0aGUgVFggdGltZSBhdApyYXRlcyBiZWxv
dyAxMyBNYnBzLi4uIE9yIHdlIGNvdWxkIHNhY3JpZmljZSBhIGJpdCB0byB0aGUgZmxhZyBhbmQg
b25seQp0cnVuY2F0ZSBpZiB0aGUgQUNLIHN0YXR1cyBmbGFnIGlzIHNldC4KClRoaW5rIGl0IG1v
c3RseSBkZXBlbmRzIG9uIHdoYXQgaXMgdGhlIHNtYWxsZXN0IElEIHNwYWNlIGZvciBBQ0sgSURz
IHdlCmNhbiBsaXZlIHdpdGg/IDopCgotVG9rZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9h
dGgxMGsK
