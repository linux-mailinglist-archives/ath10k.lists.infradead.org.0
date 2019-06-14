Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6DD455C2
	for <lists+ath10k@lfdr.de>; Fri, 14 Jun 2019 09:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MV7/lUzdZe9qDO4aj8K0R2UlyBAxBpu7+URQMxw6vks=; b=U5cUGmwBmKBqYP
	RH1h9/aWvp4/TiWEGlobDs3Suj9xwqCGYAiy/ZOH1ptg2MTZobArkmZ4Z7AUBLDqADXvEiYJeSin/
	6QD0fM/swXsVgcE3I0OloytwnO6J2SmGxz2GpTirY+/NkR4iY9zvuzHjEUibDo+NRe3R4h1U88Rl/
	JLMB7D8YBCOpswCOh91LDrI6cVMYiuvNjG6BCB0B3qneyyWOqX5bthh+XEE5xO/DZeuBJvjm2h6cU
	6q38ivv7XeDCKcJx9/g8gwgXiImvBU3f8j5B7WgwjQw1P/SCyYT29fmFyJiN1i0LavkI/b72VPjyw
	qCP7NXs96PqM4QlTI1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgYA-0005Kt-Ig; Fri, 14 Jun 2019 07:23:03 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgXv-0005Jm-Ky
 for ath10k@lists.infradead.org; Fri, 14 Jun 2019 07:22:49 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hbgXn-0001W8-Cm; Fri, 14 Jun 2019 09:22:40 +0200
Message-ID: <30365971038fd772ea766bb3c429f218648f6547.camel@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>
Date: Fri, 14 Jun 2019 09:22:37 +0200
In-Reply-To: <143d044082b54b2be41ba3760390d97f@codeaurora.org>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
 <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
 <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
 <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
 <8eacb8e107c854b64a0c6116fca9731ddd99dcac.camel@sipsolutions.net>
 <730d3664-488d-7d57-04d5-1a57e91fa070@candelatech.com>
 <ea87337c24666355059488b42d97ee22711ce7b8.camel@sipsolutions.net>
 <bbfd69ccb4289ba3f1767c1066f61ee1@codeaurora.org>
 <143d044082b54b2be41ba3760390d97f@codeaurora.org>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_002247_706215_9FF235CE 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Zhi Chen <zhichen@codeaurora.org>, Ben Greear <greearb@candelatech.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 10:52 +0800, Yibo Zhao wrote:
> 
> May I know if it is fine that WARN_ON_ONCE() to be applied in kernel in 
> the future? If a separate patch for it is needed, please let me know so 
> that I can raise a new one.

Please do send a new patch.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
