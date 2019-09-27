Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67645BFEFC
	for <lists+ath10k@lfdr.de>; Fri, 27 Sep 2019 08:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUTyXOoscrv+RLYYGwBjmWHoq/GD01/QbI4QjuP3XPE=; b=Y81kpb2JaTtsh/
	69AP0KDPDr/g3OlK/f3NFjaAVOd9Q3QC+HQeNYrkGU8QYWTeT9OMMLWfoZlDRZNiHfHHhzSMqx5+C
	Q5o8buYQcXCaIsDVo6pMz3MpdsYqNCdNpoQ2/8zDsPvgEKs/ofKtXk3AtBh97Gq3XMle6g4kteJNU
	DyzwZanFz4KIJiWvWQ+rGX788/NaqZvrX/Ax35AlihOUs8fwxUGtPMerDnHD/WgOOr09WuNyLkt2g
	fBIlujfxI8aDtMaT5t9Wj5uirAdR9N0muciFEIfWXn/W/mrn0/ff06SEn9YcREniYiT8ApqHvEefk
	u81qKgMJ+OT6cbwPmlaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjZg-0002kh-M2; Fri, 27 Sep 2019 06:17:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjZa-0002kA-65
 for ath10k@lists.infradead.org; Fri, 27 Sep 2019 06:17:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569565063;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CMwLuG/tW+DjOqFLBzWHnWxR2HD7Z3GFkOJ5/ZWsufY=;
 b=I9SUmCqicdjrIYs6Az3RdLGjGsvLbyoI7dEI8KmrtHKDgnyp/yf3cKA+Bgm4zxYy/XugEC
 sBIGwxZUIJNyToT6h+zLt2JS/O74oNFd00A6uo0lwL8UPL0HfTlz8gqN0DoDAXqkSxKO4t
 nUFqe69QW1n2oDZo2+7AII0eI5s4OjM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-S6V2aKMnMKqBlEnDk1qNJQ-1; Fri, 27 Sep 2019 02:17:41 -0400
Received: by mail-ed1-f70.google.com with SMTP id m2so967513eds.12
 for <ath10k@lists.infradead.org>; Thu, 26 Sep 2019 23:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=CMwLuG/tW+DjOqFLBzWHnWxR2HD7Z3GFkOJ5/ZWsufY=;
 b=l5dXU3Sz4OLW2PnN7x85bPboogBhfF9Q5i0UP99E8ywxOCWqz7Iz6yKvy8uMzPfrst
 d5h9LYjD4WFjsBaHl269rN6o32nmszwBUobCD9ErFuK4dRzxRhOgWpfqmtPu/XdX6dBL
 R9wcj0XoQNlRDN8FmFgp+YJuPC2lEpo4qTtynPvwp/zCQZN83dJ7BFGbhVRCR2AyxJGs
 OId6K4DkLT4RncSQDJGywUaiZ0U+TzFfsw2osS//guVdbZ92TFWB7z+XWTi1HeXDNtN8
 7kVql43vXdi1N4sfJfwQk2PcFe+1AxjFRqR042dTbgdpONSkxpvrnvcpXahljme5d+qF
 2ycw==
X-Gm-Message-State: APjAAAXrsTvzWZcSTWNy3ZJNwOJ1e3aZtmAPByVYsp+tu2ioYU0mnucD
 EdcY50vF645Jduiu+5ic8i5jU0oLqI0xxOFlB23TqFKDM6i1RobA9BNB778REvgIdxcxK3Oq2bu
 pqI1mspv6JNZDwISWHbBqdg==
X-Received: by 2002:a17:906:3281:: with SMTP id
 1mr6397283ejw.181.1569565060553; 
 Thu, 26 Sep 2019 23:17:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxL9brEKHSoDGjIfTuvuHxI0UHuZGMZsfxvL1MYv9chvMywqKPjMMiy9Gv6IQOr+YydUDUrVA==
X-Received: by 2002:a17:906:3281:: with SMTP id
 1mr6397273ejw.181.1569565060339; 
 Thu, 26 Sep 2019 23:17:40 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id j1sm460397ejc.13.2019.09.26.23.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 23:17:39 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 04DFF18063D; Fri, 27 Sep 2019 08:17:38 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Miaoqing Pan <miaoqing@codeaurora.org>, johannes@sipsolutions.net
Subject: Re: [PATCH] mac80211: fix txq null pointer dereference
In-Reply-To: <1569549796-8223-1-git-send-email-miaoqing@codeaurora.org>
References: <1569549796-8223-1-git-send-email-miaoqing@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 27 Sep 2019 08:17:38 +0200
Message-ID: <87mueq1cvx.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: S6V2aKMnMKqBlEnDk1qNJQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_231746_357136_3DE2A5F1 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

