Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111BB164C7
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyqyYITZNczD71T8m76ic8TTXVGf5L70IENX4sIVZV4=; b=ThDqPwMtRtllKC
	6OcMRRyjdvy+xYp8VOU7VFeL/9hr1rvcOyR9buIFmECoeHeGQgb7RoBHxUHKaJB8zezJEFNFQnRtu
	EnpEEmO+WtApUTZdpd9gXdescCczxfSm/66ZCFtugvhtSWnVCbTVx2kdEi9fpMJcIGWUxwZyfOSHz
	qoiu+VfwxzPNLY2RovuE/FvFlLUYegcMtvhXxsqJFejzC24OM0bHIDwUy3WGOztpR0nGOp3GStWFw
	cnhF4Y1mAi9JYy7NdczI8B3OJ7ZM/OVnQj9boLts0JOp/xNlf3kuV4+0bls8B1pQaWDXR55wAPVEx
	0MJEZqkZUoGCPus/qa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0JJ-0004Z6-JO; Tue, 07 May 2019 13:39:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0JF-0004YZ-07
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:39:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id ABA1D60ACE; Tue,  7 May 2019 13:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236344;
 bh=1fZe1jBdlBPNRD9P2xmudgV6fNxhFLukb/SXlOljpMw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=B6vNRvsVGNG/khkHYjWsL/fNwPP5bKST2QNkVr8gplIvduWN0Tp60cGry9lSZJvmA
 lK2vifjXQbZLuketJAgotmgLJ9vu+q0/Qd33KGoKpuLp8pbkq2irk07yUc+ZyVfUM1
 zqrfeF7OsgEDxkIUIkJFU219t+YqJAMmAx6NXZRs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3FB6060779;
 Tue,  7 May 2019 13:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236344;
 bh=1fZe1jBdlBPNRD9P2xmudgV6fNxhFLukb/SXlOljpMw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Q9pHPBEecjv7FVg9HmUxpF8LDbrbqpdWwx2IBfXedC85LfEuer+MZwUi5ayskPksi
 mZUI0z4RnQj9h6hpI6gJqwLWPcNmnW96iB8VGuj5bvZCXw7jUp0kJhrkJJhib/rylY
 vlaDei+AAqW3OkFN3wA42QQ64HoVIDb6iVHlCGA0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3FB6060779
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Move board id and fw version logging to info level
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190301145000.22624-1-govinds@codeaurora.org>
References: <20190301145000.22624-1-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507133904.ABA1D60ACE@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:39:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_063905_055694_F5D4F135 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> Board id and fw version is not printed by default in qmi
> cap response message. Move board id and fw version logging
> to info level for default logging.
> 
> [   34.005399] ath10k_snoc a000000.wifi: qmi chip_id 0x30b chip_family 0x4001 board_id 0xff soc_id 0x40070000
> [   34.005432] ath10k_snoc a000000.wifi: qmi fw_version 0x3106836b fw_build_timestamp 2019-02-13 10:24 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.3.1-00875-QCAHLSWMTPL-1
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7b612ed94d0a ath10k: Move board id and fw version logging to info level

-- 
https://patchwork.kernel.org/patch/10835539/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
