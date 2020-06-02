Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0511EB53C
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 07:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f+hseYwIE0pHBqpIxeYCDpQNXGebpOCERnVdwDONUmw=; b=aPY
	pjTuSP8ERAMGKd67OvxNQdjE8pdEhbDPEzZupYwsD2Ssh3463S0FFQBDCGomABlGPIsB9PC3A5y05
	HkisDagNNbdnNiLyacVM0CsBeUuCWFInZxrKxq6Q32xASC8UYu8s63ifwQ3N+ZdJ1JklYeAlKP2Ry
	fsxi0wt0HIw1AhkWH3+nINoxX4eauvulwVs9mLtxttWLbgAeFaqfoYEkaeNIED6dS8SbqIYaejnch
	VlnDFfF/SC3xqcGJrsiOi5fpeCJ5rq5/sfFS5c8yHdf5ugGroI+B6hQ+IcVe9bgLTRoCJ+yEPbBKm
	HCoHt42wxAIwAKwxUZVx0gJyrxoHW7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzQs-0005HX-Rd; Tue, 02 Jun 2020 05:25:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzQi-00050V-Qt
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 05:25:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id o6so4569771pgh.2
 for <ath10k@lists.infradead.org>; Mon, 01 Jun 2020 22:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pmTQ2J+ewmzAEXPhfQy/+hCxdmaweoAFACeDccmRGl0=;
 b=h5yZkA2l+Mg+kNUOWElvwFJjm2e1UB14Z+QBIySxys0830XZ9MF/dClCMu0l+DtKGE
 o9SyVR1BIDZ3dTL5vmbUYfxj5uQDWDVnQkYbK3iVMAeELega+0qsbn2jRbtwi7O+/WVX
 BSeQ5q/IdE+Epsq46jRoijqjDQ4CM0PTYlNMvNfB62aHj+0NTnLn4zQ7KK2DkAgUXeTd
 GDhhQQEK3NpJp5a2mmHIYUmj+UQN7VgW+hpPJViUZJoPX3HTgTeSSz5YCXSAdly87wOB
 iFISROlBAuTNkdchyO4pMVuAJdtWnq0kIUOHdMMad4/APHraiQ0dY9xK/7xJbS4e03CO
 ZPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pmTQ2J+ewmzAEXPhfQy/+hCxdmaweoAFACeDccmRGl0=;
 b=E4pOZRJkfnRIROHP5YOBJuKmUEVFzxYumE620fPyiRlAkZLeyN8LfXk5nzxOns6nUz
 dA/tGp2UtmKWhpa6otiK4nKV00qrGyiFpSmHLmiI6uNxekApgkQ3aCNQmb7xJJjc2FMo
 3jcbQhP7PsyLKosOQnXSqu/j4G/ob1ayws83AXEBpSx1K19nhRGYH4RlevuKL2ZFIyR4
 dz1IM3pcyODOPqGsa61Zuc0Y3HjW6iQbYdN/dkPlwKbaeMfbw4CagobbMH+8fcyYZyxQ
 6AdsVZQ79qVsCk4nPSh+sdnI6jqeQkkPb1AZXPpZCmZEXO8z9C7IU4PY80huEy48xvW6
 TACQ==
X-Gm-Message-State: AOAM530T4NaZBgS5O81FjM1FKlZfQo3NSRxUEvpXPuSQ9O6M/xOj39AU
 D7+ElZCYh3VXTG42Jpk0wvcpeA==
X-Google-Smtp-Source: ABdhPJym62I5PYrbey5hKJ41iA2hotYaRo67Whb7YuRi7XclxNuXaWayAK5GxIE0maNqAf41WqvcwA==
X-Received: by 2002:a65:6795:: with SMTP id e21mr22870328pgr.282.1591075538931; 
 Mon, 01 Jun 2020 22:25:38 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
 by smtp.gmail.com with ESMTPSA id
 f7sm1031988pjp.24.2020.06.01.22.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 22:25:38 -0700 (PDT)
From: John Stultz <john.stultz@linaro.org>
To: lkml <linux-kernel@vger.kernel.org>
Subject: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
Date: Tue,  2 Jun 2020 05:25:33 +0000
Message-Id: <20200602052533.15048-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_222540_922971_61E01A88 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>, Govind Singh <govinds@codeaurora.org>,
 Rakesh Pillai <pillair@qti.qualcomm.com>,
 Brian Norris <briannorris@chromium.org>, ath10k@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ever since 5.7-rc1, if we call
ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
reboot, resulting in the device getting stuck in the usb crash
debug mode and not coming back up wihthout a hard power off.

This hack avoids the issue by returning early in
ath10k_qmi_event_server_exit().

A better solution is very much desired!

Feedback and suggestions welcome!

Cc: Rakesh Pillai <pillair@qti.qualcomm.com>
Cc: Govind Singh <govinds@codeaurora.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Niklas Cassel <niklas.cassel@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Amit Pundir <amit.pundir@linaro.org>
Cc: Brian Norris <briannorris@chromium.org>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: ath10k@lists.infradead.org
Reported-by: Amit Pundir <amit.pundir@linaro.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 drivers/net/wireless/ath/ath10k/qmi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/qmi.c b/drivers/net/wireless/ath/ath10k/qmi.c
index 85dce43c5439..ab38562ce1cb 100644
--- a/drivers/net/wireless/ath/ath10k/qmi.c
+++ b/drivers/net/wireless/ath/ath10k/qmi.c
@@ -854,6 +854,11 @@ static void ath10k_qmi_event_server_exit(struct ath10k_qmi *qmi)
 	struct ath10k *ar = qmi->ar;
 	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 
+	/*
+	 * HACK: Calling ath10k_qmi_remove_msa_permission causes
+	 * hardware to hard crash on reboot
+	 */
+	return;
 	ath10k_qmi_remove_msa_permission(qmi);
 	ath10k_core_free_board_files(ar);
 	if (!test_bit(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags))
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
