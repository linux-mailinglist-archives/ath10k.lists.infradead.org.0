Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B8A12CC8F
	for <lists+ath10k@lfdr.de>; Mon, 30 Dec 2019 06:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ol/TLUi6DTtnAIqjQEWaNKK1b7+8lvFx50oyPE2O3Zc=; b=F7HVYPpiXARuSKYptnWrmr+J5
	d77wudIwcBYxhi4eI6rUVslzkNI1fNal5AcbTFeqfD5D8JkHU/bOPfBrIVy3+rHopw1SZ+TXgMOry
	A4xB5tVxV842ZdQg83+yF9rZiIxjMcBlZiBsJdlCiYktA3Ce36f4rdXWC9VX62siBpU10ONdwj7A6
	Gat6ziuNNaOePLSCeIeb9eIECmbPysFjEBZd6n/Gie0zd4oKhlRZpMvsgi+EoWjOYHGi+bXerOA4Q
	Yi69teAfTMeK20DveDZGK9hdpJqEGhrt5X1Rt4O0sZwvSoFoYXgyBsIfNywW4Vmib0DQGVzPwBALo
	yyoceK9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnH3-0006TK-Ce; Mon, 30 Dec 2019 05:07:25 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnGz-0006Sp-TJ
 for ath10k@lists.infradead.org; Mon, 30 Dec 2019 05:07:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577682441; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=iUHiDa50ipV5g8yjtiIT6rc5EqqmqjGaHB1Oj0CvJfc=;
 b=Imjhh1qL87mYIa+ulIAO22dtX9gnpXtHeRCw3UyzahmKOD6qla1w7pqwHTELB2D01Ys2Se9T
 FJSL++IHOF0kI+C6FYsNVgaNMlCOBNTgds8MGdVvH3g2N1SFZdNTLxajkmzAWz5b00AcL9Lt
 C/aGEo0ST0E4kOynZOJsUKDHIJM=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e098606.7fe16d2f1880-smtp-out-n03;
 Mon, 30 Dec 2019 05:07:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A10ADC43383; Mon, 30 Dec 2019 05:07:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: tamizhr)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 315CDC433CB;
 Mon, 30 Dec 2019 05:07:16 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 30 Dec 2019 10:37:16 +0530
From: tamizhr@codeaurora.org
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: ath10k: Add new dt entries to identify
 coex support
In-Reply-To: <20191226185132.GA31120@bogus>
References: <1576496415-23064-1-git-send-email-tamizhr@codeaurora.org>
 <20191226185132.GA31120@bogus>
Message-ID: <62b9e7b140a96401469f7075811d0d67@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210722_006706_33CCA621 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Rob,

Thanks for your review comments.

>> This adds new dt entries qcom,coexist-support and 
>> qcom,coexist-gpio-pin
>> which will be used by ath10k driver to identify coex support
>> of a hardware and notify wifi firmware the gpio pin number.
>> This pin number information is needed for the hardware QCA4019.
>> 
>> Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
>> ---
>>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 6 
>> ++++++
>>  1 file changed, 6 insertions(+)
>> 
>> diff --git 
>> a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt 
>> b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> index 0171283..a41e936 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> @@ -87,6 +87,10 @@ Optional properties:
>>  	Definition: Quirk specifying that the firmware expects the 8bit 
>> version
>>  		    of the host capability QMI request
>>  - qcom,xo-cal-data: xo cal offset to be configured in xo trim 
>> register.
>> +- qcom,coexist-support : should contain eithr "0" or "1" to indicate 
>> coex
>> +			 support by the hardware.
>> +- qcom,coexist-gpio-pin : gpio pin number  information to support 
>> coex
>> +			  which will be used by wifi firmware.
> 
> What combinations of these 2 properties are valid?
> 
> Is qcom,coexist-gpio-pin required for coexist support? If so then it
> alone should be enough to enable/disable coexist.
> 
qcom,coexist-gpio-pin is required for QCA4019 devices. And other ath10k 
devices doesn't required that value.
So only added two fields to enable/disable coexist and another for 
notifying the gpio pin info.
>> 
>>  Example (to supply PCI based wifi block details):
>> 
>> @@ -156,6 +160,8 @@ wifi0: wifi@a000000 {
>>  	qcom,msi_addr = <0x0b006040>;
>>  	qcom,msi_base = <0x40>;
>>  	qcom,ath10k-pre-calibration-data = [ 01 02 03 ... ];
>> +	qcom,coexist-support = <1>;
>> +	qcom,coexist-gpio-pin = <0x33>;
>>  };
>> 
>>  Example (to supply wcn3990 SoC wifi block details):
>> --

Thanks,
Tamizh.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
