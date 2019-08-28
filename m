Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E359C9F967
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 06:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CkTfMABNGV97a+0Hw0uT++JSiDH6VO2DAi6eAFMYqI=; b=pj+5r6oqQU1blY
	YB915rvD7g+G2VaPwddWVxp3rGFqaIiNvN804Fr5OhEwE8NZoVRuQlu7lYjmYOfe7WGba3YdjlX15
	8tLlzO6nLnQOz8HCA0Vi/4C2QqGX+QxDRsoqqrYNHiMV6mA3c+1FN2DKUbld3cUdC5IK662I0JDLu
	OV+PvbkgHg9+JC2MRud1bJ77yoa8A7/KwGhdvxmUVYQg0r1ML28bg4gLgaG82SR5A8RgQ7urcMdGk
	3xagkgIQVGx9WnZYgyijc+cRrGbavfTvYO+dadfEMqJZIWDBH9tCMCVOiA1fYUn5GlvQsKOLgDkfa
	JncwGky5JndqD3wYHZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2pZq-0006UM-GK; Wed, 28 Aug 2019 04:28:58 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2pZl-0006U3-LJ
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 04:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566966533; x=1598502533;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=31cRo7XeATcd5d/W5qUHoMufFBS/JEFIh50LAfWhg0c=;
 b=stS/vL4QGisn0ZuD5IWVctvWUr48Oue4hYrBkac4eprVnN9tXnvS3P5q
 nruji1+kL1Cekk3xnoRu9zuioWnYFRNvJBFelgsFVVNBlpVwlB1TfLW7w
 8JZ90lGeR/pH4PJ2WN2kE94ag93NCnwiIxw76Q/B4qeqVUebEFTMJlDMR U=;
Subject: RE: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32
 for sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 28 Aug 2019 12:28:52 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 12:28:52 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 12:28:50 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 12:28:50 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXMcAaQNCTGrwykaR5PufkoN8wKcP+IBw
Date: Wed, 28 Aug 2019 04:28:50 +0000
Message-ID: <63ee1a9d35474ecea7b5490d4c534fe5@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_212853_957106_3BAA745B 
X-CRM114-Status: UNSURE (   4.64  )
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
> Subject: [EXT] [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to
> 32 for sdio

v2: change macro HTC_GET_BUNDLE_COUNT

> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
