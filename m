Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2486F108DA9
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 13:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYfU8JPtIR2oWpODix/oudzNr5M0fqd3Q6Z619wdjXw=; b=NAPzi6EZNViFF/
	grmJfZ3b72nOG6XGzyYBWjejjmH3JHPT+nwxmIxeCf4bEhdndHMuA7Pdvom+STNYFpQLvKaqzXwIo
	9OLEh8q9OKs2p/Z4Vbc0mOOkJKuVTabZPvywKsfzUkUecTJz3aaf6U8EmxFzDM/YnQslTd7PGVnZb
	z+EhmSRSO4PlvYUUxz0xOchBGrFhRKFR26lRiIfC90iyXGH9MAvuShVXqxLkAPkIgqWJCFt4BVNbi
	wCe2Xyt2Xq+ibXa3Q/awx2yVHrYA+nCwlFZ4bD2kmhSgypB/yEGoD0LFY/6zOKK+mLLWNBHFoAxy9
	fwBjgeJ7f2ArJfPwxGHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDFv-00041V-Cd; Mon, 25 Nov 2019 12:14:15 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDFq-00040p-Sc
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 12:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574684048;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=OGZ2n8F7a9gKBAe87Xm3/4zY0uhWgsuXNCXAZXK+jtE=;
 b=Gtr9lo4oSzhuSwwzXSD+ysgNb4eVuBlbuYk7TRChJotBgXI2mGb++kacjvTAg0Ak
 Iq4EbPSVfEMyh/fHoA2mDynvzlc4PA3Ln+rHchP/F4McseQrfXRRYhmVIZQyoLxdpEm
 7xh/D3mnBIQRr3W9D+6hloKoZkjZsQSHlPx45TeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574684048;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=OGZ2n8F7a9gKBAe87Xm3/4zY0uhWgsuXNCXAZXK+jtE=;
 b=PDJGsBygcORFxW9KDVoeFi0h5LjnUipLq/CSswDvDCiSrJ4ScPMQSlJZ6YNmjimm
 zG+C5r4Ibu072ORpk5pjubCrzs+c5fc2nDUy+lEZo2VnNz6qwqc8CigeZ7Q5Kk9gtTx
 HDauPAuOOYVF4BJWso7+ifa0n6mxneHGaNGnLBPU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 147E2C447A0
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2] ath10k: fix RX of frames with broken FCS in
 monitor mode
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191115105612.8531-1-linus.luessing@c0d3.blue>
References: <20191115105612.8531-1-linus.luessing@c0d3.blue>
To: =?utf-8?q?Linus_L=C3=BCssing?= <linus.luessing@c0d3.blue>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea27bbb36-28d87d93-198a-4e07-abb4-fe4efc2b9614-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 12:14:08 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_041410_952618_595619C8 
X-CRM114-Status: UNSURE (   4.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?q?Linus_L?==?utf-8?q?=C3=BCssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Ben Greear <greearb@candelatech.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

TGludXMgTMO8c3Npbmcgd3JvdGU6Cgo+IFNvIGZhciwgZnJhbWVzIHdlcmUgZm9yd2FyZGVkIHJl
Z2FyZGxlc3Mgb2YgdGhlIEZDUyBjb3JyZWN0bmVzcyBsZWFkaW5nCj4gdG8gdXNlcnNwYWNlIGFw
cGxpY2F0aW9ucyBsaXN0ZW5pbmcgb24gdGhlIG1vbml0b3IgbW9kZSBpbnRlcmZhY2UgdG8KPiBy
ZWNlaXZlIHBvdGVudGlhbGx5IGJyb2tlbiBmcmFtZXMsIGV2ZW4gd2l0aCB0aGUgImZjc2ZhaWwi
IGZsYWcgdW5zZXQuCj4gCj4gQnkgZGVmYXVsdCwgd2l0aCB0aGUgImZjc2ZhaWwiIGZsYWcgb2Yg
YSBtb25pdG9yIG1vZGUgaW50ZXJmYWNlCj4gdW5zZXQsIGZyYW1lcyB3aXRoIEZDUyBlcnJvcnMg
c2hvdWxkIGJlIGRyb3BwZWQuIFdpdGggdGhpcyBwYXRjaCwgdGhlCj4gZmNzZmFpbCBmbGFnIGlz
IHRha2VuIGludG8gYWNjb3VudCBjb3JyZWN0bHkuCj4gCj4gVGVzdGVkLW9uOiBRQ0E0MDE5IGZp
cm13YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDExCj4gCj4gQ2M6IFNpbW9u
IFd1bmRlcmxpY2ggPHN3QHNpbW9ud3VuZGVybGljaC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBMaW51
cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IEthbGxl
IFZhbG8gPGt2YWxvQGNvZGVhdXJvcmEub3JnPgoKUGF0Y2ggYXBwbGllZCB0byBhdGgtbmV4dCBi
cmFuY2ggb2YgYXRoLmdpdCwgdGhhbmtzLgoKZWEwYzNlMmE0NzAyIGF0aDEwazogZml4IFJYIG9m
IGZyYW1lcyB3aXRoIGJyb2tlbiBGQ1MgaW4gbW9uaXRvciBtb2RlCgotLSAKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTI0NjA0NS8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5r
ZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
