Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BF91BB9F9
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 11:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLfa2Gn2iLfmX2yvVaQiIhzbale5fZL+oKbQJFPZd+8=; b=fr8N4ZWYcueLhb
	ylL0TLSXktcd4X0oHuhG54UlRkfP6wcNGBjQDP36m2QzXnma2PMwUjEHxXPlSQppxg2dz2w2gI7au
	Qxw0ubwn7+CKtcpGrfZaQr7BrHCKPsfDIUIqHMAYzcnaI4UORi1MUNXtWgq/G8xlMVRYc9u3p+2T2
	bKmxkJf72I8lomiM/9J7OxZ32rxjHgx4vhS0Fnt4ti5jzKTMFJcvqUSZhBw3ZxAANGRRbe4/ECeuz
	JTTcPno3LZua/vCX2OIkT9X4s4Zto/B1hBKdDI6LReB+SarWozylx9bR9gAUjy844dweBLjCkC96J
	7OarcXf+CLnUqkb4xSpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMgv-0003Ow-SW; Tue, 28 Apr 2020 09:38:13 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMgn-0003Nn-ET
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 09:38:11 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588066690; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=xLR8i4SqwknxFn8hmp8K1ZcwLGAGpiGUyaPHIHkT/jU=;
 b=n9BuDDLiRfBib2SwjYHdyIDOHCu7Z6wcN4d7A0NUfZp7lNl7VIRPrmFdmLDjz7OR+u/ZdcWY
 3lb3JgW7I2jLv7PKOy4kRHlmijjwg6prxFwed/Ijz+MEZAX+krv3Cd1MNqTWdAgOH3G0zgrU
 A5RpAeCt9M96PEaRDEcdOx+Is0E=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea7f96f.7f7a1afee0a0-smtp-out-n03;
 Tue, 28 Apr 2020 09:37:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 75C11C433CB; Tue, 28 Apr 2020 09:37:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85CC3C433D2;
 Tue, 28 Apr 2020 09:37:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85CC3C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH net-next] ath10k: fix possible memory leak in
 ath10k_bmi_lz_data_large()
References: <20200427104348.13570-1-weiyongjun1@huawei.com>
Date: Tue, 28 Apr 2020 12:37:47 +0300
In-Reply-To: <20200427104348.13570-1-weiyongjun1@huawei.com> (Wei Yongjun's
 message of "Mon, 27 Apr 2020 10:43:48 +0000")
Message-ID: <87ftcoeys4.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_023810_138707_0A29933A 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wei Yongjun <weiyongjun1@huawei.com> writes:

> 'cmd' is malloced in ath10k_bmi_lz_data_large() and should be freed
> before leaving from the error handling cases, otherwise it will cause
> memory leak.
>
> Fixes: d58f466a5dee ("ath10k: add large size for BMI download data for SDIO")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/net/wireless/ath/ath10k/bmi.c | 1 +
>  1 file changed, 1 insertion(+)

Please don't add "net-next" to wireless-driver patches (ath10k, ath11k
etc), because we use different trees. You can add "-next" or
"wireless-driver-next" if you want, but even that is not necessary as I
apply patches to -next by default.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
