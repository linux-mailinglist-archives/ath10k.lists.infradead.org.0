Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC8659D23
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghnL6lpYIDVqXofN1lKNI+vvW6yMKWAufsa9vPcI6wA=; b=AHk4cq1hl54mQa
	xOslajj5IBZtRLnyXi9efJUKUW0MSIYSG0RAiQR6Gt9gpqXVfYUhx3A5pm+BWdBEAc+LiRZV+Al9I
	/jtzEox2MfSfJVSPJBhQKFd1bGtl3g9Rrs8SualtSv6pQpbpl+u1FTDLqVrHXXZr8ROEzswX8o1SL
	Wz6hZl8W8tRdrpUVFn+a8Lk3HVnpxFq1ulwdctUXw1YVv/8SJ1qFAvY0nQvAVq+9E1jURpCOESkdh
	I6QjOpRImfhSooHqUfwx28gp9sP4hfXy4DOZLAu/b2fLqBwxaKTiYpeH00SqSxC96JxeOLUhGrmRX
	rqu2/u9vvflIiVLfjweQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrAv-0000vI-3z; Fri, 28 Jun 2019 13:44:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrAj-0000qZ-Oa
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:44:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6486F60C8B; Fri, 28 Jun 2019 13:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729453;
 bh=sh5oTa03Qhr6ZN0sbkPCyG+0WzucRW5G2jxOAZYO+C8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W6GZsJKEv24XBQ+0xpeg1N+zZXbjiYib2IowmEnWvBd9DOw2nprj0Axgkkz14na+j
 fQyfIIETsBbdqWycP1pQ3WTMUse52sM+42u1nyPXHm1ZS6yYv0gX+467dK4e7lsteH
 YYo1i5nYSX8MpmplXy6ffYWPQ53mV9e3/BT393P8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1616060C8B;
 Fri, 28 Jun 2019 13:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729452;
 bh=sh5oTa03Qhr6ZN0sbkPCyG+0WzucRW5G2jxOAZYO+C8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ISSG5Mf2TT+OoHejD4SJvsI3EuEI9dzcNWiqiHBvQjUsQmUrOuUmQjtfMPjHWKQOW
 wcNwudvsPpHfuaMhmUBmNNqmN15inROXjQtp0dgZWJrkHQgpZ1tiRI4AsaFPtdU93O
 aUtdeQksYmJC6KnUpIsOjJU/lI1vFpcDMiqrycVI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1616060C8B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Oever =?utf-8?Q?Gonz=C3=A1lez?= <notengobattery@gmail.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Update Linksys EA6350v3 specific
 BDFs