TWlhb3FpbmcgUGFuIDxtaWFvcWluZ0Bjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBJZiB0aGUg
aW50ZXJmYWNlIHR5cGUgaXMgUDJQX0RFVklDRSBvciBOQU4sIHJlYWQgdGhlIGZpbGUgb2YKPiAn
L3N5cy9rZXJuZWwvZGVidWcvaWVlZTgwMjExL3BoeXgvbmV0ZGV2OndsYW54L2FxbScgd2lsbCBn
ZXQgYQo+IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4gQXMgZm9yIHRob3NlIGludGVyZmFjZSB0
eXBlLCB0aGUKPiBwb2ludGVyIHNkYXRhLT52aWYudHhxIGlzIE5VTEwuCgpIZWguIE9vcHMhCgo+
IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0
dWFsIGFkZHJlc3MgMDAwMDAwMTEKPiBDUFU6IDEgUElEOiAzMDkzNiBDb21tOiBjYXQgTm90IHRh
aW50ZWQgNC4xNC4xMDQgIzEKPiB0YXNrOiBmZmZmZmZjMDMzN2U0ODgwIHRhc2suc3RhY2s6IGZm
ZmZmZjgwMGNkMjAwMDAKPiBQQyBpcyBhdCBpZWVlODAyMTFfaWZfZm10X2FxbSsweDM0LzB4YTAg
W21hYzgwMjExXQo+IExSIGlzIGF0IGllZWU4MDIxMV9pZl9mbXRfYXFtKzB4MzQvMHhhMCBbbWFj
ODAyMTFdCj4gcGMgOiBbPGZmZmZmZjgwMDBiN2NkMDA+XSBsciA6IFs8ZmZmZmZmODAwMGI3Y2Qw
MD5dIHBzdGF0ZTogNjAwMDAxNDUKPiBzcCA6IGZmZmZmZjgwMGNkMjNiYjAKPiB4Mjk6IGZmZmZm
ZjgwMGNkMjNjMDAgeDI4OiBmZmZmZmZjMDMzN2U0ODgwCj4geDI3OiBmZmZmZmY4MDA4YTA0MDAw
IHgyNjogMDAwMDAwMDAwMDAwMDAwMwo+IHgyNTogMDAwMDAwMDAwMDAwMDE4ZSB4MjQ6IGZmZmZm
ZjgwMDkwZjlkMzAKPiB4MjM6IGZmZmZmZmMwMzRiNjIwMDAgeDIyOiAwMDAwMDAwMDAwMDAwMDAw
Cj4geDIxOiBmZmZmZmZjMDMzNTAwOGUwIHgyMDogZmZmZmZmODAwY2QyM2MxMAo+IHgxOTogMDAw
MDAwMDAwMDAwMDBjOCB4MTg6IDAwMDAwMDAwMDAwMDAwMDAKPiB4MTc6IDAwMDAwMDAwMDAwMDAw
MDAgeDE2OiBmZmZmZmY4MDA4MWVmNDU0Cj4geDE1OiAwMDAwMDAwMDAwMDAwMDAwIHgxNDogMDAw
MDAwMDBmNDVjMWQyNwo+IHgxMzogMDAwMDAwMDBmZmFiNjcxMCB4MTI6IDAwMDAwMDAwMDAwMDAw
MDMKPiB4MTE6IDAwMDAwMDAwMDAwMDAwMDYgeDEwOiAwMDAwMDAwMDAwMDAwMDAwCj4geDkgOiAw
MDAwMDAwMDAwMDAwMDAxIHg4IDogZmZmZmZmYzAzMzdlNDg4MAo+IHg3IDogMDAwMDAwMDAwMDAw
MDAwMyB4NiA6IDAwMDAwMDAwZjQ0OTgwMDAKPiB4NSA6IDAwMDAwMDAwMDAwMDAwMDAgeDQgOiBm
ZmZmZmY4MDAwYjdjY2NjCj4geDMgOiBmZmZmZmY4MDBjZDIzZTgwIHgyIDogMDAwMDAwMDAwMDAw
MDBjOAo+IHgxIDogZmZmZmZmODAwY2QyM2MxMCB4MCA6IGZmZmZmZmMwMzM1MDA4ZTAKPiBQcm9j
ZXNzIGNhdCAocGlkOiAzMDkzNiwgc3RhY2sgbGltaXQgPSAweGZmZmZmZjgwMGNkMjAwMDApCj4g
W0NhbGwgdHJhY2U6Cj4gRXhjZXB0aW9uIHN0YWNrKDB4ZmZmZmZmODAwY2QyM2E3MCB0byAweGZm
ZmZmZjgwMGNkMjNiYjApCj4gM2E2MDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGZmZmZmZmMwMzM1MDA4ZTAgZmZmZmZmODAwY2QyM2MxMAo+IDNhODA6IDAwMDAwMDAwMDAwMDAw
YzggZmZmZmZmODAwY2QyM2U4MCBmZmZmZmY4MDAwYjdjY2NjIDAwMDAwMDAwMDAwMDAwMDAKPiAz
YWEwOiAwMDAwMDAwMGY0NDk4MDAwIDAwMDAwMDAwMDAwMDAwMDMgZmZmZmZmYzAzMzdlNDg4MCAw
MDAwMDAwMDAwMDAwMDAxCj4gM2FjMDogMDAwMDAwMDAwMDAwMDAwMCAwMDAwMDAwMDAwMDAwMDA2
IDAwMDAwMDAwMDAwMDAwMDMgMDAwMDAwMDBmZmFiNjcxMAo+IDNhZTA6IDAwMDAwMDAwZjQ1YzFk
MjcgMDAwMDAwMDAwMDAwMDAwMCBmZmZmZmY4MDA4MWVmNDU0IDAwMDAwMDAwMDAwMDAwMDAKPiAz
YjAwOiAwMDAwMDAwMDAwMDAwMDAwIDAwMDAwMDAwMDAwMDAwYzggZmZmZmZmODAwY2QyM2MxMCBm
ZmZmZmZjMDMzNTAwOGUwCj4gM2IyMDogMDAwMDAwMDAwMDAwMDAwMCBmZmZmZmZjMDM0YjYyMDAw
IGZmZmZmZjgwMDkwZjlkMzAgMDAwMDAwMDAwMDAwMDE4ZQo+IDNiNDA6IDAwMDAwMDAwMDAwMDAw
MDMgZmZmZmZmODAwOGEwNDAwMCBmZmZmZmZjMDMzN2U0ODgwIGZmZmZmZjgwMGNkMjNjMDAKPiAz
YjYwOiBmZmZmZmY4MDAwYjdjZDAwIGZmZmZmZjgwMGNkMjNiYjAgZmZmZmZmODAwMGI3Y2QwMCAw
MDAwMDAwMDYwMDAwMTQ1Cj4gM2I4MDogZmZmZmZmODAwY2QyM2JhMCBmZmZmZmY4MDA4OGUxNmU0
IDAwMDAwMDdmZmZmZmZmZmYgZmZmZmZmODAwY2QyM2M0MAo+IDNiYTA6IGZmZmZmZjgwMGNkMjNj
MDAgZmZmZmZmODAwMGI3Y2QwMAo+IFs8ZmZmZmZmODAwMGI3Y2QwMD5dIGllZWU4MDIxMV9pZl9m
bXRfYXFtKzB4MzQvMHhhMCBbbWFjODAyMTFdCj4gWzxmZmZmZmY4MDAwYjdjNDE0Pl0gaWVlZTgw
MjExX2lmX3JlYWQrMHg2MC8weGJjIFttYWM4MDIxMV0KPiBbPGZmZmZmZjgwMDBiN2NjYzQ+XSBp
ZWVlODAyMTFfaWZfcmVhZF9hcW0rMHgyOC8weDMwIFttYWM4MDIxMV0KPiBbPGZmZmZmZjgwMDgy
ZWZmOTQ+XSBmdWxsX3Byb3h5X3JlYWQrMHgyYy8weDQ4Cj4gWzxmZmZmZmY4MDA4MWVlZjAwPl0g
X192ZnNfcmVhZCsweDJjLzB4ZDQKPiBbPGZmZmZmZjgwMDgxZWYwODQ+XSB2ZnNfcmVhZCsweDhj
LzB4MTA4Cj4gWzxmZmZmZmY4MDA4MWVmNDk0Pl0gU3lTX3JlYWQrMHg0MC8weDdjCj4KPiBUZXN0
ZWQgSFc6IFFDQTk5ODQKPiBUZXN0ZWQgRlc6IDEwLjQtMy4xMC0wMDA0Nwo+Cj4gU2lnbmVkLW9m
Zi1ieTogTWlhb3FpbmcgUGFuIDxtaWFvcWluZ0Bjb2RlYXVyb3JhLm9yZz4KCkFja2VkLWJ5OiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0
aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYXRoMTBrCg==
