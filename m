Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B068BA9F4F
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 12:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F0ahDEZ3s8snGCQOXFy7D0uWU+UN2yPUBGBbXdQ+Z4=; b=Q19L8+0bAT/43x
	nS3pYvQZQspaeNuvxAazdxnM8YUjANYqEEsCploGqS+PLG7jBLL9tM5/57NLzwKzUldh1q2XePQ7m
	KJ4xQrbxfFarOHuL8O8diIS33IErzkNdRBe3QOpvLmrfxxiN5eD9DZERwARjvwLJV3CS/2ec2DoIm
	DpuPZr1oaNsJdo9N0DIRuPpkawMn+ALSZFJEF8n8sXwTAbGXsaYBtSkzj+L/W2G5g7U0GKpnG/9bc
	Xi/wUlMPnYXnlmEZD14yj3eEsH5t3+MQmitBAS+V/1L6qIrqs7+f1geLYoF7WzT/BfLXITurFm3Nz
	NBpLaItya1naQmOqibJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5olR-0003Of-53; Thu, 05 Sep 2019 10:13:17 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5olK-0003Nu-Ml
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 10:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1567678390; x=1599214390;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=c8lnVKRd4oYfcb+T9m4p99nIX6j6JBOUVLqQAzWi6bQ=;
 b=JmDn9mjRGH8cTb6TU7eD2fAqlUhm79QUfAWCupvY75WY/bsoNcrQe5lp
 BUJR+UQpagx/HmTWAded6rQqZYiKKcaOmKgUDLoNL4RIjR8pYlmC8Lx4B
 IplPQokD1GvIGrCRPRuSp0FrBrkYOgUwanO+YyNuzfjmO6TF0KtPeoqV8 Y=;
Subject: RE: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 05 Sep 2019 18:13:06 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 05 Sep 2019 18:13:02 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Thu, 5 Sep 2019 18:12:18 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Thu, 5 Sep 2019 18:12:18 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Dave Taht <dave@taht.net>
Thread-Index: AQHVYyWHN94QO+EK10ysmtsaB0TpPacc3hzQ
Date: Thu, 5 Sep 2019 10:12:17 +0000
Message-ID: <6ffd391176154f72a964b22090d89f9d@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <87k1apnyyo.fsf@taht.net>
 <259d8d7f8c2a4c428ae14ff211c83c1a@aptaiexm02f.ap.qualcomm.com>
 <87lfv4chi2.fsf@taht.net>
In-Reply-To: <87lfv4chi2.fsf@taht.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_031311_011890_ADC28288 
X-CRM114-Status: UNSURE (   8.67  )
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Dave Taht <dave@taht.net>
> Sent: Wednesday, September 4, 2019 9:34 PM
> To: Wen Gong <wgong@qti.qualcomm.com>
> Cc: ath10k@lists.infradead.org; linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to
> 32 for sdio
> 
> > Hi Dave,
> > So your mean is change 8  to 32 will impact latency? It will increase latency
> of rx?
> 
> Heh. for rx, in this case, probably not!
> 
> I just get twitchy every time folk fiddle with buffer sizes. In one
> recent case someone had fiddled with the interrupt polling interval on
> something, going from 1ms to 10ms - it saved on cpu, but...
> ... just trying to make sure folk grok the tradoffs with a bit of
> laughter.
> 
> carry on!
Hah, so you do not have any concern about this patch.
Patch 3 sent, https://patchwork.kernel.org/patch/11122175/
> 
> >
> >>
> >> 0xFFFEFFFF

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
