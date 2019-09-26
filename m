Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9579FBEAA2
	for <lists+ath10k@lfdr.de>; Thu, 26 Sep 2019 04:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+8ZLvcCwjlbHlHXSG9MfH4q+wcHnVYjetrGIWSo4cU=; b=WP51ikUXf0o8v7FNBQeJhD2EY
	tPffzidEggoe1Eeu/cP0LDsPLfaUFFi1axlxdKAbzjGP2U3w45/NNmmmGpKr+5CsE19yS5uzc+AXU
	kmyDzzB0mNBmDyq//qGkSx1PbZSSYzJhzlS5yTwGXeH7qzk+tVWKh8HEzqBNtDkER287q4drr40K/
	kQ1zU9lYG46GiWlM6QJd+rUxws32xG/2yGYVzi7cs96BBNtKlRWHhM4R9GQnChP7kdfMx/F75lJ5d
	JGmmBuQBpmi671hRoj2wFeQA+BDucshlKvf9HfHmT5Sc5NzDIER1VOK7DKhT9jI69S01pYuRtcf2a
	JGatNF77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDJau-0004Yh-Sk; Thu, 26 Sep 2019 02:33:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDJaj-0004YI-KN
 for ath10k@lists.infradead.org; Thu, 26 Sep 2019 02:33:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 16DAB60397; Thu, 26 Sep 2019 02:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569465191;
 bh=Kn5XeDVTMK5lvLFi7xSrIIhJA3qP1OwTwlM7EIYMiZ0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oaoTRsByeJI0eJ2PgIYnSY6FAaCQvTguHzPe/O1nOJiqeSP2FQoFsG+gOSeCw+iq4
 m+6mjycwnzUrigMjLnmG+KveRIw/0MDIniTfc7i0vnkoq1+yEPj/Fbh5J+g678tCxa
 zM4wvJdT4Oh6UZe3JLWEjpbqN4eAh4S0V7V3epCc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9F94A60C72;
 Thu, 26 Sep 2019 02:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569465190;
 bh=Kn5XeDVTMK5lvLFi7xSrIIhJA3qP1OwTwlM7EIYMiZ0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nf9HPXjNtdUSHRXYSSzhJn6ALFXnDa3rR1KGWVb4lkfGRBtJoASkKq0V48uRvD51F
 0y9krXGuPCTOTwy0tifttti2F8iR9qv21gbc6i8Vuv+C6aunKAQHYlOYQ+fxFOTj3R
 HNzkXPDBHp/rYsX7HMsX5KFCHnjVMVOGE2qFmOec=
MIME-Version: 1.0
Date: Thu, 26 Sep 2019 10:33:10 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
In-Reply-To: <11062c4e1659ac759cb73af7d46a6db2@codeaurora.org>
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <87sgon8inp.fsf@codeaurora.org>
 <11062c4e1659ac759cb73af7d46a6db2@codeaurora.org>
Message-ID: <7f5d822f2dd1f98ba26a8fdecb5dc011@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_193313_696633_E68939C4 
X-CRM114-Status: UNSURE (   3.71  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2019-09-24 20:32, Wen Gong wrote:
> On 2019-09-23 17:29, Kalle Valo wrote:
>> Wen Gong <wgong@codeaurora.org> writes:


patch v6 ath10k: improve throughout of RX of sdio has sent
new patch v6 only have 3 patches, the left patches will also sent later

Alagu Sankar (1):
   ath10k: enable RX bundle receive for sdio

Wen Gong (2):
   ath10k: change max RX bundle size from 8 to 32 for sdio
   ath10k: add workqueue for RX path of sdio

https://patchwork.kernel.org/patch/11160247/
https://patchwork.kernel.org/patch/11160245/
https://patchwork.kernel.org/patch/11160241/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
