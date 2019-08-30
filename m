Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808A3A2CF4
	for <lists+ath10k@lfdr.de>; Fri, 30 Aug 2019 04:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K59GMjygN7TeFMAY+yjNm3EzpemTc6+Fd78DEDdLciA=; b=gHucpaobgcLtBo
	3osPGmZgVkyqX0QCMxJrOSqTTe61OodQIrh43PIBWgt4YW1b1g9ObmESZNm5jwOBjpRYT8RKxDOKI
	B/qdvvQTCWuzrcsSot6o8BXypgj6eIWtWbP4Zd/qr3SYVWn7mETT9CEgf08NGxxJAdrT0amcjR3/M
	9l4Z81GQVNDcRm5Hja4JR+AmWNVmqrcRsaJnO7FiDMCnvX3U6l/BzfH9HDXJ5+VoObF4KTs8dB4zj
	t/ry718HkzNx12OfY/SAHwN1T5Cpj5O8DKPk1xUf2h4ifJhH1JhTVX+Dtkt3JbnCD+nMyKuALBfe8
	8AWBUy8FaL4AuQcNVDxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3WyK-00075B-8O; Fri, 30 Aug 2019 02:49:08 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3WyE-000748-Ry
 for ath10k@lists.infradead.org; Fri, 30 Aug 2019 02:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567133342; x=1598669342;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=CbLmm34SBCymc715VwUv5ZIAyyI8bEd+tg2+bH4IjVo=;
 b=CY4mr4Z5hTG8WHL4dIcZ1TtFxGieHaMM4PXwRT3eI2fxw5COpoDAO6lh
 +x1/vwP/ALQdMjJIhW0/wOg9p2+7dV4FkjDTcY3JhrqEYY0vR3VOWRSLF
 UXUzG0edgA+bHCe5+LCAyaCsIac2oXuteXcYu6VDXsa7gbTAuc1vIbAzN Y=;
Subject: RE: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32
 for sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 30 Aug 2019 10:49:01 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Aug 2019 10:48:56 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 30 Aug 2019 10:48:54 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 30 Aug 2019 10:48:55 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXV9n1yvXyZUqCkmQKmsYyyv+JacS/7Ag
Date: Fri, 30 Aug 2019 02:48:54 +0000
Message-ID: <9821fb44c1b34b2890e0aa8b422d4c67@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-3-git-send-email-wgong@codeaurora.org>
 <CANMq1KAntBMo40jdv3T5k00EfjPzO1XvVdjL3oo2V9Eot1H4jg@mail.gmail.com>
In-Reply-To: <CANMq1KAntBMo40jdv3T5k00EfjPzO1XvVdjL3oo2V9Eot1H4jg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_194903_169236_82B32527 
X-CRM114-Status: UNSURE (   3.97  )
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
Sent: Wednesday, August 28, 2019 1:14 PM
To: Wen Gong <wgong@codeaurora.org>
Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-wireless@vger.kernel.org>; ath10k@lists.infradead.org
Subject: [EXT] Re: [PATCH v2 2/7] ath10k: change max RX bundle size from 8 to 32 for sdio

Changed and V3 sent, https://patchwork.kernel.org/patch/11122175/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
