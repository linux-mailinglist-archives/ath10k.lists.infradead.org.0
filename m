Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30E0108D5B
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 12:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maufyIH2cUoGwgdSdVegyL7dR9b4+ASGzLc5BSwH3xU=; b=GIyb9UH50AEFHB
	Cv/P5B3oK63xlv7vdYJijPfLItgwwUlNpsstkSAMObFNCok/eAOMefE3f09Y35Wh8mAsvgUWjJ0PN
	56kW4lCwzAuVRno1pAUP8JgNjFcmld0fMYIOHhHEQX+BAkPHo+liHULpAPX0TmK/SSp7IwNfmtPy7
	go1Oib4YQnx9HvYVQrKdLh/8x9Rq6wg/fC2Wdf7tpFZkKff2lceTr6SjJNIM6N95DRZAsZTiXug/6
	E6c7Rm3ESnsKq/ks2vlB/OGi4o7bDAvoQX1af23py674BzPl6zSppdBWpUu8kqh2g3T5TPIzA+DxP
	tAAXPwD+0Yvwep6g42GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCzu-0006T6-S0; Mon, 25 Nov 2019 11:57:42 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCzq-0006Sg-CS
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 11:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574683053;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=tZFVJ88MdAoumNhgrNj+oXKHEbGxI6uq6Q2Bv8pwwIk=;
 b=X56lUI1SRGQLtLegcbXQpjTxVqqVPFGv+HdLip+UvQg9CUg2vOTtYHX36aJ90ky+
 ndmj5je2QWCU1ZwrbqdX+sC4BbyBocOgSZic/Oi8RRstLj1txJ1mhuuCYCiS5h8/ivs
 Yp0R6j4tufvBiezYy89tSnEqx2CmSbVzFGcbve08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574683053;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=tZFVJ88MdAoumNhgrNj+oXKHEbGxI6uq6Q2Bv8pwwIk=;
 b=SnW6cCB3dcRWg+NWi2EEZwjTw+jK2vh1bqqlkTKCeOzMzHzpB7E5xOJXSLpKARLO
 usD0o3bTA6KA0ZZy1TjYRV109r/MhyXz+cxiYU6cQHiOyNpT1FB77c1hbV8D6XbuIH2
 AJWv9B1P+swFHFr1Sw+WrhItJFrw2tn+akA7vdTA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E9B0C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: add NL80211_FEATURE_ND_RANDOM_MAC_ADDR for NLO
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191108092706.17060-1-wgong@codeaurora.org>
References: <20191108092706.17060-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea26c8dfd-c5d280f7-2cc2-42a0-af31-f68f736f6cd6-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 11:57:33 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035738_452012_5762B3F9 
X-CRM114-Status: UNSURE (   3.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.56 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> Add NL80211_FEATURE_ND_RANDOM_MAC_ADDR for NLO will enable the random
> mac address for netdetect case.
> iw command:
> iw phy0 wowlan enable net-detect net-detect
> randomize=AA:7B:A1:AC:B2:41/FF:FF:FF:FF:FF:FF interval 5000 delay 30
> freqs 2412 matches ssid foo.
> After suspend, DUT will send probe request with mac AA:7B:A1:AC:B2:41.
> 
> WCN3990, QCA9377, QCA6174 PCI also support this feature.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

23b5156a856b ath10k: add NL80211_FEATURE_ND_RANDOM_MAC_ADDR for NLO

-- 
https://patchwork.kernel.org/patch/11234373/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
