Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65264B1781
	for <lists+ath10k@lfdr.de>; Fri, 13 Sep 2019 05:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hA2NVuQXnN7i8/DlnisJhISAz6xqVEHDPSzsy2fkhJc=; b=H1H0HMpUs8DN+F
	wagpBLLplr3HmRKpE5qLxGR7yf4Cw+VeFJj3+65axd+8Wy0VuTIACZxsySlwGGJwutN/SdEmgvHzn
	BIy6IYI1TaP9eCoJvO3dJA2oErasrFeZ3UanfwVuLGdCRL8u3DY/4r9Ba2zEZma4bognS2K/OJruM
	7vHm6+NXuhnPG3K6ppD1/R53rd+r65X6G4cuzqXw2KU3Hesdopp+lnMcVgQywZE9IwXEIdUAT19OP
	Dj7wgR60rYu45TkAdD97mOe6bo/NcYQbvvGphicTdeZp29KPADeZOPQ1TFBU7/pffki8oZmYvz8Aj
	ka35C10dRex8iGv5kRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8cfJ-0007Cs-Do; Fri, 13 Sep 2019 03:54:33 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8cfC-0007CS-Kc
 for ath10k@lists.infradead.org; Fri, 13 Sep 2019 03:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1568346866; x=1599882866;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=7Pd9wUt0LbpEluyUm8uyYDaVy9frIqdeh9hSUOTaRhk=;
 b=iJdADdkPBUJG4tUhYvQDZAJsSHolyTBTHtMkrcWe81BJwqCOHcQhFaLy
 xjrkvd3COkg2cti6AZlvezd9FWSfWVF4fbd4K8iG9MK5Sf9+CSJd1bCSq
 MDZkvCUq0b6Cge4Q3EDgEtdlTcXPyaqhnLQcJ3nuZNSOyMIOm2xVdqd9E I=;
Subject: Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
Thread-Topic: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of
 sdio
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 13 Sep 2019 11:54:21 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 13 Sep 2019 11:54:16 +0800
Received: from aptaiexm02b.ap.qualcomm.com (10.249.150.12) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 13 Sep 2019 11:54:14 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([fe80::d4db:8980:a041:2e5d]) by
 aptaiexm02b.ap.qualcomm.com ([fe80::d4db:8980:a041:2e5d%19]) with mapi id
 15.00.1473.005; Fri, 13 Sep 2019 11:54:14 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>, Wen Gong
 <wgong@codeaurora.org>
Thread-Index: AQHVaYBSskmnVODoB0WU3dS9hlPlKacoUocXgACff80=
Date: Fri, 13 Sep 2019 03:54:14 +0000
Message-ID: <1568346854209.29270@qti.qualcomm.com>
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <87tv9hikwe.fsf@kamboji.qca.qualcomm.com>,
 <87d0g5h07v.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87d0g5h07v.fsf@kamboji.qca.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [199.106.107.6]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_205426_972276_00A7E7B8 
X-CRM114-Status: UNSURE (   6.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


>>> The bottleneck of throughout on sdio chip is the bus bandwidth, to the
>>>patches are all to increase the use ratio of sdio bus.

>> I tried to apply patches 2-8, patch 2 had a conflict due to my changes
>> and patch 8 didn't apply at all. Also I saw few warnings with the
>> patches I was able to test:

HI kalle,

i see some warning is from patch "ath10k: add fw coredump for sdio when firmware assert"
and this patch also have change in sdio.c, so maybe it will have conflict with the 8 patches.

patch 8 didn't apply at all, is it means each change of the patch is conflict?

I used command to check each patch.
perl ~/opensource/checkpatch.pl --strict --no-tree --max-line-length=90  --show-types --ignore CONST_STRUCT ./*

I found it not check Wunused-but-set-variable.
_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
