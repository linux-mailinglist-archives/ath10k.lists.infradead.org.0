Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C33B98610
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 22:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:MIME-Version:From:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ArxjpUSH3wviDg8wwz4nVZ5Q9dMHWZhMEtOwnYeN3E=; b=YKTlM/HdEedQsi
	W5y4aGl7peUzRqmETYIy//izTQ+awnmN4m33ORYeicTDKDib6s+rtjYPQKSMX99Q42/6W0Xzl1j4x
	Oh1yYb0D46uDem1qupIUYAU6CFWSnTphkE/AaFRW55XGqmRw8SqZi9oIK4IM8du/Zh2Fu/kDClSnN
	JcQD9tCpx13eAiNiHy5UjuVP3yFegERmzMXBR+V5TBwoq+Tqy/WezGaKaFreK9ROQzqtgz/cbgLH/
	wIrQvAtFW3Fj7JDareU1q0yh0zR6yw4fKanDee6WPyUYD4RGeQaY4FtYR6N+Tp0H1bx1BbZ09Rvet
	7msQpscpXPMXlY/Mnzcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XeQ-0005sp-Gm; Wed, 21 Aug 2019 20:56:14 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XeL-0005sU-G1
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 20:56:10 +0000
Received: from [172.31.98.117] (unknown [4.30.140.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 48F5B65937;
 Wed, 21 Aug 2019 13:56:05 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 48F5B65937
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1566420965;
 bh=tn97RrEF9v5NWqJ32TwFzwgA90Xb3Eis2NWu7Ey627k=;
 h=Date:From:To:Subject:From;
 b=EG5QIJM/zLC0FyGqyND5e9BfZlqXN+y+j5Xy+K01a0z9QxugyeLFpmJdamWhCpSrs
 QYzvEiZZqeLa25h0QyZ8UWZjxTpW763YeWOILPtFjFqDkkpz5cV600MtbQt5vvZsgF
 jKDTy74Oqq/SaMPvtZaVZtrxP0RV3QdRYbvDAT0E=
Message-ID: <5D5DAFE4.6080706@candelatech.com>
Date: Wed, 21 Aug 2019 13:56:04 -0700
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: ath10k <ath10k@lists.infradead.org>, pillair@codeaurora.org, 
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Regression with commit "ath10k: fill the channel survey results for
 WCN3990 correctly"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_135609_562322_13D7E2F9 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello,

I just noticed in 5.2.7+ kernel than this commit below appears to break WMI
message for my 10.1 firmware, and based on code inspection, 10.2 will be broken
as well.

10.1 struct ends with cycle_count, and 10.2 ends with one 32-bit number
after that, but which is not chan_tx_pwr_range.

I guess you need to create your own wmi msg for the WCN3990.

The change to 10.4 chan_info event is also wrong for my relatively
new version of 10.4 code, so likely breaks firmware in use.  last member
in that struct in my 10.4 fw src is 'A_UINT32 rx_11b_mode_data_duration;'


commit 13104929d2ec32aec0552007d55b9e15bc07176b
Author: Rakesh Pillai <pillair@codeaurora.org>
Date:   Wed Oct 17 16:50:03 2018 +0530

     ath10k: fill the channel survey results for WCN3990 correctly



diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
index 4971d61..58e33ab 100644
--- a/drivers/net/wireless/ath/ath10k/wmi.h
+++ b/drivers/net/wireless/ath/ath10k/wmi.h
@@ -6442,6 +6442,14 @@ struct wmi_chan_info_event {
         __le32 noise_floor;
         __le32 rx_clear_count;
         __le32 cycle_count;
+       __le32 chan_tx_pwr_range;
+       __le32 chan_tx_pwr_tp;
+       __le32 rx_frame_count;
+       __le32 my_bss_rx_cycle_count;
+       __le32 rx_11b_mode_data_duration;
+       __le32 tx_frame_cnt;
+       __le32 mac_clk_mhz;
+
  } __packed;



Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
