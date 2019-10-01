Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D643C3427
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGQiGrnf74794UOvQ1RkxwNJtQGJuB0e9e0kaYKqpl4=; b=kZwbS3J1jYvadn
	XRVOKgjg2SMeMmURTbhAmmCHMzLvWvOv7LGf5ft+7XuIQp4uYfrBjKWTyWecrnmupYZZT7M6cVmEG
	4M88V1atdsBDMDVPYtkKbwgIqhKwiJ21qUN2JnjwuRq6s7uUlbeFTOoFtXAyzMTpgqDsXoRzyOdU3
	R9ksrHta2cWplfw30JsuXlpyX1QeV5sdyCTAMv+sNZrLIWU3PjMhU0pwlr9gKPzLzOoV61mBNhmZD
	FgZt8Qzp9BcpmIY2R71PHTtRo5jV80aYYx9hfzIh9tP8TwX58rRrm8WrAyyMVeBiqmx1bSNvmOcpr
	y7P0MbQWDDcpEz4O6FBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHBD-0000Es-BT; Tue, 01 Oct 2019 12:22:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHBA-0000EV-DB
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 12:22:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1F23A60A60; Tue,  1 Oct 2019 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569932576;
 bh=+GW/X3g8lJp7cIRJtrReo6a69n6wrENFhuWCZ3R57II=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ChlGfm7uveBPlBGyQrDupViQzXRS4UdzcI4PKzNxExAzJ05CmPyhk8a6SXp6ZjTFl
 uwaIvFxf/0/O2W2A/j2STPRG8pY5gV6oVQTHrxnZ8zd6mzBLaPwPxpd76r0B2FVpDW
 r8TO5fqB4yvQqtyDZNXPWOGAxxto3CdLY6EHpCGU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AF59F608CE;
 Tue,  1 Oct 2019 12:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569932575;
 bh=+GW/X3g8lJp7cIRJtrReo6a69n6wrENFhuWCZ3R57II=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ZMjJ22rk0vo4oQ3NcyIGt8V3T6BMP2sv5G/nA9h76dOVk3GaV3LnfSyD44BOTmeAU
 lQgGZLckH7yW3oLTMG6WSUiJwFfmwtiQaLT66KwiqWHu4q7cvjsny31e/0UxJgbEEr
 +TUwijpe5soTvi2w0lixFlZirG18dVZyNYY6vEnM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AF59F608CE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
Subject: Re: [PATCH v2 5/5] ath10k: sdio: remove skb_trim in TX path
References: <20190417191503.18814-1-erik.stromdahl@gmail.com>
 <20190417191503.18814-6-erik.stromdahl@gmail.com>
Date: Tue, 01 Oct 2019 15:22:52 +0300
In-Reply-To: <20190417191503.18814-6-erik.stromdahl@gmail.com> (Erik
 Stromdahl's message of "Wed, 17 Apr 2019 21:15:03 +0200")
Message-ID: <871rvw64f7.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_052256_464302_46346881 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Erik Stromdahl <erik.stromdahl@gmail.com> writes:

> This patch fixes a bug with padding of the skb data buffer.
> Since skb_trim can only be used to reduce the skb len, it is useless when
> we pad (increase the length of) the skb. Instead we allocate a new
> buffer with enough space to contain both the TX data and padding.
>
> Since some skb's have multiple references, we can't use skb_put_padto()
> to extend and pad skb->data (since it causes a panic if there is more
> than one reference).
>
> Also, in order to avoid the following possible deadlock issue (reported by
> lockdep):
>
> [   26.508508]  Possible interrupt unsafe locking scenario:
> [   26.508508]
> [   26.515314]        CPU0                    CPU1
> [   26.519862]        ----                    ----
> [   26.524408]   lock(fs_reclaim);
> [   26.527573]                                local_irq_disable();
> [   26.533508]                                lock(_xmit_ETHER#2);
> [   26.539453]                                lock(fs_reclaim);
> [   26.545135]   <Interrupt>
> [   26.547769]     lock(_xmit_ETHER#2);
> [   26.551370]
> [   26.551370]  *** DEADLOCK ***
>
> ... we use the GFP_NOFS flag with kzalloc()
>
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>

I replied to v1 about using skb_pad(), let's discuss more there:

https://patchwork.kernel.org/patch/10891949/

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
