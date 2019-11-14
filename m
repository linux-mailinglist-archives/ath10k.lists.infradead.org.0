Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2145FC0F5
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 08:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm/3qvnTQZu9msFzKx0fPtlT/XaDskwHriBZc1V81Mo=; b=uCZwMHJpSZRZjp
	Nmdh3flDAU2EFhezqQO6r3g9ZszeWRdiNMyJ8/IwsMi8Poen62OKMwa0gROnXRwcyKDUusxAFufVR
	cTTgOhiihkVyeAcI6UBa3GOseKJVuCSx4FRd5Um54KdlXakniiPrh9DXKJEm5Q3Ad0U534CaZEj49
	e2RZUo76iRMlgSvxzO8RzpK99yT6rRlImu/SiYc+qqmRYhprbxGccfrbYHRVeY2rtGAXkg8WKntg5
	sKa4I4S4rQiC8j7C2GNic/L1RoJ2yO7D+D4/EVipUSgbdXgSD2wnSZ9A0XowiqHPp/sy9cuhaJdwq
	QFJzjvWn90qjjzRaJX0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9mT-0005a3-Aj; Thu, 14 Nov 2019 07:43:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9mP-0005Zc-He
 for ath10k@lists.infradead.org; Thu, 14 Nov 2019 07:43:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 4453360D95; Thu, 14 Nov 2019 07:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573717380;
 bh=dZvmqQ58GRtsL8g5e4gnM7IbfR3M6/bfC460IXbV33s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=oTPq9uMlVAOEP/8x0SynOQFI46f9Me6X2Y6HXonDXs5ua7dIU3goJx2KZB3dEbOZF
 2HzLxUQsqFsGIMltEAfCAhaeE1CyNTwvHbKwkDWQO/D1JNWjiqKL3/s/inQ45Tl/no
 2jSbIhiB0Le5GuLecUd/Q10jJKPbHJyuFa/kSKhY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EE56260CA5;
 Thu, 14 Nov 2019 07:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573717378;
 bh=dZvmqQ58GRtsL8g5e4gnM7IbfR3M6/bfC460IXbV33s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=oL4QulW1wnrKdj2s3Mo7QbKJq4Z5Mw7tqigcO4UYBwQ5wOPcRHKqesyLgmvhJ7acG
 OH9aLYnCZ19B5kmJlt3VE5D8EX+dypApdfmZ2w+fisaaaTQX8JfNoYSb+r5ono2abD
 yNFSdwNfSeRqiwWm0DoQ/25oFQDSwV8wZyMMhEdE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EE56260CA5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] ath10k: add cleanup in ath10k_sta_state()
References: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
 <20191113192821.GA3441686@builder>
Date: Thu, 14 Nov 2019 09:42:52 +0200
In-Reply-To: <20191113192821.GA3441686@builder> (Bjorn Andersson's message of
 "Wed, 13 Nov 2019 11:28:21 -0800")
Message-ID: <87eeyax5s3.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_234301_612207_73F7D344 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wenwen Wang <wenwen@cs.uga.edu>, govinds@codeaurora.org,
 jeffrey.l.hugo@gmail.com,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER"
 <ath10k@lists.infradead.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> writes:

> On Thu 15 Aug 14:04 PDT 2019, Wenwen Wang wrote:
>
>> If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
>> leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
>> go to the 'exit' label.
>> 
>
> Unfortunately this patch consistently crashes all my msm8998, sdm845 and
> qcs404 devices (running ath10k_snoc).  Upon trying to join a network the
> WiFi firmware crashes with the following:
>
> [  124.315286] wlan0: authenticate with 70:3a:cb:4d:34:f3
> [  124.334051] wlan0: send auth to 70:3a:cb:4d:34:f3 (try 1/3)
> [  124.338828] wlan0: authenticated
> [  124.342470] wlan0: associate with 70:3a:cb:4d:34:f3 (try 1/3)
> [  124.347223] wlan0: RX AssocResp from 70:3a:cb:4d:34:f3 (capab=0x1011 status=0 aid=2)
> [ 124.402535] qcom-q6v5-mss 4080000.remoteproc: fatal error received:
> err_qdi.c:456:EF:wlan_process:1:cmnos_thread.c:3900:Asserted in
> wlan_vdev.c:_wlan_vdev_up:3219
>
> Can we please revert it for v5.5?

Yes, let's revert it. And thanks for sending the patch to do that:

https://patchwork.kernel.org/patch/11242743/

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
