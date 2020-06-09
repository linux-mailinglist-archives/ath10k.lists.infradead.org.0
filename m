Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1B01F340E
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 08:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKWDJCpgxXs/83sJqWhXK6T+xfKANSFxjzDYGFICdvY=; b=MKvi2Jlank0LTu
	xagWnBrBmiKq0yHR/jVuIu05b5qeKNphuDgbF+XzWMdqish/ffZwRHyD1Dna5VmFl1DkKu9/wR2qP
	iWzvbKCBQNGR5oTDE0Cp8D4MeUMAoYx06pS4WnV7HsHa689YbMF63chPNnE8qzxvO0soVl86ke/bs
	fy9xrwW80JU6vmnzHT1ByidMwpWrJlpCSEcY7GyG/A7/Bacw9kTm0ITuNmWBU0d+YDCsMTh3inFkt
	g/6g9b8XaV8Wk8rW4zI73fEi5l+kTCIDALZz6SxiRwl1/D+dKUnSdPqtZHE4uEwOZaDz4PoVGS4qy
	VJiwDJSXyuUSKOB5uPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiXfr-0006Nr-Lz; Tue, 09 Jun 2020 06:23:51 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiXfn-0006Mt-Ep
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 06:23:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591683827; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=4+aCPVmw8jrDJQlSPv04BpPt31w8OcaqeOyj/nVXCVU=;
 b=tiNzFxK2brve6n58Ng2uVyz7fE1YARiqbzm38El0phtJFtNAcMrI+fDCeaFKmsmEYIiXNgkt
 mi1ov6ZLAUEopQIcPzHBZq8mvW3QKaCTuGS7CXW6Tct3piNNzXv/x5DB9D4OTr4jgfvbGMYV
 whwiw+Dazwww/JUOjT9ixdJ/6NE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5edf2ae9d9f1a4ceef55ed69 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 09 Jun 2020 06:23:37
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D4BAC4339C; Tue,  9 Jun 2020 06:23:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 31652C433C6;
 Tue,  9 Jun 2020 06:23:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 31652C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Acquire tx_lock in tx error paths
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
References: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
To: Evan Green <evgreen@chromium.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200609062336.3D4BAC4339C@smtp.codeaurora.org>
Date: Tue,  9 Jun 2020 06:23:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_232347_627995_95AB12A1 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Govind Singh <govinds@qti.qualcomm.com>, kuabhs@google.com.org,
 sujitka@chromium.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 ath10k@lists.infradead.org, Michal Kazior <michal.kazior@tieto.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Evan Green <evgreen@chromium.org> wrote:

> ath10k_htt_tx_free_msdu_id() has a lockdep assertion that htt->tx_lock
> is held. Acquire the lock in a couple of error paths when calling that
> function to ensure this condition is met.
> 
> Fixes: 6421969f248fd ("ath10k: refactor tx pending management")
> Fixes: e62ee5c381c59 ("ath10k: Add support for htt_data_tx_desc_64 descriptor")
> Signed-off-by: Evan Green <evgreen@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

a738e766e3ed ath10k: Acquire tx_lock in tx error paths

-- 
https://patchwork.kernel.org/patch/11588229/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
