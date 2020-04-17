Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B581AD54F
	for <lists+ath10k@lfdr.de>; Fri, 17 Apr 2020 06:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQRaWirDyvh02FGJdTOOn3cWGOIdqjzAhPpWRMW0iNk=; b=T0FH145ZhI3OHs9gOOBQe9bhc
	PBDBRtRXtnz96iRmtWjCKBmyMItt4DzQjcrl54v+XRZj8O7apLeufy4bSOlplWbcZ+zYaGe7BVKGZ
	lGA3ox+O+z+7hegyGJX9PfQ4JmPbq2c51xbthqM0mv3F+1I7qM6dij+q1K0Jbgl3gub0z6mTw7kRi
	JmU6kskKZF8xRA4KYoP8SnI2zetzcingdD1ad5wZIVLo9ctvtrOc0DI/26FOiQmOXqmzj6nfBCyiF
	pd+shqbfdB/Z8XRUHGCYiASs/mlvT80/CB7dV7XQcYfSN/q62OZ4eeTTNfc6ClzN88xKKXYqgLWTg
	Wk0XcM+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPIfr-0004Xb-UP; Fri, 17 Apr 2020 04:32:19 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPIfo-0004XJ-4J
 for ath10k@lists.infradead.org; Fri, 17 Apr 2020 04:32:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587097935; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=HRpAtCJ93k/R4jbC1ynNoZD6jHvOk0Kjd/AowYwMjJk=;
 b=XNWSqOOmxin/6dX1irQY9mYc3MDYDqgMsmOReAEoH5HHzzNiG7mPCdrbNS8J9eEUe6Y56t83
 7R58AkY8WeRcJWHnaMDFbkFPeEnJAW04UZEN7pQIcx3+Jg8ID7u2d1vaRPwCvKQ+Ivq6ezIi
 a6xzwCNeG/4pl9Nauu6NOoVhwM0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e99314c.7f8abad29c38-smtp-out-n03;
 Fri, 17 Apr 2020 04:32:12 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AD5D5C433BA; Fri, 17 Apr 2020 04:32:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DF9F1C433F2;
 Fri, 17 Apr 2020 04:32:09 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 17 Apr 2020 12:32:09 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: improve power save performance for sdio
In-Reply-To: <877dyfr4fb.fsf@kamboji.qca.qualcomm.com>
References: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
 <877dyfr4fb.fsf@kamboji.qca.qualcomm.com>
Message-ID: <b9f680d57a6fbc9ac59dc5fc281d0af3@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_213216_235628_2E1B4BE3 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-16 20:38, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 

> 
>> +static inline int ath10k_hif_set_mbox_sleep(struct ath10k *ar, bool 
>> enable_sleep)
>> +{
>> +	if (ar->hif.ops->set_mbox_sleep)
>> +		return ar->hif.ops->set_mbox_sleep(ar, enable_sleep);
>> +	return 0;
>> +}
> 
> I don't think we need to add another hif op for this. I sent v2 which
> uses existing op.
Yes, I see it.
but I see it removed ath10k_hif_set_mbox_sleep in ath10k_core_start,
expected it will not effect the patch's power save.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
