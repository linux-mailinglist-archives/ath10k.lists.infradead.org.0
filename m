Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34267BC29C
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 09:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Dmf4RQauc2YFzs2wIN/CiEiBY06eQv0fTHbZGsTmV6o=; b=nZU
	HSND+qm8GmoRwNQlhAU75O7pjHDUBaELNQiS+1pWkJR0d07KuaQ8P206CUfqIzEOAqhvIhEbca5Ba
	srncS9hf7otc6WabG0pW/1fQKuIG/mGClTeE66OqVbfR1uF7Ng3jWiR8+7xRCRkO2oYarMgZhuV7E
	vLJn+NBgrbxomPza/qDldJwd0UJLUH95d6zmnOaVKKv7FWGLtgdBJ+gLfMYaq5FOfyk2vRhagz4iz
	9i/q9IryWZ0RLO69zkUNlliBejwv38N9MFho0k/GiGJlbLjCRDgF2p/hPWJW1tIZ4is5uJ3EeBZZ+
	A5dbWRwJqVeMJgo4espf9Yf4kok8JkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfFF-0004CA-HB; Tue, 24 Sep 2019 07:28:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfF9-0004BF-S1
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:28:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BB5C260A97; Tue, 24 Sep 2019 07:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569310093;
 bh=m4oh2sKaBrS+R7ssC+0OwiRzrOWe1INnGLzyH2Ljuss=;
 h=From:To:Cc:Subject:Date:From;
 b=pMIcusaQDPRtspI9UF+HwdKIDzAwp1vJPXrfPWkVfNm9TT2y71QHVfyyDcQmMVnjp
 hcmeEsgg8pylILxxb6t6X5MfFYl6YEwVEZzTHOrYFa2grUNE0Dx7Z/JA38exAHGFaQ
 5H1dFt++xNKgcQJ68d3xWon1X+lUtB97n+qFw+XY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2B04060397;
 Tue, 24 Sep 2019 07:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569310092;
 bh=m4oh2sKaBrS+R7ssC+0OwiRzrOWe1INnGLzyH2Ljuss=;
 h=From:To:Cc:Subject:Date:From;
 b=LJQBi6BBiiSV91JtObxlbPBnx74ClJhQRAGZ8xBCsrvlWntXdhpRufEAxY6yTJTEO
 GtvTvDSFx5JY3tmq6nVw5sGthas6mvSH21kDUKUYCF5EjVzqnkQHzPyE6tp5XgzMEK
 jzzaQ82xfJQlFyIQ1x5yq8qJMiWs4V88/3mCOUV4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2B04060397
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v4 0/2] add fw coredump for sdio when firmware assert
Date: Tue, 24 Sep 2019 15:27:08 +0800
Message-Id: <1569310030-834-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002816_437194_ED7312C6 
X-CRM114-Status: UNSURE (   6.29  )
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

add fw coredump for sdio when firmware assert

v2: change code style

v3: split bus type to another patch, 
remove ATH10K_BUS_ANY, 
add bus type for each layout

v4: rebase to latest commit

Wen Gong (2):
  ath10k: add bus type for each layout of coredump
  ath10k: add fw coredump for sdio when firmware assert

 drivers/net/wireless/ath/ath10k/bmi.c       |   1 +
 drivers/net/wireless/ath/ath10k/core.c      |  10 +
 drivers/net/wireless/ath/ath10k/coredump.c  | 349 +++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/coredump.h  |   1 +
 drivers/net/wireless/ath/ath10k/sdio.c      | 338 ++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/targaddrs.h |  10 +
 6 files changed, 704 insertions(+), 5 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
