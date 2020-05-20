Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3251DB5C0
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 15:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Xp0QnxEGu7HYjihZGxcMw/e6DrKeRsWptWzq1WGbYU=; b=UPOB1NUhgpsG2/
	ZZBC9yVvC9DNysMAIoZNTQQLtG/MsOmp5oZN7VSNYh5SsdWH2hbePAImoJMwYYTRlmQfd3A1hhaa3
	bHGm8lBf6xtFf9wLEfCpMwdJxJ2uVUksxj1nAMHsAFqS0rBJ+owh1of9Rdc6rrCsjauTlKXdvBNSU
	5afgvA3Rj/pq8k67nD7SPnYRvhnVAf5q0feL2sDRPWZ7pjJY1QEydFkwz8hLR0upQa89oTN9vpqkS
	uouHxrHw3AF38E8wZuKpbBfro2V8RnmmNtVBTFLwVCFn7F9MmWajMozqK1N5cBSYQH5fVNGqhGuBS
	cZaNedjo/M4X2xOi8bVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPCv-00005A-QH; Wed, 20 May 2020 13:56:29 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPCs-0008WD-9H
 for ath10k@lists.infradead.org; Wed, 20 May 2020 13:56:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589982985; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=1f2c/IoPMuBpYr8x0BXg13qmCOpDEFtIr7XsM2sZm6k=;
 b=X+DlpvBSQB5LCtENXRFNI1Ewodfd9ckSZ1qb5JXmoiHRyKpXFhqBjWVJ6WJoA32zNNuqPNqc
 2Lm7ye4HkuIgX1DuydHDjjNn4m7k3lgiIFE7otPl65QRsOnDldaeIYwYaiD2PMPibqUsDrlu
 BbxnSHivvEXF/Y9ciF1svPYBNTU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec53707.7f1f29df6bc8-smtp-out-n04;
 Wed, 20 May 2020 13:56:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3959BC433C9; Wed, 20 May 2020 13:56:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6D485C433C8;
 Wed, 20 May 2020 13:56:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6D485C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Markus Theil <markus.theil@tu-ilmenau.de>
Subject: Re: [PATCHv4] ath10k : Fix channel survey dump
References: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
 <bee1439c-de98-dbf0-ee82-88620ecc560a@gmail.com>
 <f3da0683-1e1e-6c67-08bb-2147e745a317@tu-ilmenau.de>
Date: Wed, 20 May 2020 16:56:15 +0300
In-Reply-To: <f3da0683-1e1e-6c67-08bb-2147e745a317@tu-ilmenau.de> (Markus
 Theil's message of "Wed, 20 May 2020 08:48:48 +0200")
Message-ID: <87eerebthc.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_065626_381761_3210E9E0 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Deere <24601deerej@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Markus Theil <markus.theil@tu-ilmenau.de> writes:

> I've seen this patch got dropped again from the ath.git pending branch.
> On which hw/firmware combination did it fail to operate?

It's deferred at the moment:

https://patchwork.kernel.org/patch/11532357/

The conclusion from the other thread was not clear for me, so I put it
into deferred and will take a closer look once I have time.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
