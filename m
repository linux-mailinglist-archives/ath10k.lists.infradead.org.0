Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDA913CCFC
	for <lists+ath10k@lfdr.de>; Wed, 15 Jan 2020 20:19:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otQk5aBn9sJq9+dKDE4rCBR3fCwXPPJkZyVd+xi48lU=; b=ncs9Un+YdtmkpS
	FkA2gg8JN1pwZSACq65K4jKnD4EUNzUbwYx82xFh2cEIIarmecv+kTmq+dx0obybXp+6GhHZz3DJB
	wvJyMWZ6U4t8v0So+BBt/bWEcJwa0oWPbE07e23E5LlQkbaAo/Rw9ZVfmYKRsf2MLtho3uUWKCZmc
	KYSn1JUTNlFczArGtWCGmCKCS1G9oKQQJ63WSVXKagwQjmge41Il092vJXQ6p/Cm5doHRmo/Yg9FH
	ldTA9k0vKbvr1dOe0MSgjdFLaZ7hDec0PZJJAG50FnoTrWxgv3CizGff8CnrsH6PiSc0X6Mzi13bW
	Rju4eDlsI/hP+AwiY+pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroCp-0004dM-Jz; Wed, 15 Jan 2020 19:19:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroCj-0004ce-8J
 for ath10k@lists.infradead.org; Wed, 15 Jan 2020 19:19:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so8656096pgk.2
 for <ath10k@lists.infradead.org>; Wed, 15 Jan 2020 11:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y0L/6Kcm1GJKcnyPUoPeqUBC5pfceEUnD+q3JyvYAEE=;
 b=A4YVAjQsjO9yS+bZ2p+xPTeFVjMqzAsB1haQHadcdWHedJzXAM6Cy6GYdTg9jS3xnB
 ySSsVnvIo3WyNXb2ttDB6HFq9twxR0X1qjmFtg3RD7vTf9F6+BmwIevAFElHrDLqQ9zD
 XJeHYsPAqifBydAE1iUwj2tew8zcqf9Tb6fQ1BK+RW5saqvk6Qn10yqHoTfOJoq3AhwL
 kVt9GKUZtqLY0kkYedefoKWmKule6N33eUfBZqT4RAEA0HyRUewDbdGrqbskFoSCsdIJ
 MDhHHYM2naLrVzRoZgTt6iOlsGD7mahhutqDgKBq9uusoCVsCClu9Dw5oX4UgOWPyDne
 Hbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y0L/6Kcm1GJKcnyPUoPeqUBC5pfceEUnD+q3JyvYAEE=;
 b=QObbwSuRMjC5g2jxoiWI0SdEno88aMuQJt3txLPjmYMme1gw5TZqkOby1q2DSkoBmm
 lyl73jRbBVjp7kXB6S956ima7pg2f+LHLREQyx/wVgl3M0Oi/6rKzQa/mqv8pDYIo+JS
 vEmIqjN3QIgOccqF4fOPNsrtdKWxqLT4E1fupxB5t05Bi8okgcWdUAnsl88iTlfbtPEy
 ciOl+oW8fw9HkNlD5Ml0lzKqH8d+n3IQm/QgJf/h9MqNswJWqmTFQR5KXgbElRrcmv7u
 sGT/R5R4bCxAANbVZfohn6apWqoi2qPHndEw2Tg+x6Prpc655wOKtqVncOEyk5JBQJ9T
 WFqA==
X-Gm-Message-State: APjAAAVRv1hAVCFFKT+uyM3fOt5WGrqwi8ZI2am7soFFG8H2DLjCULY2
 sapDHWxlmYE9K5QKTrrHFUtiDQ==
X-Google-Smtp-Source: APXvYqxONnTtCwwnSki0/OOTTRl5EWXhbKn6I/OQTaLOzJ8xq81wDXDeIljZnF/OQciErxJzcjfMiA==
X-Received: by 2002:a63:5442:: with SMTP id e2mr33667216pgm.18.1579115988269; 
 Wed, 15 Jan 2020 11:19:48 -0800 (PST)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a10sm21968793pgm.81.2020.01.15.11.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 11:19:47 -0800 (PST)
Date: Wed, 15 Jan 2020 11:19:45 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 0/2] ath10k: Enable QDSS clock on sm8150
Message-ID: <20200115191945.GM1214176@minitux>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
 <87zhevsrwk.fsf@codeaurora.org>
 <87r201xf8p.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r201xf8p.fsf@kamboji.qca.qualcomm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_111949_357448_E54E4E70 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed 15 Jan 01:04 PST 2020, Kalle Valo wrote:

> Kalle Valo <kvalo@codeaurora.org> writes:
> 
> > Bjorn Andersson <bjorn.andersson@linaro.org> writes:
> >
> >> On SM8150 the WiFi firmware depends on the QDSS clock ticking, or the system
> >> will reset due to an NoC error. So this adds an optional clock to the ath10k
> >> binding and makes sure it's enabled while the WiFi firmware needs it.
> >>
> >> Bjorn Andersson (2):
> >>   ath10k: Add optional qdss clk
> >>   arm64: dts: qcom: sm8150: Specify qdss clock for wifi
> >>
> >>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 2 +-
> >>  arch/arm64/boot/dts/qcom/sm8150.dtsi                          | 4 ++--
> >>  drivers/net/wireless/ath/ath10k/snoc.c                        | 2 +-
> >>  3 files changed, 4 insertions(+), 4 deletions(-)
> >
> > Via which tree are these supposed to go? I'll take patch 1 and arm
> > mantainers take patch 2, or what?

That sounds good (you take the ath10k and we'll take the dts).

> 
> No reply, so I'm planning to take patch 1. Please holler if I
> misunderstood.
> 

Sorry.

Regards,
Bjorn

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
