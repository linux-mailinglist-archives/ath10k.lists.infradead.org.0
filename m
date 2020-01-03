Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9A512F8E9
	for <lists+ath10k@lfdr.de>; Fri,  3 Jan 2020 14:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SRIp9p9+UDRBJiqiXMj3l2OaiIlgtrNuMRoMFh64btc=; b=mIctQo1Ga3v0/8
	s+uAv485rEOMqBJkZ4jNBiyVVNL0Ex8Y/Hq833Jc3CWap5jXzZLJz+zwG3K5omnARkOlQF30coq0g
	XTE71PPqC5YZxkmFGH+af1Oe+ZtDEHfemSfqHgXuHOYLmfQAzJzcV48d1KpCYUeUdKCwmIGs+qfnl
	SG2XBfwiQe7CqL8f+BNFDah/1fl6+jRGwnfkYeSmtKO1JA73Whama9W/h1XQViZrj/dkNvpz8QoJ5
	30XUWWXdWWQawTu0UMitOQHatRatS7h1qgTcXaJQLjyKnySU5NWVAp8/DM1Q7JCgjtWn8hPbA+x9N
	16lfp1x8HXtBuBR627VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inNFe-0000Cg-Vw; Fri, 03 Jan 2020 13:44:31 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inNFa-0000BZ-Ef
 for ath10k@lists.infradead.org; Fri, 03 Jan 2020 13:44:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578059066; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=kdGb5TcHjJlYgNPD8+3CYz77uIafQ2H7Cpz0eIy/mHc=;
 b=Ms/tKo4+gXZsVl9sO4L03hgEEXSynQDHdddckVVa4pVCdzUKS+F1vcnFzWP1qI1pYY/MnCv/
 Fb7/a995nyntM8NIl5SQuE1R1Aaks1JkQS5Xnw7lPkaYTR8D/UF4F/AHRIUU3hBHIkYaNcpu
 FzS9bdKgghiXnRg3xXtRrpeHmsA=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0f4536.7fee59269d50-smtp-out-n01;
 Fri, 03 Jan 2020 13:44:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AE012C4479C; Fri,  3 Jan 2020 13:44:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: govinds)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6668FC43383;
 Fri,  3 Jan 2020 13:44:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6668FC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: robh@kernel.org,
	devicetree@vger.kernel.org,
	ath10k@lists.infradead.org
Subject: [PATCH v3 0/2] Don't call SCM interface for statically mapped msa
 region
Date: Fri,  3 Jan 2020 19:14:12 +0530
Message-Id: <20200103134414.15457-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_054427_449332_8F0A9EE6 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For some targets ex: SC7180/QCS404, SCM permissions for MSA region is
statically configured in TrustZone fw. Add SCM call disable option
for such targets to avoid duplicate permissions.

Change since v2:
   rename flag to "qcom,msa-fixed-perm".

Change since v1:
    Added devicetree list for review.

Govind Singh (2):
  dt: bindings: add dt entry flag to skip SCM call for msa region
  ath10k: Don't call SCM interface for statically mapped msa region

 .../devicetree/bindings/net/wireless/qcom,ath10k.txt     | 4 ++++
 drivers/net/wireless/ath/ath10k/qmi.c                    | 9 +++++++++
 drivers/net/wireless/ath/ath10k/qmi.h                    | 1 +
 3 files changed, 14 insertions(+)

-- 
2.22.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
