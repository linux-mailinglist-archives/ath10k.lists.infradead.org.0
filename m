Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECC31CF40
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 20:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+vETEKl7CkND6EXscBkjmBBiD22sKlektT2K3UWFm4=; b=EGMxSM60uQTAKo
	4FFLMDGtfs4gqPX9xGAgcoZK5JHawQXkFifET2C8KqQD5AVEsJ+LpTug+QFhFdLfATNhkfZxsSvq5
	cDSlb9EayB7HL9MqbBTLlIcoVWhVwH/59tYzwKmB4mt7xVrBdmgI2gRc8B7z0zPsv4ydQ6JR0A4fp
	lOXvdVPhXY2JWk5vY+M26SPSehYZDzBSk26NpPkY4A9qyrDUQINCVDosTFkLqxXUaUJZ56MRR1oUR
	RWjlZBBoFqMl+Je43CILcMIcj+qwBVkCyHip6RwRJyVn8uXK7jj3W/crv9Ui/AG2a4Q7BgK2HzW30
	TEnysXQoqps+Lo+pvb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcLZ-0008J0-DO; Tue, 14 May 2019 18:40:17 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcLS-0008Dy-JZ
 for ath10k@lists.infradead.org; Tue, 14 May 2019 18:40:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hQcLN-0005ZC-CY; Tue, 14 May 2019 20:40:05 +0200
Message-ID: <8eacb8e107c854b64a0c6116fca9731ddd99dcac.camel@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Ben Greear <greearb@candelatech.com>, Joe Perches <joe@perches.com>, 
 Yibo Zhao <yiboz@codeaurora.org>
Date: Tue, 14 May 2019 20:40:03 +0200
In-Reply-To: <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
 <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
 <e2a6596b99085541a5886c0d0d6393c849ac2d57.camel@sipsolutions.net>
 <34f72d5db336b9898618bf1c5c15ec41094d7d06.camel@perches.com>
 <4d013893-3302-14f0-c957-b3771f4b6b82@candelatech.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114010_641336_1C07724D 
X-CRM114-Status: UNSURE (   9.24  )
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


> We know the WARN hits, we have the backtrace, and it is easy enough (in my setup
> at least) to reproduce this.  So, the WARN logic has done its job.
> 
> Having more of these spam the kernel doesn't add much benefit I think.

Well, this doesn't necessarily just catch a *single* issue, so it should
remain for the future, I'd think.

> Anyone have any suggestions on how to fix the underlying issue?

I don't even have the backtrace and scenario that causes it.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
