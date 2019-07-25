Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B328374327
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 04:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgqput36YCfEfOESpUElr3viydnVMFftqkT03zFz/nw=; b=SclEGFc9vEwqvK
	4siRCv4xMV2kx2YSqVK0LMCw/qhdM1XdF2NhEtQa0eBayyxzc8FVzA1ysHeuMVfgskL7ydTTl6aCL
	PSBUn/0bFbW7NhGQG3skq6yk1mX8HohD8YfhuENL7felwcMPxHjnDKcXa7djTN1fdVf1RJB+k0AZS
	s+gKZ5EYAJ5j5I0xcdUOMLHhU6YUU7Hjzw6Dm/EG4ofiCEHFn8rJ+jXh97qMyXzrJzWrjKsBvKce5
	26cIrtLVFDqK2ewNCXqggRvTPjZSSlHZ+Tx9y8TjktrmJkh3jy+w1C3hzuSvlMRgadcSKGF8knYRc
	d0C4W4kI8JxHQ1BOe3Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTHv-0006yq-6s; Thu, 25 Jul 2019 02:15:23 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTHp-0006yW-0p
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 02:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1564020917; x=1595556917;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=D8GTquOjv5a2dHq/HN3CvemJphUb20rQDDhnsXNJseo=;
 b=uzgKzm5aJqhkNSb4bW/fwcFEtV90V1abyVvrneRE/SwHo3Fx48D4ZE+h
 xrYLFUaE9bGjzo6BtQWIq1CAtVmJi/SH/wtOMbC1DDbl/Gzqao9nOnCJx
 mAs8c0Mp609EI298O0MN1XtkwoG9S/fW37Sr+9wqDrnafQVFzeDmr12hP c=;
Subject: RE: [PATCH] ath10k: add mic bytes for pmf management packet
Thread-Topic: [PATCH] ath10k: add mic bytes for pmf management packet
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 25 Jul 2019 10:15:11 +0800
X-IronPort-AV: E=McAfee;i="6000,8403,9328"; a="35329799"
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 25 Jul 2019 10:15:05 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Thu, 25 Jul 2019 10:15:04 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.003; Thu, 25 Jul 2019 10:15:04 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Thread-Index: AQHVJSZMyCLP3ilNoE660R+W056916ahAcmwgDjlpJmAAOuawA==
Date: Thu, 25 Jul 2019 02:15:03 +0000
Message-ID: <5d573271132e40f99326019d3d94827b@aptaiexm02f.ap.qualcomm.com>
References: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
 <136d04d4-671b-8dde-2abd-63070b07bd26@candelatech.com>
 <9403fef58374427fa76fb32ee64ee333@aptaiexm02f.ap.qualcomm.com>
 <87v9vrzl8d.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87v9vrzl8d.fsf@kamboji.qca.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_191517_332494_ABD5F063 
X-CRM114-Status: UNSURE (   7.04  )
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
Cc: Ben Greear <greearb@candelatech.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Kalle Valo
> Sent: Wednesday, July 24, 2019 8:11 PM
> To: Wen Gong <wgong@qti.qualcomm.com>
> Cc: Ben Greear <greearb@candelatech.com>; linux-wireless@vger.kernel.org;
> ath10k@lists.infradead.org; Wen Gong <wgong@codeaurora.org>
> Subject: [EXT] Re: [PATCH] ath10k: add mic bytes for pmf management
> packet
> > seems the ieee80211_is_robust_mgmt_frame_tx is not
> > match my change.
> 
> So what's the conclusion, can I take this patch?
> 
Yes, you can take this patch.
> --
> Kalle Valo
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
