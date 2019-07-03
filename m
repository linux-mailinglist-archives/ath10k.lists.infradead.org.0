Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA3A5DD2D
	for <lists+ath10k@lfdr.de>; Wed,  3 Jul 2019 05:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+9Hlw0McXoiSlIelI0b2MzOdHMrRYSXPAQZv7laFMk=; b=cuqcXY4IyZKp9+
	Fxv4zQRE4IRHAmIcQmbhoJOeScGFYJ9kBn5xgr/fRjI2pzu4cb/7GM/U0vR3L5gREcPQXXZTPAZwb
	ME2w6lVtkZne0Ozn7yg1+5ce11MVUJepx/G6f4pg7ui9aK4RmMJKESSbfytBxig5mA1I3NHE66GI0
	XlxSc8NntOnGj9feRXa0DTAt0AXVjbCZVejZyNYLrc9sj9FtB77FwmAdKLsOYc/d705AXZaUVCl9r
	OD9mhuYtnHcxYFTGxSutPsInR0XBhvGN5RwmeMszYQcTXFDHpnppO19OdN0/vaK+3lCxSeIBs4JBp
	HD6910nSek/FDrz2AKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWOh-0002qW-Q1; Wed, 03 Jul 2019 03:57:31 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWOV-0002no-Mp
 for ath10k@lists.infradead.org; Wed, 03 Jul 2019 03:57:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 76C3D607EB; Wed,  3 Jul 2019 03:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126239;
 bh=swA+By0KKqoGjcIDAfeGafYPVgkUut5vD1yu9dPbk6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eY0N3cfJlRy2Gg+Uy6ransk3hDgDsftv8b92JZz+umrw998ZUddTR6YqA4tSqeJNv
 2MT8zneUfDFzV6DDgtImTvSs1oa8TbWu7a1xPXSmukI5tzs6pnSXgsvx9E+jvQnV7x
 aVwFGk/jLp3kPzN7k7gYA4e+8jeVOwqE/71cJd8Y=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7499360770;
 Wed,  3 Jul 2019 03:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562126239;
 bh=swA+By0KKqoGjcIDAfeGafYPVgkUut5vD1yu9dPbk6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eY0N3cfJlRy2Gg+Uy6ransk3hDgDsftv8b92JZz+umrw998ZUddTR6YqA4tSqeJNv
 2MT8zneUfDFzV6DDgtImTvSs1oa8TbWu7a1xPXSmukI5tzs6pnSXgsvx9E+jvQnV7x
 aVwFGk/jLp3kPzN7k7gYA4e+8jeVOwqE/71cJd8Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7499360770
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=govinds@codeaurora.org
From: Govind Singh <govinds@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 1/3] dt: bindings: update compatible dt properties for WCN3990
 wifi node
Date: Wed,  3 Jul 2019 09:27:09 +0530
Message-Id: <20190703035711.25592-2-govinds@codeaurora.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703035711.25592-1-govinds@codeaurora.org>
References: <20190703035711.25592-1-govinds@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_205719_766035_86D2C5CA 
X-CRM114-Status: UNSURE (   8.90  )
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
Cc: linux-arm-msm@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

update compatible dt properties for WCN3990 wifi node to be
compatible across different MSM platforms.

Signed-off-by: Govind Singh <govinds@codeaurora.org>
---
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index ae661e65354e..baaa3f32ae44 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -5,6 +5,8 @@ Required properties:
 	* "qcom,ath10k"
 	* "qcom,ipq4019-wifi"
 	* "qcom,wcn3990-wifi"
+	* "qcom,sdm845-wcn39xx-wifi"
+	* "qcom,qcs40x-wcn39xx-wifi"
 
 PCI based devices uses compatible string "qcom,ath10k" and takes calibration
 data along with board specific data via "qcom,ath10k-calibration-data".
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
