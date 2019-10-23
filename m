Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B217E1660
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 11:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hJDYZeYtewSDclUTCBnfJCGWqmE8hNKZQg+/X39C0OQ=; b=j1fFKREEYrYN+g
	ahYq3A49Rl4WYvN8S6Ko2+g1kdnBMO3K8hnRdsxHyHStkKPhIXYIvoVUVJ0oKXYFdEf8zREREztGu
	Qcp00c2tG3jwaRTM7QzPErQLrs5W+YLtTTDt/rV7yYpH+/XjmZ+lplObTOpEuPVxUXJNPmhmbdAIu
	WEhJhBTx2DBHmglQv5fPIMGEeVqPyXxTj33Wctf3Bh+8YHAnFkH4u4RqpEP8KaHI4JatVLETOb/j2
	kv2NkDBAj4okQzcOyHMC8aZswJj4lhCnUVRtgrEvq58BfiU95DxdAkSSc1cYwXMUxQw4bX76B9FHU
	kK/h8Ku12OQTp+x85HdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND80-0001bV-NT; Wed, 23 Oct 2019 09:40:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iND7v-0001YV-EM
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 09:40:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id F422660F35; Wed, 23 Oct 2019 09:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571823622;
 bh=HOW90wRsi8O+ak3+5Nx0Jma9uwcapHRfW84/YruUO9M=;
 h=From:To:Cc:Subject:Date:From;
 b=Hrb+5ZSdJxOV2YFPJH0hdBouMPRcvWYI4i6O5q860kgdJFoJviCA2ZxkYeGPhpjGa
 5bPtOw0u+Wll2SO7x732TOZU4NCKAoa9f+CWZFyRVXLo+G2/4eIFXFAY4Uac4rN+NE
 vu6sn/+q+E3W02hObUyXa2zvVLVjiECoMXzDZyl8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3059660D7D;
 Wed, 23 Oct 2019 09:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571823620;
 bh=HOW90wRsi8O+ak3+5Nx0Jma9uwcapHRfW84/YruUO9M=;
 h=From:To:Cc:Subject:Date:From;
 b=U1qmH+3+PoufmJLNrUMjQT5/stMAQprPJv+eO3Sn6Qz/v+V2FAj2BWBroNeNd9rNf
 ykLy1ZvPyhG09Xy5llp2K7DODk+zU18/6C8+E5FrViecb20FL21H0+Ui86jlKw0orT
 yfX3S86ZnnmK6iPYiCrkc75n6ZHyLebmXZjxN8U4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3059660D7D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/2] Don't call SCM interface for statically mapped msa region
Date: Wed, 23 Oct 2019 15:10:12 +0530
Message-Id: <20191023094014.28683-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_024023_532668_98895BD2 
X-CRM114-Status: UNSURE (   6.38  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

For some targets ex: SC7180/QCS404, SCM permissions for MSA region is
statically configured in TrustZone fw. Add SCM call disable option
for such targets to avoid duplicate permissions.

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
