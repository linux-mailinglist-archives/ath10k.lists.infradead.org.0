Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B639F85D
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 04:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibyAH+8+kVs2Fh53G0bzMCg2mSwagqeAjtwRSpJ+gC0=; b=siPiKgSEFyWic8
	jIjLYKACv+KGzfbc9LYsBZBZdGxkktwTPqVIVCE6GN4D4cYXXPPV9Q0aAs9/gHhKiJrj7tqXjwEG+
	TE8Oh1nu+3iGLPF3+GKcy4UxmexSzGmaQubhdLcPcKOHXs77H47T+13ykUlXxfc7Xp/BzcJu0ArIa
	rdabxzXK8vGHy+WWsKPaPNFTmwoz6mP9MtVQIICYRwiISJymwdR8rL/jXa4avLDpZFo5oVQjPvi7h
	bmOVQNqoDNgcMrBOTLphpPS0cGi35FNrrNvnqIyXGHkB9+m55+CHFUqh2IbE4vypL6U/ZgcXtpy6u
	FazKr7Edl7T0oSR6tttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2nkW-0002lF-II; Wed, 28 Aug 2019 02:31:52 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2nkP-0002ko-Kd
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 02:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566959505; x=1598495505;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=uWpyLyt1Q9QOr16kRuszAxnep3sR5hO2WlTvUQdD2dI=;
 b=nFSUKqFzE7YSi2O40JazLfD7PjNS5x0GpOc3FOtSykVdkR8tluZHJDZW
 HWngE5xax5JDYzQYWr/a+NUTjVs50OrCbmeWq8+JeUfGk774qbmGo0YCU
 nkE5VcaA0p/n8Ou1KNIdrn4j96tN8jKQBZdUaJ8SAlyXa4xNO2mxOHuyE c=;
Subject: RE: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Thread-Topic: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 28 Aug 2019 10:31:41 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 10:31:36 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 10:31:34 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 10:31:34 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXKsXjUGwyI7gPEe83ghz4pg/wacP183A
Date: Wed, 28 Aug 2019 02:31:34 +0000
Message-ID: <166d63589ee043c9bc5fab8e837a5aa1@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <CANMq1KBRMnVqw5rcnVcJs1UjYJxh+RqAEKSAjboojoMgJQpSDw@mail.gmail.com>
In-Reply-To: <CANMq1KBRMnVqw5rcnVcJs1UjYJxh+RqAEKSAjboojoMgJQpSDw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_193145_981072_2666ADD6 
X-CRM114-Status: UNSURE (   6.45  )
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Tuesday, August 27, 2019 3:43 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: open list:NETWORKING DRIVERS (WIRELESS) <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to
> 32 for sdio
> 
> > @@ -501,6 +501,7 @@ static int ath10k_sdio_mbox_alloc_bundle(struct
> ath10k *ar,
> >         int ret, i;
> >
> >         *bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr-
> >flags);
> > +       *bndl_cnt += (FIELD_GET(GENMASK(3, 2), htc_hdr->flags) << 4);
> 
> GENMASK(3, 2): Please define this macro somewhere.
> 
> Also, I'd merge the 2 lines in 1.
Patch v2 has sent, https://patchwork.kernel.org/patch/11116677/
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
