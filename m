Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC95214A9F0
	for <lists+ath10k@lfdr.de>; Mon, 27 Jan 2020 19:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyVDEmXxVJolOeoVLFww4zGc8UCgA5VJhn5eRtKA9w0=; b=irJpXPTjXIiKw8
	nMmlI0q1k9QRKXb9gAaleGs979N9bGVmJS5kP4YkW1L09+hmWvhKeei+d92NATaymYqzzemPnCLEg
	UjWIxqLwQHiicmdV3vuWkB7JOBaV9ZEh4jdrmiMtBbf0bmM6FBOmpDdFgmQ9sWQ7d74N3lRNR5hJT
	MaK991jmuMrp1qGq1R6hhoW80Y7s8ItbPfz3RX4mNzVchB+th7wMkr5wumB9ifJiIBEF88SQ81XN0
	mlSqmG+qE5+zxu8PweJUqpFLCzUt75bFeX9XhwiKuRCnHiHHkTsa3ZK513Q/qBr1Z4sjFPZtYSY30
	qKUHXtbsLixAxywgzTwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9JT-0000aP-3K; Mon, 27 Jan 2020 18:40:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9JQ-0000a7-1l
 for ath10k@lists.infradead.org; Mon, 27 Jan 2020 18:40:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BFB620CC7;
 Mon, 27 Jan 2020 18:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580150437;
 bh=PJAXp4AsGoLzcRKLStbrm2UKjbQKkVmwPKYZQeAe9ug=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=0TCvQMcExa9n7jCK//GOPw3WK/BWt6f3VKqTPorZWRyx27UGQRpXGg+bIZEWa8TEv
 q1fh6t4HsIpyGGnMWY8EG0Ux+Z2rzrQ95nnQayHVgW2SQeOGYA7h7oul78B/jeAXPN
 fQT/Zc517FRIkAwIy5njR+bi2ffp9DjgXbll4cSA=
MIME-Version: 1.0
In-Reply-To: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David S. Miller <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 27 Jan 2020 10:40:36 -0800
Message-Id: <20200127184037.3BFB620CC7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_104040_112630_D78FB448 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Quoting Bjorn Andersson (2019-12-22 21:48:53)
> On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
> will reset due to an NoC error. So this adds an optional clock to the ath10k
> binding and makes sure it's enabled while the WiFi firmware needs it.

Hopefully this isn't a requirement in production firmware? Seems
wasteful to keep the debug clk enabled in the field when nobody is
debugging anything.


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
