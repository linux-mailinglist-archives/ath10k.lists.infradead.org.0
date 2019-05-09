Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BD1189FE
	for <lists+ath10k@lfdr.de>; Thu,  9 May 2019 14:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOtafyjZP5ZK/Vu5ewTmnz4EfRycNWurEbeDx4FIBkA=; b=Xbehf6A7SBORWo
	tMh40Zg1ROCNo1UqCHswHFeqvIdKupyLrgy8jlVtEkpciKM/Ft4pr4vEJrJzhzT4iQtbzuM3djQwK
	uLzygq92Q0/MUMo1uJshlXbI1bnmbYJqi/S3QRUfeGaCq5Tq20RlcD/MqoSpWvDxjKEWsWQ+d85N0
	KhGOn58YbWAuRofiV4FzJsGe2H7G9wvyD86DHr2tG+6SVPWfXaPGZB2emaN7RNdEuJy0rFi/2YDRY
	x/69gBdl+fi7VTX3w5XUPlhjze55lGk+jtX15Hzgeon+6TvHixFPkvb20ikmEuHeDkPd19xa3pj7C
	sUmYM2nOg/9HZHubQASA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiTK-0000ji-4X; Thu, 09 May 2019 12:48:26 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiTG-0000jJ-Gq
 for ath10k@lists.infradead.org; Thu, 09 May 2019 12:48:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1557406102; x=1588942102;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=SKID5TCyxAGDDUGYeYZBi3xY0FA8rMIto6YleasEpqQ=;
 b=JPGYPrydtapHjJIAh1C4pcgJHnzZm63hjY8DNOJ/jKsu6f6q1v8i+PHq
 cQVId/uyY6kFKag3MKoS2nRkhiP1WnTz9BuJpkT4EXbrZHkMCD9nAiBb3
 NOxFHYGH/U4+d1V9zqmjEgImPOW5VfoRMN225z/yDpa6ZtBeU/41T92bb s=;
Subject: RE: [PATCHv2] ath10k: Add wrapper function to ath10k debug
Thread-Topic: [PATCHv2] ath10k: Add wrapper function to ath10k debug
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 09 May 2019 05:48:21 -0700
X-IronPort-AV: E=McAfee;i="5900,7806,9251"; a="249705051"
Received: from nasanexm01g.na.qualcomm.com ([10.85.0.33])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/AES256-SHA;
 09 May 2019 05:48:14 -0700
Received: from APSANEXR01F.ap.qualcomm.com (10.85.0.39) by
 NASANEXM01G.na.qualcomm.com (10.85.0.33) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 05:48:14 -0700
Received: from APSANEXR01F.ap.qualcomm.com (10.85.0.39) by
 APSANEXR01F.ap.qualcomm.com (10.85.0.39) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 05:48:11 -0700
Received: from APSANEXR01F.ap.qualcomm.com ([10.85.0.39]) by
 APSANEXR01F.ap.qualcomm.com ([10.85.0.39]) with mapi id 15.00.1395.000; Thu,
 9 May 2019 05:48:11 -0700
From: Venkateswara Naralasetty <vnaralas@qti.qualcomm.com>
To: =?iso-8859-2?Q?Micha=B3_Kazior?= <kazikcz@gmail.com>, "Venkateswara
 Naralasetty" <vnaralas@codeaurora.org>
Thread-Index: AQHU/DZRZsxSuuAgfEynIothPCgWB6Zixe8A
Date: Thu, 9 May 2019 12:48:10 +0000
Message-ID: <f9e3446266064ef09f53cc54562013e2@APSANEXR01F.ap.qualcomm.com>
References: <1556283505-29539-1-git-send-email-vnaralas@codeaurora.org>
 <CABvG-CVxmnm=JsSsgYQqEzHHYU8RJDxqCZJn4Rzy=zPLtKY1hA@mail.gmail.com>
In-Reply-To: <CABvG-CVxmnm=JsSsgYQqEzHHYU8RJDxqCZJn4Rzy=zPLtKY1hA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.80.80.8]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_054822_593708_1CA211BC 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Kan Yan <kyan@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Michal
> Kazior
> Sent: Friday, April 26, 2019 7:15 PM
> To: Venkateswara Naralasetty <vnaralas@codeaurora.org>
> Cc: Kan Yan <kyan@chromium.org>; linux-wireless <linux-
> wireless@vger.kernel.org>; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCHv2] ath10k: Add wrapper function to ath10k debug
> 
> On Fri, 26 Apr 2019 at 14:58, Venkateswara Naralasetty
> <vnaralas@codeaurora.org> wrote:
> >
> > ath10k_dbg() is called in ath10k_process_rx() with huge set of
> > arguments which is causing CPU overhead even when debug_mask is not
> set.
> > Good improvement was observed in the receive side performance when
> > call to ath10k_dbg() is avoided in the RX path.
> [...]
> 
> > +/* Avoid calling __ath10k_dbg() if debug_mask is not set and tracing
> > + * disabled.
> > + */
> > +#define ath10k_dbg(ar, dbg_mask, fmt, ...)                     \
> > +do {                                                           \
> > +       if ((ath10k_debug_mask & dbg_mask) ||                   \
> > +           trace_ath10k_log_dbg_enabled())                     \
> > +               __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \ }
> > +while (0)
> 
> Did you consider using jump labels (see include/linux/jump_label.h)?
> It's what tracing uses under the hood. I wonder if you could squeeze out a bit
> more performance with that? I guess you'd need to add `struct static_key
> ath10k_dbg_mask_keys[ATH10K_DBG_MAX]` and re-do
> ath10k_debug_mask enum a bit.
> 
I could not observe any significant Throughput/CPU improvement after using jump labels. For now shall we go with my patch?

Thanks,
Venkatesh.
> 
> Michal
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
