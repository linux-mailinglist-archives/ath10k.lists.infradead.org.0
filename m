Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA261591C8
	for <lists+ath10k@lfdr.de>; Tue, 11 Feb 2020 15:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCrtqEzNabUtNZjAR1+AMg8qKPVISxozPdNBqWbZ6G4=; b=TxkBPCSGVpc0qc
	4MWh3zlz4FGqbacXxHgqvarJj4QVnxsvUF1M+cShh65uAppKIfhBUGD7aQVQeT9F978QcUJJyUkLP
	5fcSZrk6j5Q2tXaWnj97i/hGvvCy2xWDISSnVAwUjb6lXYfUYa0wWDc7eC6MMXQqSfkV03o/uY+vn
	2qsz0qljHbRCbh8+DAaDP9JL/qpPwonzEjUdZn2s0NXNX7g9pL988ZEV/JbJK/T+eBHeLzIeEA0Sq
	/ce8Yy3yghkBSdZwPtWRd+AOWn2Py/PKMa3etOKr6r9m7EFLQ2qQqqgACar9mU0rCaeCgYVPR3Tte
	zQsWMSWrzLd0zEQmm6Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WS9-0002vh-DZ; Tue, 11 Feb 2020 14:23:53 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WRy-0002rZ-Jm
 for ath10k@lists.infradead.org; Tue, 11 Feb 2020 14:23:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581431026; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=CCfMU7sbr4eW0hoz5ecQOYNZ5Pq4hUp0qTnvqU/rbss=;
 b=HzE38eVuRGJYWsvByQaHY6stVEx2nnkkdTj42X/dWz+C6JRE/oU9UoimXyi8HyhbDr8kn4Mr
 evCY0ll+R3fI/eYKO4xDl7N0wLxDEgva6hKmAmRHHwkWit9vzbstO/8sQvVK0mBasuLMDCct
 iXHVzVSgrslnIB23pEaUR1bYX/0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e42b8df.7fd1aeaf3490-smtp-out-n02;
 Tue, 11 Feb 2020 14:23:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 598C9C4479C; Tue, 11 Feb 2020 14:23:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CB3E8C43383;
 Tue, 11 Feb 2020 14:23:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CB3E8C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCHv2 1/2] dt-bindings: ath10k: Add new dt entries to identify
 coex support
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
References: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
To: Tamizh Chelvam <tamizhr@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200211142326.598C9C4479C@smtp.codeaurora.org>
Date: Tue, 11 Feb 2020 14:23:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062346_157904_9A3F3307 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 Tamizh Chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tamizh Chelvam <tamizhr@codeaurora.org> wrote:

> This adds new dt entries qcom,coexist-support and qcom,coexist-gpio-pin
> which will be used by ath10k driver to identify coex support
> of a hardware and notify wifi firmware the gpio pin number.
> This pin number information is needed for the hardware QCA4019.
> 
> Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

7354de9c6e2c dt-bindings: ath10k: Add new dt entries to identify coex support
9f83993e1a92 ath10k: Add support to read btcoex related data from DT

-- 
https://patchwork.kernel.org/patch/11353153/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
