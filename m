Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C010E8B4
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 11:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSXsHeEN77GpPtAsCAI11kSqrC2qtlmCIpXDoGSkSks=; b=YPDEWuE1h5YtAq
	MZBAVxMkKY2q1apE3fdAMIFov75DlxgCW/u+fAX62wfGGaZzUfW9fzyh7YbQPwRsuxaYyLyBQYdKb
	0GrxdoTA/DfditXVq5JmCv8OQBrl88FcPgX4PzLHmd/DgLOeEQOFPUiBT4uHaPfryJqeo1/oRgd0Q
	rAD8pFmy1YJVd/G/kE45kwZsUpvxwBP2iwpufOgcCFYHIS02e5JgB8kz4ANxNtHgya//tkSOJs26f
	Jmrd1oR0lR0Sxy9IFLBwARdwhLsFFTOi2J00jprTffrcThSHzFT8Q0Zt42E+r0GNnNQzmpog5nKp2
	dPOngxSduEjL3zxhntJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibisO-0003QK-T6; Mon, 02 Dec 2019 10:24:20 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibisK-0003Pq-HR
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 10:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575282254;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=v4ppf7Uo9W6vQwiNV9E/g/TT6J6tme/wq8d9e2z5HII=;
 b=OGzWBV4lgVsDxbZap+jwkFTNuRbXZC9nGDVvGpLIP+49QQyOM6v9FJmzrW+I7hGk
 0mbRbKv/9ce1VJJqOp3eP9EuoONmG+5D3VTqnPkft08R7fx7rvg2CMdls7wFSwNlpn/
 WssdPky0DSOfhH65JkTwt45JWMM8/3J9ZxUuQQdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575282254;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=v4ppf7Uo9W6vQwiNV9E/g/TT6J6tme/wq8d9e2z5HII=;
 b=M0MSlN73ZiaHr98iYOWKkcwdR0FXkjL2hGs+Itx/ttpeyNSqD92c3YB64J1+oMSE
 gPZRprBcap27Ym1K6U3QRSQ0AkgMYPYwAJaMXaxc+WqSHh0U10yf5EW7Z00j+mVHxhu
 THwztl7PhMjaX/jbGzBfYjoTfpD5GSlWQ691nXqM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A9B87C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: wgong@codeaurora.org
Subject: Re: [PATCH] ath: add support for special 0x0 regulatory domain
References: <0101016eb614d832-1f2459b1-1555-4ce7-8f90-5704d201bc10-000000@us-west-2.amazonses.com>
 <20191202100833.0C1B9C433CB@smtp.codeaurora.org>
 <82cf5270f491b1e40640eab23a3b9fb7@codeaurora.org>
Date: Mon, 2 Dec 2019 10:24:14 +0000
In-Reply-To: <82cf5270f491b1e40640eab23a3b9fb7@codeaurora.org>
 (wgong@codeaurora.org's message of "Mon, 02 Dec 2019 18:14:51 +0800")
Message-ID: <0101016ec623a065-20e7f12b-df17-441e-aa96-5c279489704e-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.02-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022416_643873_65A16073 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
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

wgong@codeaurora.org writes:

> On 2019-12-02 18:08, Kalle Valo wrote:
>> Wen Gong <wgong@codeaurora.org> wrote:
>>
>>> Some sdio chips of rome QCA6174's regulatory domain code of EEPROM is
>>> empty, then ath_is_world_regd will return false for this case, and
>>> it will lead function __ath_reg_dyn_country not work, thus the
>>> regdomain
>>> will not update for NL80211_REGDOM_SET_BY_COUNTRY_IE type, it result
>>> ath10k set the same regdomain/reg_5ghz_ctl/reg_2ghz_ctl to firmware,
>>> then the tx power will not changed with different regdomain's AP. The
>>> regulatory domain code of EEPROM of some QCA6174 PCIE chip is 0x6c, it
>>> means world wide regdomain, for this chip, it does not have the issue.
>>>
>>> For empty reulatory domain code chip, set it to world regulatory
>>> domain
>>> in functio ath_regd_sanitize, then it will fix the issue.
>>>
>>> Tested with QCA6174 SDIO with firmware
>>> WLAN.RMH.4.4.1-00029.
>>>
>>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>>
>> Patch applied to ath-next branch of ath.git, thanks.
>>
>> 2dc016599cfa ath: add support for special 0x0 regulatory domain
> But I did not see it in ath-next now.
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/log/drivers/net/wireless/ath?h=ath-next
> is it has some delay?

Yes, it takes some time for me to apply other patches, merge branches,
servers sync etc. If you don't see the commit in the repository in 2
hours from me sending the "applied" mail, then do let me know as
something might be wrong. But before that just wait patiently :)

But now the commit is there:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=ath-next&id=2dc016599cfa9672a147528ca26d70c3654a5423

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
