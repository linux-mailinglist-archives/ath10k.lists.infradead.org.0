Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052201BBD8F
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 14:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw7MJGjAEUdxUVhJxvgHv/JB5HPilyzKb4BpViyFGDI=; b=lxGkVJKLxZJnoH
	u49Nd8f3wpRF0sCwymIrgDr4ilCrGSxy8/S0GwLs9RHtQ9Iw271IKYj3GNlCjWSnwb/z5C/0vU0ul
	SSZpi+DXNxPyD8+ZAYPZPpAePiI+jkqqs85x5CWF/05kfy8t/nzOouAEZJQOLMIBjpUVb+3Ql6pKi
	lD1Y+X9jFrjbvQ6IBPbSrZdnsgvC4wi2cfH7z74ThQ3jlOS6w30cssvSp/kwaI24H+i3lyWkykMtU
	Eof5zFqyJBeUvU4eP1OySpARBbg1X0zyt79uLYWanufSnIoUSTsqrCNAHwgqFdjDaNBtMHKN4e1vW
	Z2OW+Vt5PF6jJtWnXDKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPKv-0003Wt-U2; Tue, 28 Apr 2020 12:27:41 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPKs-0003W3-Eo
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 12:27:39 +0000
Received: by mail-il1-x144.google.com with SMTP id u189so20050225ilc.4
 for <ath10k@lists.infradead.org>; Tue, 28 Apr 2020 05:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fco1XW6pLNbNH1bTQSneNHaMTNqKruW1B0uX8/WhHVs=;
 b=AmFEmsyfIOpZAYZ0R0mb8Fcj7dtyg5nxj3iXNZn1m2v+dixLWn9hUDhajNZ7RPVjdf
 8AfdWsFyqdTXQF8a5MPRbZbhOsR5Cn5H2yaOJ9qENP0ilH+vJhYB1hoiNBYBrQlpOd9Q
 79r6+fgwERu8xXYiqLZFrvGJ5WkIc6zv6/CqhwEVYXLDZNheBcac3hHam/VUTkoOQu8j
 tq1iSKFjbZnwxmDP5m871VTBl+0ycQgvN8Pv+b/It2PTwLEjOvtOTS2CLcUV8KWidvgR
 vRB2WnDpXiYU93I3Q5oOIPyNoaL97if4axW9n+RCJC/B4DGF//9nDM2xiTNjKXOLrsFR
 wdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fco1XW6pLNbNH1bTQSneNHaMTNqKruW1B0uX8/WhHVs=;
 b=IdcGpQzIuRgwmaR0gi5bBM9l8uG8cMqAzQgPWdYatQIMnXeVcJiyiOaLb7wpzltkgu
 OuXk1l4CU+y1Rboyb2wryzSqaci+mrmG1b6To9GV1MsTn/L5cT4yOveIWB5EuhCmwb3W
 kTi6qgj9ZIdnMIvHd7Fppu3skNbBLpvOu5rW+kKl8V6slOJuNSPaAMKXpkl3UDLuxi5I
 mDFIiRfNMeHj2vnn1P0qATJsk/mJDPq7Pxl37qksQv799fJ8Z6fHFXXB8Za7ej9j4tbf
 yJz9dk1EgeKwNrCQQ+Xqp6/P/IYWRh48Afxp0TNT3ge7G/kJm9ctFySxqfR/ceyC3PGa
 ho8A==
X-Gm-Message-State: AGi0PuYfZqIl9P3f/o4ms33H7A2/eXMumoPSlVRVlDcYqSAjCb1B/dgU
 vrAziSFd2Yrde4AwcQg+GumRy2uWosQLj4xzpn0=
X-Google-Smtp-Source: APiQypLp18CNKCYUQrhm+QbwkYcDgQiNWW/A63FEGHkY8gWBCgF6SzUnHY0ZhCS04zxHYOUex7NTURTaCKDJwuhREqs=
X-Received: by 2002:a92:c7a9:: with SMTP id f9mr27216527ilk.0.1588076857153;
 Tue, 28 Apr 2020 05:27:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200205191043.21913-1-linus.luessing@c0d3.blue>
 <3300912.TRQvxCK2vZ@bentobox> <3097447.aZuNXRJysd@sven-edge>
 <87blnblsyv.fsf@codeaurora.org>
