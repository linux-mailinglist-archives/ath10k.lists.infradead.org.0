Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46825BC2A3
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 09:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AAtGOgnW7w5nuImu+qyQZEQbQpH/XRNPyhrwRPNjA7g=; b=Zvoef9DkQqeKKQM58EYCOB40s
	tU2HW6hh+tqdvmwcF2ZbQcWrFoI+X1nE16myaiIf51YKLrQnPfPhPzaHO1uHLYHZmuposv/zg+ehy
	7UvKNLvHdCJQXwJosI/CkhqlansbWFdPwx2uCDEJwGAWDSq1PPM3oB1/E4KUJUd27KxKZKApBNjdT
	6x/iv7FGgONrWRk7mj5r66OOVXXleYmsTcui/7nEPGbiWh9eKcg3HiRxPUgnFJiCKYOasvek63Jtm
	qiG4/gX5Og2UAXzarRQTlyD8o+fqsnkZygbOZa97aiTJVubR9u4+V9lsNe2RnA++auWefTcutP/hq
	zqN56//iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfGh-0004g4-4r; Tue, 24 Sep 2019 07:29:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfGc-0004fj-H1
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:29:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3D48D60397; Tue, 24 Sep 2019 07:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569310186;
 bh=ZQHvXAAvun/iyn5uhmzjBkfJfbkFM3xTxI3LqFhJM+8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iw8R4wmlYulfyUDDUS9sUdF8h0FSIcxx1kc7Q3zcfIB0FWYWpmSt/KpZPtAYWtfeZ
 cA81VNgIX4TGdNLIcmphBfKia0b1Jc1bOmMkpzBFlSvSv/UqmJ0JJrCJvZgGcfxB9S
 1tL1+GeTtzH1GQ1cJYTL4ico2Q8yYX7LbHkEtO3M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id CC06B60397;
 Tue, 24 Sep 2019 07:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569310185;
 bh=ZQHvXAAvun/iyn5uhmzjBkfJfbkFM3xTxI3LqFhJM+8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=U4oqLPSt8/sFXt14eWYouqvSCFfemRcLbIHSygmBQLctVEp1Jg0uQRbNDU6UE5tKN
 79L4jH2WuwRxeRMyQtGCB8hg6wnMR6vRFRCsAXx3cEjXG1rEqFtRXuQfEx6K10GiEs
 fd/NvyOY9WB6lRXrjiEE55tgRDsNJgmXlVmcdVVc=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 15:29:45 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v3 0/2] add fw coredump for sdio when firmware assert
In-Reply-To: <878sqe5jxw.fsf@codeaurora.org>
References: <1569241055-30816-1-git-send-email-wgong@codeaurora.org>
 <878sqe5jxw.fsf@codeaurora.org>
Message-ID: <5808a2de48a8dd42f973906a0f6891bf@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002946_599213_57552586 
X-CRM114-Status: UNSURE (   3.86  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-24 13:42, Kalle Valo wrote:
patch v4 sent.
> So please rebase and resend.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
