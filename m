Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC43A7F14
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 11:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Af4i/e92ab54nodSU1C1nCjiPUZ7GLQMxkMmDq6/HQ=; b=qHcw058XJMkZG0
	7DHBVi3iSixoQxN9Y/CoyT/fk9rYO3KaHrZd7PO/iFGqEhJA5QyWXi6v8VvmIdYhCkUEjipCr3VyT
	rmg9/gpKASxhGguOxKvOJv1PE+5jS4vjRgAcJJ0u4DOMIMw2B6Aou2ldfGagJwPcMKzTBWp2wUgYB
	rGHVmCAkNjPozJuCmeBfllL+o9tzNHywO0V6ozLfbfa3Q9GGi7K8hKgrgk5eqQ+hxJmoMfOOP6W4U
	fc84xOT1ZEILVx/ZSV77/TdnmuSziId1od81eib78rQTXTwng5YRhbns3Hp3+7UOdoC0APC8j6bgN
	1AQ/69TWAXua1y9Iujjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RPQ-0000G0-6a; Wed, 04 Sep 2019 09:17:00 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RPL-0000FN-3Q
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 09:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567588615; x=1599124615;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=PP2Afg5yUDKY22iaTPrCbZSu1AzLCBo5mDxsK7cDJHg=;
 b=UKUcqAdd+myHaZ4i7/B80hfFr6hzEod43o2dJ5ntNUsvwsbFDYT78ILh
 SwxVuWNTGeCWQG8xQjGKIzbkxD6rkdbYdmapA2Cmq14N7x7G1uCKAG/0t
 CQWOTEPhYRbDDLhBsEoddhpQB+mX5OVYZwiP36Ouc0jbxWPtobrrNlyuW s=;
Subject: RE: [PATCH] mac80211: Store max_mtu in ieee80211_hw
Thread-Topic: [PATCH] mac80211: Store max_mtu in ieee80211_hw
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 17:16:52 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 17:16:47 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 17:16:45 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 17:16:45 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Johannes Berg <johannes@sipsolutions.net>, Wen Gong
 <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVYu8BqfI75AhjWkCFjZRYnAho5acbPPdg
Date: Wed, 4 Sep 2019 09:16:45 +0000
Message-ID: <6d86b38a6ea947d5821cd8a90c649ba4@aptaiexm02f.ap.qualcomm.com>
References: <1567577743-27684-1-git-send-email-wgong@codeaurora.org>
 <582e0a7eef96bb7d97fee4bae340ded97fda86a2.camel@sipsolutions.net>
In-Reply-To: <582e0a7eef96bb7d97fee4bae340ded97fda86a2.camel@sipsolutions.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_021655_415139_E8D531E9 
X-CRM114-Status: UNSURE (   3.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Johannes
> Berg
> Sent: Wednesday, September 4, 2019 3:04 PM
> To: Wen Gong <wgong@codeaurora.org>; ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH] mac80211: Store max_mtu in ieee80211_hw
> 
Patch v2 sent, https://patchwork.kernel.org/patch/11129707/
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
