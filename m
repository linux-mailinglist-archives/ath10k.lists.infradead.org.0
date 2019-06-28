Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C2159CEB
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTpFA8SDdwQ4qMceTlOrgwsAM4mSfP6STq6835FOdZY=; b=VsG3mJmL4Q9LM2
	UesRu9rQuHV5p2uZZgSfjHK6JbCA4rgQlhDcTG/BtjtbqmW+Jj5IL+tolgb3tVb4DQO6gyqPKEk+7
	de2HvJKKnUUDxHtVtE5PcOsxajWkwPRGeIdTkvvDd+5gAVAf8BRDfXZK0WOWg26o2Q0B6pysRL6bJ
	Y723e7i9Sa3Fk9TyY2oI2+U4V/w+epnhWGGaXrpl2LpdVYAwCd9hFjjwOG6dgEjX90D/9Wa+TMQ7M
	xUO7bNzPvOFtK1U1/okdgXk1lQW0XVw1WfWjL8PcFOMJDRLuKbV/YKVfWzP0NKQMHIFHFwI2GQzmh
	ZZFUUGiDDc0x5vNYEB2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgquy-0003i4-6i; Fri, 28 Jun 2019 13:27:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqut-0003hL-PC
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:27:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7FF03604BE; Fri, 28 Jun 2019 13:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728471;
 bh=Y/3s0ZtZNN+ZHp08sSb1Uk7XP3kYUJaQwJ63A7yS0f8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=K34Z84hMDcsElMnw/qtTDqNSDf+kox6EqrxqjVlSJNfaqE1nHIxalwJTFYz9pRKyr
 Gt2XA4obdARt4m6y4AIzwSX1bXqjJNN9VAbUS/Jn8XfkSb1tFIua8ZGDC0p9wTZofb
 jjmBR5fUz/4yP2l7DAUNgAkgJz56YGB2R1JuxXYs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6282E604BE;
 Fri, 28 Jun 2019 13:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728471;
 bh=Y/3s0ZtZNN+ZHp08sSb1Uk7XP3kYUJaQwJ63A7yS0f8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=K34Z84hMDcsElMnw/qtTDqNSDf+kox6EqrxqjVlSJNfaqE1nHIxalwJTFYz9pRKyr
 Gt2XA4obdARt4m6y4AIzwSX1bXqjJNN9VAbUS/Jn8XfkSb1tFIua8ZGDC0p9wTZofb
 jjmBR5fUz/4yP2l7DAUNgAkgJz56YGB2R1JuxXYs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6282E604BE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Oever =?utf-8?Q?Gonz=C3=A1lez?= <notengobattery@gmail.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add Linksys EA6350v3
References: <CC2DD27C-28D5-4777-A062-C4A1230739F7@gmail.com>
Date: Fri, 28 Jun 2019 16:27:48 +0300
In-Reply-To: <CC2DD27C-28D5-4777-A062-C4A1230739F7@gmail.com> ("Oever
 \=\?utf-8\?Q\?Gonz\=C3\=A1lez\=22's\?\= message of "Fri,
 4 Jan 2019 11:38:01 -0600")
Message-ID: <87tvc9et63.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_062751_839390_759A444A 
X-CRM114-Status: GOOD (  15.54  )
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

T2V2ZXIgR29uesOhbGV6IDxub3RlbmdvYmF0dGVyeUBnbWFpbC5jb20+IHdyaXRlczoKCj4gRm9y
IHRoZSBxdWVzdGlvbnMgZnJvbSB0aGUgd2lraSBwYWdlOgo+Cj4gKiBkZXNjcmlwdGlvbiBmb3Ig
d2hhdCBoYXJkd2FyZSB0aGlzIGlzOgo+Cj4gICAtIGl0IGlzIGEgSVBRNDAxOCBiYXNlZCBib2Fy
ZCAoQVAtREswMS4xLUMyKQo+ICAgLSBvbmUgUUNBNDB4eCByYWRpbyBpcyB1c2VkIGFzIDIuNEdI
eiByYWRpbwo+ICAgLSBvbmUgUUNBNDB4eCByYWRpbyBpcyB1c2VkIGFzIDVHSHogcmFkaW8KPgo+
ICogb3JpZ2luIG9mIHRoZSBib2FyZCBmaWxlIChkaWQgeW91IGNyZWF0ZSBpdCB5b3Vyc2VsZiBv
ciB3aGVyZSB5b3UKPiAgIGRvd25sb2FkZWQpCj4KPiAgIC0gVGhlIGJvYXJkIGZpbGUocykgd2hl
cmUgZXh0cmFjdGVkIGZyb20gdGhlIExpbmtzeXMgZmlybXdhcmUuIEZyb20KPiAgICAgdGhlIGlt
YWdlLCB0aGVyZSBhcmUgYSB0b3RhbCBvZiA4IGZvbGRlcnM6IEFILCBBUCwgQVUsIEVVLCBGQ0Ms
Cj4gICAgIGh3XzEsIElDIGFuZCBQSC4KPiAgIC0gVGhlIGZpbGVzIGluIHRoaXMgZW1haWwgYXJl
Ogo+ICAgICAqIGh3XzEvYm9hcmREYXRhXzFfMF9JUFE0MDE5X0RLMDFfMkcuYmluCj4gICAgICog
aHdfMS9ib2FyZERhdGFfMV8wX0lQUTQwMTlfREswMV81Ry5iaW4KPgo+ICogaWRzIHRvIGJlIHVz
ZWQgd2l0aCB0aGUgYm9hcmQgZmlsZSAoQVRIMTBLX0JEX0lFX0JPQVJEX05BTUUgaW4gYXRoMTBr
KQo+Cj4gICAtIFFDQTQwMTkgaHcxLjAKPgo+ICAgICArIGJ1cz1haGIsYm1pLWNoaXAtaWQ9MCxi
bWktYm9hcmQtaWQ9MTYsdmFyaWFudD1saW5rc3lzLWVhNjM1MHYzCj4gICAgICAgbWQ1c3VtOgo+
ICAgICAgIDkwZDQwYTliZTdkMzQxN2U3MjhmNzM4NjdiNTUzZTFlCj4gICAgICsgYnVzPWFoYixi
bWktY2hpcC1pZD0wLGJtaS1ib2FyZC1pZD0xNyx2YXJpYW50PWxpbmtzeXMtZWE2MzUwdjMKPiAg
ICAgICBtZDVzdW06Cj4gICAgICAgMDA5MjVjNDdlYTA5MGIxZTUxYjc0ODM3NmE0MGEzYWEKPgo+
ICogYXR0YWNoIHRoZSBhY3R1YWwgYm9hcmQgZmlsZSAoYm9hcmQuYmluKQo+Cj4gICAtIFRoZSBu
YW1lIG9mIHRoZSBmaWxlcyBhcmUgZXF1YWwgdG8gdGhlIGlkIHN0cmluZyBpbiB0aGUgYm9hcmQt
Mi5iaW4KPiAgICAgKG1pbnVzIHRoZSAiLmJpbiIpCgpJJ20gZHJvcHBpbmcgdGhpcyBhbmQgaW5z
dGVhZCB1c2luZyB0aGUgdmVyc2lvbnMgc2VudCBvbiBGZWJydWFyeS4KCi0tIApLYWxsZSBWYWxv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
