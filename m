Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34751977CB
	for <lists+ath10k@lfdr.de>; Mon, 30 Mar 2020 11:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=samAoCZcolI4NUG7NJncBQydUxfy7HVCU7Lrm4IXgX4=; b=RhEo7J2+R9KhSxG1kVrXbTC8U
	j4WxZ+kAeSZkNyS0GQq1YNVi7kz/jf5bgLUqmFw+bJHC+VIysopbCGJufE267ficUACX+unU3w5bM
	PISWyng3n0huE2CnqqG1a1M+/JUmiLKUGLcn1zYUzxI5NUQo3YHwcHwqklwE1dSMtLpUqlKeJAfWX
	5PPgKnuv/U231FFjTijpKvVv4CoFWlrYBkJwi+MeMY3kiw41As+a/hgjmlahrV93MhR87aV88goQD
	Sw5H9WQA7v57dpFy3CXpGfWsmsNQbru5ZUBNMDCq4pYV9HgSVYKxAIax6SB5el5guEf1c3oipidgn
	y1TzZhfJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIqdR-0002qS-7Y; Mon, 30 Mar 2020 09:23:09 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqdI-0002hp-Sb
 for ath10k@lists.infradead.org; Mon, 30 Mar 2020 09:23:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585560180; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=YFBdAzzo7+yb9xd0OHuyOAoYZCtYb0OdPlc71GVj/eE=;
 b=oQja5HOYZIhuncVPlggHGUg+2ogq8DYmnBmdZN+jk+e3Acx4jVcRdQnbd8M9hZsbYK81OXA/
 RjICf3VdM4vqJK+8d6USqdFyYlq9ComRP27XszlcbTCdLgNqUFAZTq4SycOXzYFtp6cIL/tW
 EcVX3BNzJ8Ae6KoPE7cVMPuDT2A=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e81ba6e.7f7d15b3a848-smtp-out-n02;
 Mon, 30 Mar 2020 09:22:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1497DC433D2; Mon, 30 Mar 2020 09:22:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: ssreeela)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3FA49C433F2;
 Mon, 30 Mar 2020 09:22:53 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 30 Mar 2020 14:52:53 +0530
From: ssreeela@codeaurora.org
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: enable VHT160 and VHT80+80 modes
In-Reply-To: <87bloi2g6h.fsf@kamboji.qca.qualcomm.com>
References: <1585148169-2320-1-git-send-email-ssreeela@codeaurora.org>
 <20200326095907.5326BC433BA@smtp.codeaurora.org>
 <812e84a585ed3aeda9aa54f7d2b14e93@codeaurora.org>
 <87bloi2g6h.fsf@kamboji.qca.qualcomm.com>
