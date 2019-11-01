Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E3FEC739
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 18:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APyLE3YFbJNdS3T4BtPRSdcnHjL3i4JQBOcZNJvdyU8=; b=eDHIIwuMJuQoTZugBi1gZm5T8
	tBhIAY8FHJbSiZ1fJrlR3vRzGUm2s+CyYMoQxGyfdsoTj8rtkNnIwzA/wGMXc/SPnUo0thq6j8dmU
	IqIvh6gOqjp3dUOLThxc5Wir3aKVueIePWaAoNlO/RE2a2VnMmi10wNpAlnfqDZBawaOm7aneXd4j
	LQspfDu0SaufK/KlAuU8UfC7tD/xXieG221Qgz+FyM40ufTQiCrxw29Lt9SKUPghUw/uxAeYcG6ZG
	Vl3m3jBdnVWqZqX+96e+lbs7176FNm4+2CBOa8lO87V1acvZj6rOLRWBqS9quUEucY/lEVxcoNmXi
	jWaPh5b8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQaQC-00020v-Cn; Fri, 01 Nov 2019 17:09:12 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQaQ8-00020W-Rv
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 17:09:10 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 6D3BC13C358;
 Fri,  1 Nov 2019 10:09:07 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 6D3BC13C358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572628147;
 bh=MCK6Ywe7qDyygTHlBZzZkjl0/Sf7CAGF+Gag/VKFgHg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=F3Opa4aUBkMTsrosuAnH2K0Z/jNTHkiv/1upP7ObNg+6A6H00AzmeBWZIu80X7Cb+
 124FPPMzAhp+ktlp7j/UFxOwSP/+8vaJpi7OTscwIdSHeuGIUUY/uX6dnzjwSed3eT
 63TOLF2c/C6Sma69cCLxLwxexsxkWif21SyVIgNs=
Subject: Re: [RFC] ath10k: interface combination with monitor
To: Tom Psyborg <pozega.tomislav@gmail.com>,
 ath10k <ath10k@lists.infradead.org>
References: <CAKR_QVJ2eHrESLOEqiKxbjr0SoZh3oJydtgcebBOXSpspbquWA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <bb62015e-d097-f54c-56ce-000d0b18a5ac@candelatech.com>
Date: Fri, 1 Nov 2019 10:09:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QVJ2eHrESLOEqiKxbjr0SoZh3oJydtgcebBOXSpspbquWA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_100908_927316_27637E77 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 11/1/19 10:03 AM, Tom Psyborg wrote:
> Hi
> 
> Is there a way to run monitor mode interface independent on STA/AP
> interface presence or their state?
> I am using airodump-ng/airmon-ng and I've noticed that while mon
> interface is brought up airodump-ng is unable to find any beacons
> unless sta interface is brought down. That is with QCA9880 devices,
> while with QCA9377 airodump-ng only finds beacons if the sta interface
> is associated to an AP.
> Does this need firmware change to work or driver changes are sufficient?
> 

I would expect it to work.  Have you tried -ct firmware on 9880 in this
manner?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
