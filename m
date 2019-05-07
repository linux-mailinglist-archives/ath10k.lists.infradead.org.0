Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC76164AF
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYJM5j98PRwHxEudJrsLoobCsVF+Sq5gair2c0wtlPc=; b=eNi3aA95k/9/r5
	EhkM5MnMoCENyzYCp5BfwsPC9jxKuhLyxpPuJb7iqPby9IfxnYJWsGVWP6L7uovh5/IOrTQA8Av1D
	D6bfSPIVfVvpzgSpt9NmD2KsDxAL0PjE68nh2s01tr15pGgc3V4lT49kvD+v9nDHtbcggDLF8STXt
	SIR3td9IgnKR9IhIRr3YsDOURYzhZB30NoJqCG7gxTXz3iIBvk7jOWbOwUyL5EBHGIAxS3v7n234q
	gL02/Vx8QWJwX8xOqEQkUTZVN+jbmsZcEqpf5qML+RROHIpIzI0sCNziq1wcgT1yPpsUOaPCruJ50
	111MqZg7isY1+RDq6Ygw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Ig-0004NB-UX; Tue, 07 May 2019 13:38:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Ic-0004MX-NL
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:38:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0527260A42; Tue,  7 May 2019 13:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236305;
 bh=l90A5lWNxnGFAyhwY4bPw3WYsZLGBUjPIk18dw3ufRQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=MGqCOl6OYlAAplnuQlUHuvMv7ExTWxyFPYbrujJFJGJxn3gE70ETLCkY7V3wzwHuq
 SP9F08KVbVpoqn7IvoFPrpMDzxnQ36u71SXEgrilH+rgHyJa0gymlbYgEPRyrpf86H
 AeK36/tcC9sLAckbn7GnhhnO3+sEEEfW1Uljyvz4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4F27960AA2;
 Tue,  7 May 2019 13:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236304;
 bh=l90A5lWNxnGFAyhwY4bPw3WYsZLGBUjPIk18dw3ufRQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ZbRBxtZz9Q/riUOPaqIlh7gqapB9UwqzY7AmHzTjfngxJZSHuLju7f94allHXPw46
 FhrZyiSngYgoVPdqIENt0MuPma3SEOIzWUObD3hCSbul5Ue0Tj7NIwdYLTktPz68oK
 Ah5ck4DT0ByqHl1BLCO0wMXZOPfybsWJseMpAUiU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4F27960AA2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: Extended the HTT stats support to retrieve
 Mu-MIMO related stats
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1551266682-32073-1-git-send-email-mkenna@codeaurora.org>
References: <1551266682-32073-1-git-send-email-mkenna@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507133825.0527260A42@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:38:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_063826_834505_99BD5D24 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>, vikpatel@codeaurora.org,
 arnagara@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:

> Extended the bit mask value of the HTT stats to get the Mu-MIMO
> related stats via tracing.
> 
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

14bf9217d66d ath10k: Extended the HTT stats support to retrieve Mu-MIMO related stats
473a4084e19e ath10k: Added support to reset HTT stats in debugfs

-- 
https://patchwork.kernel.org/patch/10831589/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
