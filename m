Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116BE1C5B6
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 11:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gU+p6RjinnYqCBxwjqmnRxDU6dkycV+WHyVGa2I98O0=; b=DzOCoNAb/lyCKz3Ueqz2OLqoh
	/F6Rav59IQ5fI/oI3hQ0mc8s17UxIddCvGiyH5I1npSd744LMcFrSFCE37rgBvp8M9XLoGHHoaSna
	/izdHOgZiH8z7Iq79gi8+PwNaqlkONcCl9QWeOA/dyqlX6BXL/FrTS5ZjPTQu+1E6Jn50Ev/3edoO
	oS/HNQrUu2lGqALEhPJhdXDR1YYMkEUWFgl6+8eGkCs9R6Ss/4wnddSqw0MPCrvEJxRZG6B6sYtRb
	I7JqyMOjTZFt1qlAie7KiJ0TUsjoovKoDc/IIC/p0hLbcdcYNgwxorveyqSWigQYUpFDxeenqw8bB
	qKZwom9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTSJ-0004kb-9w; Tue, 14 May 2019 09:10:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTSD-0004gC-Ky
 for ath10k@lists.infradead.org; Tue, 14 May 2019 09:10:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AF6D260ACE; Tue, 14 May 2019 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557825033;
 bh=uDnoGLYB9Xd9RBWabADon1gLoTcqeYJXItpqtC7+A0E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZrMOef0vdNAehkvcQLxi/sia1acmYRKIXJ7z4VVMdeXCkR7A7GnzIMTr9r0VA8ABH
 d3ZJDo+ilXsG9jjVWxe1HNTGa931x0Iee20ZpXOrSWotzbGeamMLKJsJplsM1inr17
 M8Tre2sAL6qUP0/eimaPCh84TXeF7zLbe0um93II=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 79A4B60D35;
 Tue, 14 May 2019 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557825029;
 bh=uDnoGLYB9Xd9RBWabADon1gLoTcqeYJXItpqtC7+A0E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PIL/DcdwM/d/ky2IAVhjrziKwuPO/PIH6JQZXuZlORv73RnmdyKBmokuHe+xYDhbg
 ncR/WpKE2rk2dPx8p6tp73+KMDx0svN6r6sq+GLQviDTTUyG92BxSQA1NtuYc9375/
 elWwOBVX3u7n2tsNwDN5Kj6XUZsJzNxxKP2WhJHg=
MIME-Version: 1.0
Date: Tue, 14 May 2019 17:10:29 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
In-Reply-To: <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190514_110314_752671_7E53E9A2)
 <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
Message-ID: <ccb48284f0d96e72f4c041e12c943f0a@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_021033_701616_B3A7D43F 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-05-14 17:05, Johannes Berg wrote:
> On Tue, 2019-05-14 at 17:01 +0800, Yibo Zhao wrote:
>> In multiple SSID cases, it takes time to prepare every AP interface
>> to be ready in initializing phase. If a sta already knows everything 
>> it
>> needs to join one of the APs and sends authentication to the AP which
>> is not fully prepared at this point of time, AP's channel context
>> could be NULL. As a result, warning message occurs.
>> 
> Err, what was the point in sending v2 without any changes?
> 
> johannes
Hi Johannes,

I was planning to use WARN_ON_ONCE() in the first place to replace 
WARN_ON() then after some discussion, we think removing it could be 
better. So the first patch was based on my first version which is sent 
incorrectly. Please check again.

Sorry for the confusing.


-- 
Yibo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
