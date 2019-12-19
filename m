Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BFF126460
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 15:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d2Tz54c2GunjMwxaPHf7pNLi19ex/7sMbBq1xpfoi2s=; b=uzO+Tnh6soysa97gmZZsXMnVZ
	T5XxQZYIPNga4h0AaqMp5fK4kNQROsTCceY/yJEWifgsyMkrDsDqMfARTB2T0dWAQZxKbEz1jk+yU
	JOhbiu7oANQGpJz8LxBwm1YXFgPXOGsz3q38qr9Y7Ocn84li252tZPZrkPrEScEUn4mVn874OR+Ec
	X7DVxatMssOKZ3AvihgExauhJOWnuF9/wWIDTSnTVUkwjhL85g1HkBzs94VMGBKlVsZpj1FOD7Qfn
	+fhVouVkIfadUK+CnIinB24bMlCFHVllDrzO2ba2yHtAWa1gGU1IOkyAGzYjy/SooUkpvyHffOyE5
	62IFpS5RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwaJ-0005YP-5x; Thu, 19 Dec 2019 14:15:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwaF-0005Xm-3w
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 14:15:20 +0000
Received: by mail-ed1-x541.google.com with SMTP id dc19so4996329edb.10
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 06:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nHgx2GEuIHEI/uw7dADnlN+M0u4j8U8xgIvIMxkGueI=;
 b=d8JpOiP0tPoOdzkKMqIOa4aDPqU3Trcnx82SsD/0blFPTNXLcjluM/W3bj9bBLsbJ8
 VkCdApQu+J2cRgIIla+qdfN+NUd2n3Sbt3EEIwJuh+Autd6TWdvlmjzBGnAz/FYvBAvw
 xAsSe+gwVO4wNN4gl/ls6HgiAyhf67p4Yl1XMFzKg76yvIYru04Tes17/XmuF2jdyRbC
 Oqfwr37L736T2TIpCPcFNQcPc6fiY/gEEmob2n+15V4mnbTwuN3TdQTRn8gzKXsbSTgg
 KxtVBDKhj165Cn8w4J2S4vhrmOhb+ytYbidLHeP/DehkTC52fAYnSUggRDhaaNMdXjMm
 OAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nHgx2GEuIHEI/uw7dADnlN+M0u4j8U8xgIvIMxkGueI=;
 b=aStbUIeUDvoclZZtIy79BuulXNq6nv2hGWdSEFrPRSbcL3rkc4o5E/sma3nD8DGEV/
 rl7wIBbz5ON/PDLdPsWKZK++5G/w4ig4ekv7zob9Me4lXrUO470oUn+IjzVGsG6Os/P7
 i93/y7aD5yQbyqKQkycYzOY15n069ZMBd2XE8MUYerOiXvJbdaR76/f/10RAe4H0pTvP
 zfXiPlNyA2vq1iXTrezWbS6z1VFXOpDMHQBZS8/93Eloh1EEctpEhHcDnhU5GCI6zapL
 lT4Cl+DU7soA7gP9Rr9H8Ku5ZMM36V53ay37vzXRrq5h/MpWTr3Eqf4tsIvic4hrrnjd
 qlug==
X-Gm-Message-State: APjAAAVAh4j3XzIKIbS9WhRReDnu0vrV5ej8wFT1tPMcaSjOGY2PuV+Q
 HgKLLueCYa3B5rf1tvQ5hN8LIg==
X-Google-Smtp-Source: APXvYqxOdrfazzV2P3yq0ZqbmGPQjf800n6FOfcjz9xMfQK0Kxmz49naD/kJ4JT4H2T6UTmbPMfKLw==
X-Received: by 2002:a05:6402:c8a:: with SMTP id
 cm10mr9573746edb.287.1576764917086; 
 Thu, 19 Dec 2019 06:15:17 -0800 (PST)
Received: from [192.168.0.38] ([176.61.57.127])
 by smtp.gmail.com with ESMTPSA id c19sm447022edu.76.2019.12.19.06.15.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 06:15:16 -0800 (PST)
Subject: Re: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG
 when safe
To: Kalle Valo <kvalo@codeaurora.org>
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
 <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
 <87woas5slt.fsf@kamboji.qca.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <38bf1f75-0554-920a-0f29-354e70cfc077@linaro.org>
Date: Thu, 19 Dec 2019 14:15:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <87woas5slt.fsf@kamboji.qca.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_061519_225028_926A0060 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: akolli@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 19/12/2019 13:53, Kalle Valo wrote:
> Bryan O'Donoghue <bryan.odonoghue@linaro.org> writes:
> 
>> ath10k_pci_dump_memory_reg() will try to access memory of type
>> ATH10K_MEM_REGION_TYPE_IOREG however, if a hardware restart is in progress
>> this can crash a system.
>>
>> Individual ioread32() time has been observed to jump from 15-20 ticks to >
>> 80k ticks followed by a secure-watchdog bite and a system reset.
>>
>> Work around this corner case by only issuing the read transaction when the
>> driver state is ATH10K_STATE_ON.
>>
>> Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> What ath10k hardware and firmware did you test this on? I can add that
> to the commit log.
> 

HW = QCA9988
FW = ??

Not quite sure how to find the firmware version TBH

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
