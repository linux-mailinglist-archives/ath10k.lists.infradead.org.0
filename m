Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C14BD7D3
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 07:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYasuBP8U7TKZMIpKofxDozPTRhVyEjIIWdJUEa9PhY=; b=WAMhXrYoNiw9nc
	R8F50ZEV5sHOlfP/Ig0kVls6Oug6pEd7e1063Eh+pi6P7Hz9p+j3M/CMpUT58Mpo6QXrzKsyyDt6W
	Qj3MC69y+rqi91ZjcnL86qmfpz9P3R0WMue7MuarMVTxyHknh6LDSuqliHcc3fgnX6s8bOP5gdSRk
	cHc6Wpa3jf4CWvOjlovxL5XiEk3jSJVmAWyZI86s3lkNqcEFxZn7Unte/dsL6ho3yUjiEoyv2p1yH
	7sW86rurLSnkS7Hf+W4TRk9f99pqN8wZDMNgz+hkm0zA1apT5RnbKEMC8UWtadGp9EaiU1EesWYyx
	s9+nbkncBKxjAhW6kbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD036-0003UU-1F; Wed, 25 Sep 2019 05:41:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD032-0003U6-2u
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 05:41:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A6456609F3; Wed, 25 Sep 2019 05:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390067;
 bh=4DnRI3/6DjoOwEPHvWGENKwNlQJEvOPUUpyFPzCCa+4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Uc8o7j4T4Mi8OdYnJk7heDds0V8D4t+cr21xYpm5ZDz0NgVvF3c1Hh/Vrjo2O0BpW
 l2e3pOnbr6WgJ3EeS8JFm6ZeU6UvY5cTdmM7QDh8Viu7OwtT3brXeOqa93YPe9BbRW
 gdVp9yR+0No5UY8OcO55Y1Y+GTHKqaiwK4QJHGhE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9B44E609F3;
 Wed, 25 Sep 2019 05:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390067;
 bh=4DnRI3/6DjoOwEPHvWGENKwNlQJEvOPUUpyFPzCCa+4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=EvtodZJFV3RV/4RH2bzYXXGQHylIZQbZBLrj4YbbxQHk1khqchloPsTFl8rWrLGQd
 iZX6zoyYbiBgWwUdlZJ0l6G2dUCqi/PEIETXQGMBCTUdEPx/SDTd7bY4eFi3B3frS0
 K0amIrY7L96qVk1FSmU+OIBXVuT4CfwlKlGLVrq4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9B44E609F3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: remove iteration in wake_tx_queue
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190327162906.6010-1-erik.stromdahl@gmail.com>
References: <20190327162906.6010-1-erik.stromdahl@gmail.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190925054107.A6456609F3@smtp.codeaurora.org>
Date: Wed, 25 Sep 2019 05:41:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_224108_151679_FB8C72FB 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, kvalo@qca.qualcomm.com,
 linux-wireless@vger.kernel.org, yiboz@codeaurora.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Erik Stromdahl <erik.stromdahl@gmail.com> wrote:

> Iterating the TX queue and thereby dequeuing all available packets in the
> queue could result in performance penalties on some SMP systems.
> 
> The reason for this is most likely that the per-ac lock (active_txq_lock)
> in mac80211 will be held by the CPU iterating the current queue.
> 
> This will lock up other CPUs trying to push new messages on the TX
> queue.
> 
> Instead of iterating the queue we fetch just one packet at the time,
> resulting in minimal starvation of the other CPUs.
> 
> Reported-by: Yibo Zhao <yiboz@codeaurora.org>
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>

Like others, I'm not convinced about this either. To me it looks like a quick
workaround instead of properly investigating, and fixing, the root cause. To my
understanding the throughput dip was caused by this commit:

e3148cc5fecf ath10k: fix return value check in wake_tx_q op

So to me it feels like the issue has been there all along, just hidden, and the
fix above just exposed it.

-- 
https://patchwork.kernel.org/patch/10873753/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
