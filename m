Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FADE216B0
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 12:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xsfBaZIhQkTOgld5SAoEFsM5vPN7FZ0pDPQ2XVlp1Og=; b=dlW
	1DYUU3pIGO3TFJJkAO90ye0e1ppmYhaOzzIyngESevZSHMmOck8cwxIonv6ZdIUNYOSJaV5mrLMmQ
	Ks5EYyEra8Mhxs+l3IzGeTb1+bxhTwT8v46nTx97sJloEJQgYVSRnWTDqjGkVcbhyNpMF3rjDnA0X
	GTIXTVrZYiQyVHoqZCFRGfF4gXdfDWZIBUWO09FPHv9JdabPPdK8Fw7qxuw/6/T+WOzSqpghzxxaV
	4V31YIxrj8vzZ+kqLrN4+3eJBCgE0uoHUsSfNITgFb+GNtUuJIhubQ1UkzULryzAtWqziuNFUMjKj
	wVgbOylAsgagHcO21iQTssxxsGimp7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZk0-00084M-9p; Fri, 17 May 2019 10:05:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZjv-00083O-Sl
 for ath10k@lists.infradead.org; Fri, 17 May 2019 10:05:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D69B76086B; Fri, 17 May 2019 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087522;
 bh=RhoZniTLHAOJJh2V56DAGGJFLkn/pmisfD3dz2o7UeY=;
 h=From:To:Cc:Subject:Date:From;
 b=kpo53WMYK0zA116C5B4ChpKTM7YrP0lo50iIHIFnod5YtO40BLwe+pjeGZiazb6eD
 h12DEDANWil8cYupFUWm/NjdtFJuj18eaL/83UCCt++dOqFzuHVX6i41LbU4WhvWpN
 1by8gHcJsu9cJLxHtPKt+irJuhZ4pYQVv45AXdOI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from aambure-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: aambure@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4864A60128;
 Fri, 17 May 2019 10:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558087522;
 bh=RhoZniTLHAOJJh2V56DAGGJFLkn/pmisfD3dz2o7UeY=;
 h=From:To:Cc:Subject:Date:From;
 b=kpo53WMYK0zA116C5B4ChpKTM7YrP0lo50iIHIFnod5YtO40BLwe+pjeGZiazb6eD
 h12DEDANWil8cYupFUWm/NjdtFJuj18eaL/83UCCt++dOqFzuHVX6i41LbU4WhvWpN
 1by8gHcJsu9cJLxHtPKt+irJuhZ4pYQVv45AXdOI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4864A60128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=aambure@codeaurora.org
From: Abhishek Ambure <aambure@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 0/2] correction in pktlog service connect and pktlog enable
 command
Date: Fri, 17 May 2019 15:35:14 +0530
Message-Id: <1558087516-666-1-git-send-email-aambure@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_030523_953655_73A36F14 
X-CRM114-Status: UNSURE (   7.90  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WCN3990 firmware supports htc pktlog service through which host driver
gets pktlog information. Pktlog service should be connected before htc
start command, hence pktlog connect is moved before htc start. 

WCN3990 firwmare expects pdev_id along with filter and reserved params to
enable pktlog htc service. So adding pdev_id in pktlog enable comamnd
params.

Tested HW: WCN3990
Tested FW: WLAN.HL.3.1-00963-QCAHLSWMTPL-1


Abhishek Ambure (2):
  ath10k: move pktlog connect service before htc start
  ath10k: correct wmi_tlv command params to enable pktlog for WCN3990

 drivers/net/wireless/ath/ath10k/htc.c     | 16 ++++++++--------
 drivers/net/wireless/ath/ath10k/wmi-tlv.c |  2 ++
 drivers/net/wireless/ath/ath10k/wmi-tlv.h |  1 +
 3 files changed, 11 insertions(+), 8 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
