Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A7D0FC8
	for <lists+ath10k@lfdr.de>; Wed,  9 Oct 2019 15:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8WKP/g3YSj0ROdzsV09YZZSTEGo7Ujqtp5iZi63QQ4=; b=T5lXG08Ubfoy1+
	ANskb8mHECKOXB6QV5ApwjFtN/n47ZKbWLCOwYedsFkYkgI4C5u874djHoSlrFI/VoaVv1em5z/hg
	c7wNgwVRp5pslQf8KOtSs2u0Hyzkbk3RfxpSI/UNmPz6aEqBA3eqP15PcWyLYmvjTelPSmDb6paJp
	9uXqy3EUDRXH1jsun9JuXLA8mqQ4i13dQ/IQZ8jiq/hedLfJxEEd6g1lSuIH6dE/RfPweXOOTVkZg
	fThJ+BWyn0kwVL2dPiTeGc/IK17rRk5GWZM6cUGCNW6gg1fS3u//Z22OJUEyDO1UCcnCicN+ebby+
	fgkKRDb5pbX1gp4J4Dpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBr0-0003te-VU; Wed, 09 Oct 2019 13:18:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBqw-0003tF-PA
 for ath10k@lists.infradead.org; Wed, 09 Oct 2019 13:18:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0BF0160AFE; Wed,  9 Oct 2019 13:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570627084;
 bh=envJvmdlNsJEQbEUUBpCyBB6HOzYd7ZRkxn8Frs/dtc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=UOvgPT/O2qSPu7HxmRhJ1xXXlJHVEaco64qPtdDjczT2yEl4DWkpGPyUZZ0lYJYt/
 ninXFskbQoldKgHWzqD0h4G8CsY11OIhb3gNQCOUpuZcyUsPQ3/cm3qwC6PdMuufo7
 jWY3CrrT09UdY41J5IFh6DTmG+7JvAYCDkPZKslQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F1D67609D1;
 Wed,  9 Oct 2019 13:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570627083;
 bh=envJvmdlNsJEQbEUUBpCyBB6HOzYd7ZRkxn8Frs/dtc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aJHWWgiAI11UiLFMppuqdDf1OKTeGB7B4ju2uJQyZmAmJ8pD+sSkr8yjnrRaHyU40
 /2WnQayhWwcqercq225g571mA9YPyvvMYaqQtxV2Z8/vXXWoXTUrMpxMsR5obkaEmK
 q6GMAUAPcmxFn8Ydbuv6Dh42ZMd3jVdDfc4RMFMI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F1D67609D1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
References: <20191007043120.67567-1-kyan@google.com>
 <20191007043120.67567-3-kyan@google.com>
Date: Wed, 09 Oct 2019 16:17:58 +0300
In-Reply-To: <20191007043120.67567-3-kyan@google.com> (Kan Yan's message of
 "Sun, 6 Oct 2019 21:31:20 -0700")
Message-ID: <87eezmgird.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_061806_839025_539980FC 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: make-wifi-fast@lists.bufferbloat.net, toke@redhat.com,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, johannes@sipsolutions.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

> Calculate the estimated airtime pending in the txqs and apply AQL to
> prevent excessive amounts of packets being queued in the firmware queue.
>
> Signed-off-by: Kan Yan <kyan@google.com>

Please CC ath10k patches to ath10k list, I doubt all ath10k developers
follow linux-wireless.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
