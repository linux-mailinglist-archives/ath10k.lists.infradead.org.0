Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73257B64F6
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 15:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evnk1A2/aIrDt+s/fSISjXXyIwaf8e4grFxWkniuBLc=; b=tMCEfYO/BcQflW
	HAGq8N2oV9Z+2aMnLjikkea97YGKBcySP26quQEjAqk48pDBSqQ+754aeRUfAIwMt+AcP32yOtlL0
	TBEzfUvpcamFod1db6CLqxjthEat5OmziQsdVtxoPZfnEjsEVUyhFrg8V2rf4COUVkImO/C1gcZ/y
	pjqOfHQyh5dSpXYb67CbEwUKpRlazLVWBx3L+8yfRnEbMrdUNO9VcuiTEC44rcd9l1hwRDWjQOSDH
	f8zoYs/fU2iacWChDKOOWyvG9hm6hucnaY41bfFPNLyaEh/Z11cL+0z0bs9QnHUZ29bzudE1KyieL
	L1sIO6Gq6ZDCiZMm4O5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaGb-0008Jz-0n; Wed, 18 Sep 2019 13:45:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaGU-0007oD-Vb
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 13:45:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 91240614C3; Wed, 18 Sep 2019 13:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568814302;
 bh=eGY3eld6Fw7wIMSHDmpahPNMKGlKeflNpx89TJV5ceQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ZDOoxBstxJ37Hxm21UqIlWr/RuflPElsROpaJxmVz9sOmJVAq9DJ3N5Y8bWJnhp8+
 x7iTT+ewqAocFoYfea2sjOAV4tjPS2y63k0+fvJ9EhQCoACo7C5wqpKBM0oKz2zzWh
 tX+eSVtsHSPPGpetBS5Or85CzbMCT3YJ+tsN5It0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3DE126133A;
 Wed, 18 Sep 2019 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568814302;
 bh=eGY3eld6Fw7wIMSHDmpahPNMKGlKeflNpx89TJV5ceQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=CNhjcR2uPZ/2TglrDOcGV39aZjs7u4Evh5Cx8p4J60NCrgMGFxfiPeYGvkoE6pi0q
 6i3N1uuPI8g52rHNnIvVMypT76ht4MOxae0zFfdvXeCOZfNOmiO4LdYcMSWkSTyih4
 Z9Jop5zpDgBPmAL8JS9XOeTcYgedt13/ON6rhF6A=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3DE126133A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] ath10k: correct wmi_tlv command params to enable
 pktlog for WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1558087516-666-3-git-send-email-aambure@codeaurora.org>
References: <1558087516-666-3-git-send-email-aambure@codeaurora.org>
To: Abhishek Ambure <aambure@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190918134502.91240614C3@smtp.codeaurora.org>
Date: Wed, 18 Sep 2019 13:45:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_064503_054197_5807B88D 
X-CRM114-Status: UNSURE (   6.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Abhishek Ambure <aambure@codeaurora.org> wrote:

> PKT log enable command expects pdev id in enable params which is missing
> in current configuration. Fill pdev id in pkt log enable wmi command for
> correct configuration.
> 
> Fixes: ca996ec56608 ("ath10k: implement wmi-tlv backend")
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00963-QCAHLSWMTPL-1
> 
> Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

How do I know this doesn't break QCA6174/QCA9377?

-- 
https://patchwork.kernel.org/patch/10947635/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
