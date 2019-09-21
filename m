Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB478B9DA3
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 13:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iihPb4Y3FpCi5u9sDrVVC2+5KFE1O+z0nrcz732f4V0=; b=BzYlPd/l3sKHMj
	vLUe9nJIO+G9jn2/grDCm8DQsRJRnV+KYQlZ780l4KqMrUOAZJDO6IHBxTSdZjkgKhY5YLER1gxLX
	nVmu/Jc60NzvDq5HdXZjLEE9Vpxm5PppvEFOMCDbBTBXDKZqogyAnnIikKfZTItpqBUZnPC08VhxA
	BiB3x0odT8Y+HR9t2KZqb3XPXGh6ZvBOLFD76yqmemkUJPEGwKqj3MrNESaNByYXnHNoRM8efcr86
	iPxtLx7tmxKYKGie8iGRJCJhQQyw2mXXCNfae8gSAOZlync2kfWBRIWGXwndZuzgUGZho0Eqg2nDW
	I4QtWPKhAk4VJQ3RnzWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBdgJ-0000wU-HG; Sat, 21 Sep 2019 11:36:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBdgE-0000w9-Lp
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 11:35:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 59E9A602B8; Sat, 21 Sep 2019 11:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065758;
 bh=Sa6iWhDUkvaHshrTDTfsw1RXV00uclcGvBV40ItW+uQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=d1MZjgGyEBrftbNdvNSjHlxSBEVZSPjIJNF/+EJcnEXWqaQ19KrVLq+Adred4l8Tt
 e5i+Xr7o1OtHp2nEy3ZAWJWR6yUSYLZgvR+di+ujxulJmLiLZ1zHHIzb/SLQbEb94w
 bJyeK3fHFr4zmVPVRGjvfQvdsviO3iwprD+EZmCM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E794660790;
 Sat, 21 Sep 2019 11:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569065757;
 bh=Sa6iWhDUkvaHshrTDTfsw1RXV00uclcGvBV40ItW+uQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=B4QpphBypAxeJ7sPnuF+2jsp/m5eIeMoMHzLFhQ0NBAv7NQdbE7x4B8T7Azep52Cn
 jaxgdoRPsY0l9Zc2D7uTglKTpZPhhVJHtyo3a+bzC7AXR63E9Oyzqh6PTbcuzl5Tuq
 K0CTM7bQLXKf0ZisOcJyswK98dZS6SPW6EXSs5SU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E794660790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
Date: Sat, 21 Sep 2019 14:35:54 +0300
In-Reply-To: <1567132338-7407-1-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Fri, 30 Aug 2019 10:32:18 +0800")
Message-ID: <878sqhc25h.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_043558_736031_1F012005 
X-CRM114-Status: GOOD (  13.67  )
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

Wen Gong <wgong@codeaurora.org> writes:

> When firmware assert, it need coredump to analyze, this patch will
> collect the register and memory info for sdio chip.
>
> The coredump configuration is different between PCIE and SDIO for
> the same reversion, so this patch add bus type to distinguish PCIE
> and SDIO chip for coredump.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +void ath10k_sdio_check_fw_reg(struct ath10k *ar, u32 *fast_dump)
> +{
> +	int ret = 0;
> +	u32 param;
> +
> +	ret = ath10k_sdio_read_host_interest_value(ar, HI_ITEM(hi_option_flag2), &param);
> +
> +	*fast_dump = ((param & HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_FW)
> +			     == HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_FW);

The commit log tells nothing about fast, it should always document the
design decisions. Why this fast dump, what's the benefit? Why not always
use the fast dump and forget the slow dump (or vice versa)? There needs
to be really good reasons to have all this complexity to support both
slow and fast dumps.

> +	ath10k_err(ar, "check fw reg : %x\n", param);
> +}

This is a debug message, not an error. And debug messages should use
format "sdio hi_option_flag2 %x\n".

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
