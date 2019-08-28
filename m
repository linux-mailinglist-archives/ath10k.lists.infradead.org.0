Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C250D9F964
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 06:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ4KVpP/PQiLxkiroPWsxerLiuUwOf32wQY5P4mQgJ0=; b=tWqjpaDQ0B7EIO
	Qi7RR6ZZGpxU1+MnWLxHxBvm0dExDiQg+bSmVwhlbVM9+7pq/brctLxUGlz6IFng44xNBYat7gGq0
	RanFI9K6rTT4HRLPtldbx0WnHaBIRDA59dVjjSjfHMSkZhND2q1u2r9R5v2CTg6TeKqIXoL4Z9e2Q
	H4cGxSGX8PlRftBMNiWqsdK3eIpZMhu0et0jRK362k0NSW0PCjLizUhgiQ2LBudNC+1xCXXDk2/JE
	0ctOxkYXd8990ylFZvwFF1cKhiZEybg5LosA3KcePDzX+5+GNp42LXYMfsABn+uPkvF2RJ1vBrrQ2
	xeShv6l1CPsQEH8p7rNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2pZM-0006Og-RY; Wed, 28 Aug 2019 04:28:28 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2pZH-0006OL-8B
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 04:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566966503; x=1598502503;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=54ndn3Y+xgm705coUJ1Zh4Fde3e/6W/oQ4h4TILNYmU=;
 b=JFpNmNxMKzA4Mrko95+suGyIW71H/RlPce6XURc/CBYtTnNr/udaMEzq
 fVtTCXmS2m9Bv5Hl6sYlpUMMgUTIuatvwUF9tv+e0dWu8xj06GqN1Mjpn
 VD3aoqOEGWRIy1O+rrcshfFQvaAtffY3nNetrv9StVQUx9yJy2TUryEzA 4=;
Subject: RE: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
Thread-Topic: [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 28 Aug 2019 12:28:20 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 12:28:16 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 12:28:15 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 12:28:15 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXMb8dVUkNR/oREm0Z8ZZqCgWB6cP+Dxw
Date: Wed, 28 Aug 2019 04:28:14 +0000
Message-ID: <1f38d1f5973b4946b36086c2be20dfef@aptaiexm02f.ap.qualcomm.com>
References: <1566903707-27536-1-git-send-email-wgong@codeaurora.org>
 <1566903707-27536-2-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566903707-27536-2-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_212823_553612_BC40AC75 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
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
> Subject: [EXT] [PATCH v2 1/7] ath10k: enable RX bundle receive for sdio
> 
v2: fix incorrect skb tail of rx bundle in ath10k_sdio_mbox_rx_process_packet
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
