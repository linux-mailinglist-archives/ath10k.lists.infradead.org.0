Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9338A78FD
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqgjM5lDtaQu+6Tp8TBieuHJ3viSS6bk+PgRmnSJYs0=; b=K+7wDOcgrXqHQ7
	1n6z0lZorLtAGnpX6I3l2tUVbTOhRQkaAPOAijSHPTzxUUjw027YV8aY5CyYVcDsXILBwmZ5HtwWc
	HtO3Mbtq14rU+5YIaaTT7QuVELWGGQnPZQ5vJ0807RMARqUpSwudDPmBqaa2XWIhVW69qar4HBhk6
	dp9WMuEgEFr75efk4JAiKdMlteOL7TjJ9kKAfGFo3sCkFGC5gLgmXuMH99k5kCDpvaMi9QdH+F5yJ
	JC9cCZt4f95QwjhC5j4YyWA/VjZGEYquFbnodr1WBXOLpERQdWaBpAg9T4w51ToXa6gH9lOP/O/6A
	nKqMtM1EiW/eiQpNyuEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LH1-00080e-1z; Wed, 04 Sep 2019 02:43:55 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LGv-00080F-NE
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567565029; x=1599101029;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=tE0hzGqmUb+IhdLoJke6bxYMECXMzpc44f4NTFLuDr4=;
 b=rNmBFB6s8EkFUT0CXPG5YuRq1OX0Rq763jTClE8+h7L+Xb65mMru/oVb
 GerZV4MX92ljppc9m8GjpPbEYTJCyAg65nkvX9HhxBHjcVtHTzMT8AmCU
 cMxTboW77TIa++jgPQaxoPcwxB5TPgDeRuw597ryjP9V341GTgsD+A3zO c=;
Subject: RE: [PATCH v3 2/8] ath10k: enable RX bundle receive for sdio
Thread-Topic: [PATCH v3 2/8] ath10k: enable RX bundle receive for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 04 Sep 2019 10:43:43 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:43:43 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:43:41 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:43:41 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXpJbO3pYJqY7nEKq+wmJQN5yRKca18kw
Date: Wed, 4 Sep 2019 02:43:41 +0000
Message-ID: <c121be75ba8f48d496d5a4fce7354059@aptaiexm02f.ap.qualcomm.com>
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-3-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-3-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_194350_039024_9C1A0505 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
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
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Wednesday, August 28, 2019 9:16 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v3 2/8] ath10k: enable RX bundle receive for sdio
> 
Patch v4 sent, https://patchwork.kernel.org/patch/11126223/

> 1.9.1
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