References: <75520287-0A5A-4840-B100-7CF4BB627F8B@gmail.com>
Date: Fri, 28 Jun 2019 16:44:09 +0300
In-Reply-To: <75520287-0A5A-4840-B100-7CF4BB627F8B@gmail.com> ("Oever
 \=\?utf-8\?Q\?Gonz\=C3\=A1lez\=22's\?\= message of "Wed, 20 Feb 2019 11:08:24
 -0600")
Message-ID: <87ef3dddue.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064413_960379_13F67A44 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T2V2ZXIgR29uesOhbGV6IDxub3RlbmdvYmF0dGVyeUBnbWFpbC5jb20+IHdyaXRlczoKCj4gVGhp
cyBpcyBhbiB1cGRhdGUgdG8gdGhlIEJERnMgc2VudCBmb3IgdGhlIExpbmtzeXMgRUE2MzUwdjMg
ZGV2aWNlLiBBZnRlcgo+IHRlc3RpbmcgYWxsIGZpbGVzIGZyb20gdGhlIG9yaWdpbmFsIGZpcm13
YXJlLCB0aGUgZm9sbG93aW5nIGZpbGVzIGdhdmUKPiB0aGUgYmVzdCByZXN1bHRzLgo+Cj4gVGhp
cyB1cGRhdGUgY29udGFpbnM6Cj4KPiAqIG9yaWdpbmFsIGZpbGVzIGZyb20gdGhlIE9FTSBmaXJt
d2FyZSBrbm93biB0byBiZSB0aGUgYmVzdCBmb3IgdGhlIGRldmljZQo+Cj4KPiBOb3cgdG8gdGhl
IHF1ZXN0aW9ucyBmcm9tIHRoZSB3aWtpIHBhZ2UgWzFdOgo+Cj4gKiBkZXNjcmlwdGlvbiBmb3Ig
d2hhdCBoYXJkd2FyZSB0aGlzIGlzOgo+Cj4gICAtIGl0IGlzIGEgSVBRNDAxOCBiYXNlZCBib2Fy
ZCAoQVAtREswMS4xLUMyKQo+ICAgLSBvbmUgUUNBNDB4eCByYWRpbyBpcyB1c2VkIGFzIDIuNEdI
eiByYWRpbwo+ICAgLSBvbmUgUUNBNDB4eCByYWRpbyBpcyB1c2VkIGFzIDVHSHogcmFkaW8KPgo+
ICogb3JpZ2luIG9mIHRoZSBib2FyZCBmaWxlIChkaWQgeW91IGNyZWF0ZSBpdCB5b3Vyc2VsZiBv
ciB3aGVyZSB5b3UKPiAgIGRvd25sb2FkZWQpCj4KPiAgIC0gVGhlIGJvYXJkIGZpbGUocykgd2hl
cmUgZXh0cmFjdGVkIGZyb20gdGhlIExpbmtzeXMgZmlybXdhcmUuIEZyb20KPiAgICAgdGhlIGlt
YWdlLCB0aGVyZSBhcmUgYSB0b3RhbCBvZiA4IGZvbGRlcnM6IEFILCBBUCwgQVUsIEVVLCBGQ0Ms
Cj4gICAgIGh3XzEsIElDIGFuZCBQSC4KPiAgIC0gVGhlIGZpbGVzIGluIHRoaXMgZW1haWwgYXJl
Ogo+ICAgICAqIGh3XzEvYm9hcmREYXRhXzFfMF9JUFE0MDE5X1k5ODAzX3dpZmkwLmJpbgo+ICAg
ICAqIElDL2JvYXJkRGF0YV8xXzBfSVBRNDAxOV9ZOTgwM193aWZpMS5iaW4KPgo+ICogaWRzIHRv
IGJlIHVzZWQgd2l0aCB0aGUgYm9hcmQgZmlsZSAoQVRIMTBLX0JEX0lFX0JPQVJEX05BTUUgaW4g
YXRoMTBrKQo+Cj4gICAtIFFDQTQwMTkgaHcxLjAKPgo+ICAgICArIGJ1cz1haGIsYm1pLWNoaXAt
aWQ9MCxibWktYm9hcmQtaWQ9MTYsdmFyaWFudD1saW5rc3lzLWVhNjM1MHYzCj4gICAgICAgbWQ1
c3VtOgo+ICAgICAgIDY1MjUyMmE1MzJiMGYxZTY5ZDBkYzg3ZjRlZjY3MjljCj4gICAgICAgc2hh
MjU2c3VtOgo+ICAgICAgIDZjMGFiMGU0MTU4YWRmOWU2YjA4YTg2MjNjOGI1OWRmYmI5MjE5MjM0
NzQ1ZWRiZmExNzEyYWZlZTIyOGYxYmEKPiAgICAgKyBidXM9YWhiLGJtaS1jaGlwLWlkPTAsYm1p
LWJvYXJkLWlkPTE3LHZhcmlhbnQ9bGlua3N5cy1lYTYzNTB2Mwo+ICAgICAgIG1kNXN1bToKPiAg
ICAgICBlYTcxODY3NzE4OGU5Njg0NzVjNzk1NTAwMmYwOTM2Mgo+ICAgICAgIHNoYTI1NnN1bToK
PiAgICAgICA0NGYwOGQxNjRjZjM1MjQyY2FjMGRjNzliZTk4NWRiNjk0ZmYyNmQ4ZjkzNDYyNWI4
YzA3MGQwMjE4YmZmMGYzCj4KPiAqIGF0dGFjaCB0aGUgYWN0dWFsIGJvYXJkIGZpbGUgKGJvYXJk
LmJpbikKPgo+ICAgLSBUaGUgbmFtZSBvZiB0aGUgZmlsZXMgYXJlIGVxdWFsIHRvIHRoZSBpZCBz
dHJpbmcgaW4gdGhlIGJvYXJkLTIuYmluCj4gICAgIChtaW51cyB0aGUgIi5iaW4iKQoKVGhhbmtz
LCBhZGRlZCB0byBRQ0E0MDE5L2h3MS4wL2JvYXJkLTIuYmluOgoKTmV3OgpidXM9YWhiLGJtaS1j
aGlwLWlkPTAsYm1pLWJvYXJkLWlkPTE3LHZhcmlhbnQ9bGlua3N5cy1lYTYzNTB2MwpidXM9YWhi
LGJtaS1jaGlwLWlkPTAsYm1pLWJvYXJkLWlkPTE2LHZhcmlhbnQ9bGlua3N5cy1lYTYzNTB2MwoK
Q2hhbmdlZDoKCgpEZWxldGVkOgoKMiBib2FyZCBpbWFnZShzKSBhZGRlZCwgMCBjaGFuZ2VkLCAw
IGRlbGV0ZWQsIDQ2IGluIHRvdGFsCgpodHRwczovL2dpdGh1Yi5jb20va3ZhbG8vYXRoMTBrLWZp
cm13YXJlL2NvbW1pdC84NDg1NTJmN2U3NjA2YWU1Y2IyMGJlOTZiNzcyMTNkZWZkNDE0ZTZiCgot
LSAKS2FsbGUgVmFsbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
