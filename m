Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357A7FB40D
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 16:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C2xXLIWDn/SDP3FTDdjBVYpuT7tM64e0fX1RMhtIWB0=; b=IPm
	C9opp81a5BddT4B73p24Dum7qgpzxbWcHJiVDgk3FMsJUBGIKZaKWQFDmGmNOb7F9GJYdIvHDVWjr
	ADWRW/KyCU0MlX3cUo5tsY5/S6sV9/qeH2NB7cwXFts+aWlhVccKYnRjn4RUjmm8PfuQQU1tU2780
	wQFwz/oaRCviwZuSlM3jBmAugoRBnHS4IEPaisj/hNNl5JrDBQ13nrSEnbv5Nti/uxFQQ1v1XK9L3
	HB9Y4Kppj+Fg7JmcSRqUykjL6bvbo68vxCn0IekNwVZqu9Lrr2jS8J8nixQYy4nPsDj6aFK7ee3jr
	tkvCBU1NXfdxllOgWGikcdi+gTRldWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUur9-0002iO-Ge; Wed, 13 Nov 2019 15:46:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUur4-0002hb-UP
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 15:46:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id p24so1927233pfn.4
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 07:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TBVtymOI9WwZsWEvU07x8pNEkzVPUQwttMv3w1HkiJ8=;
 b=mvo2vdSi3TpgqVnEPaWhYlSWv2KwG7IyopXGZJg3fMsbp3v6j1pIvTAVW8UfVQkH9K
 XdEFqj8ztEc9jrMWhZI0oyM3fLG+vzPaurnl13NBHlkvwMQQDhKJ6tjoxWfmuVy3EnkF
 WoqlsNflDPGF0RgSgSo+t5DT/6kTQvRdi+rzdAh/wqLE6FZw2HyT08WjnZD03GNGakdY
 rCCVMbfDRWP3TaNAPYx8WgMgXBxyrbVUACB9X7fOfbiVcpTu4DTMkV9WBeSyi6DAx7dY
 YzujGpVbXJ+ZM7bDbrBcRP2H5GvkH/9WTqLtPyQuonXAb2cs/0VgfHG1ZROKJeg9Ea2Y
 imUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TBVtymOI9WwZsWEvU07x8pNEkzVPUQwttMv3w1HkiJ8=;
 b=g6j7HK7KT3he0ZVm4vfs+DFSXTtaSh8HKndCg7ZsRDRk0CACBQx0cd3LQIvvQFx5qP
 eyphgw0mk/DnQWaIr322pdwsnFZiRY0gL1/EkMbxOuTELqZF8q97XIOtlDY0clSpJPi1
 HLQYMG2RE1dREDuGGj5eKsAdOPJlSofvhU7yHVglRtY5T9nSkVt8gKXKDOFpMGHW7TlK
 MFhwLfny5kvcEhgKC6szv+CRcDw2xWNK30Z1QBTxn+RLiBzqLD+cmrRfU9ufcSqlv5w+
 hlm9NAtaKdLT4NFCJlpePwqQKOEOvltVLlDidoj1DuCSpcRRJcllZ8EbckCYiNJWdM3a
 wjSg==
X-Gm-Message-State: APjAAAWREfNdZ3179y0F7PD9ap9xgmYvK3cTapzNwlgIyLgqz355Ce92
 Rle3S0bgitGI/hVrXq/ha0o=
X-Google-Smtp-Source: APXvYqw+4YtAO4BurwCMDsiaBzTWfhVwSTwA+/T/CjKbuQnohvT7t9DtGQo9ioj0WANfV+2kt5VWFA==
X-Received: by 2002:a63:e84d:: with SMTP id a13mr4422751pgk.226.1573660010409; 
 Wed, 13 Nov 2019 07:46:50 -0800 (PST)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id 16sm3953091pfc.21.2019.11.13.07.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 07:46:49 -0800 (PST)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH v2] ath10k: Handle "invalid" BDFs for msm8998 devices
Date: Wed, 13 Nov 2019 07:46:46 -0800
Message-Id: <20191113154646.43048-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_074651_004753_B2A7CB92 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

When the BDF download QMI message has the end field set to 1, it signals
the end of the transfer, and triggers the firmware to do a CRC check.  The
BDFs for msm8998 devices fail this check, yet the firmware is happy to
still use the BDF.  It appears that this error is not caught by the
downstream drive by concidence, therefore there are production devices
in the field where this issue needs to be handled otherwise we cannot
support wifi on them.  So, attempt to detect this scenario as best we can
and treat it as non-fatal.

Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

v2:
-tweak conditional nesting
-add comment in code to clarify

 drivers/net/wireless/ath/ath10k/qmi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 637f83ef65f8..6df2d3ac5474 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -279,7 +279,15 @@ static int ath10k_qmi_bdf_dnld_send_sync(struct ath10k_qmi *qmi)
 		if (ret < 0)
 			goto out;
 
-		if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
+		/* end = 1 triggers a CRC check on the BDF.  If this fails, we
+		 * get a QMI_ERR_MALFORMED_MSG_V01 error, but the FW is still
+		 * willing to use the BDF.  For some platforms, all the valid
+		 * released BDFs fail this CRC check, so attempt to detect this
+		 * scenario and treat it as non-fatal.
+		 */
+		if (resp.resp.result != QMI_RESULT_SUCCESS_V01 &&
+		    !(req->end == 1 &&
+		      resp.resp.result == QMI_ERR_MALFORMED_MSG_V01)) {
 			ath10k_err(ar, "failed to download board data file: %d\n",
 				   resp.resp.error);
 			ret = -EINVAL;
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
