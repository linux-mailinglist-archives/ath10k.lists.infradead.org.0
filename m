Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DECBAEC0
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajQSiUwPdQ5UjbwpeZMWLxbruldeXm9go1+1jxedBww=; b=CGRnkoiqchmBMY
	p8ldcmZaKupnhWwrkpoJ69u8Im0BEYgP8yr2HO6s5hP8WhLC6mU4omuHEYL/Qu4sXc1UUAnCSf/il
	J3QzzwSFazh9BVtiJUkrT3qJyXwGEUo23O5tvlq2cAsfkdmfT7Se/11PotOnKwdcONRXqJAEA3Veb
	6nEmPGMrK21+dbMR3dvFTRxNYfuhw9douBB9hcQ5FT2pCjJ/C3fAge2wGYPoCPildKJPOwRmbrVXf
	2kt1cyTH1ZdN0N2yOlwPVL65Q6Z3Zy9gZmaxzx2GF5T+jsghCKgo1SDsQqy31sLqgzQnL17ZqANmd
	dvSIZAwmrps38Y+2Z+Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJBh-0008A2-E6; Mon, 23 Sep 2019 07:55:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJBW-0007cs-S6
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:55:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8F36C6047C; Mon, 23 Sep 2019 07:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569225302;
 bh=MRSOLs+IL9K3Xj2N/eEkLuoH7I546KXrmOYcpE3Oohs=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=mQBVbCFXnPuibARCZEgivLrwRD9Iij8gFXYeTRaF80TJcSiFMoYzUbSBMqJQLoRtz
 xSdgHimpGFpb+OIwygqcj/6aLRk8OHNhvafg8unN7iy2bNLYmIoZiNU97Q4y34giQf
 C0zFoBAcr97Q8DKcdup7jdCAuz3pW9py9+LjBTc4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 24EBA606DB;
 Mon, 23 Sep 2019 07:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569225302;
 bh=MRSOLs+IL9K3Xj2N/eEkLuoH7I546KXrmOYcpE3Oohs=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=WyFwRVegsLJj9N/grUPMqaBHpVzKrVT8SKCzXFx10E8Advf133pwkyLIhASw/yXb2
 5yczE2k1TlLDKkXFYdDJMblOggp7W+ZwxtirtteStxPKv/WiR7Ja7G1jetibBk+85D
 NX+SvBcBlxmGtQ+9C/xReCLola3xu+C09CtSIDWQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 24EBA606DB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3] ath10k: Add support to provide higher range mem chunks
 in wmi init command
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1551098926-24644-1-git-send-email-svishnoi@codeaurora.org>
References: <1551098926-24644-1-git-send-email-svishnoi@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923075502.8F36C6047C@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 07:55:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_005507_919156_817B9782 
X-CRM114-Status: UNSURE (   9.06  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Surabhi Vishnoi <svishnoi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Surabhi Vishnoi <svishnoi@codeaurora.org> wrote:

> With the current implementation of wmi init command,
> there is no provision for the host driver to provide mem
> chunks addresses with more than 32-bit, to the firmware.
> WCN3990 is a 35-bit target and can accept mem chunks addresses
> which are above 32-bit.
> 
> If firmware supports address range more than 32 bit, it
> advertises the support by setting the WMI_SERVICE_EXTEND_ADDRESS
> service. Based on this service fill the upper bits of paddr while
> providing the mem chunks in the wmi init command.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

40f4ef5e9232 ath10k: Add support to provide higher range mem chunks in wmi init command

-- 
https://patchwork.kernel.org/patch/10828535/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
