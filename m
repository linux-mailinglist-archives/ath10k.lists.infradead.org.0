Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE31BF48C
	for <lists+ath10k@lfdr.de>; Thu, 26 Sep 2019 15:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAvADHJd5UXbuB0+YcKo9wW2uH64hx8oam0I8UT8b80=; b=i4mkhbjwqANxUd
	yVZPCoy6fk37r+931VijTOSmWjw4YZd9eNKUTxfTwatvziYfkyxoDKP82HpEkoFifDq3hdN+Sp98V
	uaITWKEgMpm61fvWA7GzptPzC15NWNz6BEub61macbP+Lq22eXclpfDFoLU+HawxtuA1HlLl8FMVd
	08pAWhjkoYKyUygazdfaWLmz5SWwyEX7aARcpNn+YCsOX8mP6mjdCnG0Uc0yxUzz8uOVXwN0y7AqP
	ziw56ULfDGdenze+DdVNxlfXOZgu6DmdMEY78MV8ISD4Hx5Ns338tPGh+sWU7V/msNNrnxh3UURxN
	iONlJIvJjiLCZXQwMDIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUHf-000745-Tm; Thu, 26 Sep 2019 13:58:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUHZ-00073b-9j
 for ath10k@lists.infradead.org; Thu, 26 Sep 2019 13:58:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 553946115D; Thu, 26 Sep 2019 13:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569506288;
 bh=gs8p+1yjOS8sOPofcWc8Yqg6Lf3CwkoRj7uJbAnsvJ4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=fccpK79/leBRzeKSmnHdSPwRAEAUkF3W9UPN16OkoV9hqwbAeQOecHjv10wJdtqbq
 nyxl5YlNzk9YsaO3aZ4qUEMYBaagg6CRtG59TyeoU3KmsdNTY/sGfu59hj34QT71z5
 c50WEZZZ6Q7LKux0VhiNEpb3E1vge/fXpkZ5EdFo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C63C760BF5;
 Thu, 26 Sep 2019 13:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569506288;
 bh=gs8p+1yjOS8sOPofcWc8Yqg6Lf3CwkoRj7uJbAnsvJ4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=mEXmtWah526aMF0UxnBaqmESNFMOh9f8C52TtOcoXel7YPEwVuSUiMcgLoAl22a6m
 hFagzV/AzzZwwtMNY7XFuopAcP54KQ5b+p5+MCDi1mwy7KM4NsMWR1DUFT3YVjpmTQ
 oQuyHZUltPchmJz+Xfvn+q5nroizHvd52xUvdzZk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C63C760BF5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k:New interface to get interface combinations from FW
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1562050742-8741-1-git-send-email-zhonglin@codeaurora.org>
References: <1562050742-8741-1-git-send-email-zhonglin@codeaurora.org>
To: Zhonglin Zhang <zhonglin@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190926135808.553946115D@smtp.codeaurora.org>
Date: Thu, 26 Sep 2019 13:58:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_065809_368217_837A5A79 
X-CRM114-Status: UNSURE (   6.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Zhonglin Zhang <zhonglin@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Zhonglin Zhang <zhonglin@codeaurora.org> wrote:

> New wmi event "WMI_TLV_IFACE_COMBINATION_EVENTID" is used.
> If WMI_SERVICE_IFACE_COMBINATION_SUPPORT service bit set and
> WMI_TLV_IFACE_COMBINATION_EVENTID event got from FW side, then
> interface combinations reported from FW will override the default
> combinations which is hard-coded in host drivers.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-01061-QCAHLSWMTPL-1
> 
> Signed-off-by: Zhonglin Zhang <zhonglin@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

This introduced a new warning:

drivers/net/wireless/ath/ath10k/wmi-tlv.c:556:41: warning: incorrect type in argument 1 (different base types)
drivers/net/wireless/ath/ath10k/wmi-tlv.c:556:41:    expected unsigned long [usertype] n
drivers/net/wireless/ath/ath10k/wmi-tlv.c:556:41:    got restricted __le32 [usertype] limits_n

I fixed that in the pending branch.

-- 
https://patchwork.kernel.org/patch/11027361/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
