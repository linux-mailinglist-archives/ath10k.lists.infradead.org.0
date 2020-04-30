Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0FE1BFDAB
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 16:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V6qm7MnC9+Raf8gHIeuZYSLy0594cOlwequrT4LWbgk=; b=FmD/RvfD9TOnaRB85QkklS07o
	SYc8F2zTrkhdr38o92Zg3bV8b/9qz3hr45z6aEzo4UNpCVRsaQ0sgD7QgKNAlZXRwk9E8ujNPoTV8
	EZtylq/cTmoVBBuY/cvVXTv+JebSlMRViC7dkYwWSd+Oz9JH24FrDmGKcBpFlv2ev9gDnPJ4Larnm
	cgxrttAucS+uHC+xMbB+snKRpoAViUFNj0/G6k/hxojwR06ggTDr/mQYlqJOTHBOo79fCq8/yCIAJ
	gx3tHLDrIVt7nbpAWoSdvrf5t9K5bX2rzKNSmXMtq8uTdATAVTbNurHOzyGoLDtmDdEQYSi/ZqxoA
	4F1jid9Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9zv-0000PY-7T; Thu, 30 Apr 2020 14:17:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9zr-0000Om-V5
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 14:17:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id t16so2293463plo.7
 for <ath10k@lists.infradead.org>; Thu, 30 Apr 2020 07:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XUvgQdEMAaboTs+H7QN8HLFtn6IGe2xw9mjWY1BSPcw=;
 b=pIYvThhu2PttWCWx253wT6sqVIs0OrMVI4+lASEqx5cL1Shzb3uYEoAl4YjjrVC5yp
 //g5lxMnMhxuj/0fHkouJ2MrsqsDGF7nKJ9DepAwAxxDYisn/zhc6f7kNqmtkE3ujjyA
 b00mP0MDzupiiQnLPmwwSpdpkTZVTekZCwBozTrPiAWfWPbUSNR8+ukumNccSAj/av+L
 Jod5YqY8vPzpGXevUgDymsfEXUgIH21Aj2ANZ4L7sXtJIo1KnU7mh3rrdGV2vC6g6vQw
 U0rp4bSK8rj2mZR3evEdtu+lSpHZBXKRIDe5wx5UEzazgwgdksv5IffC9A2nqW4ffrco
 GQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XUvgQdEMAaboTs+H7QN8HLFtn6IGe2xw9mjWY1BSPcw=;
 b=YmgrNmPIRn2wSxSbDHHdi4Z0RNY3s1/EhIR6jjOaTjytJzoz+6xA9pvzI9B8G64UIq
 tcQFmXUQDGELaKUw0orPNWEtINzuIar4rlyRxXw0uZq6DaRbZcPx9XFqmDTAGRbYAqPp
 xl+7xmlbuPeIQyTcefT+Ai2JKV+5eyfXK45KGAedbQXXNlGnIHOlvcmWpk8J57lKC0Cm
 jVNRVLJW/Otp8cFGrJo3bgC5KyssAua0KY6xXEkA2g0PmunIy012o6s5vf45yvSigUjq
 KkNppyeDyFyZapVjIw2sIDEYBWMCSwLGnyp1JG7VddRJdZVN9mLJYTN8CK4LFBGVgzxl
 0HeA==
X-Gm-Message-State: AGi0PuZDw340R5y++f9rUSr4a7TBmEJtqCXdDxIeirTeB53f4HbpG/Lo
 RYnzl+I8Hn80qplU/KBymYCcJWqE
X-Google-Smtp-Source: APiQypJ0ZGhnq+83/2qjtD/Ok3QtBx0wHWDdDYznmEJ+pmditrQ/0UnVAABv0/NtVvLcldRkymSKvQ==
X-Received: by 2002:a17:902:b18d:: with SMTP id
 s13mr3872940plr.240.1588256223081; 
 Thu, 30 Apr 2020 07:17:03 -0700 (PDT)
Received: from [10.211.55.7] ([112.207.24.128])
 by smtp.gmail.com with ESMTPSA id l37sm82039pje.12.2020.04.30.07.17.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:17:02 -0700 (PDT)
Subject: Re: [PATCH] Allow qca988x family to support ack rssi of tx data
 packets.
To: Kalle Valo <kvalo@codeaurora.org>
References: <20200312082047.487DAC433D2@smtp.codeaurora.org>
 <9827dda3-7a4a-5e10-071a-c7b4e4044572@gmail.com>
 <87y2qde08w.fsf@kamboji.qca.qualcomm.com>
From: John Deere <24601deerej@gmail.com>
Message-ID: <6355ca22-f09a-5091-fc52-7a7e8f554323@gmail.com>
Date: Thu, 30 Apr 2020 22:16:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87y2qde08w.fsf@kamboji.qca.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_071704_002221_0498B303 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [24601deerej[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

That is for the QCA9884, not the QCA9887 as listed in the hardware tested.

On 4/30/20 6:28 PM, Kalle Valo wrote:
> John Deere <24601deerej@gmail.com> writes:
> 
>> Hello,
>>
>>> Firmwares tested : 10.4-3.9.0.1-00036
>>
>> The firmware above is unavailable anywhere.
> 
> It's here:
> 
> https://github.com/kvalo/ath10k-firmware/blob/master/QCA9984/hw1.0/3.9.0.1/firmware-5.bin_10.4-3.9.0.1-00036
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
