Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621914ACB0
	for <lists+ath10k@lfdr.de>; Tue, 28 Jan 2020 00:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pB0Heaj3DY21Wxc+byOsx1kqSrDL1+lGRMDNymMk/mQ=; b=g/AOWLWvUQBmEX
	R6pHC4a+3TKVcTDVIwFaLF/1FPyx/oK8BFiO5HLsKxroHeiO7mQkTOopMdEkmO+6zBpRvP1gvlg0z
	nxwsWKAh5D9vdgDv5zcdCA7y+n73ns+V5UzScu7YOPyi7YO24ve80uya0JD8ycDoGY3zikoJS1rG5
	J9APOxUHOK2iTONyW6WImPOIBJzcPC99azc4aDzFfemaeob8ksiTseoRKLwdABibqpQ78gscau/bP
	okiFPR434yasQXvqx5AVKRyunkJ4eWTnKzX+WUKUaBh0h4VkO7Dp6gSV0AFJVzXS+HMJ1Y9TilGbF
	ZWvMry7Lp0X/HH6ToA/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwE1a-0002z2-UD; Mon, 27 Jan 2020 23:42:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwE1T-0002xm-U7
 for ath10k@lists.infradead.org; Mon, 27 Jan 2020 23:42:32 +0000
Received: by mail-pj1-x1042.google.com with SMTP id gv17so178226pjb.1
 for <ath10k@lists.infradead.org>; Mon, 27 Jan 2020 15:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4jR3NEZ7x+Jvx3U2TQ49TKGsznRacov85tgmCkWAaLs=;
 b=KEEfsaPzSnHMeqMLqqLF/rKhOnk1MsLgBr28dnqCs8OF9PTkJ+kGeggRfhXfPW8AdM
 5ignS2E0kGnVhslgsBP8y2I9j5uYqsgB/RjhpdR6fqQN3cHxjGgEp3OwCIYullOj2y5g
 x1loPleyzV88AC/BVEIpNRNXMByZ94VY3QKAjX6PPGnMgCchseaNbLqYu9raH41h6jxu
 qxpD3/1hqBM5jHPTxqKIHNdcOObFQsr7HrQo6E8lr2n1h2riX6kKDEq+FcaDAZLdUIYd
 BGbZf2NJM0rhl/BD/e5neNmcLeRSrbC4bnz9hgkuxwxL4j2O4bk1WtwRxabeG082RSm9
 ZDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4jR3NEZ7x+Jvx3U2TQ49TKGsznRacov85tgmCkWAaLs=;
 b=praaOwFWCNAskPZ1jX4/ZBQzLTZeD7GvVZ9phUEa7ekUHx+Ykx6cUBVjquiRJN6/BQ
 puamxpZpzpUEpZmb5x8ZQEZtFvW0N1EnAK+Hcur2jm0+yYKCpw6Wj4vLkkGLCJO3y13o
 mQvYIaGt1ZbgxxTqgRCjVum47L+iV6coO6aIxvW6niPtuNnPEwV+lMFQ5WoYGcV5psII
 V+KClRpJc4bB7RDRQwrWWdtRa6WEWhxk1BJ31MVJpBXtyJtYJuGw1x5y5wiLN5bRUuFv
 zMM3d7UBzvJB2sgeIuAZHjGtdjtjKaPpiYL0IVcQHtzx1k4ifq79zXde/nigKD/J/IZU
 1FRw==
X-Gm-Message-State: APjAAAX1uEmI4HCbNZCLZyOZx5CsLwIkihTswYCp2EC70DQyiIOTIxBy
 kG69cHh9f80sbNrXBM/Kz8GtYQ==
X-Google-Smtp-Source: APXvYqz6tLIUsXV5Wb/Oi6Sc3Ql3UOYy6wK2oscK/U9I/+KHFO2ncIizEywoPt17c47xcms2lkjbpA==
X-Received: by 2002:a17:90a:3aaf:: with SMTP id
 b44mr1344980pjc.9.1580168546572; 
 Mon, 27 Jan 2020 15:42:26 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id p18sm325420pjo.3.2020.01.27.15.42.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 15:42:26 -0800 (PST)
Date: Mon, 27 Jan 2020 15:42:23 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
Message-ID: <20200127234223.GA202699@yoga>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
 <20200127184037.3BFB620CC7@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127184037.3BFB620CC7@mail.kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_154230_083154_966CBC01 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Andy Gross <agross@kernel.org>, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon 27 Jan 10:40 PST 2020, Stephen Boyd wrote:

> Quoting Bjorn Andersson (2019-12-22 21:48:53)
> > On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
> > will reset due to an NoC error. So this adds an optional clock to the ath10k
> > binding and makes sure it's enabled while the WiFi firmware needs it.
> 
> Hopefully this isn't a requirement in production firmware? Seems
> wasteful to keep the debug clk enabled in the field when nobody is
> debugging anything.
> 

I'm confused about this as well, but I'm told that it was fixed
post-8150.

Regards,
Bjorn

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
