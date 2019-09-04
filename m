Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2251AA7917
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YBPhpfLjbVRmfXkodNRNv03Avz8pT04CCREOvvwCTE=; b=T97R1Hj5pjBIcQ
	BhvOthbJJOt1T+DiHFDQe65HsFe6lFQ/yg6RO35ngSpe4od0+jRtrjpVjM5GjvSrIewplJhzP4y3r
	mhYt2TFFpSyqJCRlYCy+AqwLDsP7Kdlmy5DuO5VkGIQSTGc52JmHxnkmmdsgEXc31MPommHdyfSl+
	vmY7pcm90E580mk+YlpB5hd5Nlw7HRQJinh3R043gY3zBz7qCOxueIh9/Ee97qbDr/yGmzDYQ4itX
	lWGJ1Yx2GURrX/0tUPyVaCHBXs/hdAdJhJMVhhHKIRDhRox3f7TnCzgEc4n1QRuSQdUPxiY2B0CX7
	U2dTQq/AzJp29QUr/N2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LW2-0004qL-OZ; Wed, 04 Sep 2019 02:59:26 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LVx-0004px-Gb
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567565961; x=1599101961;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=mQ48EkLJWXrvCTOwlvDWUMrzn+gYlesewO6sZQIn9es=;
 b=JobO8EkFDeUEFmr168JvT1T1FpZPjz1NSWLznqY6CTC9+7Gk7m/tBfaG
 8hpNnItBx7PjommLxAMniJS60m2en+BgBSdMK8GBslcM8htrYdWiURcdj
 Fe+Z3PpqDkn4fivi4kEI8ouROSd0kbQ8aTd0y5olRG+jRFiXVO4Y/RzZQ Y=;
Subject: RE: [PATCH v3 8/8] ath10k: enable napi on RX path for sdio
Thread-Topic: [PATCH v3 8/8] ath10k: enable napi on RX path for sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 10:59:20 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:59:19 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:59:17 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:59:17 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXuHgGrf4JK3oFUeKyrj+pnzU16ca25bw
Date: Wed, 4 Sep 2019 02:59:17 +0000
Message-ID: <151900cc2dca462788bf2ccd39d9e989@aptaiexm02f.ap.qualcomm.com>
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-9-git-send-email-wgong@codeaurora.org>
 <CANMq1KBXWydTR50fVqF7ks5gBTpUAS8Ga-8_MzeMGAknnyoVzg@mail.gmail.com>
In-Reply-To: <CANMq1KBXWydTR50fVqF7ks5gBTpUAS8Ga-8_MzeMGAknnyoVzg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_195921_818789_1736EBD4 
X-CRM114-Status: UNSURE (   5.07  )
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Friday, August 30, 2019 11:20 AM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v3 8/8] ath10k: enable napi on RX path for sdio
> 
> On Fri, Aug 30, 2019 at 1:50 AM Wen Gong <wgong@codeaurora.org> wrote:
Patch v4 sent, https://patchwork.kernel.org/patch/11126239/
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
