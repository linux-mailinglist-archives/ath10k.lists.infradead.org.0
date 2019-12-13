Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C6711E147
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 10:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8ssI9kQiHhdHfAGeMfdOMiZZJfgAqF4/hy6NZat3Yw=; b=E+P9yvw8SKjTBs
	KZnhyZOxy2KdFnSu4FcQXqKEsMY+ft0jl3WKHTB9tEV88qEBmi/MCI43p+oRZCrxY0CiWTHAzJJoR
	HuV8ae0E/4xzMdx/pqwG2Tq9ESjHHouADAVwKGEUzfMrlO25pLsxUbm8gKQ8dz3cORVwG9CncAaZU
	yCQT4i2968j89EyH1aAUYtA5EvIzHjSEtJbpFkSW/p9MXgCzEzM1LmIRVTXntInoCC/Srwp1NcIEm
	1Ox5MQ9jXdrg4aVNy53f6H/2xIVIasBUBx47laqTk8tfSOgbuzxVuEoNlQ3b1V7zqLHopvmaQ10KU
	AszINDrvNvjSmQyNecnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhge-000388-7g; Fri, 13 Dec 2019 09:56:40 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhgI-0002vX-Sf
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 09:56:20 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ifhgE-009eL1-3i; Fri, 13 Dec 2019 10:56:14 +0100
Message-ID: <94471b2381bee394f9708eae8ba47129f3facd03.camel@sipsolutions.net>
Subject: Re: [PATCH 2/4] mac80211: fix issue in loop scenario
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Date: Fri, 13 Dec 2019 10:56:12 +0100
In-Reply-To: <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082426_564220_0827923D)
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082426_564220_0827923D)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015618_977451_8DF37224 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 2019-12-13 at 15:19 +0800, Yibo Zhao wrote:
> In a loop txqs dequeue scenario, if the first txq in the rbtree gets
> removed from rbtree immediately in the ieee80211_return_txq(), the
> loop will break soon in the ieee80211_next_txq() due to schedule_pos
> not leading to the second txq in the rbtree. Thus update schedule_pos
> to previous node once the node of schedule_pos is either removed from
> rbtree or move to other location in rbtree due to airtime update.

For my understanding - this is a fix to the first patch in the series?

I guess you didn't squash it because that's Toke's patch or something?

I tend to think you still should, and annotate the changes, but I wanted
to understand it first.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
