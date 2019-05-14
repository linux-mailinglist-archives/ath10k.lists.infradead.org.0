Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5F31C528
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 10:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkfOeZmqeEi1TOMVO5m0vDfKbWQXkgPqy5+ZM2uOgzY=; b=acD+KQyp5+P0/L
	ysA8JZGdZOrAE2KJnyLldpdA5uhYifxDn/yVYjmjAy0Gv1Mt9i18cAF6pFFwEQ7nLquGvtW3ZMW+T
	TtILU6D9akOU2UF6dDo/06GCyK5TGgoc8dzayFykBVFGJ99wbllOfoC9Fx/5XCB/vzXMRaWu09pVc
	QW4TdVwZ9kkWXrrluNoVVHtvS8wzZqN1PKjntcEMpkHCUMeKoeTQLB7I/QABcHpFfESgPbw+L8Qcz
	5Att1C3R2vEL9/WQH3QS5QlTEhJGaskNTjFV8mLqnN0cYYPT4C9BvHYTcQVzZjsqIFW264guXqayZ
	NmI73haDA/35h6OsEI0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT3O-0006L7-Kp; Tue, 14 May 2019 08:44:54 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT3L-0006Ke-8R
 for ath10k@lists.infradead.org; Tue, 14 May 2019 08:44:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hQT3H-0006k7-A7; Tue, 14 May 2019 10:44:47 +0200
Message-ID: <be1934dad73b1cc654615c1c895a79a8b35ea456.camel@sipsolutions.net>
Subject: Re: [PATCH] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Date: Tue, 14 May 2019 10:44:45 +0200
In-Reply-To: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190510_090204_942831_B8A9C5A2)
References: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190510_090204_942831_B8A9C5A2)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014451_376845_5EF78F05 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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
Cc: Zhi Chen <zhichen@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 2019-05-10 at 15:01 +0800, Yibo Zhao wrote:
> In multiple SSID cases, it takes time to prepare every AP interface
> to be ready in initializing phase. If a sta already knows everything it
> needs to join one of the APs and sends authentication to the AP which
> is not fully prepared at this point of time, AP's channel context
> could be NULL. As a result, warning message occurs.

Please share the dump, I don't think this should be happening. I think
this warning did what it was supposed to, uncover a bug; rather than
remove the warning we should fix the bug.

> Even worse, if the AP is under attack via tools such as MDK3 and massive
> authentication requests are received in a very short time, console will
> be hung due to kernel warning messages.

I don't buy this, it's just a WARN_ON_ONCE().

> If this case can be hit during normal functionality, there should be no
> WARN_ON(). Those should be reserved to cases that are not supposed to be
> hit at all or some other more specific cases like indicating obsolete
> interface.

I agree, but right now I'm inclined to think it's a bug elsewhere rather
than normal operation.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
