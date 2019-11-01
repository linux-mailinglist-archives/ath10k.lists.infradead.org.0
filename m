Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F86DEBE89
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 08:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cf9Dna773I3vh1rAmWNi7Pw6rfbNvpuWhmtl3iIWSJk=; b=O8iX1OX9pGQHy1pSwSBRA4E0K
	/6ddBUvYMNymXSpmKE9/o4CAAZ5L68nPQqSzLG+gAMZoFf/ZCSoMKPlfOCR2TNt2GdhkaBVLZqjrh
	EbRrh1irb66dq457dcF4qlBXC+eerh+EEFL7I7w3PpYz5pr3coVJo6WhVyYCKAaPzBKonWNR1g1AH
	OoTLWndBax0p6FZM1BUcRTKYTq8B55LjD1ELmaz6fNwg4zoB6Zs+113JsAevsK/58ljstcW2rUrgx
	MW2HybWYMnIzcq4s/iwPqY9e2cC3BUb1ruWqMOMFyhFfIHVLc7tS3L+qsckK9SeME0U+EVJV8aq+z
	LJfD53rwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRYx-0006Dv-Th; Fri, 01 Nov 2019 07:41:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRYt-0006DZ-Kl
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 07:41:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7058560A19; Fri,  1 Nov 2019 07:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572594094;
 bh=IsvKLHshSHQY3ManjGVgRyLXMN/xgVVz/9MwCZplqXU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A7vKwM2JjSnKbvwKhPT1ykpz/87X0jbgO2qsBGt0+FPG6c68lWfB6/sZJ9WXRWvf5
 FBS0HQCUWH4Hpt27/KqWfuEwmHLX5SLLojFu5AZqk0MtpMzk8cp02AXU2reAcD+gjp
 WTr7bW5XnkEBD9woATiAaavVLc7LMlBY7GPRkXA0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 1D8D960A03;
 Fri,  1 Nov 2019 07:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572594094;
 bh=IsvKLHshSHQY3ManjGVgRyLXMN/xgVVz/9MwCZplqXU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A7vKwM2JjSnKbvwKhPT1ykpz/87X0jbgO2qsBGt0+FPG6c68lWfB6/sZJ9WXRWvf5
 FBS0HQCUWH4Hpt27/KqWfuEwmHLX5SLLojFu5AZqk0MtpMzk8cp02AXU2reAcD+gjp
 WTr7bW5XnkEBD9woATiAaavVLc7LMlBY7GPRkXA0=
MIME-Version: 1.0
Date: Fri, 01 Nov 2019 15:41:34 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <87y2x11dsr.fsf@kamboji.qca.qualcomm.com>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
 <87h83ysbjy.fsf@kamboji.qca.qualcomm.com>
 <73e2d996575023b14c24665b2607a5b3@codeaurora.org>
 <87y2x11dsr.fsf@kamboji.qca.qualcomm.com>
Message-ID: <dbc1ae9bbe59904910b7fe9a6bb67c9b@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004135_707704_F78FC4B3 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2019-10-31 17:09, Kalle Valo wrote:

>> I will test the 3 patches.
> 
> Did you have a chance to test them? Do note that I did one minor change
> today:
Kalle,
Yes, I will test the 7 patches together later.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=28da1fe7a3ffa5c55c52328c21165d9efdf2e94c

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
