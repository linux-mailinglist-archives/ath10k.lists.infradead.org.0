Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD275F6D90
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 05:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aj60TzFAqlmdAXyeTY4n7HoRAgcruum+etMUrEwjlaI=; b=mk7lxNqTwjBLWX
	7jEY5zCaS8SExKe0ht/XUWDklg0mpQyhqY8xXLjFHFL5gLgWDw78/dXE1W7f3Raqjkc/kmdiIfIpc
	mhFmaXgmpgUEpdc+mPNJ1ERAKAcIRQANcSqkbj4aC+Lx6QgsEjflUbI+207aJ3BW1GSnffsVKrRWZ
	ppwU+onYWT1Ui1fzYePilhTL3z4xQbJ5+quw2++dOGYohsNFcJpZAzZmOjssWW/f5EQRtAXxZ0nFl
	Xg3qdBSlPTVLZ9ibpqlec+fuQfsO06iGV/6SJ512TvgBSKk5596FTLiRaKEXwmEgQrGCJQ3q3fP3e
	rC2H79D7hBcp8HaYga7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1GR-0007Cw-Eq; Mon, 11 Nov 2019 04:25:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1GN-0007Bz-Ld
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 04:25:16 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7777560AD7; Mon, 11 Nov 2019 04:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446314;
 bh=MYBm030xYLHdaohaJ+WmfgpEIwca6uZOPoCaZqvBAHk=;
 h=From:To:Cc:Subject:Date:From;
 b=dtJf4f1wmTWIOYiN/Vk52fGByFwFA8VBCikk0bjejGM/p3kHGgyFE9v8N95TeRs+J
 kjLTV80N+h1OsFbc3Atv4LnUw+PR8gve6PhPYL2xlkyECzUbImO4ibRRVNJWscpsVw
 i4Wh/QaTn+hHbvBfdHZg7NCKV+d6MBcR7ZDVc9FI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from govinds-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: govinds@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AC1A66083E;
 Mon, 11 Nov 2019 04:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573446314;
 bh=MYBm030xYLHdaohaJ+WmfgpEIwca6uZOPoCaZqvBAHk=;
 h=From:To:Cc:Subject:Date:From;
 b=dtJf4f1wmTWIOYiN/Vk52fGByFwFA8VBCikk0bjejGM/p3kHGgyFE9v8N95TeRs+J
 kjLTV80N+h1OsFbc3Atv4LnUw+PR8gve6PhPYL2xlkyECzUbImO4ibRRVNJWscpsVw
 i4Wh/QaTn+hHbvBfdHZg7NCKV+d6MBcR7ZDVc9FI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC1A66083E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v2 0/2] Don't call SCM interface for statically mapped msa
 region
Date: Mon, 11 Nov 2019 09:55:06 +0530
Message-Id: <20191111042508.12628-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_202515_728595_E0DDD303 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For some targets ex: SC7180/QCS404, SCM permissions for MSA region is
statically configured in TrustZone fw. Add SCM call disable option
for such targets to avoid duplicate permissions.

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
