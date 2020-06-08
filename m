Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354071F17F4
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 13:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6CEHKn8iCbhAZyMj8PBFbET1md+A5M5ehiqrgqYi2Q=; b=ludK1LjA9G2jfa
	TRvqSdWxkvmSvbjnu6LREaDtVzGtnfUMwmhXm44UV2dbnGBYbDor5N98ac73eaV1QpTS/GWcijajN
	zu5GVKUsKapO43hDD1QEPbXqjkUpc7QafTp8j1Dsjjy0jY9DrO5N6ZZfRgbrzqWKhgRiDcrl+k2Y1
	q8tQ5Sesds0i9TbXjyjBjZZ06k1dHgC9hofIGnAqfjJiq/QtXgOuN2zZvsNZVEO45CCIt20BYaCxL
	I+RCfuwMXRe6SOjNvd0Ca9uXGKjNA1+Jc3F7mCRe/n21mNKedyHU4WZaFhybceJ9iB0Y+Y11Nedsw
	gXag5LZ9Ut0fGHxw08Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG7W-0002ja-PK; Mon, 08 Jun 2020 11:39:14 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG7N-0002Ze-Gz
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 11:39:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591616349; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=UlNfDGogKCJ2Hte3WfYZUyoDNhoWUwvyIBaQzivZeyg=;
 b=WHXy9zZ1XUlDZd+G7psMT237fcBj3qE1SGaA6WjjhuFL8wvMbX4Y5PjNPRKeUwI3Oe6J4SjZ
 jkoymMg9tKz/QhlyRLEjRwwKoZzjKc9GjrvXGRLEjFtraBieUeM5+RqiFWl7ITsDge8Urk3+
 tKBvcEVicxm1KXduICU3qYXzL/Y=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5ede234996950fa0ffe16cd7 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 11:38:49
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B1DD8C4339C; Mon,  8 Jun 2020 11:38:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 920A6C433CA;
 Mon,  8 Jun 2020 11:38:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 920A6C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH] ath10k: Acquire tx_lock in tx error paths
References: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
Date: Mon, 08 Jun 2020 14:38:43 +0300
In-Reply-To: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
 (Evan Green's message of "Thu, 4 Jun 2020 10:59:11 -0700")
Message-ID: <87v9k1iy7w.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043909_255368_474FF415 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Govind Singh <govinds@qti.qualcomm.com>, kuabhs@google.com.org,
 sujitka@chromium.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Michal Kazior <michal.kazior@tieto.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Evan Green <evgreen@chromium.org> writes:

> ath10k_htt_tx_free_msdu_id() has a lockdep assertion that htt->tx_lock
> is held. Acquire the lock in a couple of error paths when calling that
> function to ensure this condition is met.
>
> Fixes: 6421969f248fd ("ath10k: refactor tx pending management")
> Fixes: e62ee5c381c59 ("ath10k: Add support for htt_data_tx_desc_64
> descriptor")

Fixes tag should be in one line, I fixed that in the pending branch.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
