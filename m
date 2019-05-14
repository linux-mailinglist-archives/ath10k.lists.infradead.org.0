Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0EB1C5BA
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 11:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdyQk2EjNmJUWD70qY2IeohWmapBsgVdFvAR9wh5lgI=; b=DlTqUsP7Mzb70E
	1Kew433QiIKntPdA0RJRnKNiYe6vC+vXlV0ELTkxplvVYoSsBDJkK6a902a8NEsjpQ9LDt+g7y3i9
	9mNPVNRZDkafD1fcOQbaNaFRxRABiMG+h6FpuxwtfaJbNcxKoSy1Tnpxv9iW+hpduPG7ru0VHoqs9
	oC1b8pfVJOUiZD5aDRd5GYE0NjUMlwFyj8otJHdCkBZ8GDblK0pIXaq9j6biAhcQnBUn4lW7F7zpD
	TpCuFUzkX4yrz8CMq1+NV30L+nVPPK/L2UFg66hFy0MXgfC/aQX2TP91xmUhgZamVP/7pigQGjlGt
	QEb3fg7r4Snc1oiTm4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTTs-00053g-K8; Tue, 14 May 2019 09:12:16 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTTo-00052x-Rl
 for ath10k@lists.infradead.org; Tue, 14 May 2019 09:12:14 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hQTTn-0007VU-CC; Tue, 14 May 2019 11:12:11 +0200
Message-ID: <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>
Date: Tue, 14 May 2019 11:12:10 +0200
In-Reply-To: <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190514_110314_752671_7E53E9A2)
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_021212_900467_0AEEF295 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 2019-05-14 at 17:10 +0800, Yibo Zhao wrote:
> On 2019-05-14 17:05, Johannes Berg wrote:
> > On Tue, 2019-05-14 at 17:01 +0800, Yibo Zhao wrote:
> > > In multiple SSID cases, it takes time to prepare every AP interface
> > > to be ready in initializing phase. If a sta already knows everything 
> > > it
> > > needs to join one of the APs and sends authentication to the AP which
> > > is not fully prepared at this point of time, AP's channel context
> > > could be NULL. As a result, warning message occurs.
> > > 
> > 
> > Err, what was the point in sending v2 without any changes?
> > 
> > johannes
> 
> Hi Johannes,
> 
> I was planning to use WARN_ON_ONCE() in the first place to replace 
> WARN_ON() then after some discussion, we think removing it could be 
> better. So the first patch was based on my first version which is sent 
> incorrectly. Please check again.

Oops, I didn't pay attention to the - code.

I guess changing it to WARN_ON_ONCE() makes sense, but as per my earlier
email I'm really not sure about removing it entirely, it doesn't seem
like a valid scenario and we should take steps elsewhere to prevent it.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
