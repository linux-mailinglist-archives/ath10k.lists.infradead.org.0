Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FC1124614
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 12:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uBmGjtgzPOxKFLUQx2dfV1yOpQ4JXVt4szybesU5ro=; b=lim6ssFSwAUoLC
	iAJ5s0Vn/FirJwssZKhPQ2QXFlBdSmj5kyC9rFnl+hx/Ev9ye2p+e61BkgAZsRglMIqpmfWBBDj8d
	Dc0jmhsVWje+WidyDsrqdG304LnGPHGfi3l9L/jeeCRgrrWIoMiaYzs9Ur8xqXPmXqLZ6vLXyYeW9
	pMlK2sDkHRx8jBIUw9EjsdJK37B4rua9KeYXQpVNUObJySvTwONlPH4b1hB2fwnURbiMOY524WH9m
	14FvaK7JacNqikd882JyDciv1OBPpgTIFLsvgGSSJoxQL5Mt/IiXctJqTmQLHGw/1jeT+2aImIvuH
	lCNXoKTrQy/tVjVVpuxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXos-0001Rr-HP; Wed, 18 Dec 2019 11:48:46 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXop-0001RV-7n
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 11:48:44 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so2164405otd.9
 for <ath10k@lists.infradead.org>; Wed, 18 Dec 2019 03:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=SF+iiSVsBKQmDSLLYDr33/ZnGLsk/vtl5947FDvEZL8=;
 b=l2b4A0iSD6L0rlZ6zNCCW11A4dRjGzUvNofQM/v/mSDFWi0Dc3/NPZk6z2v7/1R9j5
 X7eENMZZglUV4oxYgJLXsNLBfW4c2Fh5a4JRVF7F1g+gC9HQob2E4hDoAFSxdshkY8Lb
 63ohxznYfIyshSCT1qln9gr07lVNwbLN+cbSsDocwj3E1t3flNFS0QWBEVgKWRt9FRXP
 z+BHumNhfrNH5zuyUeGgxppgC3xfqv/K/mcmx/I/JYXd51WKYtaCi+pn58DF7eWy1WiQ
 pBa82N/2U1lmaKK80viTS3w/kEWES5KQliOi9WG4xYXKo/+estdn0osGQbj/a3kty6AQ
 Gx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=SF+iiSVsBKQmDSLLYDr33/ZnGLsk/vtl5947FDvEZL8=;
 b=JUmap+vTsi7zb0yaMnMuOXWVrraZWdCCQ5/Uyxg+1c7bAFV3vO+BkO+eiD0yFDZsi8
 6omtatuS4t0CLtFG2ip+f3Zn2E+sAHeH5UfNbCXYK+0URMT/R6TxTG/M0+tUqCY9PwjC
 J3EdXN7D7Pg13VGAhhmxEP1g2TO6MU03lnDb3qHKTIIgA7Cujx3euMSt8eyIuS6Ra90Z
 aogZ6IP0gVRepAgqYd2jbSGuEknSZ/1MZNKqcVRi8DO5SnLqfNzNcGmDVn6vxFAgjkVh
 8YENn9NHvUjfeo3qaQphILMMAbShYhzbmlxmLwetO4T1xZrXjNBEmPixP03RRUKPoVA7
 Q+Fg==
X-Gm-Message-State: APjAAAWsjAf/np1tAOVSfJ2GfjFy27hy+lXf9rJhcjhHjFPK2RrghaCa
 TVWQcxBLAB02QkkLJG1T5psG3yYD1DM42Hu34yY=
X-Google-Smtp-Source: APXvYqzQV1FPZ2Cxlzj9tp/r0uOyvlbLOAKv32nbZd1F53Yl3UUQYN0w75vyBYlo4qxKyVLY2CT6bLpUMhee3H2lFf0=
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr2247658otq.63.1576669722352; 
 Wed, 18 Dec 2019 03:48:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Wed, 18 Dec 2019 03:48:41 -0800 (PST)
In-Reply-To: <9431f1a2-a44e-9b81-72b0-9a703e1841ac@newmedia-net.de>
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
 <5e3f22d1-b8ba-d756-a15c-1e7ae56c1dad@newmedia-net.de>
 <8eae96cd-a94e-abc1-4750-73f931d657d6@candelatech.com>
 <9431f1a2-a44e-9b81-72b0-9a703e1841ac@newmedia-net.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 12:48:41 +0100
Message-ID: <CAKR_QVKhe37QnRvfE0-0pHTjBtjMoTsZMMn6SkP+iV4HN8rRnw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_034843_281037_56B2DCE9 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
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
Cc: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 ath10k <ath10k@lists.infradead.org>, Justin Capella <justincapella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 18/12/2019, Sebastian Gottschall <s.gottschall@newmedia-net.de> wrote:
>
> Am 18.12.2019 um 03:37 schrieb Ben Greear:
>>
>>
>> On 12/17/2019 06:12 PM, Sebastian Gottschall wrote:
>>> i dont know what you want to compare here.
>>>
>>> 1. you compare 2 different wifi chipsets. both have different
>>> sensititivy and overall output power spec
>>>
>>> 2. both have different amount of antenna chains. which does make a
>>> difference in input sensitivity
>>>

both were connecting to 2x2 AP. 3x3 card should disable 3rd chain in
that case but driver doesn't do that yet.

> anyway. while this calibration is running, the signal and noise floor
> might be unstable or even bogus until this is finished and rate control
> might not be optimal
> under stress conditions like long range links with low signals.

i've noticed noise level switching between -105 and 0 on some high
5ghz channels between 2 litebeams (not very long range, less than 5km)
while signal levels are in -65 - -75dBm range

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
