Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AFC10E83B
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 11:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/XUXZmf+EfvlaEM3H1GF4oGLPDLHM/iuc4ewzzhYT0=; b=hzEs9+Tt9fkwL8
	uo+0l/ZuCmwWB6e9zedff8q3y7OCHCaFNyk7UNFyUy+IsQQamxzDo5xbBb/1LKITUT9gYg3Pt+K32
	j/X4UvxJmM6XLsZrYFjMCgJ7PM648meUSaviJoAi+ARvHzsv3Y9qYMwUrrTufbernFB037KYSUWVR
	tuVrlcP9d69PAU80ado3WpXMlMUkyCfN268NFcbAJEv6KIVzl2SLzbZbAQs5lGovkfyyX5Mhd6mTK
	EIfn4zFL35Q5FkhzqtsQvkFJ2s2HDrHxtBkrMR+hLX+/h9rySQngW2t6U36yh3Vrmhu234NILnkoY
	lBrYFywRg0QpEXDkcNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibidC-0005sl-Mg; Mon, 02 Dec 2019 10:08:38 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibid8-0005sI-NO
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 10:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575281313;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=e7IZnQvVspwBb6rL2WP6C2RiBlgYjGp/KTl+rG/que0=;
 b=djjcYxV2Y6GUVZTOrkfFuWo5bezFdBUTLOq1EY0vnvl7AaOoS9Ut9qeYLwMPa+06
 8lvK9nbAbRr1ZTk2F5NLZwzBQ/RTpe6qu6ADrm7E4LfcZwjh3endH7qoxGHU89Z5mH/
 YcBp62YJM9Edl4o6mjTxcn4PGqGjwCrt9p3WICeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575281313;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=e7IZnQvVspwBb6rL2WP6C2RiBlgYjGp/KTl+rG/que0=;
 b=Y4VPZEEJjVzBy7+3wz9V/HqWjCCtIiqQlNdsLSsenHQN/WsHi81dibneG8C1XhLN
 XcFZu4hOJ6/qZWcCJDzw/xMMp2EyrfzssKIxp7Hs8iZHZIbBIn11vferSar0eVUGNQj
 7AbaNbjdm988H/OSVyK8jwSpqP/FP0I74Umsos+o=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E3058C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath: add support for special 0x0 regulatory domain
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016eb614d832-1f2459b1-1555-4ce7-8f90-5704d201bc10-000000@us-west-2.amazonses.com>
References: <0101016eb614d832-1f2459b1-1555-4ce7-8f90-5704d201bc10-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ec615464b-6f346795-8985-4af9-84cc-641751d88fef-000000@us-west-2.amazonses.com>
Date: Mon, 2 Dec 2019 10:08:33 +0000
X-SES-Outgoing: 2019.12.02-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_020834_789324_F1BB17FD 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Some sdio chips of rome QCA6174's regulatory domain code of EEPROM is
> empty, then ath_is_world_regd will return false for this case, and
> it will lead function __ath_reg_dyn_country not work, thus the regdomain
> will not update for NL80211_REGDOM_SET_BY_COUNTRY_IE type, it result
> ath10k set the same regdomain/reg_5ghz_ctl/reg_2ghz_ctl to firmware,
> then the tx power will not changed with different regdomain's AP. The
> regulatory domain code of EEPROM of some QCA6174 PCIE chip is 0x6c, it
> means world wide regdomain, for this chip, it does not have the issue.
> 
> For empty reulatory domain code chip, set it to world regulatory domain
> in functio ath_regd_sanitize, then it will fix the issue.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

2dc016599cfa ath: add support for special 0x0 regulatory domain

-- 
https://patchwork.kernel.org/patch/11266721/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
