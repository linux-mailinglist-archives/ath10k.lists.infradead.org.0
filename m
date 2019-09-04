Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200CEA78DD
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 04:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9ANLF4G1dCw4WgaT8X9l/KGJPJPwD9AGjKYzUtzEQA=; b=A8+/2DS3BS+xJW
	v53dIucaWXAEesmDoIYQgXgmiab0rfth8ccHblD8QDPhBS3HJEvFfl620HIsV4S/KXYtNSfnEK0bc
	JIQuTtToz7wFahKH7QQ/s8EXD/mWK6YzeGShXXFdXhqNV2QRv9G5Z0WB+ILGB3I87G6mpoeXftAdS
	A5uKNEYumFGwTp0bmDsecNlPevow410aP/TqlXbntkSEic2uPQ2vdGNYV+t7eRoF9Ug69f7rtHh5b
	1ypwkbzMj0vSuPCqxX3WfzjV1Y+39UkQTt3JWFsq/QZISAi8GaTT7CEiKy0cDNy7EUvVmaAPCpAcP
	vmTIhjzSOWDLvB+cKCLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5L9f-000685-HF; Wed, 04 Sep 2019 02:36:19 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5L9Z-00067K-J8
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 02:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567564573; x=1599100573;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=690DLbJxVsbxOExZq8IUhPHXvFBmzIqUtcCG05hSjww=;
 b=n3WzH5fUaCCj2jz6JpAJKuVXT4+xItohuApk8KB7pTM/4aGj8JjxXf0X
 DrFvxv1Srr0F7QWjSeNYyJ+Tx1ndWr9ymc9JIa/K6cQbC3IInnNDo4C60
 Oe8Av0Mj0xMuWmrjoRuybvz1cdLNr9MEK0Hw51xSUh7dU/lbZbvJcdIb1 I=;
Subject: RE: [PATCH 6/7] ath10k: enable alt data of TX path for sdio
Thread-Topic: [PATCH 6/7] ath10k: enable alt data of TX path for sdio
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 04 Sep 2019 10:36:12 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 04 Sep 2019 10:36:12 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 4 Sep 2019 10:36:10 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 4 Sep 2019 10:36:10 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Wen Gong <wgong@codeaurora.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVV05f2gRGX/2790KPloZXhaSku6ca5EUg
Date: Wed, 4 Sep 2019 02:36:10 +0000
Message-ID: <6f4908a41585459986245b33ddc02120@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-7-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566302108-18219-7-git-send-email-wgong@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_193613_903778_03EF748B 
X-CRM114-Status: UNSURE (   4.01  )
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
> Subject: [EXT] [PATCH 6/7] ath10k: enable alt data of TX path for sdio
> 
Patch v2 sent, https://patchwork.kernel.org/patch/11116683/ 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
