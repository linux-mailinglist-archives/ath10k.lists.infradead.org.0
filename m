Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F142BB29D
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 13:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRfl3kyu5ej7tCB1Tv9joOZ4mNthDIzY9N4UiaFOzSc=; b=dlZTSHtxvHbNolcnKfn9kBQKC
	SsLukYGMwz3HehFNma/ACJH3Q+0vzIS+SULW7rvJ6wyFSSYner02DYP56dx5kE0c7mcjP6Ihv2UGg
	mX3VrkwTDfhBY60B+v9bv3dci6YCQ3Z29TSSPFdcQtQiFQCHMLsdD02ALmXzqJn/jwfcmTGt7ZNwV
	eFodx+tE5aLd86HTpVX2kMbiFe7CQGnFwURnraRPFPhwDpoUw7pT08izaMnHBhwyWDs6ipAAzzC56
	dQ9682O5eMPCIdoB43Upj7MgLihQvikI1pOX+OAr0r5bXEThyUCGyzfP5doWnM7Y3PmULOWS+yFlM
	QAc5pwSPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMBU-00079Q-KX; Mon, 23 Sep 2019 11:07:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMBR-000798-70
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 11:07:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 497B7602F8; Mon, 23 Sep 2019 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569236828;
 bh=5w4p+WkGhNuqALfdt08qtRD6ACq41am2Wjdpc1pa590=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QiIsZadxxVC4Xje7qCX/z5fp5fSJky1x1mSLBvTX8lMYNzcydVrnB8I6MxGnPbjCF
 gHVwAW2XuL6CbENlQHi9Qyj/AVkHMM1PiMYmwTJzqVFfcO1Gr1q1Kx6c7Xlkb+wRqt
 wX4sKd0QK4nAVZLMeEXUJrplOTJA6dvq5d6HHINI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 0307A6021C;
 Mon, 23 Sep 2019 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569236828;
 bh=5w4p+WkGhNuqALfdt08qtRD6ACq41am2Wjdpc1pa590=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QiIsZadxxVC4Xje7qCX/z5fp5fSJky1x1mSLBvTX8lMYNzcydVrnB8I6MxGnPbjCF
 gHVwAW2XuL6CbENlQHi9Qyj/AVkHMM1PiMYmwTJzqVFfcO1Gr1q1Kx6c7Xlkb+wRqt
 wX4sKd0QK4nAVZLMeEXUJrplOTJA6dvq5d6HHINI=
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 19:07:07 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
In-Reply-To: <878sqhc25h.fsf@codeaurora.org>
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
 <878sqhc25h.fsf@codeaurora.org>
Message-ID: <706142499b2f13de278262f3c52c2047@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_040709_281848_7367E3C7 
X-CRM114-Status: UNSURE (   7.69  )
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

On 2019-09-21 19:35, Kalle Valo wrote:
> 
> The commit log tells nothing about fast, it should always document the
> design decisions. Why this fast dump, what's the benefit? Why not 
> always
> use the fast dump and forget the slow dump (or vice versa)? There needs
> to be really good reasons to have all this complexity to support both
> slow and fast dumps.
fastdump is new added in fimrware of sdio, so if it is use old firmeare, 
then it will
not support fastdump, then it need to use slow dump type.
it is to compatibility for old/new version firmware.
> 
>> +	ath10k_err(ar, "check fw reg : %x\n", param);
>> +}
> 
> This is a debug message, not an error. And debug messages should use
> format "sdio hi_option_flag2 %x\n".

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
