Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B8075618
	for <lists+ath10k@lfdr.de>; Thu, 25 Jul 2019 19:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PGzFM/emm1gxJmEexpJcla31T5Z6w2MLlSRMw40/stI=; b=bmR
	kprYGJcUgFyYhisLx1sSEMiqK+VCMJNW3cYap50EtqxCLirF7xwFPYL+v05KFwyAPIe8qduJj9STl
	XXVeuzLv4lW6lbCt/+nO76dEVtKcgLY7z9IqGKVAN8eA3wOSlC8snYsVkikw0Wo3xVqD26cF6eqTz
	uZP1zQC80mQ3SEOVZLv+5VHV6HbxfwK0+2RnoVxIkwe2jQcfKTPkkgTU5rDSH3UjTxxfn2Ber01Jh
	SwR+g8WPXB42vwJxVQaDrt53YpiM4O3CsXvBltZLXeVQl39hfqG/rFuR6myvoMwZwKt2zTMK7zpCC
	yE4lK/RsyowWeRBpKlQwa4RbimpgVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhqa-0000P8-Kb; Thu, 25 Jul 2019 17:48:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhqS-0000OM-3D
 for ath10k@lists.infradead.org; Thu, 25 Jul 2019 17:48:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id f5so14578645pgu.5
 for <ath10k@lists.infradead.org>; Thu, 25 Jul 2019 10:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=uPyttyuukrOTyss4ATYWgEvUft5R0VGROoogq8e3TtU=;
 b=uqJZ9lPiDh6lDJrwTHr7pHrkZYYsxkLlZrhZHZlGYYNuBIeM69qOefpd858bUSgUTS
 EZvvkiGFLtRo1xyovAUomFKaMXUM5X1Z6D6CQWYvEFFpVjdBPLK28jbBMgXG357oVrIL
 lh6nYvSs9bi8UlYPOURqLRRSXQ9+GcbAtIJmki61DrhoWtOttOkUPRC2DNGPSF+l/kw3
 vrYwxuOfRBxagbSyfDxzK8L5uMp/CBMxgwJxP06wil9LJH1ay0wbZP5PlYs/BpL3fsBW
 BLO32TDOn6+aFMRLSjoqOD66ponaqQ91dLs0hQ7ORps2bW4PInGOREH4t7IpVOC292NS
 41mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uPyttyuukrOTyss4ATYWgEvUft5R0VGROoogq8e3TtU=;
 b=SyKzHw5CUPIt2HaHvCNt303+bW4yuABH63OXe1WIlpN8+jYC8uUw3tlu/Wbw/MaF1J
 Xp7KTYXpgnfW5IwlHTO4ken04vNH3QYdqr6HE4Dgo9jvySzswXTI1DP2A/DyUOI1LIvh
 d7jjtr6UuN2zueoJclNDrN+xv8W4SEmgzrYNAiuBV4LjU6GpLjFFzbAMEwfgmZwyF1R5
 AXOK4oeSVCA9HXyrFBcmjE/d2ri8klxydUuE4WQ1erHT7oYPSQqCQHNN7/SW4sL4ZM35
 nxyx0lsbwPCB8lT+5DoZWH6m7NyXss6nMMmU/W/GfidoaV9tfI/bPA+pNug+FYNO9dCy
 CUuw==
X-Gm-Message-State: APjAAAV9K3fAzgt3kXa/kkEulhpCRHkkCjIIbq8VOAEncIZHkBHtqFxp
 bQJQKK3qYm3Ldke4QwkJjfHnoA==
X-Google-Smtp-Source: APXvYqxWJJdh2WpxR05u7uTV6jiYAW/aFCKSvCbDb97bOitI1MMffmACT2/OqB9WOLNoqFmGmLAUkw==
X-Received: by 2002:a17:90a:ca0f:: with SMTP id
 x15mr48139512pjt.82.1564076879249; 
 Thu, 25 Jul 2019 10:47:59 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r2sm68103389pfl.67.2019.07.25.10.47.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 10:47:58 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>,
	Govind Singh <govinds@codeaurora.org>
Subject: [PATCH 0/3] ath10k: Clean up regulator and clock handling
Date: Thu, 25 Jul 2019 10:47:52 -0700
Message-Id: <20190725174755.23432-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104800_145511_04014547 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The first patch in this series removes the regulator_set_voltage() of a fixed
voltate, as fixed regulator constraints should be specified on a board level
and on certain boards - such as the Lenovo Yoga C630 - the voltage specified
for the 3.3V regulator is outside the given range.

The following two patches cleans up regulator and clock usage by using the bulk
API provided by the two frameworks.

Bjorn Andersson (3):
  ath10k: snoc: skip regulator operations
  ath10k: Use standard regulator bulk API in snoc
  ath10k: Use standard bulk clock API in snoc

 drivers/net/wireless/ath/ath10k/snoc.c | 324 ++++---------------------
 drivers/net/wireless/ath/ath10k/snoc.h |  26 +-
 2 files changed, 48 insertions(+), 302 deletions(-)

-- 
2.18.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
