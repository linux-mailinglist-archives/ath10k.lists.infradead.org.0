Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366D4A78E7
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWGic0Uh6wvTBXbXmqi5OrLOdOXUi20RL/v2NmKVeRY=; b=fBDSZMqPWI53qO
	uc7jWeLScmJ4y1iTZnrQhTSqzInYe5nSknrdrl8dBu5VJWTMkwi6/KN5qaLRLYGx7VefldwHJ21j0
	qm55qukrRcHUOykgsMdOV+SI0Q3IzmK5DLWWrtJFC8bDn/VVg/DQPhe6cCngAmEkqfX2mnhPcIBvD
	dp8Qkq5eeFmZSh4Zh1iOzwSy7I33dOxVEbpho4Q8e9j1n02P3S45BDKheyMTbm4LluBR4piX4Nvmb
	w+urvyXylOpBnAhHXTyrusbEoeEZraat45LIKHq0fePXHdxzXqD9okTq37UOWHGDT1Tw4LTzABqai
	ymZ7wouuGrNpptcnbgEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LAj-0006Gy-DZ; Wed, 04 Sep 2019 02:37:25 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LAd-0006GB-TE
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567564639; x=1599100639;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=g9u/yU9+0rtxWO/CVuWR2Mu+vWnGorb9YD6CCHbIVs4=;
 b=cvJamroVp48lUPo2URku6EBfladuZicSzNCbIEq4kKpYMPbILICWx1Zy
 wuI2ELrwWIDMNHjzqDtZ7jeNnMccxHnxgMNStqWm0uOrt0iTyjvA6ECVj
 dMWgkqvYXf8uNyPlad6up7nx2qUpqZ1sbIw1aJ6KLjyPRjr6/1wPimWjb U=;
Subject: RE: [PATCH 7/7] ath10k: enable napi on RX path for sdio
Thread-Topic: [PATCH 7/7] ath10k: enable napi on RX path for sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 04 Sep 2019 10:37:18 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:37:18 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:37:16 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:37:16 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV05o/A96nV2nAk2Zzc4nCVwcnaca5I9w
Date: Wed, 4 Sep 2019 02:37:16 +0000
Message-ID: <2f1d0d1cdd6d4f9097304d52ff3d3c98@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-8-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566302108-18219-8-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_193720_207327_8333E8E8 
X-CRM114-Status: UNSURE (   4.09  )
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
> Sent: Tuesday, August 20, 2019 7:55 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH 7/7] ath10k: enable napi on RX path for sdio
> 
Patch v2 sent, https://patchwork.kernel.org/patch/11116669/

> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
