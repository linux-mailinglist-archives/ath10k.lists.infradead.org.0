Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79359F969
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 06:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lLfuY4Jb4D6+k2P50y3k+yxuqHh1ILd9IUscZfv2hM=; b=OWdnd+bvJFbpSZ
	b4feHVF1erNBfzoN279B2cMkn2JlQKmWaK/ZIvI5rz/O2NuY0oBKLDSesoUPBVHp+NTyi8BSbDytF
	IF0Uwas67D9iWOb2mN5tVl299Ga2XYvfYsFiprRLJqT0gVvlsgIsgEPzS+wsTP9lym0eKnmcUvjHM
	eL27aq/j8Fe+oZK5f773tEszmeH/Xh7cIITHU22BIyQ7cH4+tBvpEjM5L1+yZh268EVoEKSy9V+hW
	1FF0fwuhP8pktgnBOZBO0ysAQm+XC0TTVL0XmXiz4En39loz5k3uPDm9+4Y1QllHAHqPkHnlxy5Z4
	1r6PkQxwvmCV0jKEdB6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2paQ-0006a4-3c; Wed, 28 Aug 2019 04:29:34 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2paK-0006Zk-9W
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 04:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566966568; x=1598502568;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=wLV1kSn7JGBRMEYFyS2axcQJbSvHj8cdThEb8IJFSNo=;
 b=EUSnjLgYdZcl0zoYdpOQLmrOd3lyDs1p8g4EQM70XP/jGE2A5Mwe256g
 5jPZZpDnOKEhdsnk8jkIjEsVG43GuaFHIT4OjaAbQeej7dHrnarAbOYZN
 UISQhW3ka3T7FB0JJZ4OISpiThiJDnSE8egdze3Cenh/hpWJ8VL8EU6G3 A=;
Subject: RE: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Thread-Topic: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 Aug 2019 12:29:26 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 12:29:26 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 12:29:24 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 12:29:25 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXMcm/tkLK8iMXUGNx3Qqynvy0qcP+K+w
Date: Wed, 28 Aug 2019 04:29:24 +0000
Message-ID: <c9948e59a395437d8fa2c0132467af43@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_212928_588139_449DD591 
X-CRM114-Status: UNSURE (   5.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Tuesday, August 27, 2019 7:02 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v2 4/7] ath10k: disable TX complete indication of htt
> for sdio

v2: change some code style

> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
