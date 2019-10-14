Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E2FD61C6
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 13:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcHgYqtIQQ6bOkD5LlUD+0YvYbsmyrI1AEO/d031Vjs=; b=e+On8OSnhYG8L3
	D9dI0jn8xvtTK59lReWDSETUbp0zCwXKn7XtPsWfX3ZqegAl6WUxzfWuDKD7Mz4SHggY++Exk+lG6
	TNAepnkxwWlhVg5L2ZXjWDQZPjvhC6JO/GEkOApbNuVaszfahfcbhk7l3vz4A8HUDJdE/pAsdhMXk
	xcZdmgQF+ndkIIrQef+ygEUIMMFMxpXeeJSw1hpzk5xDYi4HS2IIaR3wcqgpuBiv3MAXnYPDzRMOC
	uuB53xymTrSmYGjb0aKgADP8sUP6jdt89v/UEg+0b10E+Sstsz+HjwxZ38rjuIN3gKc4xB4BcICGp
	9G1xWMEFanses3ZIY6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyxQ-0000vT-KV; Mon, 14 Oct 2019 11:56:12 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyxM-00083i-13
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 11:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1571054168; x=1602590168;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=Mun65NHkwrpSXi54p910vbN/DRdianC6hu3rlSHVAYw=;
 b=TrofCPcJqqR0chjG+6itNx7ZDJ5YsLMdZ5wEjwxZPu5LEnk0jzs0lSIz
 fJZqMgo0VWLt2u+Se9U449Ma0wfgSM7P3s1IUXTl/TlBOi015ePoVxJ2R
 p8ZAESrYxuO8VgD41FW4kccWYY96kSGhVFvL2Eoz1k5egDJqa6jdlGBSU k=;
IronPort-SDR: eFiUi1o+YwMk8PiobaEj/lNq7RUfJUEeJKy3zzs3npb06PX1N9k+T8n30nDUvS8oeJdfs92Ggx
 6bM9p48I1DRA==
Subject: RE: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
Thread-Topic: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 14 Oct 2019 19:53:40 +0800
IronPort-SDR: dx6LspE/IYAIuuXNwj3FIVcbNI25nEfQU8I+7kdpQLyGSskO5kzbXfSbkL2lhdKMgQupxZas+m
 /b/qpktcq8xeQ4Ne1D/T/ehOt7ZzJcxq0=
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 19:53:09 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Mon, 14 Oct 2019 19:53:07 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Mon, 14 Oct 2019 19:53:07 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "kvalo@codeaurora.org"
 <kvalo@codeaurora.org>
Thread-Index: AQHVcfF/iNu+FJDGoUq5+5DyOmedXac7OcIAgAJ9LACAHHCTAA==
Date: Mon, 14 Oct 2019 11:53:07 +0000
Message-ID: <048a697517b4459087bae05dce4cc1a4@aptaiexm02f.ap.qualcomm.com>
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <87sgon8inp.fsf@codeaurora.org>
 <11062c4e1659ac759cb73af7d46a6db2@codeaurora.org>
 <7f5d822f2dd1f98ba26a8fdecb5dc011@codeaurora.org>
In-Reply-To: <7f5d822f2dd1f98ba26a8fdecb5dc011@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_045608_344239_642BEC4B 
X-CRM114-Status: UNSURE (   8.04  )
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Thursday, September 26, 2019 10:33 AM
> To: kvalo@codeaurora.org
> Cc: linux-wireless@vger.kernel.org; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp
> TX/RX of sdio
> 
> On 2019-09-24 20:32, Wen Gong wrote:
> > On 2019-09-23 17:29, Kalle Valo wrote:
> >> Wen Gong <wgong@codeaurora.org> writes:
> 
> 
> patch v6 ath10k: improve throughout of RX of sdio has sent
> new patch v6 only have 3 patches, the left patches will also sent later
> 
> Alagu Sankar (1):
>    ath10k: enable RX bundle receive for sdio
> 
> Wen Gong (2):
>    ath10k: change max RX bundle size from 8 to 32 for sdio
>    ath10k: add workqueue for RX path of sdio
> 
> https://patchwork.kernel.org/patch/11160247/
> https://patchwork.kernel.org/patch/11160245/
> https://patchwork.kernel.org/patch/11160241/
> 
Left 4 patches sent v6:
https://patchwork.kernel.org/patch/11188393/
https://patchwork.kernel.org/patch/11188403/
https://patchwork.kernel.org/patch/11188405/
https://patchwork.kernel.org/patch/11188407/

> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
