Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446A4153705
	for <lists+ath10k@lfdr.de>; Wed,  5 Feb 2020 18:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fSwG24UNdEOCIq5eyFhF8RPV8WOGvPgIY/bfQBb+yg=; b=XT9TL5evib/6vl
	XyFzSj9doIsuvLTEKgaY5Mr2ZDWMsWZUz4C0NJtFKwoADLrmJeQYvJARhY7exfoGhT3JYUONebus5
	SkbkgevKVUj2rhGDAJ12pvKe1T7cCi4HMIMSsFWavX4orINtwgRh6NOa1UY47WEksVWGS+zR5noEm
	V1PkVBM4RCSLaXm+tJVaBPOUaSR7NuxHMAZenXs13FgfE14pDD6vpp1s5lPrGZXT28M2Tlx2momMu
	ywia9fxDHs79FRZfN3toEj/+i0JVQVYm0a+aMS25lcq21nE56qxlmcpBA4z093/OxzU/dmFlxF4CQ
	xqSzsCgAT3NGefmY4lsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOnd-00031b-Eg; Wed, 05 Feb 2020 17:49:17 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOnZ-00030m-Ux
 for ath10k@lists.infradead.org; Wed, 05 Feb 2020 17:49:15 +0000
Received: by mail-wm1-f66.google.com with SMTP id t14so3874699wmi.5
 for <ath10k@lists.infradead.org>; Wed, 05 Feb 2020 09:49:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p7yEieln0jae2eT2M/0er6+kV9NoBt/oQX2qMjPZJ/Q=;
 b=BHvVlxdjp91HHPmwRTQE/sB49sWo5cbsAOHD647DSHHUTD1hNU6yfUjthvPOwVboeO
 5JnTTQfhI8kez6bW5AyUhmOAJtj9Bz3XtC/tJO8U6E/qU2hkDEHmqVvpEhiPkx50g9tL
 7BuGB2dL7cbAa13i+bOiirDzn/JodY7axfy8HYA6Rawf3j9aMoR1HjhFIEgWukooIrw5
 zkuwWDCvGFydEDZfekBVbUSw7BSuMPgTIQ27IjmI3TeOPsrWJmtcL0rGWVhXjd9jtPjh
 H/T5YoKmvuht0cB5a3oRFP6/nn7n6wsKeLeDq7QFXBkUflIjv7bAgXZof+3JpDF1tqCR
 j+2Q==
X-Gm-Message-State: APjAAAUUDi6a44DdZS1awi/TGW1OX5KJ0MrjAQ/mTn49cfSzlt1pTtii
 zXZHRqV90WWUbmig4n9Pq9QqLC1Ugg==
X-Google-Smtp-Source: APXvYqxrkccvNl9da8AtZiLVomEnf+cjr97jeYk9zDCvBB4OzibTwGtQk0HvdayBC/CQAVvY6ffffQ==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr6912417wmm.95.1580924952525; 
 Wed, 05 Feb 2020 09:49:12 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id s1sm695548wro.66.2020.02.05.09.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 09:49:11 -0800 (PST)
Received: (nullmailer pid 29276 invoked by uid 1000);
 Wed, 05 Feb 2020 17:49:10 -0000
Date: Wed, 5 Feb 2020 17:49:10 +0000
From: Rob Herring <robh@kernel.org>
To: Tamizh Chelvam <tamizhr@codeaurora.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: ath10k: Add new dt entries to
 identify coex support
Message-ID: <20200205174910.GA29218@bogus>
References: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580152736-18654-1-git-send-email-tamizhr@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_094914_000760_D59A04B2 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, 28 Jan 2020 00:48:55 +0530, Tamizh Chelvam wrote:
> This adds new dt entries qcom,coexist-support and qcom,coexist-gpio-pin
> which will be used by ath10k driver to identify coex support
> of a hardware and notify wifi firmware the gpio pin number.
> This pin number information is needed for the hardware QCA4019.
> 
> Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
