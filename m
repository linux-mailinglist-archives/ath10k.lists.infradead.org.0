Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA715D017
	for <lists+ath10k@lfdr.de>; Fri, 14 Feb 2020 03:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=02aksBJBBdREFqyFF/xPsi3nrvdPmWD46un0mgIcIN4=; b=miUm0I6NDlPh53bRgVFXsRHD8
	nCrybf2cekCCK8onj0VE6Ofo3YzDEQMCCvuPYoIdAo8nWMmAWaGDavuEA+6TSsfwcG+Vq5Keg+ffH
	mD2m6wnmFwRsQKtr7JOlZKcHIRFKWH8nHeumjfTFaX3M5jhoktk9kcsOjMA3OccXrth0kgQSlmgZ8
	sQfgmI+DcqCf4BYCzid2JR2qTiWMDPYYx2Gh3oLWif5AzWy/B73JADgXTqRy+cZMrPEj5GexzrEm+
	p327vXdHjqYON/LNsspvZzBhVk2J1ZhsDZsZI/nxqj9fIKQfNkL8tK4o6ctXL46czLJiNa/+6NnR6
	qS9HAhhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QvZ-0003lk-FA; Fri, 14 Feb 2020 02:42:01 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QvU-0003lF-Nj
 for ath10k@lists.infradead.org; Fri, 14 Feb 2020 02:41:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581648117; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=+rqY5qbMExF+ngVa5oDWoRnBVlwOwGnLGAE6LO1jv+w=;
 b=K1zTwYRyJH2CquE2mPyqmpop+yI0dhKMIdZL/5rCYM9ddY6QIjJ1Ur6Qdnpo6H1w5/T1TIZG
 wxVlNlS10vZ0M4QadG9/JXuaGMQk6ff0tW8V34LkVH6OWqMxzpM/nJryji8gyqaU4//onKPR
 evXgXLwglm9dmK3TjNTgch3QpXY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4608f0.7fb8065cd5a8-smtp-out-n03;
 Fri, 14 Feb 2020 02:41:52 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 90CF6C433A2; Fri, 14 Feb 2020 02:41:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5699BC43383;
 Fri, 14 Feb 2020 02:41:52 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 10:41:52 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add retry mechanism for ath10k_start
In-Reply-To: <87mu9mwwhs.fsf@kamboji.qca.qualcomm.com>
References: <20200120025609.6060-1-wgong@codeaurora.org>
 <87mu9mwwhs.fsf@kamboji.qca.qualcomm.com>
Message-ID: <576c72fed4a15a13989dde163d77ed8c@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_184157_412292_4475FC26 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-13 19:35, Kalle Valo wrote:
> 
> I'm not convinved about this. ath10k assumes that SDIO bus works
> reliably and there's no data loss. In my opinion if the SDIO is not
> working reliably we should fail immediately with a clear error message
> for the user, instead of having an unstable connection. And I 
> understand
> from the logs that ath10k fails cleanly in this simulated failure.
> 
> So what you do here is ignore the assumption that the SDIO bus should
> always work reliably and add a workaround by trying to restart the
> firmware multiple times, and hope that by luck it works during one of 
> 10
> retry attempts. But then what? Isn't the WLAN connection flaky as SDIO
> bus is not reliable? So if we were to follow that design logic,
> shouldn't we add retries for _all_ ath10k SDIO transactions? But that
> would make ath10k even more complex as it is.
for other SDIO transfer, like data tx/rx, if it fail, the upper stack 
has
error mechanism to handle the fail.
but for ath10k_start, if it fails, especailly for recovery, then it can
not recovery again, because cfg80211_shutdown_all_interfaces, and it 
need
to reboot system to recovery wlan by test.
> 
> Because I think this patch makes things worse for the user, so I would
> like to understand the real life use case this patch is trying to fix
> and how it would help the user.
sometimes it has recovery/suspend/resume test case, it need to make sure
ath10k_start success, otherwise wlan will can not recovery unless reboot
system.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
