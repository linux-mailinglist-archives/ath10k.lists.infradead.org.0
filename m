Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF702D2E94
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 18:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2B5QiJrZZcMRoxXsBjUhgSfToDplKR2W5Eh/Zbv23s=; b=PdZEFSW8FV7U44
	CAhdC7rTZcUerEAXMumYeR7bQq+5BEFsrdhFIDE1cI3lT/91910iMyScIhWeZp76ZLRicdX5PAnI7
	VVjxyqJkJHCQG+ko6NryXQ1cNeHaeDaRhBcpoIeP9BkYpxXZzdR9/BEcAj3EmgUJXWA5e1yTn5LYN
	r4udjt6JAc2/Zxrz84g6EmQ6pe0xVKkoPbadJyNl01DcJQzlyHjHmopuV3bfhU5Ujj46hnOrxKOhg
	MF1ppNG/H7+E5cN3z+rkILu8k6b674P0XKd5Sk6kEY38ZHpg3JOYonyBVIJzKif4fO3THlo8I7L/S
	G9gbL067GrLle34Ut8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbHK-0003K3-7E; Thu, 10 Oct 2019 16:27:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbHF-0003J7-Uw
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 16:26:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so3030487pls.9
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 09:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/3L9d8Hq5e07DU4XHZuzPz1Kd0iVbIQrEZ53Rw3PFwc=;
 b=oMNG8OFlEGU3PWXGkW4uWbQiN1c4TgfEUV4U5ZaRnieGiVh9zJFF289MPunGMy0uQa
 seUQM8U2tTTWjYTuqnWM1hjDfz4EQSu6HMMR+BLW3eWSh4BlEZczW9TkQZKEJ/hk3f8b
 1JFjuInD9NbbsOx1TTAGItzyuIrtHBAw+AvyLljpiKbRSLyrTzWMOLnm4O599EaVohmY
 qyXHpkXA478RmdObxZO9bhYjjODG2+x1geIWOUjM1C4N9VKcwAJdm2FwBoPqZPyewoBt
 HCAcvkfg29toUTW1/GIlRSFNFLn9cq68xGT5V8C627JjNT5+CYI49sBWZkhztGviM0xZ
 RQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/3L9d8Hq5e07DU4XHZuzPz1Kd0iVbIQrEZ53Rw3PFwc=;
 b=ZN2otPxuqdgJjjzGK01qFMFr03SlZtL6nnk/P/6bxEnCCMW1zyNfuxemblg8qYb97V
 GDqfVmiN280k6QwReUy7N1gITCx4soYoRl8DrNnYgaNU3QhhQ8C6qgtbArGeAhjM+yz8
 DOG9hs/LWfog+Ib/EfPQD9oykMDq32stbD1HaRz/14i1A0mrnCsOW7824v/tfAOwNNON
 Szh8iTU29m0oOfGb52hcnPOIEhUs+WD5vrzUz7pkeizuByeb4Q9iRxukRh7BGHcpRVAb
 HrW4up33qx5QDG655Z2IolaKUD3TRo8ByaLfavpLkVQo9EYj3+mPXrwEAFHHofT0P3tk
 JNsQ==
X-Gm-Message-State: APjAAAUYhip+uOVOAPusM1WaWTi6s40SAL60+ff55xwVzrGU8xnEOqcO
 Fbl1TA/Jc7IR62/Hhzw/6Kp4xQ==
X-Google-Smtp-Source: APXvYqzUtSx9TXYj7cPELtcJoIFrQb9QmW162prSdvzhCjMi66kmK7ihqlK1y9torULncYYjxLcW0w==
X-Received: by 2002:a17:902:904b:: with SMTP id
 w11mr8623273plz.182.1570724816801; 
 Thu, 10 Oct 2019 09:26:56 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o15sm6148342pjs.14.2019.10.10.09.26.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 09:26:56 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Subject: [PATCH] ath10k: Correct error check of dma_map_single()
Date: Thu, 10 Oct 2019 09:26:53 -0700
Message-Id: <20191010162653.141303-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_092658_005109_5EDA4E75 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 ath10k@lists.infradead.org, Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The return value of dma_map_single() should be checked for errors using
dma_mapping_error(), rather than testing for NULL. Correct this.

Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
Cc: stable@vger.kernel.org
Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/net/wireless/ath/ath10k/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 3d2c8fcba952..a01868938692 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -3904,7 +3904,7 @@ void ath10k_mgmt_over_wmi_tx_work(struct work_struct *work)
 			     ar->running_fw->fw_file.fw_features)) {
 			paddr = dma_map_single(ar->dev, skb->data,
 					       skb->len, DMA_TO_DEVICE);
-			if (!paddr)
+			if (dma_mapping_error(ar->dev, paddr))
 				continue;
 			ret = ath10k_wmi_mgmt_tx_send(ar, skb, paddr);
 			if (ret) {
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
