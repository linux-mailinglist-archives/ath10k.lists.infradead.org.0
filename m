Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DC1A2CFE
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwFnoZgkoc/I3ZhlQ9yEpIoX8T4LkGrxyrGC8UxWuyQ=; b=b+9XS4ArL52HTn
	/daHnFDP3AynTrXy9BcixqToeJMwD2f4tlIq7khdm6R1+yZXVM02mx6kXryNdxAxvEnBrxtLPdd+f
	3pcrKT4RPjSRZKrUJSK8F9rMwj8NP/o/TTaFIAOIg17btkT1mVsR4Fw+mXiIRDWzNqSGDZvSinm0K
	aGZ7hb6Lb/5OzL0mzbPWNUlhPGRT5NvfUa28cGtWMWp/hDgE9xU7B17VvEaAF1xqTqWZIagB6FRzv
	PYWfI5FxbYg7UDoDBASha+7oaEbAJsPck+H0mJHIBB9lRVlCevYcxyij+DrIEZb2Io55cemXs2Imr
	CSZekDW2wQb/YTNMcwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X0r-0000PM-3K; Fri, 30 Aug 2019 02:51:45 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X0l-0000P0-UQ
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133499; x=1598669499;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=mji4E8HLRAVVgay0BufnntHbSpXKpC2+0GLTt3ptbDw=;
 b=NofdxpdYbPJo9C4BDdEQZEgQM/xQo/iLQKiE5FURHNZlwBk/xE1WDFog
 2NtuFeXRICuvW7ZMlhUkcBoKygwXpU/a4dmSsraP+GkhkBDrMgOfsqXEF
 AoURt8jKgVvZG+BpICa2TOAIqzg37jCNDd1H8byNKUZxI+CncUaMBMvZL g=;
Subject: RE: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
Thread-Topic: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 30 Aug 2019 10:51:38 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:51:38 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:51:36 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:51:36 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXWKa4RLo4LlR4Eu0hbim+24wL6cQhk8AgAJ6ZQA=
Date: Fri, 30 Aug 2019 02:51:36 +0000
Message-ID: <ad1a5a4649aa49a78021a9f9628b17f1@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-6-git-send-email-wgong@codeaurora.org>
 <CANMq1KAQncoZ3yX5Sfsc5tR8z9tJyA=jFF4_F1K=hLRe51OD4g@mail.gmail.com>
 <2ebd81574092476a952ddeb671d1bfcf@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <2ebd81574092476a952ddeb671d1bfcf@aptaiexm02f.ap.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195140_245340_0E3ACE62 
X-CRM114-Status: UNSURE (   4.77  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Wednesday, August 28, 2019 9:03 PM
> To: Nicolas Boichat <drinkcat@chromium.org>; Wen Gong
> <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] RE: [PATCH v2 5/7] ath10k: add htt TX bundle for sdio
> 
Changed and V3 sent, https://patchwork.kernel.org/patch/11121539/ 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
