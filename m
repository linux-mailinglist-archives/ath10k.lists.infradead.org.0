Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5C12D793
	for <lists+ath10k@lfdr.de>; Tue, 31 Dec 2019 10:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eEsDETUMjhtH5y1bU2POEbReugHyrYdQLF01JtlutSY=; b=r+Y0yVzHal5eo4q1nxILTGduo
	CHCUSBJWwFWsZE9L3UV83xHghemiuKaC3nRrccokaF+NRerUgUKnYQnLiB4g3UHhBsFKlvsQYhfDt
	LTv42H3SUmOPl4aIGq9ZwzcHWpZXl59nGOy8PZdDKZbKlWhiTcBRLOGLvnGf3gjYFf7fHcgXMC2Uo
	DiqCGqDCFC5O1HUc8rL4q6RfnSdBgdzaP4Nekya+d/QE8iiR4+jX0F6N1H+T/QW2r3VW8q4GF3Fym
	Sf6T0uVLnz3Dw/Wekcvrgj8kX+Cq7GKZxpghB8n/CMA7VhgxMSmodlxoVuQ3bVL20TLaQsGJqwTDH
	lCPQSrSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDyD-0002IW-Jb; Tue, 31 Dec 2019 09:37:45 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDy8-00025o-BK
 for ath10k@lists.infradead.org; Tue, 31 Dec 2019 09:37:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577785060; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=y5y18m8BZe1GRBDlNusUsV0+XWeFRukqPLy2F+ycHek=;
 b=uPyMihkixAl2OSAuUXP9l2fw/7HFZ1sYpTHzG8TTv1UaN6HTnq//ddOhl86BXpZq/EL5T5ck
 E6Q/4cd3br99U8B2GX83K2mju1+6tXCTouxQasCuw+Ci/Hq93aS8K8+IEvynS0z3ZcGTRt3G
 PlAgW1lWgziLCLbi35uhaSTT9ws=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0b16e1.7f3b38b99068-smtp-out-n03;
 Tue, 31 Dec 2019 09:37:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 70651C4479C; Tue, 31 Dec 2019 09:37:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 48411C43383;
 Tue, 31 Dec 2019 09:37:37 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 17:37:37 +0800
From: wgong@codeaurora.org
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH v2 1/2] ath10k: add refcount for ath10k_core_restart
In-Reply-To: <CAMrEMU-p3+HRZYW6TzXwZSwhxj9oJ9JW1Rg=ZysJ3fr0rm45Ng@mail.gmail.com>
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-2-wgong@codeaurora.org>
 <CAMrEMU-p3+HRZYW6TzXwZSwhxj9oJ9JW1Rg=ZysJ3fr0rm45Ng@mail.gmail.com>
Message-ID: <5f6eb95de0f877b86b90d0c32d458d43@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_013740_970661_210514AB 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-12-25 23:14, Justin Capella wrote:
> This does not only effect SDIO.
> 
> Why a semaphore / count? Could the conf_mutex be held earlier, or
> perhaps change the state to ATH10K_STATE_RESTARTING first?
> ath10k_reconfig_complete is also called in mac.c when channel is 
> changed so
patch v2:
https://patchwork.kernel.org/patch/11313853/
https://patchwork.kernel.org/patch/11313859/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
