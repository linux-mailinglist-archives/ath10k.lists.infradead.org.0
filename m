Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888ECF32E8
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 16:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c0wxG4JUAb3PZLQ8W7GARchzY93yOwLOmIITaB6e4WY=; b=jc/WqkovihjVnChbKOROo2GZy
	M2MfZB47c36JRVppGVlSOXWmQNB922bbDApHuGrC4GembYah7Z0We2Y3wZ3is13QWWMVoON/sRuI9
	CRGH8e0VyEgsV6S0rz1Da0jxP1MASsQmIJoVaM0gVcVLPfCoR+6ZkDRttyDptZY2BejtCfQECdMmC
	JLpmjB3q/d5f88rLLNbS4oAmy1xO5SWWAauVhYe32fKz3NxMqpANC4sLhCgq3Fcbxfs+5OhijjWnD
	3vDUeyYKxLxBR6ULem2hPO/mYZjX9TiCY+K8VABssm6EWhJc38a004LugG7jfGGQnh7FWmTOH9dXs
	Zz91Mjnjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjdx-0004fZ-9q; Thu, 07 Nov 2019 15:24:17 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjdt-0004ep-Ud
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 15:24:15 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id A4F4413C358;
 Thu,  7 Nov 2019 07:24:09 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com A4F4413C358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1573140251;
 bh=51W91Kw2UqEb8Wlp1490MubzBtLUcquzz36+dIa/yk8=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=MLjoN28EsJ7Hcrq5iM3T9oJvb3rV4Ko1evC6v41M1C1VxFkNS9bml8tMltAtqXLBn
 kfvP/Q95avdsMtK5oWprw9vOTXtUs1W11hsFbL8z4sgdCNWO2r0sNR14LpKng3IeRT
 r37iAX7JwcSVkDbw9zxUGpSVfE7XdpZEhIyUWU4U=
Subject: Re: [PATCH net-next] ath10k: fix RX of frames with broken FCS in
 monitor mode
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>
References: <20191105164932.11799-1-linus.luessing@c0d3.blue>
 <927cea69-7afc-5c35-df8d-9813392e8928@candelatech.com>
 <20191107140149.GB19482@otheros>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <6ca7e338-d14d-49f6-f51c-600856b59767@candelatech.com>
Date: Thu, 7 Nov 2019 07:24:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20191107140149.GB19482@otheros>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_072414_011331_702A251D 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CgpPbiAxMS8wNy8yMDE5IDA2OjAzIEFNLCBMaW51cyBMw7xzc2luZyB3cm90ZToKPiBPbiBUdWUs
IE5vdiAwNSwgMjAxOSBhdCAwOToxOToyMEFNIC0wODAwLCBCZW4gR3JlZWFyIHdyb3RlOgo+PiBU
aGFua3MgZm9yIGFkZGluZyB0aGUgY291bnRlci4gIFNpbmNlIGl0IHVzIHUzMiwgSSBkb3VidCB5
b3UgbmVlZCB0aGUgc3BpbiBsb2NrCj4+IGJlbG93Pwo+Cj4gT2ssIEkgY2FuIHJlbW92ZSB0aGUg
c3Bpbi1sb2NrLgo+Cj4gSnVzdCBmb3IgY2xhcmlmaWNhdGlvbiB0aG91Z2gsIGlmIEkgcmVjYWxs
IGNvcnJlY3RseSB0aGVuIGFuIGluY3JlbWVudCBvcGVyYXRvcgo+IGlzIG5vdCBndWFyYW50ZWVk
IHRvIHdvcmsgYXRvbWljYWxseS4gQnV0IHlvdSB0aGluayBpdCdzIHVubGlrZWx5Cj4gdG8gcmFj
ZSB3aXRoIGEgY29uY3VycmVudCArKyBhbmQgdGhlcmVmb3JlIGl0J3MgZmluZSBmb3IganVzdCBh
IGRlYnVnIGNvdW50ZXI/Cj4gKGFuZCBpZiBpdCB3ZXJlIHJhY2luZywgaXQnZCBqdXN0IGJlIGEg
bWlzc2VkICsxKQoKSSB0aGluayBpdCBpcyBmaW5lIHRvIGJlIG9mZi1ieS1vbmUsIGFuZCB1MzIg
aXMgYXRvbWljIHNvIHlvdSB3b3VsZCBuZXZlciByZWFkIGEgcmVhbGx5CndlaXJkIG51bWJlciwg
bGlrZSB5b3UgY2FuIGlmIHU2NCBpcyBub24tYXRvbWljYWxseSBiZWluZyBpbmNyZW1lbnRlZC4K
ClRoYW5rcywKQmVuCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpD
YW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGlu
ZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
