Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E579E126404
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 14:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/rb+W1jiSx/mQTkKmAwFsyNun7o6o8fx71fbKLvkNo=; b=oUdtkFH+sdr7Rp
	zuMO8mktnk097xc7pvFAno5ov75p8HpblScDKrmJ3xSWG+D9xf6HrKUuRuAlIIz2fC19sCeD2PNcU
	+W1NKyccl5c8t6I8qNKMpiaPkeoY8LOGy90EgJ8KlstuTCkqylpjGrwRQKbq6MToFLZ7viQ5Rv9sc
	bkrVWyhDHXkoaaI6JT95O2LuGONRXFJ8dOGP7evdAnh91VqpoO+6FkRrXJ0nUCNRLIdAqoihYXu3v
	3bgXohUhRTZYezqWL8daKP6lQ/HWSLoV9R76D+GzqTuEZCsijIxBj9GrV6Te5CF0LG3K2ft6+zAVH
	TjDz9C6xCDDODvdDQG+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwFd-0005gS-PJ; Thu, 19 Dec 2019 13:54:01 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwFZ-0005fw-0o
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 13:53:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576763637; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=zaZmRZ6YeKeeaMSMvLqQcKASEO++ARYDbyb8fi6gsjw=;
 b=dCwwDlTgaM2gF1WIenMCBYw5tUw7UZv/zxm4ZrkEaQD4gzICgYoZrZGhR0BEWZgGHxw9iwYD
 b8wmXgQzWYjFlY4vX8Tf64rbmJbh6AIrLrKZV4OxS/G281SmyYe6WaR/PXWYiLU55ap6+Zpm
 cSRuqIz06yD9QrYzdmtmDlON+Bs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb80f1.7fb23f6317d8-smtp-out-n03;
 Thu, 19 Dec 2019 13:53:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 95A66C447AE; Thu, 19 Dec 2019 13:53:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1FD38C447A5;
 Thu, 19 Dec 2019 13:53:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1FD38C447A5
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG
 when safe
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
 <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
Date: Thu, 19 Dec 2019 15:53:50 +0200
In-Reply-To: <20191219131539.1003793-2-bryan.odonoghue@linaro.org> (Bryan
 O'Donoghue's message of "Thu, 19 Dec 2019 13:15:38 +0000")
Message-ID: <87woas5slt.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_055357_816699_D86369FE 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: akolli@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bryan O'Donoghue <bryan.odonoghue@linaro.org> writes:

> ath10k_pci_dump_memory_reg() will try to access memory of type
> ATH10K_MEM_REGION_TYPE_IOREG however, if a hardware restart is in progress
> this can crash a system.
>
> Individual ioread32() time has been observed to jump from 15-20 ticks to >
> 80k ticks followed by a secure-watchdog bite and a system reset.
>
> Work around this corner case by only issuing the read transaction when the
> driver state is ATH10K_STATE_ON.
>
> Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

What ath10k hardware and firmware did you test this on? I can add that
to the commit log.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
