Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CD8124462
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 11:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3SIcnpoJ75e1oItjEm5s8FR4IXoGBOZQlc6BwJuKAA=; b=gWEMIxVSrFv0/3
	e9LSKbqqkKJSweL5831EVj43TVuaqdLHIJdtBSb6G9stMW9zL4ZnkThw1YSo0hY9fNPCZBVw7XNSJ
	iFsYUuwAD6VYWDQHBKgmIQ5Awt5MWBVJZjMufltmSGHo/sslQehKKPIZVCU34iP4q11NiXdKZmUZW
	qRXNIGLsQ1Cow+dPjbWm3lKz6l2H3gViF5HvFoC7h+O8mMUGT0JiSkPeNUaea4nfbsrGZspy/f4hz
	3F9CsPZEKJUGD7nxCyyT1oQ3e/BLuJmrlYKfm28PkB7jE5vLwDzVNyXJrX5DZvnNi9D37l2T2svpc
	r1yX5K2dVf+vjfeomoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWTO-00019Y-0O; Wed, 18 Dec 2019 10:22:30 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWPy-0005Z6-L7
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 10:19:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ihWPs-007ote-MF; Wed, 18 Dec 2019 11:18:52 +0100
Message-ID: <c126d2ff0866faf9ac50b12920f0497b03b031f7.camel@sipsolutions.net>
Subject: Re: [PATCH 2/4] mac80211: fix issue in loop scenario
From: Johannes Berg <johannes@sipsolutions.net>
To: yiboz@codeaurora.org
Date: Wed, 18 Dec 2019 11:18:51 +0100
In-Reply-To: <6f092bd44cfc581a219bd0f0506cc636@codeaurora.org>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082426_564220_0827923D)
 <94471b2381bee394f9708eae8ba47129f3facd03.camel@sipsolutions.net>
 <6f092bd44cfc581a219bd0f0506cc636@codeaurora.org>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021858_733432_12B86C78 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, 2019-12-18 at 18:12 +0800, yiboz@codeaurora.org wrote:
> 
> Yes, this is a fix to the first patch. Actually, the rest of two patches 
> are also serve the same. So, are you suggesting to merge them to the 
> first patch?

Yes.

> Previouly, I had added Toke's signature in this patch but Toke advised 
> to delete it. I feel a little bit confused about how to handle it. 
> Appreciate any detail guide.

I guess that you have to discuss that with Toke, how he wants to handle
it ... If he gave you a patch with his signed-off-by, then you should
probably keep it? There's also "Co-developed-by" tag to give some sort
of non-author developer credits.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
