Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C724718E801
	for <lists+ath10k@lfdr.de>; Sun, 22 Mar 2020 11:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lajev6HAyRYi64pe3+UQvY4Km89syuNSClducX6RDGk=; b=b6bYD17wN7bKDO
	JvQ9fXVQAkYWeVCC3QFn2gU39cGtTcfXQutmTt8hzfKRYVJreoHb4+7536PtQUJbpz7jzILLIDsyJ
	Aqzf0tIh3KXDbDUgCYvLWwUemJz+wWunydHHjND7aes2ZBae22iAe0b4fX5o/1uSenAdZTCNnSscQ
	TNQZjV0AEWiNnDIgi8+SQAkyAxNFCg1KEs0pGn6Ipnk5hEM8iM2jO6wm9iPTNLS9jpTo1eo6utXZ8
	gM4fe3T/JMXm74I4xWknJbSVg5xFmYzJuZH63RA2bj49ngkknwA8mQqejgZ6oXj0PCyJHogmkAgiL
	7GT0tc/W+5aJaOWnBs/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFxka-00024i-5W; Sun, 22 Mar 2020 10:22:36 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFxkV-000244-NI
 for ath10k@lists.infradead.org; Sun, 22 Mar 2020 10:22:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584872550; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=bhceEIlhB/5Z3VaRzMEBxGOjOYuAVhiDx+9jhnKdg5w=;
 b=fj6RAQIQzbF5uRtxvImHMDcYtuVqB/7Llf0WIv/0iNLFU/ihesv6n0ZVjFsRqHATHxzrYZ4D
 7n52qgbDzrbRShv/BfyAst+v1LTZhXR60afu9USGKIcWpz5PU1BHBRyvWZWm09Q0XRYu3h7q
 YS/bR79d+OQs+9S9cFALpvg8m58=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e773c65.7f2ce8ead420-smtp-out-n05;
 Sun, 22 Mar 2020 10:22:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1A300C433BA; Sun, 22 Mar 2020 10:22:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 97DF9C433CB;
 Sun, 22 Mar 2020 10:22:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 97DF9C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Fill GCMP MIC length for PMF
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1584540911-4267-1-git-send-email-ssreeela@codeaurora.org>
References: <1584540911-4267-1-git-send-email-ssreeela@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200322102228.1A300C433BA@smtp.codeaurora.org>
Date: Sun, 22 Mar 2020 10:22:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_032231_823811_210D88D8 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yingying Tang <yintang@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sowmiya Sree Elavalagan <ssreeela@codeaurora.org> wrote:

> GCMP MIC length is not filled for GCMP/GCMP-256 cipher suites in
> PMF enabled case. Due to mismatch in MIC length, deauth/disassoc frames
> are unencrypted.
> This patch fills proper MIC length for GCMP/GCMP-256 cipher suites.
> 
> Tested HW: QCA9984, QCA9888
> Tested FW: 10.4-3.6-00104
> 
> Signed-off-by: Yingying Tang <yintang@codeaurora.org>
> Co-developed-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
> Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

95a568c4a461 ath10k: Fill GCMP MIC length for PMF

-- 
https://patchwork.kernel.org/patch/11445331/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
