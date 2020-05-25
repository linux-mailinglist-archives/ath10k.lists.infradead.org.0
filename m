Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEABE1E0DD9
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 13:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7p1tOV+JhiJ8gZjqnkxhVAoViNIN6LIAu41oFluTP0=; b=JsXax/THNrdfrR
	b/EQruWGlSn2dWhXKma8y6v3AxlKwtOYQqQ9kyscLomh6xubeG/YZiYvE3sKTiyqlyuxWmyXFI9WI
	etG9pvDVFCh4rRDt+ETt832+2c4YS4FmS48NXcYbhD6dzU/7F6Zznwa/kI4LHFfGGyP38fFX0SWBP
	btIXQw7rtOh+L5iUXSDINfSkQ7FFO8zy1Y3GqT5BeNoLMjMi7fu7L72KkfAXdwx04IgOujORB8etA
	24ytwpaF8e9sKOP5iiYnBj9MER7qYWnHaaQWeZyVV4oUI5drOaMU9Bymnz8p8Mjd1VrbL2JiQDbY5
	RlNR1ig0EvDgX1mpWQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBfY-0001U5-Cz; Mon, 25 May 2020 11:53:24 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBfT-0001TO-NS
 for ath10k@lists.infradead.org; Mon, 25 May 2020 11:53:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590407600; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=iZXdIaBh5TLhJdwzVECG/eXlN+wXGrPum4hi8Npf0e4=;
 b=xmXFaJN54tBE8wSNf1B/PxnGMzP7vDL+He5dBgNfcagMDUPHEK93AVBjFQbGP/VrZFAzwdgc
 LYsO5Bc92Fvqbv5hF0KYENNl45OZHYeSqMyo8M2GY7lheaFz86qrFxpbgTwqT2iS3jyd37IT
 c2CBwBFL/5qzUGAVbNNCi6lJ33g=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5ecbb1ac807c16b8393ab71c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 11:53:16
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 23930C43391; Mon, 25 May 2020 11:53:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6D8BCC433C6;
 Mon, 25 May 2020 11:53:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6D8BCC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] ath10k: add SDIO firmware for QCA9377 WiFi
References: <20200524135933.1623-1-christianshewitt@gmail.com>
 <CA+5PVA5K0naJRhBvmDmArkBWQBCuA6p2yP+pYPMr3dZ47q53aQ@mail.gmail.com>
 <37BB0344-C9EB-41F5-87E7-D66DA45A488E@gmail.com>
