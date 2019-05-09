Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5B418A68
	for <lists+ath10k@lfdr.de>; Thu,  9 May 2019 15:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95EqZ3/66lvUGZkscY1Dm+8lv1VPMGEySHjLoBWm52Q=; b=EpwX8YkQsQS14J
	4Fy4xYxiAg0lPxYJul+TbLwrKpen55zGe4qOHpZCsRzD7wpcg69ZpbQy9LdufZvYeZzLG+JytRt8W
	Pjgugxx32XyF5a+wAMsX3rV55RthgGFk3/AkwxAxisku9/morQ2rERSkkF6JmWXo/sT1hpIT4kwxY
	LZuZ494+ASZ98RIVfEQ0lB3UMa4VS4Vs2Co9bAbPZH2SeKf8G3fj/mLDC2nA3ZcNLVCZpfRdDNses
	Sqh6Yw7T1coLp9PStSkLgpf1OjUrp0z/xTJMB0iMVc/hETGGmTOPbHsT05esHhigm9fNqLM6/FZnd
	OnEjpjEr1fVaP9oPSA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiuN-0002pK-T3; Thu, 09 May 2019 13:16:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiuK-0002ok-1E
 for ath10k@lists.infradead.org; Thu, 09 May 2019 13:16:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C4732089E;
 Thu,  9 May 2019 13:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557407778;
 bh=GIqliF5524DxevnKWgo78eBvg6VnxUicwiq331kQDDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M9oTIHI/Dcm0AdykEFqZzoKAdYcrBCpBA6FDOW6h3zLbopvc6rM99UP+vUPko+e+y
 ugTveD2krX6Jrd1S8gi614rBDgyrhBeKVZma4NbX5pKS122P/eOPRZD3SqQMYZC9OV
 wkNDcwxTduWYxdZJk1krvIKkSTZngIAUC2r9G8EI=
Date: Thu, 9 May 2019 15:16:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ath10k: Change the warning message string
Message-ID: <20190509131616.GB19094@kroah.com>
References: <20190509121500.4730-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509121500.4730-1-festevam@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_061620_096857_D48BF258 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: andreyknvl@google.com, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 09:15:00AM -0300, Fabio Estevam wrote:
> The "WARNING" string confuses syzbot, which thinks it found
> a crash [1].
> 
> Change the string to avoid such problem.
> 
> [1] https://lkml.org/lkml/2019/5/9/243
> 
> Reported-by: syzbot+c1b25598aa60dcd47e78@syzkaller.appspotmail.com
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/net/wireless/ath/ath10k/usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
