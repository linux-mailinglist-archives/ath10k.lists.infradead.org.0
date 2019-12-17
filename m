Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F012350B
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 19:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RwcYi3Eq+kRkodu/xUGqCIsVNYfaslRBjcegvSss330=; b=gvPZzbT7i5wiVfVZMwSQiW8OH
	cL5Ws6VN+VIOcypkjO1ejVmudkF0rS86rbNWm6DmX4oOs0t1WjGpDgRGMkGZHX9uNYP7PJMO6vEg4
	vbnKChebeD2+NkvDwZ6Zr71mxi4cQbd3rS8md90mOtHezvm+AQxzA17Y3FQWEMptmv+HwDEZhfGw/
	F4JThWQwOXyWb8pRL100f00eNljfGtV1K7AfPiBICDfMLBo0x01DJmAIbsZX6HsBtN8/qbvmHuR9P
	pBd1e/j+j98CkIuh7ZjTR8hERkgLH2cr6rujL0UpkmeN9REQ0l5AeT32jODRiHmW4c6c2LIlDUVhs
	ebnuqSdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHhu-0002Xa-ON; Tue, 17 Dec 2019 18:36:30 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHh4-0001ko-G4
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 18:35:41 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id B269313C283;
 Tue, 17 Dec 2019 10:35:37 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com B269313C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576607737;
 bh=IrNiNk6UmF7VdwueTHkCEP89UuBxQFPbO7T5qQSqFgI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CqiAxKb9u914mCYGaOB9gRORYIrI3ChJGrVah6IVIHyChUynnqf0lPgsbubpZKZZG
 cXTMrvXnCw/RvY5x3m2I0Hw5FIQB9vwuHUp1xgIQO6KrQ3+OXv+H5aqKxKYlQniWBl
 Jc1U3VXeBsMz92CbVQAZRi66T+Ef26Mj9/lX6xlU=
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Tom Psyborg <pozega.tomislav@gmail.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
Date: Tue, 17 Dec 2019 10:35:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103538_579781_C7E3CB2C 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 12/17/19 10:29 AM, Tom Psyborg wrote:
> On 17/12/2019, Ben Greear <greearb@candelatech.com> wrote:
>> On 12/17/19 8:23 AM, Justin Capella wrote:
>>> I believe someone recently submitted a patch that defined noise floors
>>> per band (2/5).
>>
>> I looked at using the real noise floor.  Our radio was reporting a noise
>> floor of around -102,
>> where the hard-coded default is -95.  This of course would make the reported
>> RSSI lower by 7db
>> in that case.  I am not sure that is correct.
>>
> 
> Hi
> 
> I am getting similar NF values with all my ath10k devices, I thought
> default was changed since ath9k from -95 to -115 just like in the
> vendor driver? There were some discussions about it on mailing list.
> On some channels (5Ghz) the value goes down to about -107, even saw
> -110 once.
> 

If you use ath9k and ath10k on same channel/environment, do you see similar
RSSI reported (especially with the ath10k patch I just posted)?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
