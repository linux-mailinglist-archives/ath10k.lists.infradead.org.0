Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184C1CF7A
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 20:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paMvvISdx5pDQsXVKhXFWGYxCGX/aNI9qL2sf01mgi4=; b=GR3O+vnSlCDteX
	yoD/JS2jXWb377dHEuN2DHLradoXEvafWyQgLol/NdKnVh+W4OuMcOMZ56iZTbQDd6Aq/2OF3fOnW
	P1kO9ctqmcUzDMmcxhAx9NyNcX1h68rpJ9oKaVV8+lXwMLazW7h6wsqYM1aUSvehS4wsN14NxpTkR
	DMb9h4WjGRDfJAfD4a0Un6Xq78s82IfErb5+szAEtciwJl9NR8zfFTHfZoY/uuQw9ZAtqWnNYAXkD
	c4vH4/Gl1iXOC4SBygwKlGWSR4oNP6xsJ1BoMZK9yGqpK40mEf3aSB6GKsrcqPkRlvrsL4oARwLx0
	8GLb6gkrFuocIh+k1PCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQccT-0006jP-RH; Tue, 14 May 2019 18:57:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQccR-0006j6-36
 for ath10k@lists.infradead.org; Tue, 14 May 2019 18:57:44 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hQccN-0005yL-6A; Tue, 14 May 2019 20:57:39 +0200
Message-ID: <ea87337c24666355059488b42d97ee22711ce7b8.camel@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Ben Greear <greearb@candelatech.com>, Yibo Zhao <yiboz@codeaurora.org>
Date: Tue, 14 May 2019 20:57:38 +0200
In-Reply-To: <730d3664-488d-7d57-04d5-1a57e91fa070@candelatech.com>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
 <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
 <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
 <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
 <8eacb8e107c854b64a0c6116fca9731ddd99dcac.camel@sipsolutions.net>
 <730d3664-488d-7d57-04d5-1a57e91fa070@candelatech.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_115743_135208_A131BF7C 
X-CRM114-Status: GOOD (  10.51  )
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

On Tue, 2019-05-14 at 11:54 -0700, Ben Greear wrote:
> 
> Here is the info I have in my commit that changed this to WARN_ON_ONCE.
> I never posted it because I had to hack ath10k to get to this state, so maybe
> this is not a valid case to debug.
> 
> 
> Maybe Yibo Zhao has a better example.
> 
>      mac80211: don't spam kernel logs when chantx is null.
> 
>      I set up ath10k to be chandef based again in order to test
>      WDS.  My WDS stations are not very functional yet, and
>      when ethtool stats are queried, there is a WARN_ON splat
>      generated.  Change this to WARN_ON_ONCE so that there is
>      less kernel spam.

I'm totally fine with WARN_ON_ONCE, FWIW.

Sounds like different bugs though. You're talking about WDS here, and
Yibo was talking about something with AP interfaces prematurely
accepting frames or so.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