In-Reply-To: <87blnblsyv.fsf@codeaurora.org>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 28 Apr 2020 05:27:25 -0700
Message-ID: <CAA93jw6xoh=Nu3-OcfU5cnO5rct+QGqRf_Tnwx7-BpO8Fhrakw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: increase rx buffer size to 2048
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_052738_497721_3EC12757 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dave.taht[at]gmail.com]
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
Cc: =?UTF-8?Q?Linus_L=C3=BCssing?= <linus.luessing@c0d3.blue>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, ath10k <ath10k@lists.infradead.org>,
 mail@adrianschmutzler.de, Ben Greear <greearb@candelatech.com>,
 "David S . Miller" <davem@davemloft.net>, Sven Eckelmann <sven@narfation.org>,
 =?UTF-8?Q?Linus_L=C3=BCssing?= <ll@simonwunderlich.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgNTowNiBBTSBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVy
b3JhLm9yZz4gd3JvdGU6Cj4KPiBTdmVuIEVja2VsbWFubiA8c3ZlbkBuYXJmYXRpb24ub3JnPiB3
cml0ZXM6Cj4KPiA+IE9uIFdlZG5lc2RheSwgMSBBcHJpbCAyMDIwIDA5OjAwOjQ5IENFU1QgU3Zl
biBFY2tlbG1hbm4gd3JvdGU6Cj4gPj4gT24gV2VkbmVzZGF5LCA1IEZlYnJ1YXJ5IDIwMjAgMjA6
MTA6NDMgQ0VTVCBMaW51cyBMw7xzc2luZyB3cm90ZToKPiA+PiA+IEZyb206IExpbnVzIEzDvHNz
aW5nIDxsbEBzaW1vbnd1bmRlcmxpY2guZGU+Cj4gPj4gPgo+ID4+ID4gQmVmb3JlLCBvbmx5IGZy
YW1lcyB3aXRoIGEgbWF4aW11bSBzaXplIG9mIDE1MjggYnl0ZXMgY291bGQgYmUKPiA+PiA+IHRy
YW5zbWl0dGVkIGJldHdlZW4gdHdvIDgwMi4xMXMgbm9kZXMuCj4gPj4gPgo+ID4+ID4gRm9yIGJh
dG1hbi1hZHYgZm9yIGluc3RhbmNlLCB3aGljaCBhZGRzIGl0cyBvd24gaGVhZGVyIHRvIGVhY2gg
ZnJhbWUsCj4gPj4gPiB3ZSB0eXBpY2FsbHkgbmVlZCBhbiBNVFUgb2YgYXQgbGVhc3QgMTUzMiBi
eXRlcyB0byBiZSBhYmxlIHRvIHRyYW5zbWl0Cj4gPj4gPiB3aXRob3V0IGZyYWdtZW50YXRpb24u
Cj4gPj4gPgo+ID4+ID4gVGhpcyBwYXRjaCBub3cgaW5jcmVhc2VzIHRoZSBtYXhtaW11bSBmcmFt
ZSBzaXplIGZyb20gMTUyOCB0byAxNjU2Cj4gPj4gPiBieXRlcy4KPiA+PiBbLi4uXQo+ID4+Cj4g
Pj4gQEthbGxlLCBJIHNhdyB0aGF0IHRoaXMgcGF0Y2ggd2FzIG1hcmtlZCBhcyBkZWZlcnJlZCBb
MV0gYnV0IEkgY291bGRuJ3QgZmluZAo+ID4+IGFueSBtYWlsIHdoeSBpdCB3YXMgZG9uZSBzby4g
SXQgc2VlbXMgbGlrZSB0aGlzIGN1cnJlbnRseSBjcmVhdGVzIHJlYWwgd29ybGQKPiA+PiBwcm9i
bGVtcyAtIHNvIHdvdWxkIGJlIG5pY2UgaWYgeW91IGNvdWxkIGV4cGxhaW4gc2hvcnRseSB3aGF0
IGlzIGN1cnJlbnRseQo+ID4+IGJsb2NraW5nIGl0cyBhY2NlcHRhbmNlLgo+ID4KPiA+IFBpbmc/
Cj4KPiBTb3JyeSBmb3IgdGhlIGRlbGF5LCBteSBwbGFuIHdhcyB0byBmaXJzdCB3cml0ZSBzb21l
IGRvY3VtZW50YXRpb24gYWJvdXQKPiBkaWZmZXJlbnQgaGFyZHdhcmUgZmFtaWxpZXMgYnV0IGhh
dmVuJ3QgbWFuYWdlZCB0byBkbyB0aGF0IHlldC4KPgo+IE15IHByb2JsZW0gd2l0aCB0aGlzIHBh
dGNoIGlzIHRoYXQgSSBkb24ndCBrbm93IHdoYXQgaGFyZHdhcmUgYW5kCj4gZmlybXdhcmUgdmVy
c2lvbnMgd2VyZSB0ZXN0ZWQsIHNvIGl0IG5lZWRzIGFuYWx5c2lzIGJlZm9yZSBJIGZlZWwgc2Fm
ZQo+IHRvIGFwcGx5IGl0LiBUaGUgYXRoMTBrIGhhcmR3YXJlIGZhbWlsaWVzIGFyZSB2ZXJ5IGRp
ZmZlcmVudCB0aGF0IGV2ZW4KPiBpZiBhIHBhdGNoIHdvcmtzIHBlcmZlY3RseSBvbiBvbmUgYXRo
MTBrIGhhcmR3YXJlIGl0IGNvdWxkIHN0aWxsIGJyZWFrCj4gYmFkbHkgb24gYW5vdGhlciBvbmUu
Cj4KPiBXaGF0IG1ha2VzIG1lIGZhc3RlciB0byBhcHBseSBhdGgxMGsgcGF0Y2hlcyBpcyB0byBo
YXZlIGNvbXByZWhlbnNpdmUKPiBhbmFseXNpcyBpbiB0aGUgY29tbWl0IGxvZy4gVGhpcyBzaG93
cyBtZSB0aGUgcGF0Y2ggYXV0aG9yIGhhcwo+IGNvbnNpZGVyZWQgYWJvdXQgYWxsIGhhcmR3YXJl
IGZhbWlsaWVzLCBub3QganVzdCB0aGUgb25lIGhlIGlzIHRlc3RpbmcKPiBvbiwgYW5kIHRoYXQg
SSBkb24ndCBuZWVkIHRvIGRvIHRoZSBhbmFseXNpcyBteXNlbGYuCgpJIGhhdmUgYmVlbiBzdHJ1
Z2dsaW5nIHRvIGdldCB0aGUgYXRoMTBrIHRvIHNpbmcgYW5kIGRhbmNlIHVzaW5nCnZhcmlvdXMg
dmFyaWFudHMKb2YgdGhlIGZpcm13YXJlLCBvbiB0aGlzIGJ1ZyBvdmVyIGhlcmU6CgpodHRwczov
L2ZvcnVtLm9wZW53cnQub3JnL3QvYXFsLWFuZC10aGUtYXRoMTBrLWlzLWxvdmVseS8KClRoZSBw
dXp6bGluZyB0aGluZyBpcyB0aGUgbG9zcyBvZiBiaWRpcmVjdGlvbmFsIHRocm91Z2hwdXQgYXQg
Y29kZWwgdGFyZ2V0IDIwLAphbmQgZ2V0dGluZyBXQVkgbW9yZSAoYnV0IGxlc3MgdGhhbiBJIGV4
cGVjdGVkKSBhdCBjb2RlbCB0YXJnZXQgNS4KClRoaXMgZG9lc24ndCBxdWl0ZSBoYXZlIGJlYXJp
bmcgdGhlIHNpemUgb2YgdGhlIHJ4IHJpbmcsIGV4Y2VwdCB0aGF0IGluIG15CmV4cGVyaW1lbnRz
IHRoZSByeCByaW5nIGlzIHJhdGhlciBzbWFsbCEhIGFuZCB5ZXQgSSBnZXQgd2F5IG1vcmUgcGVy
Zm9ybWFuY2UKb3V0IG9mIGl0Li4uLgoKKHN0aWxsLCAgYXMgeW91J2xsIHNlZSBmcm9tIHRoZSBi
dWcsIGl0J3MgV0FZIGJldHRlciB0aGFuIGl0IHVzZWQgdG8gYmUpCgppcyBOQVBJIGluIHRoaXMg
ZHJpdmVyPyBJJ20gYWZyYWlkIHRvIGxvb2suCj4gLS0KPiBodHRwczovL3dpcmVsZXNzLndpa2ku
a2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMK
CgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExD
Cmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QK
YXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9hdGgxMGsK