Date: Mon, 25 May 2020 14:53:10 +0300
In-Reply-To: <37BB0344-C9EB-41F5-87E7-D66DA45A488E@gmail.com> (Christian
 Hewitt's message of "Mon, 25 May 2020 09:09:35 +0400")
Message-ID: <871rn89qop.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_045320_596496_ED2E36AE 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Josh Boyer <jwboyer@kernel.org>,
 Linux Wireless <linux-wireless@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Q2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+IHdyaXRlczoKCj4+
IE9uIDI0IE1heSAyMDIwLCBhdCA4OjM0IHBtLCBKb3NoIEJveWVyIDxqd2JveWVyQGtlcm5lbC5v
cmc+IHdyb3RlOgo+PiAKPj4gT24gU3VuLCBNYXkgMjQsIDIwMjAgYXQgOTo1OSBBTSBDaHJpc3Rp
YW4gSGV3aXR0Cj4+IDxjaHJpc3RpYW5zaGV3aXR0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+PiAKPj4+
IFRoaXMgY29tbWl0IGFkZHMgdGhlIFNESU8gZmlybXdhcmUgZm9yIGF0aDEway9RQ0E5Mzc3IGNh
cmRzLiBUaGUgZmlsZQo+Pj4gaXMgZnJvbSB0aGUgQm91bmRhcnkgRGV2aWNlcyByZXBvIFsxXSBh
bmQgaGFzIHRoZSBzYW1lIGxpY2Vuc2UgYXMgdGhlCj4+PiBleGlzdGluZyBmaXJtd2FyZS01LmJp
biBmaWxlLiBTdXBwb3J0IGZvciBRQ0E5Mzc3IFdpRmkgd2FzIG1lcmdlZCBmb3IKPj4+IExpbnV4
IDUuNyBbMl0uCj4+PiAKPj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vYm91bmRhcnlkZXZpY2Vz
L3FjYS1maXJtd2FyZS90cmVlL2JkLXNkbWFjLWF0aDEwawo+Pj4gWzJdCj4+PiBodHRwczovL2dp
dGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0LzZlNTFiMGU0OTEzY2EyYzkzMDU5ZjczY2E0
NzdjYTMwZWE5NWI2YTAKPj4gCj4+IFRoYXQgcmVwbyBnb3QgaXQgZnJvbSBLYWxsZSdzIHVudGVz
dGVkIHJlcG8sIGFuZCBkaWRuJ3QgY2Fycnkgb3ZlciB0aGUKPj4gU2lnbmVkLW9mZi1ieS4gIFlv
dSBkaWRuJ3QgY2Fycnkgb3ZlciB0aGUgU2lnbmVkLW9mZi1ieSBmcm9tIHRoZSByZXBvCj4+IHlv
dSBnb3QgaXQgZnJvbS4gIDMgbGV2ZWxzIG9mIGluZGlyZWN0aW9uIHRvIGluY2x1ZGUgYSBmaWxl
IHdpdGggYQo+PiBnaWFudCBub3RpY2UgZnJvbSBhbiB1bnRlc3RlZCBzb3VyY2VzIGlzIGEgYml0
IHRvbyBtdWNoIGZvciBtZSB0byBmZWVsCj4+IGNvbWZvcnRhYmxlIHdpdGguCj4KPiBBcG9sb2dp
ZXMgSm9zaCwgSSBoYXZlIGJlZW4gdXNpbmcgbXkgb3duIHJlcGFjayBvZiB0aGUgQm91bmRhcnkg
RGV2aWNlcwo+IHJlcG8gYW5kIGhhZCBjb21wbGV0ZWx5IGZvcmdvdHRlbiBLYWxsZeKAmXMgcmVw
byBleGlzdGVkIGFuZCB3YXMgdGhlCj4gb3JpZ2luYWwgc291cmNlIG9mIHRoZSBmaWxlLgo+Cj4+
IEthbGxlLCBpcyB0aGVyZSBhIHJlYXNvbiB5b3UgZGlkbid0IHNlbmQgdGhpcyB1cHN0cmVhbSAz
IHllYXJzIGFnbz8KPgo+IFNESU8gc3VwcG9ydCBpcyBhIHJlbGF0aXZlbHkgcmVjZW50IGFkZGl0
aW9uIHRvIHRoZSBhdGgxMGsgZHJpdmVyIGFuZAo+IHRoZSBjb21taXQgbWVzc2FnZSBpbiB0aGlz
IFJGVCBbMV0gcHJvYmFibHkgZXhwbGFpbnMgd2h5IGhpcyByZXBvIGhhcwo+IGl0IGRlc2NyaWJl
ZCBhcyB1bnRlc3RlZC4KPgo+IEnigJltIGhhcHB5IHRvIHN1Ym1pdCB2MiB3aXRoIGNvcnJlY3Rl
ZCByZWZlcmVuY2VzIG9yIGxldCBLYWxsZSBoYW5kbGUKPiB0aGUgc3VibWlzc2lvbiwgd2hpY2hl
dmVyIGlzIGJlc3Qgb3IgZWFzaWVzdCBpcyBmaW5lIHdpdGggbWUuCgpJJ2xsIGluY2x1ZGUgdGhl
IFFDQTkzNzcgU0RJTyBpbWFnZSBpbiBteSBuZXh0IHB1bGwgcmVxdWVzdCB0byBKb3NoLgpJJ2xs
IGFsc28gaGF2ZSBRQ0E2MTc0IFNESU8gaW1hZ2VzIHBlbmRpbmcuCgotLSAKaHR0cHM6Ly93aXJl
bGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRp
bmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
