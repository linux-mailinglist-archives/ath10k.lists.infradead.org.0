Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F47123CF1
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 03:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1E7tZlewWwuWOQAhhDbRXkXH2G63vNCMR35waV3lLy4=; b=EB5q0UyZfNiMXNu64ba6i73NQ
	HirNo45Vi2ZR48b4oUjnbuWjwyxJRX3a1AiQr3SX295Ng9mW46eY4Io9gbqn5iH0X202pAXkigAab
	faXLOpf7jWaW7zqnuhHu9ut7OVn2ANuBFvhgDwZy2AD8ZlDxap46VCVips6tQ8IX/jnD4Z33Exryg
	1sGmMKDcTFQ1B3+5PYwCjB7t5OsLNgpxm2yHTikokPQcIUFmsHYd7QPtx8huLxcKPNcFXGRp5QBVH
	wpZdXHLaWuPrqfyQfaHdqtgxcD7Sri1VLa8KtIIrnYVrV+lR8hFf0sgiOdExVibhvQ/T6tvSpCa9g
	zU8U353pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOpN-0004Ba-VQ; Wed, 18 Dec 2019 02:12:41 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOpB-00042N-48
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 02:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=6WLqXU5/gbK10W8fO9D9QGVt2yPBkaTAhbB6ArSqfrQ=; 
 b=rYsCqbyhyjdCE+CC4UML99qXFhOW1lvyafL5pvD8WMYKFWIXyUQpeXPTriwKEL8htW8nJhn26QdQW6sm6+pcs29iDo7i7p4pttxRiPyvhV84FXXD7KD8wlztPz/vfhk/N3UxpUhja9ABAEfUdIskAvE9jt0nrtM2IF6E+KfpZFY=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Tom Psyborg <pozega.tomislav@gmail.com>,
 Ben Greear <greearb@candelatech.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
 <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
 <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
 <CAKR_QV+KV1dR_QKjANL34DGJuyf3OSN8J6gs3bqcmiRCCzkdXA@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <5e3f22d1-b8ba-d756-a15c-1e7ae56c1dad@newmedia-net.de>
Date: Wed, 18 Dec 2019 03:12:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QV+KV1dR_QKjANL34DGJuyf3OSN8J6gs3bqcmiRCCzkdXA@mail.gmail.com>
X-Received: from [2003:c9:3f0e:3a00:383d:f7f7:6179:80c8]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihOnl-00065C-Qy; Wed, 18 Dec 2019 03:11:01 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_181229_525680_CC84B1F5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

i dont know what you want to compare here.

1. you compare 2 different wifi chipsets. both have different 
sensititivy and overall output power spec

2. both have different amount of antenna chains. which does make a 
difference in input sensitivity

3. the patch ben made has no effect on qca9880 chipsets. it only takes 
effect on 10.4 based chipsets like 9984


about noise floors in general. noise floors of -108 are bogus. there is 
a physical limit a noise level can be.
since drivers like ath9k are doing a cyclic calibration, the noise value 
might indeed change. but this calibration is
not running in realtime. its cyclic. i'm not aware if chipsets like 
qca988x are going the same way, but since qca988x
has sime similaries with ath9k chipsets unlike the newer 9984 variants, 
it could be. the 30 seconds mentioned
in the bug report fits to my expectations of the early noisefloor 
calibration which has a short delay and after success
turning to use a long delay. anyway. in this early calibration phase 
signals might change and will stabilize after. this isnt a issue
since your connection will work anyway even if it might take a little 
bit longer if you have poor signal levels

@ben. am i wrong or what do think?

Sebastian

Am 18.12.2019 um 00:37 schrieb Tom Psyborg:
> also noticed now that the noise floor changes with signal strength as
> described in this bug report:
> https://www.mail-archive.com/ath10k@lists.infradead.org/msg11553.html
>
> after wifi restart
>
> iwinfo:
>
> signal: -59dBm noise: -108dBm
>
> then goes to
>
> signal: -52dBm noise: -103dBm
>
> and finally drops to
>
> signal: -59dBm noise: -103dBm
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
