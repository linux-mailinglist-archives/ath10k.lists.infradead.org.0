Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49103A2D06
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkbYAjWgVx0utfjV0+Ou36pHx4A4rHxWksCIn4GdBLM=; b=HoiGKViVc0Ho39
	1LkJPF3Zc1RQCo3sYoGhZLprm4lM3kubansL6LHrFqdVc+y5QmoEA8MWW2vqWNax75JS/OT4PIrYm
	nieAzc5mAZILDlJrEQDEZqLRoDpAsr4nSpkVcB9GUVHFS2D06n7NXySv3zdPBjCJg/Vvj3Wtw1VTo
	eivuGBxyzt8W5potnUkXGMAqKavHp+F3dwC0bXGRHGD+9qo0IXnDOz+Pp7TwnFbmVLFO64Z2JbFlp
	VmY3JlLWvX3443mS3Cp5R7EQhdFd6Td4f9JxlAjE7yAVpJ6fzRQFYQMhs8sncLUeLbNBfoRXqvnJi
	rwV15Fa0bee5w/J9lf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X3Y-0000q5-Qk; Fri, 30 Aug 2019 02:54:32 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X3T-0000pX-I2
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133667; x=1598669667;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=ombiV9o10Jt3Chz64WGOIxId9Rw7x93r/0lS2evzSrs=;
 b=AS4ZQrDa+dmYtyDKDoCx4eb64OGtF3h1MN7nCTTMglKtlSAkr3uM+9Sf
 2yRUNwIgiAGQYsaWMt1xfVxp34dXVapY1s9s27N1vUyCq7aRKEa4THS6t
 vPR/ipreUk0VxgsK2WfWaLljQgG4dWy29RgKSGHePWia9kgC/na0ddxm8 g=;
Subject: RE: [PATCH] ath10k: add fw coredump for sdio when firmware assert
Thread-Topic: [PATCH] ath10k: add fw coredump for sdio when firmware assert
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 30 Aug 2019 10:54:26 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:54:25 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:54:23 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:54:23 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXNAbtURsVnEXnU268W2eITmuOKcP+xkwgAMHkbA=
Date: Fri, 30 Aug 2019 02:54:23 +0000
Message-ID: <7c93ebf1372c48ee9b72ce10d0533846@aptaiexm02f.ap.qualcomm.com>
References: <1566371979-22730-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KDGWh6Cc8akX_1g-n_fYe_2FHrpgnWf=sLxFnME7t5vBQ@mail.gmail.com>
 <8f0f2930e12a4dcabb69c13affe89a31@aptaiexm02f.ap.qualcomm.com>
In-Reply-To: <8f0f2930e12a4dcabb69c13affe89a31@aptaiexm02f.ap.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195427_858165_6E7BA653 
X-CRM114-Status: UNSURE (   5.62  )
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
Cc: Brian Norris <briannorris@chromium.org>, "open list:NETWORKING DRIVERS
 \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Wednesday, August 28, 2019 1:00 PM
> To: Nicolas Boichat <drinkcat@chromium.org>; Wen Gong
> <wgong@codeaurora.org>
> Cc: Brian Norris <briannorris@chromium.org>; open list:NETWORKING
> DRIVERS (WIRELESS) <linux-wireless@vger.kernel.org>;
> ath10k@lists.infradead.org
> Subject: [EXT] RE: [PATCH] ath10k: add fw coredump for sdio when firmware
> assert

Changed and v2 sent, https://patchwork.kernel.org/patch/11122827/
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
