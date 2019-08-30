Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC13A2CF2
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+DAPVS0j9LotNH5GQ7hz//3TP/6R7OJFKYNW83AR9A=; b=dMmNIk3BLtJvPi
	wLwqKQ55TU2Va3e0nqQyIMUPF7cbfunOJQr3Sx8isQ+zTN38xifPrOH1asjKJZFhATepLepCVOlLT
	TfmvVRN90hrMoSvG2WkKXksE66Khqz+UNKo6/ZCgHfwhyIk4LkEvdAp/3BncRgVJGY5Ok+27Xw2w2
	LZfXmNjWFPzw+V2ePVus9hNIcbRKny9QFrrBzT6h7D0e+UTFD7kwXh5HNamZdgSDGNyGIRw8JBDVP
	ACmV1sJg8EnuLS+IPRZO+gchQbLPEB6MlWr6vMw++dFRfiU+lgJTdGLECXRuEwI4G7DX7Aeimc7R3
	3os75vSvTueBfxxFhoAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wy9-00070Q-Ab; Fri, 30 Aug 2019 02:48:57 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Wy4-000709-L4
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133332; x=1598669332;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=H1+UOtbGh2bVIFzS+y3QK+W5ZfrUQI2sVwm8V4/sNW4=;
 b=ZD8NMzz/2zaFaDcif3S2sPLV2VdhrGqtfnEwuCLYSed+wlECHUWZ5a0j
 WYw25SjvSyuuB0hCq/mhHZ/WmGA3t3JqRx3YlMCAnH6bzJ05bT7P88a7l
 QFXQ/cHvEDyDO2Via4WQO193CUzGrF3Iww5OZNEqizmKJKg6jS5kMpFz3 E=;
Subject: RE: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
Thread-Topic: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 30 Aug 2019 10:48:48 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:48:43 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:48:41 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:48:41 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXV7JIoVzfwp/nke0rpJol9BC7acS/8Tg
Date: Fri, 30 Aug 2019 02:48:41 +0000
Message-ID: <fce5391f6279436fb3a2a1d9b408c70b@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-2-git-send-email-wgong@codeaurora.org>
 <CANMq1KBLX3rKs6q2SmKhMctRAKF71y0K3it5kTfR0xG5Qk8MLg@mail.gmail.com>
In-Reply-To: <CANMq1KBLX3rKs6q2SmKhMctRAKF71y0K3it5kTfR0xG5Qk8MLg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_194853_000710_F2A83BDC 
X-CRM114-Status: UNSURE (   4.24  )
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

-----Original Message-----
From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas Boichat
Sent: Wednesday, August 28, 2019 1:09 PM
To: Wen Gong <wgong@codeaurora.org>
Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-wireless@vger.kernel.org>; ath10k@lists.infradead.org
Subject: [EXT] Re: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio

Changed and V3 sent, split to 2 patches
https://patchwork.kernel.org/patch/11121751/
https://patchwork.kernel.org/patch/11119355/
_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
