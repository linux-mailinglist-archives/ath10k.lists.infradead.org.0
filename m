Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CFC1AB474
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 01:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VlciDGOHE8Ny4NZ2H9YoMNgdeGO0OPu8UVMy6dIZn1A=; b=DW8f6CdaIF29mS
	7KYDJyHKiDq+OlVNUN6EOp0CkdAyFslybbnXCEUP5Od7ZnsMPzhMoWfCtecoRC7IcSHMPj7tem1ex
	43ddXTBPL1FLVoQwF7AAMsswy8kAUc5iekoxj3qJtzIeTYwoDOecnXZTtNHq2eKOvYmk4XAhy0Kuo
	o/9V+DSt6bUU0iAFyxwe2v+csZagi+EYVIX6Q91SyYMDMXM3sukFlmblqvKVMfW6xSoTERJ7+NscA
	0rl436FfxHB1knVtugBZuMhCG5q9On8BvjZQogZ/+22xbkPaJU8plACOs7cNnO8CGvY90D/xzZmsc
	hgL+/Dd7HchRCEo6VrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrr3-0002aZ-8N; Wed, 15 Apr 2020 23:54:05 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOrqy-0002a0-Rj
 for ath10k@lists.infradead.org; Wed, 15 Apr 2020 23:54:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586994842; h=Message-ID: Subject: To: From: Date:
 Content-Transfer-Encoding: Content-Type: MIME-Version: Sender;
 bh=3JQyfpR64Pid+jKQG9KASBulzxcNR7NxWaQf05WURqQ=;
 b=f+wgfA60dqWEb39N9ZoKdmE4HH2joUg0v8zmc6cEYmV8yRKrM5km7ksIuxlt8fn2ik/OAhQT
 390DVwlLkmSrYB3CXH6dwur2rsnvkzLKDkglzkPqeJwib7eu+q/Ep/KxB0pBLCVNt2NsGg9A
 XC2wIqEcwwnDRJXi6vwVzsgf2Zg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e979e93.7fe912886960-smtp-out-n01;
 Wed, 15 Apr 2020 23:53:55 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5592FC433F2; Wed, 15 Apr 2020 23:53:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 321EFC433CB
 for <ath10k@lists.infradead.org>; Wed, 15 Apr 2020 23:53:55 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 07:53:55 +0800
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: test mail, please ignore
Message-ID: <1b448939dcb17cd41e89b94ae143931a@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_165402_722713_419AA772 
X-CRM114-Status: UNSURE (   4.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

sent directly with codeaurora webmail.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
