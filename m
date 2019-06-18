Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBEF49A62
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 09:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKLIABULM+WCIaqIUZ9C7ZfclvSyHfx9yPhZNSd5CM8=; b=WcgW5namCi3FEe
	D4T2gsfl+J3Vwkgo3OS2XQobD8YDjdz3O1Tk30Mzi+bKDyjVqSYsGr5XL83qvZ2xXPRYL1n+yVaMj
	7wm61b31xntWEJ1LGjxXIjJ3/x/Gp86etQ//FhwOJa0DqtBh85zOpgrTnCAsgxgsIyYaCD5+Mu/ug
	F678lQpH1fYF4uIFVEkv3hFdtENsvbt52kkJT683Y9HM6rXQsj5r12vv1V3AB++4GSkJjKn+xaPpf
	wreE6VScPp3EDtUj4bEn6XBKqVQdTCCXhnXrNwWD4DT3THAkuqAzvn2hzm9Lej27aESLR1aIr1U7J
	dXjDTIyedNRPTyMoiL2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8R9-0000lH-3B; Tue, 18 Jun 2019 07:21:47 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8R4-0000kr-Rv
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 07:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1560842502; x=1592378502;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=BlWFhpuDlHD10LLxGZW5VKlsCNyfl9WDFOPkhExkpTk=;
 b=Hiejp4kvcXpRkO6uV6wvXMNDwc+cDV9M28wodu5TzPount3l1Cviw6MT
 p+ojNQkMWm1XLnPy0tBhtAwaTYgViAElChszRk4qpGvsTJWEfUTfoaebc
 DcrEW1qSVRAl9gPQd+tzsqgIzH6UwCjvmNQxYhKXRSl7t60EnE6YlgX9s 4=;
Subject: RE: [PATCH] ath10k: add mic bytes for pmf management packet
Thread-Topic: [PATCH] ath10k: add mic bytes for pmf management packet
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 18 Jun 2019 15:21:37 +0800
X-IronPort-AV: E=McAfee;i="6000,8403,9291"; a="32210948"
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 18 Jun 2019 15:21:32 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Tue, 18 Jun 2019 15:21:30 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 18 Jun 2019 15:21:30 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Ben Greear <greearb@candelatech.com>, Wen Gong <wgong@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Thread-Index: AQHVJSZMyCLP3ilNoE660R+W056916ahAcmw
Date: Tue, 18 Jun 2019 07:21:30 +0000
Message-ID: <9403fef58374427fa76fb32ee64ee333@aptaiexm02f.ap.qualcomm.com>
References: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
 <136d04d4-671b-8dde-2abd-63070b07bd26@candelatech.com>
In-Reply-To: <136d04d4-671b-8dde-2abd-63070b07bd26@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_002143_171422_CDDCEBA4 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Ben
> Greear
> Sent: Tuesday, June 18, 2019 12:04 AM
> To: Wen Gong <wgong@codeaurora.org>; ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] Re: [PATCH] ath10k: add mic bytes for pmf management
> packet
> 
> I was looking at mac80211 code recently, and it seems some action
> frames are NOT supposed to be protected.  I added my own helper
> method to my local ath10k.  Maybe you want to use this?
> 
> 
> /* Copied from ieee80211_is_robust_mgmt_frame, but disable the check for
> has_protected
>   * since we do tx hw crypt, and it won't actually be encrypted even when this
> flag is
>   * set.
>   */
> bool ieee80211_is_robust_mgmt_frame_tx(struct ieee80211_hdr *hdr)
> {
>          if (ieee80211_is_disassoc(hdr->frame_control) ||
>              ieee80211_is_deauth(hdr->frame_control))
>                  return true;
> 
>          if (ieee80211_is_action(hdr->frame_control)) {
>                  u8 *category;
> 
>                  /*
>                   * Action frames, excluding Public Action frames, are Robust
>                   * Management Frames. However, if we are looking at a Protected
>                   * frame, skip the check since the data may be encrypted and
>                   * the frame has already been found to be a Robust Management
>                   * Frame (by the other end).
>                   */
> 		/*
> 		if (ieee80211_has_protected(hdr->frame_control))
>                          return true;
> 		*/
>                  category = ((u8 *) hdr) + 24;
>                  return *category != WLAN_CATEGORY_PUBLIC &&
>                          *category != WLAN_CATEGORY_HT &&
>                          *category != WLAN_CATEGORY_WNM_UNPROTECTED &&
>                          *category != WLAN_CATEGORY_SELF_PROTECTED &&
>                          *category != WLAN_CATEGORY_UNPROT_DMG &&
>                          *category != WLAN_CATEGORY_VHT &&
>                          *category != WLAN_CATEGORY_VENDOR_SPECIFIC;
>          }
> 
>          return false;
> }
> 
> Thanks,
> Ben
> 
> > +
> >   	data_len = msdu->len;
> >
> >   	switch (txmode) {
> >
> 
> 
Thanks Ben,

seems the ieee80211_is_robust_mgmt_frame_tx is not 
match my change.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
