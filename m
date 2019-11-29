Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF90A10D1E9
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzIwWRAjqcJ1z/6+1OPqouXaj/P/V7xg98xHTtyJmqI=; b=scytExWvD5XBN1
	EvKnG0O11T2aN0rG6UmIQsmX8p30mBMrVCqw6Ilr0kMMVIxoS17Nap6RkpMsY5qwAeGFnMW+/Floz
	YC3Ta5ncFndJvEb4C1E2rivBuIAIAGoycHuzwbdifXj6FkszrQNQ+Lo5DIPnzeaAayfXKq8CqpDA/
	h9BaZ6QBod8bJJAdsMHMftwwQkkZp/dyAvbQhoKa5nfPhGNW/6OQtD21JYSs+MGpuJLQpckxKmdgg
	My1oMrHsWSEMyOWnVooOawW4jCJoNIC8la3Y7TW+gufa+JYLG5jEj04tCMf3prihqKiUgp6NbxHAP
	kyyYSWBpGzNnI5CFphVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaau8-0004ro-9Q; Fri, 29 Nov 2019 07:41:28 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaau4-0004rG-6E
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:41:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575013281;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=U43cAUmWdsTQ74Pn+9TgtaLtJGnzCBJkpnasXxKZwRQ=;
 b=klTdhHQySHoHgZXQftHxCm6rV40y2LyAB3C9nPtedRH5zNO78Vvhz09de9ECYFsa
 w95AG55iEdntcqKsq7pt/TYgISGQ0zmqlNLa9hUvqabjcIkJhMmTpP51lT10JI15SJR
 F1yydBEwI7eUIlHakm7J4Dqo1/ISJDbFp8cwkxwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575013281;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=U43cAUmWdsTQ74Pn+9TgtaLtJGnzCBJkpnasXxKZwRQ=;
 b=YW5S2zN9WUbGvbLGG3key1jEivkFwm0d6fz6TcgqkuF/aA5bIXeFixaj/6Td+0a7
 THVmgBPrHFvslFOHYirtfjjAW6/yxzrobWulu0LduyCd+C+A/7FrkmFbA33yzd43ITS
 lNeaAJuhrczzrNV8hh1MG/durFUeh4Kd6UrYWLNU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E5C4DC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enable firmware log by default for sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191108091914.16785-1-wgong@codeaurora.org>
References: <20191108091914.16785-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb61b6da1-46ecac58-d77a-420d-a370-ad6da262cf89-000000@us-west-2.amazonses.com>
Date: Fri, 29 Nov 2019 07:41:21 +0000
X-SES-Outgoing: 2019.11.29-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_234124_258091_AA715EF2 
X-CRM114-Status: UNSURE (   4.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> On SDIO chips the firmware log does not impact performance. To make it
> easier to debug firmware problems keep it enabled on the firmware.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7cbf4c96d715 ath10k: enable firmware log by default for sdio

-- 
https://patchwork.kernel.org/patch/11234367/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