Message-ID: <158d2bdf5027a494d14cfdd6134b9c6f@codeaurora.org>
X-Sender: ssreeela@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_022301_011725_AF9B4461 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lei Wang <leiwa@codeaurora.org>, Rick Wu <rwu@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0yNyAxNjo1NSwgS2FsbGUgVmFsbyB3cm90ZToKPiBzc3JlZWVsYUBjb2RlYXVy
b3JhLm9yZyB3cml0ZXM6Cj4gCj4+IE9uIDIwMjAtMDMtMjYgMTU6MjksIEthbGxlIFZhbG8gd3Jv
dGU6Cj4+PiBTb3dtaXlhIFNyZWUgRWxhdmFsYWdhbiA8c3NyZWVlbGFAY29kZWF1cm9yYS5vcmc+
IHdyb3RlOgo+Pj4gCj4+Pj4gRnJvbTogTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJvcmEub3JnPgo+
Pj4+IAo+Pj4+IFNldCByaWdodCBjaGFubmVsIGZyZXF1ZW5jaWVzIGluIFZIVDE2MCBtb2RlIGFj
Y29yZGluZyB0byB0aGUgVkhUMTYwCj4+Pj4gaW50ZXJvcGVyYWJpbGl0eSB3b3JrYXJvdW5kIGFk
ZGVkIGFzIHBhcnQgb2YgSUVFRSBTdGQgODAyLjEx4oSiLTIwMTYgCj4+Pj4gaW4KPj4+PiAiVGFi
bGUgOS0yNTLigJRWSFQgT3BlcmF0aW9uIEluZm9ybWF0aW9uIHN1YmZpZWxkcyIsIGJhbmRfY2Vu
dGVyX2ZyZXEyCj4+Pj4gY29ycmVzcG9uZHMgdG8gQ0NGUzEgaW4gVGFibGUgOS0yNTMuIFByZXZp
b3VzIGltcGxlbWVudGF0aW9uCj4+Pj4gKGJhbmRfY2VudGVyX2ZyZXEyID0gMCBmb3IgVkhUMTYw
KSBpcyBvbmx5IGRlcHJlY2F0ZWQuCj4+Pj4gCj4+Pj4gRW5hYmxlIFZIVDgwKzgwIG1vZGUgYW5k
IHNldCB0aGUgcHJvcGVyIHBlZXIgUlggbnNzIHZhbHVlIGZvcgo+Pj4+IFZIVDE2MCBhbmQKPj4+
PiBWSFQ4MCs4MCBtb2RlLgo+Pj4+IAo+Pj4+IEJhc2VkIG9uIHBhdGNoZXMgYnkgU2ViYXN0aWFu
IEdvdHRzY2hhbGw6Cj4+Pj4gCj4+Pj4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE4MDcw
NDA5NTQ0NC42NjItMS1zLmdvdHRzY2hhbGxAZGQtd3J0LmNvbQo+Pj4+IAo+Pj4+IGh0dHBzOi8v
bGttbC5rZXJuZWwub3JnL3IvMjAxODA3MDQxMjA1MTkuNjQ3OS0xLXMuZ290dHNjaGFsbEBkZC13
cnQuY29tCj4+Pj4gCj4+Pj4gVGVzdGVkOiBxY2E5OTg0IHdpdGggZmlybXdhcmUgdmVyIDEwLjQt
My4xMC0wMDA0Nwo+Pj4+IAo+Pj4+IENvLWRldmVsb3BlZC1ieTogU2ViYXN0aWFuIEdvdHRzY2hh
bGwgPHMuZ290dHNjaGFsbEBkZC13cnQuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlh
biBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAZGQtd3J0LmNvbT4KPj4+PiBDby1kZXZlbG9wZWQt
Ynk6IFJpY2sgV3UgPHJ3dUBjb2RlYXVyb3JhLm9yZz4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBSaWNr
IFd1IDxyd3VAY29kZWF1cm9yYS5vcmc+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTGVpIFdhbmcgPGxl
aXdhQGNvZGVhdXJvcmEub3JnPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNvd21peWEgU3JlZSBFbGF2
YWxhZ2FuIDxzc3JlZWVsYUBjb2RlYXVyb3JhLm9yZz4KPj4+IAo+Pj4gRmFpbHMgdG8gYnVpbGQg
b24gR0NDIDguMS4gRGlkIHlvdSB0ZXN0IHRoaXM/Cj4+PiAKPj4+IEluIGZpbGUgaW5jbHVkZWQg
ZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVnLmg6NSwKPj4+ICAgICAgICAgICAgICAgICAg
ZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjgzLAo+Pj4gICAgICAgICAgICAgICAg
ICBmcm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LAo+Pj4gICAgICAgICAgICAgICAgICBmcm9t
IC4vaW5jbHVkZS9uZXQvbWFjODAyMTEuaDoxNiwKPj4+ICAgICAgICAgICAgICAgICAgZnJvbSBk
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5oOjEwLAo+Pj4gICAgICAgICAgICAg
ICAgICBmcm9tIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6ODoKPj4+IElu
IGZ1bmN0aW9uICdhdGgxMGtfcGVlcl9hc3NvY19oX3ZodCcsCj4+PiAgICAgaW5saW5lZCBmcm9t
ICdhdGgxMGtfcGVlcl9hc3NvY19wcmVwYXJlJyBhdAo+Pj4gZHJpdmVycy9uZXQvd2lyZWxlc3Mv
YXRoL2F0aDEway9tYWMuYzoyNzkwOjI6Cj4+PiAuL2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDoz
NTA6Mzg6IGVycm9yOiBjYWxsIHRvCj4+PiAnX19jb21waWxldGltZV9hc3NlcnRfMjYzMScgZGVj
bGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6Cj4gCj4gWy4uLl0KPiAKPj4gSSBjaGVja2VkIHRo
ZSBidWlsZC4gQnVpbGQgd2FzIHN1Y2Nlc3NmdWwgd2l0aCBHQ0MgdmVyc2lvbiA0LjguCj4+IFdp
bGwgZml4IHRoZSBlcnJvciBhbmQgdXBkYXRlIHRoZSBwYXRjaC4KPiAKPiBHcmVhdCwgdGhhbmtz
LiBIZXJlJ3MgaG93IEkgaW5zdGFsbGVkIEdDQyA4LjEgZnJvbSBjcm9zc3Rvb2w6Cj4gCj4gbGlz
dGluZ3M6IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvcHViL3Rvb2xzL2Nyb3NzdG9vbC8KPiAKPiB3
Z2V0Cj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9wdWIvdG9vbHMvY3Jvc3N0b29sL2ZpbGVzL2Jp
bi94ODZfNjQvOC4xLjAveDg2XzY0LWdjYy04LjEuMC1ub2xpYmMteDg2XzY0LWxpbnV4LnRhci54
ego+IHB1c2hkIC9vcHQvY3Jvc3MvCj4gdGFyIC14ZiB+L3RtcC9jcm9zc3Rvb2wveDg2XzY0LWdj
Yy04LjEuMC1ub2xpYmMteDg2XzY0LWxpbnV4LnRhci54ego+IAo+IEluIHRvcCBsZXZlbCBjcmVh
dGUgR05VTWFrZWZpbGU6Cj4gCj4gQ1JPU1NfQ09NUElMRT0vb3B0L2Nyb3NzL2djYy04LjEuMC1u
b2xpYmMveDg2XzY0LWxpbnV4L2Jpbi94ODZfNjQtbGludXgtCj4gaW5jbHVkZSBNYWtlZmlsZQoK
VGhhbmtzIGZvciB0aGUgaW5mby4gV2lsbCBjaGVjayB0aGUgYnVpbGQgd2l0aCBHQ0MgOC4xIGFu
ZCByZXNlbmQuCgpSZWdhcmRzLApTb3dtaXlhIFNyZWUKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9hdGgxMGsK
