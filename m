Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94443A2CFC
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q1R9WVHjNfXzm9H7fREa5luUfG1CIwMF0erYM0w1Ic=; b=hPNYowMQDiZ/9C
	VH8iY5unQeEQ3CtgA+xcD9YAOoKvo9iZxixcxHPoQUiAvNo7Ymt6wu3e3D+JTohdVcVy0OkGfjihi
	QyllP42an4Eb0U8w+E/E5OdaupH8YVoOwdSSzj4SdaQYlyYOao4Ry/l810D8lKij4RovMzlquk5A+
	VrESKH6T4n1999guIUq6zLzc1d2Nnz7midE+7bpTK1PnBJb1ZKT7rPUF7rze8mmB2JnTe9aQUJHaR
	mtRejM1rGOaNhkiAFgrwwqUVc5YE9gHcMQACbmsAuk9d8K20kmg3re5Cm01Bs7PSf4DxWb0+ll31R
	iAleIZoIdLcorcDItiBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wzz-0000ID-BH; Fri, 30 Aug 2019 02:50:51 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Wzs-0000Hv-Lo
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133444; x=1598669444;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=qLwbLD0yKNm5gv0eYaOoOJ/mznBqupHwJ604VanYmw0=;
 b=S9y0ESrVuoGbKpfcT+aRiee0uKcT7voptrPnlhgvCaJFp7hkImo8rJ2j
 lCIa3c5H8tzSG15zXycOL19Q4eYFbskliWpRuyjsNNqfD9lE8ep0RPSgO
 RkmdrCtb4Uo961dtluKVIV5KuQrVN2Uq32K4bZzWrjVnUg4va6U3f2eKC M=;
Subject: RE: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Thread-Topic: [PATCH v2 4/7] ath10k: disable TX complete indication of htt for
 sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 30 Aug 2019 10:50:41 +0800
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:50:41 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:50:39 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:50:39 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXWFSQ/SJykVh+UihzVRM6dfs6acQhZzQgAJ664A=
Date: Fri, 30 Aug 2019 02:50:39 +0000
Message-ID: <9d1b5a99e4bf403090e0f7d2533a6cc8@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-5-git-send-email-wgong@codeaurora.org>
 <CANMq1KDeQaJWYiAz=P9pKm0_seNmtnEHVgt9T0-=40Ew=zLs0A@mail.gmail.com>
 <d97ba89eaee24e07ac14c34fca2ad46d@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <d97ba89eaee24e07ac14c34fca2ad46d@aptaiexm02f.ap.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195044_968389_40D6640F 
X-CRM114-Status: UNSURE (   5.05  )
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
> Sent: Wednesday, August 28, 2019 9:00 PM
> To: Nicolas Boichat <drinkcat@chromium.org>; Wen Gong
> <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] RE: [PATCH v2 4/7] ath10k: disable TX complete indication of
> htt for sdio

Changed and V3 sent, https://patchwork.kernel.org/patch/11122177/

> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
