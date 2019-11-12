Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41490F8ED9
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 12:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3cZKdiyswWHz6SbREbOlGY0UoP7XvHcjkui3N9Bj5LE=; b=bSw
	VRgFg4uCSzpxk/dDIbby9ZyESl2sRWJeeq9DeeZSaKWJL0a2ccPESMHtHf2rAhy1ZLHalRyjIqdTr
	rkIz+nzLo6hr2+OtoDVLs27K5Cr2v/5HnoM6ICd4z9jF20w5TX1MiinQX7C3wMoQcSbqxKa6/aMuc
	pGy+SnKPEtxZWRpMHw/LR18SpD9n2K9aj0Z3B/AW5DkFLHx5AuF7Mmhtc6Oc4A1KUjOP8KIl+r9o9
	DnZR6Xs4wrDMYYFJnzLvQ42ZpQn6MqHo3CU71svRrqo/VD1594FPzy245ClhRvdzSxERWYylVUztw
	jYS96j8MeZOKj6P+KeFXT1+uj7pFGFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUcQ-0006oi-5B; Tue, 12 Nov 2019 11:45:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUcM-0006o4-Eb
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 11:45:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8AB5560A61; Tue, 12 Nov 2019 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573559153;
 bh=wz3oG8OpGyjsewLjRaLui0r/tB4QR1IRQFE2q5GQ81I=;
 h=From:To:Cc:Subject:Date:From;
 b=KBVhJYOk5BbC6Jb0hystNVEH7nyvSTs08sijpc6dysTx1EbA2Ikn/ZP8baEmnvKVR
 kLWPa2Ou1pF4Y0zd8hGREtUXPQp8QJNuJoaz5udYahsUxyuVhg8htkQ+QP6Ix4NSkY
 FPGOtmUfYXoLvqGvz0U0QDWkbEN6lq8Ky3WJEpT0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from rex-laptop.wy-b52.org (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yyuwang@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F249A602EF;
 Tue, 12 Nov 2019 11:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573559153;
 bh=wz3oG8OpGyjsewLjRaLui0r/tB4QR1IRQFE2q5GQ81I=;
 h=From:To:Cc:Subject:Date:From;
 b=KBVhJYOk5BbC6Jb0hystNVEH7nyvSTs08sijpc6dysTx1EbA2Ikn/ZP8baEmnvKVR
 kLWPa2Ou1pF4Y0zd8hGREtUXPQp8QJNuJoaz5udYahsUxyuVhg8htkQ+QP6Ix4NSkY
 FPGOtmUfYXoLvqGvz0U0QDWkbEN6lq8Ky3WJEpT0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F249A602EF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yyuwang@codeaurora.org
From: Yu Wang <yyuwang@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/2] ath10k: correct tx bitrate for QCA6174/QCA9377/QCA9888
Date: Tue, 12 Nov 2019 19:45:46 +0800
Message-Id: <1573559148-4844-1-git-send-email-yyuwang@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_034554_515869_8B9CCF12 
X-CRM114-Status: UNSURE (   6.25  )
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tx bitrate got by command 'iw wlan0 link' is incorrect.
These 2 patches will fix the issue.

Yu Wang (2):
  ath10k: add ppdu stats support for QCA6174/QCA9377
  ath10k: correct legacy rate in tx stats

 drivers/net/wireless/ath/ath10k/htt.c     |   2 +
 drivers/net/wireless/ath/ath10k/htt.h     |  30 ++++++++
 drivers/net/wireless/ath/ath10k/htt_rx.c  | 113 ++++++++++++++++++++++--------
 drivers/net/wireless/ath/ath10k/mac.c     |  13 ----
 drivers/net/wireless/ath/ath10k/mac.h     |  11 +++
 drivers/net/wireless/ath/ath10k/wmi-ops.h |  15 +++-
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  42 +++++++++++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h |   3 +
 drivers/net/wireless/ath/ath10k/wmi.c     |  46 ++++++++++++
 9 files changed, 232 insertions(+), 43 deletions(-)

-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
