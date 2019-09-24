Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361A4BC0C5
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 05:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zmgu1xTIu68qf5vF9+hLZyxVUUlClwLrjvhpBirEUZA=; b=MMYMCyeklYa0FQB3YH/wFZ+P2
	8Lk2FmvFwzlx2NYL9gc1ptUS0qO35YpXhU211bsHQRPkkPcToat83tQ6yVjJ+OiwJKyjoUSf+iXmp
	REoXG70vhLXwdtT5qnOy7xir1Bpe6W9dQGTsNK8dLQQ3auMt/VgATHCq/XSU6R3et7Z1Zj2rt4qZu
	BCmHxfHbstzol/WVSHtm9Ut8yCPomaSN6KvSvFGfZshWx4o2uhkuSUch0VPLFDJUWZ0Qy4odn+V1m
	Kb/9MshK5lVGSWznqCsy5Dc4U5ffWxps4vThvL/FDf7VpTLKGNw53YhL9lmBUm77bq/Ygg2g6Dvdk
	LVPlTq29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbeq-00064t-Ji; Tue, 24 Sep 2019 03:38:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCben-00064Z-Cd
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 03:38:30 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 05CBF60397; Tue, 24 Sep 2019 03:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569296309;
 bh=Ua6L2aRvDvQV9DfCgeqBlGXZkWiA8wsqvrMqezzm0hE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OUBcc2hkLJj9vjBpk4T00hRhGA1727TWZIyX9jpAesnSzX1zXazhB9MVdfO35nsel
 oR72nC4s1k0Gc/oKJPiZybu7yDw6LRJmtp972SHYtE3zJyL7m6xFW6OPoBirrszWDz
 521N4CaCX5EUJnrj0MGXS2Fobiry7002QlFWuX3U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9477160274;
 Tue, 24 Sep 2019 03:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569296308;
 bh=Ua6L2aRvDvQV9DfCgeqBlGXZkWiA8wsqvrMqezzm0hE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RQwnyFupPHculz0D1dmCaG1ra/ac1emNbtRQvjgnPBvsdK7KFRDxvv97rL7j7NZIl
 3KOUwnAK0gvQMkdnnOXqcPhlU+KhiqCM3wqJtBR9Ds+YxgC2zgxhc7SoFPBOW7wd20
 IV7jpBahIFiX21lR/euBVEW+d/3FKOJPgdptVwjg=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 11:38:28 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
In-Reply-To: <706142499b2f13de278262f3c52c2047@codeaurora.org>
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
 <878sqhc25h.fsf@codeaurora.org>
 <706142499b2f13de278262f3c52c2047@codeaurora.org>
Message-ID: <3e189b030590e1f73acefb9ba111a184@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_203829_447348_0ACDC1E0 
X-CRM114-Status: UNSURE (   3.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

patch v3 sent.
https://patchwork.kernel.org/patch/11156663/
https://patchwork.kernel.org/patch/11156659/


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
