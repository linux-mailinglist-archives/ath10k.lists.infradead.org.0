Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067FBA78F8
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44pbsdzE+1YC9Dn3AXmH+X0rufgYl7JT/WMloiMoQmQ=; b=GQcdL1v/JO7pkk
	Htm0/QW72BQj+AD5k45Ri0DGOYJv6O0zLQ0QRgOdWtUq5++yZibHiJv2sNyCPHW2bmMzy6t0/6W0d
	seY3JrqIV1nUxXO42oXa7NzmZratAfyVfkg1f8hx1m7+m2EwITJfLk0UeXH5bmVFQZPI7sFXodU9X
	38j+AneopaTMuQPrV6fvek38wIF4rwW7TRd6FDm7pRWRTedaY0kjI1KzrQlmAT2BjItdpoOp6NP2B
	1sJL/G6fCPVUoN9Mq6elVgM5hfZe6BBZnRMjy/nAPaf8CYh3ypIpMygEwLfoZHTMPM/PfrayfS98f
	6jYtPRydR6k3djSS7y3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LFh-0007jH-CE; Wed, 04 Sep 2019 02:42:33 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LFc-0007id-55
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567564948; x=1599100948;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=tahHub3A3CrOCN83btFmZPwBPdJ6HY2evmcMNOJR64A=;
 b=knvEPhdN9fUiMCluQdbKjkINZL7AvXQzWxYhLyrppSu/TIyVCHNmCylQ
 NjxcwFttcJbPvu9a00XggkpVkgzb7nq3FLjVLAfKMY1R091OXP4kaBQRs
 PmxGw0eq0dHOdU6llViNRK34AF9xcZFinyKbMkdR5fKb8h/GasNB3jBuL w=;
Subject: RE: [PATCH v3 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
Thread-Topic: [PATCH v3 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 04 Sep 2019 10:42:26 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:42:26 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:42:24 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:42:24 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVXeCEU97UkUvuoUuvGkWuz3BdXqca2MaQ
Date: Wed, 4 Sep 2019 02:42:24 +0000
Message-ID: <f56d38971787410f8518e4c2c7964908@aptaiexm02f.ap.qualcomm.com>
References: <1566998177-2658-1-git-send-email-wgong@codeaurora.org>
 <1566998177-2658-2-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566998177-2658-2-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_194228_472188_6C544A81 
X-CRM114-Status: UNSURE (   4.82  )
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
> Sent: Wednesday, August 28, 2019 9:16 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH v3 1/8] ath10k: adjust skb length in
> ath10k_sdio_mbox_rx_packet
> 
Patch v4 sent, https://patchwork.kernel.org/patch/11126221/
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
