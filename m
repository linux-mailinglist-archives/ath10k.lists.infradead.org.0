Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF981F3F1F
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 17:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PG6DGD41oCsLDbho2OGqhiIegbMAZ3QmnpbTBUiDS4U=; b=IrFlEFwkUW7T2C
	hn3zzjAz3G8Rvqnj929dx3NTOpgjroQ2UFXTe41uV6EGFWxntc7IBg6VxS+H3IKPVZG7BoEIyiv6v
	OMJ56SJeVoW0bIclV+tduK6qC3If+HhsP+Gn22nKCUE1IFiQG3Msw+8WSWcAb8TiSeDUuZjNGp3t/
	ZdVij7vdM6Wl8nT3IkkyGAx++NTN/AzNRa8HCnQa3dKa2ul+r+eQdpfAOJ9XITaTCCnLdUPWtFvL/
	P0ZXq8eGwu+8RtZfQBiqVvBuBBCtew2iX269AJVx59DXByk01QLfTkjEZ1YA+K9/wr2ivFjLca5At
	N6OEw4WYTTdLu26jb6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jig4C-0006p0-Q6; Tue, 09 Jun 2020 15:21:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig48-0006od-4V
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 15:21:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id s10so10493563pgm.0
 for <ath10k@lists.infradead.org>; Tue, 09 Jun 2020 08:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uwvFGjyGkvShem51AX2k8l39E+uinZbFtzIiRAp08Pk=;
 b=Tqsz7mN0ZQ/Ebtwuuhlz2Aj5Nxp7ZH2E32VDTotEwsEFHfoCIcICryte8znwPwr/ML
 rJGLk5Don0hvRBsPIb38oIrdDDbG5L4Ob6CtN/+bzblcvgk0eAlGkyw9/JzYg5JF7rpH
 AXZ4YKev82m2zvwOymfK78TMabY5wSKQSzWgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uwvFGjyGkvShem51AX2k8l39E+uinZbFtzIiRAp08Pk=;
 b=RXdeR4IOH+UIjUj0Xp0kBffQ9WST4k7c6yLDHMlJGc/ooCNSFdsbiheoPq6CMKO7Bs
 ffCM2kGzpeTiO9Wcrf30JMAmRYNslPeQwGgIY0bhXftFnJ0Sb9FW74gu0Sek09eDsg1T
 6D5ulkcKR1kOBVlltYKvYpu45EmLFNgxiqX4WUEBrrWahlwja+gEiitfZ6wMGcjnLuAh
 Er/gsBNmwy5ja1ZTiJEoCT7viGUUU80BuPG3JAwlkLF1ZLeJg7oCagd83FmKY+PiSSE9
 /9HvH6AHI9vAalf6J6OTkd3StKLMxe2aj23uIoVwagWeqdycoL3tlBb29/u5jzuwjvJS
 W/2A==
X-Gm-Message-State: AOAM531aECpS9d7rxSFQVgb99b7yHu1vJELuyh9k82NPeoJcI9D0X/QK
 Ag8Bbwl/IjAqdaNC++LjVhWBIg==
X-Google-Smtp-Source: ABdhPJxfhZlV3Xjw60pqAdeCuYbdjB53klCTzNpy+pv6huQHBaXZLmLMb8qM09KF80pvp6RVg0iY4g==
X-Received: by 2002:a62:b402:: with SMTP id h2mr27157063pfn.221.1591716087205; 
 Tue, 09 Jun 2020 08:21:27 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id c2sm10383572pfi.71.2020.06.09.08.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 08:21:26 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: kvalo@codeaurora.org
Subject: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
Date: Tue,  9 Jun 2020 08:20:58 -0700
Message-Id: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_082128_193389_B7318557 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: saiprakash.ranjan@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 pillair@codeaurora.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 kuabhs@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On wcn3990 we have "per_ce_irq = true".  That makes the
ath10k_ce_interrupt_summary() function always return 0xfff. The
ath10k_ce_per_engine_service_any() function will see this and think
that _all_ copy engines have an interrupt.  Without checking, the
ath10k_ce_per_engine_service() assumes that if it's called that the
"copy complete" (cc) interrupt fired.  This combination seems bad.

Let's add a check to make sure that the "copy complete" interrupt
actually fired in ath10k_ce_per_engine_service().

This might fix a hard-to-reproduce failure where it appears that the
copy complete handlers run before the copy is really complete.
Specifically a symptom was that we were seeing this on a Qualcomm
sc7180 board:
  arm-smmu 15000000.iommu: Unhandled context fault:
  fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10

Even on platforms that don't have wcn3990 this still seems like it
would be a sane thing to do.  Specifically the current IRQ handler
comments indicate that there might be other misc interrupt sources
firing that need to be cleared.  If one of those sources was the one
that caused the IRQ handler to be called it would also be important to
double-check that the interrupt we cared about actually fired.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/ath/ath10k/ce.c | 30 +++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/ce.c b/drivers/net/wireless/ath/ath10k/ce.c
index 294fbc1e89ab..ffdd4b995f33 100644
--- a/drivers/net/wireless/ath/ath10k/ce.c
+++ b/drivers/net/wireless/ath/ath10k/ce.c
@@ -481,6 +481,15 @@ static inline void ath10k_ce_engine_int_status_clear(struct ath10k *ar,
 	ath10k_ce_write32(ar, ce_ctrl_addr + wm_regs->addr, mask);
 }
 
+static inline bool ath10k_ce_engine_int_status_check(struct ath10k *ar,
+						     u32 ce_ctrl_addr,
+						     unsigned int mask)
+{
+	struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;
+
+	return ath10k_ce_read32(ar, ce_ctrl_addr + wm_regs->addr) & mask;
+}
+
 /*
  * Guts of ath10k_ce_send.
  * The caller takes responsibility for any needed locking.
@@ -1301,19 +1310,22 @@ void ath10k_ce_per_engine_service(struct ath10k *ar, unsigned int ce_id)
 
 	spin_lock_bh(&ce->ce_lock);
 
-	/* Clear the copy-complete interrupts that will be handled here. */
-	ath10k_ce_engine_int_status_clear(ar, ctrl_addr,
-					  wm_regs->cc_mask);
+	if (ath10k_ce_engine_int_status_check(ar, ctrl_addr,
+					      wm_regs->cc_mask)) {
+		/* Clear before handling */
+		ath10k_ce_engine_int_status_clear(ar, ctrl_addr,
+						  wm_regs->cc_mask);
 
-	spin_unlock_bh(&ce->ce_lock);
+		spin_unlock_bh(&ce->ce_lock);
 
-	if (ce_state->recv_cb)
-		ce_state->recv_cb(ce_state);
+		if (ce_state->recv_cb)
+			ce_state->recv_cb(ce_state);
 
-	if (ce_state->send_cb)
-		ce_state->send_cb(ce_state);
+		if (ce_state->send_cb)
+			ce_state->send_cb(ce_state);
 
-	spin_lock_bh(&ce->ce_lock);
+		spin_lock_bh(&ce->ce_lock);
+	}
 
 	/*
 	 * Misc CE interrupts are not being handled, but still need
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
