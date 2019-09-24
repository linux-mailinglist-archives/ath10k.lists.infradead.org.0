Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7ACBC16E
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 07:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tH84N/z5Nemx3z9iXbatFO5tSXhPd8WjeahZEJXAf+s=; b=TcJnaZZomuu6Q/
	/pccxLEPdoJoRI4pEvzFHlJ1xlJ7AcNbycml1xuEAu5JPTkIVv95KH1rPZsFdMobM6DI7WciHQKwZ
	AKC0r44goko26f+AdufJEy+MDx2VcAZYrjUNQ3Y86lcmWL3c26a8iLm/Hlp8i14d73Zu2XBBpXcFO
	2YJMGhcqNnnT2/pCJaU3I5tPHeX6akG1iruyvE8M2N6CUTYYZ/KQNQvFYIPhyWZXNcTCfz55WgVH3
	a37Lo09D4p8IMKSH/5le8VfxdrTjthm30Kz3ZiUx5zAOAFeCClA6yk9kH6eDG5LY99T1/Awm73Rsf
	wLYW8ZYVpxGJZ7WIyvdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdb3-0000HN-6E; Tue, 24 Sep 2019 05:42:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCday-0000Gc-7w
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 05:42:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A9C4C60256; Tue, 24 Sep 2019 05:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569303759;
 bh=OZumyeEfbvXBxK+pyI7dwFbulpy6LZOgCrgBslqqRWc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=keS1nlkildg8HvZsyyH/BNlcMBIB7itjkkGU5JWVpClgNdrEoBfR99CKxjJRS0bj2
 juu2rZqzIySW/AP07DUD4Ei6o7bO/GIuud3jX13ShCjrrr34x4+AT+1UZGseGWJr3h
 hlaBKDoVVfnhJCIsnEEILusoMBnwiH+IXZnBTGlg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 38FA0602F2;
 Tue, 24 Sep 2019 05:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569303759;
 bh=OZumyeEfbvXBxK+pyI7dwFbulpy6LZOgCrgBslqqRWc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=keS1nlkildg8HvZsyyH/BNlcMBIB7itjkkGU5JWVpClgNdrEoBfR99CKxjJRS0bj2
 juu2rZqzIySW/AP07DUD4Ei6o7bO/GIuud3jX13ShCjrrr34x4+AT+1UZGseGWJr3h
 hlaBKDoVVfnhJCIsnEEILusoMBnwiH+IXZnBTGlg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 38FA0602F2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v3 0/2] add fw coredump for sdio when firmware assert
References: <1569241055-30816-1-git-send-email-wgong@codeaurora.org>
Date: Tue, 24 Sep 2019 08:42:35 +0300
In-Reply-To: <1569241055-30816-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Mon, 23 Sep 2019 20:17:33 +0800")
Message-ID: <878sqe5jxw.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_224240_308924_A3C69234 
X-CRM114-Status: GOOD (  11.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> add fw coredump for sdio when firmware assert

Please add the changelog here.

> Wen Gong (2):
>   ath10k: add bus type for each layout of coredump
> v2: change code style
> v3: split bus type to another patch, 
> remove ATH10K_BUS_ANY, 
> add bus type for each layout
>   ath10k: add fw coredump for sdio when firmware assert
> v2: change code style
> v3: add commit log for fastdump, 
> add commit log for ath10k_sdio_hif_diag_read,
> change ath10k_err to dbg log

Then you mix the changelog with patch titles like that it makes it hard
to read the summary. So instead add the changelog above, before the
summary, and leave the summary intact.

Also this didn't apply:

Applying: ath10k: add bus type for each layout of coredump
Applying: ath10k: add fw coredump for sdio when firmware assert
fatal: sha1 information is lacking or useless (drivers/net/wireless/ath/ath10k/coredump.c).
error: could not build fake ancestor
Patch failed at 0002 ath10k: add fw coredump for sdio when firmware assert

Then you submit the patch use ath.git master branch as the baseline and
do NOT have any other patches applied. Otherwise the sha1 information is
wrong and it's a lot more work for me to fix the conflicts.

So please rebase and resend.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
