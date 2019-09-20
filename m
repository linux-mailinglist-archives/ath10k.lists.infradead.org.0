Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FC8B8994
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 04:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh8TcReGZR7PIoJT3qW367DPEGVESHZgAYviwb10n4k=; b=fAmINZru/w9JCW
	cKqFZojbSPIE7bOM8xXYVYQxw7d537TQM8IVNhnwFzmFg46fov/6FyZTl1OYZ784xJHdUXgokfFZa
	C9z8H4hX+Bmyeh4eiWycrcXVhDOoSao5dh6qC6jaksQzZvuebpXkXx7QHVULu3BtrZfITEsHxBK7A
	kHQ9dzUI/0ukn9sqGP/IYF7W9P+Vprc16h572FCfVUL8Diqh6BKGA+MOlHldS7Ft3rUuaH0xlIFJq
	fYWLL5P/Dwn0T6xwOxC2Hn8liCVakN6E/Axkc4Fl2rgeYVF567me4/1PtkF0GkERfqmNZSkQshYBb
	FM8oAEuZQRAcdQQlNHkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB953-00058w-Oj; Fri, 20 Sep 2019 02:55:33 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB94z-00058B-Ri
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 02:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1568948129; x=1600484129;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=h5GDMNjW+EjFMM6Brw8DWg04GozxHkTpURfiFQTUTHk=;
 b=VSvLpHU7bkjHBYM09f0jvBPn2Mfri9NxvGg9cy6zT5pfKPbMYYo5dPAb
 vBm9UF5mKuGr5CYbCD3KO2O4ilYgisDOxbuK+pdndkgWMEyqrZ/0J/oq3
 vtDSm8kWrkHVwdr4yaK62Km1rsBbGWuO4zTcDnbQxORJ6iEMiOADWONpo k=;
Subject: RE: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
Thread-Topic: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 20 Sep 2019 10:55:16 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 20 Sep 2019 10:55:10 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 20 Sep 2019 10:55:08 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 20 Sep 2019 10:55:08 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>, Brian Norris
 <briannorris@chromium.org>
Thread-Index: AQHVbXWiq8VLkeX27kapg8LCqChuTqcxeMfAgAJpkJA=
Date: Fri, 20 Sep 2019 02:55:08 +0000
Message-ID: <40854e84bd4b4a9699b60530b1c373ad@aptaiexm02f.ap.qualcomm.com>
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_195530_165827_6C1A1C1A 
X-CRM114-Status: UNSURE (   7.98  )
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Kalle Valo
> Sent: Wednesday, September 18, 2019 10:03 PM
> To: Brian Norris <briannorris@chromium.org>
> Cc: linux-wireless <linux-wireless@vger.kernel.org>; Linux Kernel <linux-
> kernel@vger.kernel.org>; ath10k@lists.infradead.org; Wen Gong
> <wgong@codeaurora.org>
> Subject: [EXT] Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
> 
> So essentially the problem is that with firmwares supporting both
> WMI_SERVICE_NLO and WMI_SERVICE_SPOOF_MAC_SUPPORT ath10k
> enables
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, but
> NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR is not enabled
> which is
> inconsistent from user space point of view. Is my understanding correct?
> 
> Wen, can you enable NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR?
> Does firmware
> support that?

Yes, I test again, it is enabled NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR now.

> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
