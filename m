Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C77DC75C
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tM5kNVzu/LMCGSmywWZTxGJGqqkKNVKTye+AFNN9bE=; b=lMnOaZ8DKPdfsx
	wq9HAH242tBzd5AzMdFyPUtHXuI+YaIPQzpPtqcqczeD1KO2Klb3PFa/XjyphmFY1dGkVe6ZEe8rL
	RmFrn2jUrUH/2T9GlKkWmd2iTYlRcqZyUa4+W7GJf1SslCqM/txesEIBALrR3X5nerUZ/rdkEfAYy
	zuXdksUuycO7kFYMyAUzW/Z3DG8Txivi4U+C9rnjylwQeF6Q7QHTneg2Ii1aU8e9Th8awCjhxCAmR
	4HJAuIR5Asv/alnvL5ICTh+5dtt2Mh9YtuNfLEOd8ZBeB76/H+1QMk86hlUyhHNBrY9QmhiRmvhLW
	V9MgakuP0bDihVCiFPWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTHG-0003qU-2u; Fri, 18 Oct 2019 14:30:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTHC-0003pZ-0H
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571409043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bakk7ZMdh+u0X+Hl2jLm9/YFhVpOg7xiWkA7OuAAt3c=;
 b=VPm8fwkjFj81qA8jQUQp88BOQtMpF32RE+yMKVkLKShVKxXScEdxxRMBwAdLRl1DDHRk88
 U7NUUufBElLkvCMwxyxRZP87ao52ALjaT1W+BY4kK1sK2nz9EnE3w0qtSVq4grKFmEoQaV
 cPyFSiSsHLHViHNrNh2DAGqvGNacOzo=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-gLxK0m_bNsO3rEsEx--U-Q-1; Fri, 18 Oct 2019 10:30:41 -0400
Received: by mail-lj1-f198.google.com with SMTP id j10so1111920lja.21
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 07:30:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=rKJhlEJJw/5ARrgpbdb2WsNHVUGoOLGpeEW6RcLOYbk=;
 b=LKlsv1q5nVjzpNvhtkyWk9sXBC3B1vWf2m2tps1qZEFPrgG5krbUzhq9uCCuJJHzzo
 RsM6TqUD1VmQSOZNoL6UO00gijlv7ZFQeNvH0YGG+YOsgHPL2CCQpzVM/V3KZU+jVDi2
 xPReCZOL8HZfuVvvMeBpZ1XtIHL6XrJW1TbHphmKE98pb6ZCZuO4RZEd0G+xqVjFis47
 nB77LOlViP5NqOtl+cr5IFOAT9KQ6gNv45Qoo+NpUWZuiE96QngYydist6umAY7JAYh0
 0zgvKp43I34DlETR6xdjvbwl8dCAxAyz/KOtdZ2Tl2MUF/sjOGA0c+FmdIbcFDeEbeSS
 6FUQ==
X-Gm-Message-State: APjAAAUS8bA/zaUJ7RzrWqLwtHiWiZh3RyHKVgUiFXWRSYFn+Bgo/GIM
 7q/VNLjv1sRCIXf5jGqiR9OhA4kyjkeI6fRR8x9WRGx4KNu/VD+0zo87jnhZzf04ZBTjbxDddPD
 XGb/JxaCDxnH9QtZy6htO6g==
X-Received: by 2002:ac2:41d4:: with SMTP id d20mr594291lfi.24.1571409039652;
 Fri, 18 Oct 2019 07:30:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzILyzAuOEIj5ig6vIuTDFP316XFk3tSJVizLbq8TAYqZMR4SvKuZP0W2lfpHxx007dUHDYlg==
X-Received: by 2002:ac2:41d4:: with SMTP id d20mr594270lfi.24.1571409039487;
 Fri, 18 Oct 2019 07:30:39 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id b20sm2413663ljo.106.2019.10.18.07.30.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:30:38 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 3A6D81804B6; Fri, 18 Oct 2019 16:30:38 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
In-Reply-To: <78035e38264feac9d15a761b009c89b9738b4de1.camel@sipsolutions.net>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
 <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
 <87d0eudufu.fsf@toke.dk>
 <78035e38264feac9d15a761b009c89b9738b4de1.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 16:30:38 +0200
Message-ID: <877e52dt2p.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: gLxK0m_bNsO3rEsEx--U-Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_073046_118468_3F40928B 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
cmksIDIwMTktMTAtMTggYXQgMTY6MDEgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4gCj4+ID4gV2UgY2FuIGFsc28gcGxheSB3aXRoIHRoZSB1bml0cyBvZiB0aGUgYWly
dGltZSwgZS5nLiBtYWtpbmcgdGhhdCBhCj4+ID4gbXVsdGlwbGUgb2YgMiBvciA0IHVzPyBTZWVt
cyB1bmxpa2VseSB0byBtYXR0ZXIgbXVjaD8KPj4gCj4+IFN1cmUsIHRoYXQncyBhIGdvb2QgcG9p
bnQhIEluY3JlbWVudHMgb2YgNHVzIG1lYW5zIHdlIGNhbiBmaXQgNG1zIGlzIDEwCj4+IGJpdHMs
IGxlYXZpbmcgcGxlbnR5IG9mIHNwYWNlIGZvciBBQ0sgSURzIChob3BlZnVsbHkpLgo+Cj4gSWYg
eW91IGRvIG5lZWQgbW9yZSBiaXRzIChlLmcuIHRvIGJlIG9uIHRoZSBzYWZlIHNpZGUgYW5kIGhh
dmUgc3BhY2UgZm9yCj4gOG1zKSB5b3UgY291bGQgYWxzbyBzdGVhbCBiaXRzIG91dCBvZiAnYmFu
ZCcgKHdlIG9ubHkgbmVlZCAzIEkgdGhpbmspCj4gYW5kICdod19xdWV1ZScgKG5vdCBzdXJlIHdo
YXQgdGhlIGxpbWl0IHJlYWxseSBpcywgYnV0IHRoZXJlIGFyZW4ndCBtYW55Cj4gdXNlcnMsIHNl
ZW1zIGxpa2Ugb25seSBpd2x3aWZpL2R2bSBhbmQgaHdzaW0gY2FyZSwgYW5kIHRob3NlIGNlcnRh
aW5seQo+IGRvbid0IG5lZWQgPjMyIHF1ZXVlcykuCj4KPiBPZiBjb3Vyc2UgaWYgeW91IGxlYXZl
IG1vcmUgYml0cyBmb3IgbGF0ZXIgdGhhdCdzIGdvb2QgdG9vIDstKQoKWWVhaCwgbGV0J3MgbGVh
dmUgdGhhdCBmb3IgbGF0ZXIuIEFmdGVyIGFsbCwgd2l0aCB0aGUgbGltaXRzIHdlCmN1cnJlbnRs
eSBoYXZlIGNvbmZpZ3VyZWQsIGlmIGEgc2luZ2xlIHBhY2tldCB0YWtlcyB1cCA0MDk2IHVzLCB0
aGF0CndpbGwgdHJpZ2dlciB0aGUgcGVyLXN0YXRpb24gcXVldWUgdGhyb3R0bGluZyBpbiBpdHNl
bGYsIHNvIEkgdGhpbmsKd2UnbGwgYmUgZmluZSAoZmFtb3VzIGxhc3Qgd29yZHMpLgoKLVRva2UK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
