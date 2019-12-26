Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8D212ADFB
	for <lists+ath10k@lfdr.de>; Thu, 26 Dec 2019 19:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29eyjx49jHi9EzCwOFBdNxsHrGpDsrhY+vP7zpV2yhg=; b=AZ/HktDLSnVI5p
	P/ez3+CoZju/i+JecZcicmLWplalOJmvI+B4xjPdV5y3y9ZAQqNrkPdAXw3Iquz2Glnjo6aqmeeSc
	CgSEoIR0qCg54AEMRG/4bojsr4x4io1eGQu3zaxaTcn/2xVEzUnurrnfIPbLoU4NBZPjUSBqCkRq6
	LA9M02fmX0FGIQyhTnwJZyCA9x0wqLqkEpiyu62VESmGwRt9bUJgpkXMGONV5+HdKfuLb3MiZddu4
	mt975ONL8PUCTf706qWqzXUSc8hE+K55bWy5uwuw6zlLIXPCSzYxZjJDmeHf9Kr2s4adDTfs8f09l
	e+ygMqv5i+oqo407pBcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYEX-0001qn-HK; Thu, 26 Dec 2019 18:51:41 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYET-0001qO-IS
 for ath10k@lists.infradead.org; Thu, 26 Dec 2019 18:51:38 +0000
Received: by mail-il1-f196.google.com with SMTP id g12so20803597ild.2
 for <ath10k@lists.infradead.org>; Thu, 26 Dec 2019 10:51:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3UMtDU8DxQ3MGtUa2c3Y90UpyYpDwJplb5ZS1zSkCmc=;
 b=cHkmZosTIcHmrnRrwLyfFRq3cpOZe9Xg/xgilU9guKeeO/Za4C9zpF2aTFzhKm+h6X
 zhlaZVvEXQpVMdhm8xOWRejy20CGbM9hwN5bfkN/mGYrtrUt6yxu+TYfNaF1PgrOczT5
 nOBsXVQWnnEC3zAB0HWgYuqPvnglKGolH2d3DqbMEsPM9iTWwsTk9dhjjDLrnno25f6+
 oTMfs7TPCIWDI60D+Zbfjjq/g2xjQri5pwYE6Y3nhjoRtclGYT/sPo61iOSgtBGZ3nH2
 KpIopAU8oOzH3lGdizJGV150F00Us5nFVXrkLytwaVe4GM1atp52R3+9Ci6jNCZq/7tI
 6fOQ==
X-Gm-Message-State: APjAAAXoa5UPNrg+a5q/gMg+ZZwNhDUAEfykw4iX+IAOxa4kBU6M8Vho
 rAj6As1PbaV3yp1ms6eiFw==
X-Google-Smtp-Source: APXvYqySldlRAzOb9NpZjVOq6WC0G5C70Vuhd2vFmw3FOsorrKM5EEz3CstEkjK7Hu4QPpJKtktk+g==
X-Received: by 2002:a92:9a56:: with SMTP id t83mr40442318ili.200.1577386294850; 
 Thu, 26 Dec 2019 10:51:34 -0800 (PST)
Received: from localhost ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id k16sm12454714ili.35.2019.12.26.10.51.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 10:51:34 -0800 (PST)
Date: Thu, 26 Dec 2019 11:51:32 -0700
From: Rob Herring <robh@kernel.org>
To: Tamizh Chelvam <tamizhr@codeaurora.org>
Subject: Re: [PATCH 1/2] dt-bindings: ath10k: Add new dt entries to identify
 coex support
Message-ID: <20191226185132.GA31120@bogus>
References: <1576496415-23064-1-git-send-email-tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576496415-23064-1-git-send-email-tamizhr@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_105137_609028_EEDC51B4 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 05:10:14PM +0530, Tamizh Chelvam wrote:
> This adds new dt entries qcom,coexist-support and qcom,coexist-gpio-pin
> which will be used by ath10k driver to identify coex support
> of a hardware and notify wifi firmware the gpio pin number.
> This pin number information is needed for the hardware QCA4019.
> 
> Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> index 0171283..a41e936 100644
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> @@ -87,6 +87,10 @@ Optional properties:
>  	Definition: Quirk specifying that the firmware expects the 8bit version
>  		    of the host capability QMI request
>  - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
> +- qcom,coexist-support : should contain eithr "0" or "1" to indicate coex
> +			 support by the hardware.
> +- qcom,coexist-gpio-pin : gpio pin number  information to support coex
> +			  which will be used by wifi firmware.

What combinations of these 2 properties are valid?

Is qcom,coexist-gpio-pin required for coexist support? If so then it 
alone should be enough to enable/disable coexist.

>  
>  Example (to supply PCI based wifi block details):
>  
> @@ -156,6 +160,8 @@ wifi0: wifi@a000000 {
>  	qcom,msi_addr = <0x0b006040>;
>  	qcom,msi_base = <0x40>;
>  	qcom,ath10k-pre-calibration-data = [ 01 02 03 ... ];
> +	qcom,coexist-support = <1>;
> +	qcom,coexist-gpio-pin = <0x33>;
>  };
>  
>  Example (to supply wcn3990 SoC wifi block details):
> -- 
> 1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
