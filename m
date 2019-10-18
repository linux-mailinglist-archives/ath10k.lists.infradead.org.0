Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAE6DBE65
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 09:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiVCMexhR4SpALOewoMEtVn6DVbOrtXhWBqEzYhcMrU=; b=EY3Jw13Iyc+zpm
	zDSWFliZojPQyrgn9xyVI7hzyPU0qxzVoIQ0DMCEF2jVivNqkNoEE0GFkT2hvGh78thKB6BUTNjRz
	WNzkuObCFWqDI0XpRiKqOjUyIqTZVRgn+ymGOWK9DcWhMtFhpUsn11gAR5FB7H3mzj2+UMarZlMoX
	cqdpTZdYmeQXqohMQEG2cYsXEF6+x9DjK+j6+k1k5BkIsDdCD4OBNyFT0f6idqdP6jfPYgRiIsgl3
	V3/I2OPj+bH/4g6xyxVwwW+Qkywoc1ebBuQN3xhbJz/ZFAIC2TA2e8zKEL9uYcWtDrvktg1wFIGpN
	OpTttq5fEMPD1eAmcIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLMkT-0003PF-Sz; Fri, 18 Oct 2019 07:32:33 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLMkP-0003Oc-Uz
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 07:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1571383950; x=1602919950;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=c1Z13+CwjbsZVMjbpUr1K4JixK1KqtG40lCJzoikBGs=;
 b=P2saP7Qc9HSc2LpGtb6FD9mkiv7MxhDb7GclxMD9Sv5jLxIaCZOG7c+Z
 Bs6AO3OWgFnpyUf5TQCEjYuE03ottH+hg9iLrUxh3kwaCQdjYgxcML+Py
 emeleOC8rrRv0Mkp3M69QwdQQCQMYt9JzYTr2CqLNpHKvljqNrTz+ZmPO 4=;
Subject: RE: [PATCH v6 0/3] ath10k: improve throughout of TX of sdio
Thread-Topic: [PATCH v6 0/3] ath10k: improve throughout of TX of sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 18 Oct 2019 15:32:27 +0800
IronPort-SDR: NJ6BTczjvaxbwMsG+6lkJorgaIgazj1CSNLxtf4cx6/CLsQJKutKFZKQ9UMzSKg/0/0QzszFSO
 hvXVrkXy9Q4nnv5kId6L8BlcmY0oY3FvU=
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 18 Oct 2019 15:32:23 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 18 Oct 2019 15:32:21 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 18 Oct 2019 15:32:21 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVgoV9jFQGH+/mB0aT0w8iTqCe9KdgBu1w
Date: Fri, 18 Oct 2019 07:32:21 +0000
Message-ID: <242a332d3a2744ad8d17186e57540984@aptaiexm02f.ap.qualcomm.com>
References: <20191014114916.7519-1-wgong@codeaurora.org>
In-Reply-To: <20191014114916.7519-1-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_003230_278047_89D3BA86 
X-CRM114-Status: UNSURE (   5.04  )
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
> Sent: Monday, October 14, 2019 7:49 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v6 0/3] ath10k: improve throughout of TX of sdio
V7 have sent
https://patchwork.kernel.org/patch/11197611/
https://patchwork.kernel.org/patch/11197615/
https://patchwork.kernel.org/patch/11197613/
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
