Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6304510E70C
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 09:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9syXUyEF+ngJIzeWWqEeQD8erC4qCX9w5u5gWTbDZs=; b=sn41roFJEsfIEa
	fjAbyNA11nD9E2in1Lw3FCQuGflSTgTMY1RlXKebTQSz+CeCEfev1n3Fqeix9tyJpI11+nxs/+9Da
	JCpS+cK9/DuaJpWw6suL27vyOVlLf1khVWIaAv44HsoDwZpPKGUJjd+1IpA6yGwgbY87ZkJ5q33iZ
	j4e8ktrPqtzZ6N6kz9YBIccoewIX1wmoycqtewqSNJ837DU9ASuq3jIi4gQplvCBusUbBNMKIsVuU
	0UZS7IGKRKu54Fu22Xs0udYoJ655lSGXGvpQ+TmYxkDBi+A/daG8L1Laj//Gk8KLL4QzwuKuzheMQ
	AfmmK8MQ6BO04Z/8flQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhOX-00072T-8l; Mon, 02 Dec 2019 08:49:25 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhOU-000724-43
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 08:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1575276562; x=1606812562;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=mY4Mfzi4wHFg9TJbIm3FYqENG4Ux0hXcgw/UJCa3ao4=;
 b=xQvfUfA4r5/aI6V/aO/K+/G1ZV3VPJ72uT+A2uWyW9QVsB5DODzYoyIV
 8kn4QGwrLCQxMszPP66iKL7b6yJeS/gSORsPjMGDjYDH4li/Xuc0iIS+P
 rBUvTQwUGStckuWe1OxKDUEb913ZVSjzjqhvz6EVpD4tHddh310nva4kk 0=;
Subject: RE: [PATCH v7 0/3] ath10k: improve throughout of TX of sdio
Thread-Topic: [PATCH v7 0/3] ath10k: improve throughout of TX of sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 02 Dec 2019 16:49:10 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 02 Dec 2019 16:49:06 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Mon, 2 Dec 2019 16:49:04 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Mon, 2 Dec 2019 16:49:04 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVhYWo2dAcydoA60KRzRcGJ7x5SKemz1QA
Date: Mon, 2 Dec 2019 08:49:04 +0000
Message-ID: <5a0a6348feea46ae93c055189168d41f@aptaiexm02f.ap.qualcomm.com>
References: <20191018072750.10372-1-wgong@codeaurora.org>
In-Reply-To: <20191018072750.10372-1-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_004922_428813_43556E58 
X-CRM114-Status: UNSURE (   3.27  )
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Friday, October 18, 2019 3:28 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v7 0/3] ath10k: improve throughout of TX of sdio
> 
V8 sent:
https://patchwork.kernel.org/cover/11265701/
[v8,0/4] ath10k: improve throughout of TX of sdio 
[v8,1/4] ath10k: disable TX complete indication of htt for sdio  
[v8,2/4] ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024  
[v8,3/4] ath10k: add htt TX bundle for sdio  
[v8,4/4] ath10k: enable alt data of TX path for sdio

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
