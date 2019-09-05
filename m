Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A3AA073
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 12:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGsXndW6GQo49PW3Y36/Hgqi/Wg4RRpXDaAIGpmHELM=; b=jz0SWwBhsZ44dh
	nYksmXvMg+eh53M6h205dVSDjdCCp3ZI11Mrjk0zQ33/KwYjaOwSL/UOXvnNSBII5MXqVLSfItip/
	sLtcBS05OEPjaT7cez4xJzJtATV9zr08q1bWP/r97eut0TX9cYjj/bpOWABvjp34xlmBB2TEl4mXE
	jdSWFifPxeNEdtpvO0NzQfDIh2abL9F3i20WuNGx7hiKr+jAzPlj083igHTt35rDODfTzAAUkUBFi
	7SJpTchTeAI3gE1iJ2kz5qXi5B8OM5opdzVBofqDdJbJtke54Boma3fzNLFNmdwOTWUV96Nqg/tW/
	Feif+shNtoChgZg6viyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pLY-0006Yr-8S; Thu, 05 Sep 2019 10:50:36 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pLU-0006YI-TV
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 10:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567680632; x=1599216632;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=rVn3Xny9R8JPc+zFOJCISKNCSjmBTjjXhYya3D/aurc=;
 b=o3wAOwoDXJ+GMbSyiNjzE6d/Obz/Bet7Fj6drAPyaAZJ4Hj0ucA9VYKv
 oHcZfDmLMgHZdVcn/zRZcIxcEa/wmwMtQoQiq8KgqAjT6H06K0FuuQ53S
 bdKyKjxs0FUIQHBKRcE1tPJSU9Am3lxxCfjTyZrItwYzjQ6R9u3qhN25C Y=;
Subject: RE: [PATCH v4 8/8] ath10k: enable napi on RX path for sdio
Thread-Topic: [PATCH v4 8/8] ath10k: enable napi on RX path for sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 05 Sep 2019 18:50:31 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 05 Sep 2019 18:50:31 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Thu, 5 Sep 2019 18:50:29 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Thu, 5 Sep 2019 18:50:29 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVYXAmp8mxVCKAGUqXejG7xPiQLacc7HIg
Date: Thu, 5 Sep 2019 10:50:29 +0000
Message-ID: <c816734498c349119c12c23bc8a4827f@aptaiexm02f.ap.qualcomm.com>
References: <1567416146-14403-1-git-send-email-wgong@codeaurora.org>
 <1567416146-14403-9-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1567416146-14403-9-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035033_218612_6EA6E5FF 
X-CRM114-Status: UNSURE (   3.80  )
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
> Sent: Monday, September 2, 2019 5:22 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v4 8/8] ath10k: enable napi on RX path for sdio
> 
Patch v5 sent with change, https://patchwork.kernel.org/patch/11132677/
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
