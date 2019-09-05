Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DE6AACD4
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 22:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/QVLgtvCKooqaTEXL+3mkE7sKEZbR9fKqp4BYNIW0Mo=; b=fhd+RE7Vx9HLRySYyshmuMAIX
	d37LcEBkwNQ/UK9dH+MxO9n6ekyolOs6TFPupX1h6W6qs2cdIIfSw7w/PeNIeWSS2eC5G+hhtR5Um
	Xf2fjpGu1HW3E53ZZgPSANtGCBSaXnGIHux8D1phFUQ1xX+j2ci6sxA4vNhEpH/TUHxh/Z9FRvxWv
	C4Qts2GOqB9knEGmqYajQde+uE4Dhk41iMtWBacNMaWw4fNp//ay6AUPHZUmrkiZDXzYEvWJNCp4k
	0y447Mp8r/L6QJOaDqznbxvZUvkako+qknpjIK5aItE1jrhLExVnPqsmuVcoco70uN2ww8JgGfJmg
	L+yBI2zwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5y6Y-0005Hq-Ay; Thu, 05 Sep 2019 20:11:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5y6V-0005HW-LF
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 20:11:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9974C605A2; Thu,  5 Sep 2019 20:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567714298;
 bh=To3WAd2bX7Z10le6Dxnqd0HRZWxcwydt0jg9aBddT84=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HTFni/y9kfhEJySNZKHm3OqnNcoaeJvcVgAXkbq8q3iXISpA5wCRNF+DKaCk4eP4t
 gJRs5MTkIqrS0TYVmos628bGZbO9Si63GfhOkxp6w3cY71kcDTEDuXAF4wKQAEEnuF
 ooGKDTHyqUkr2AS4uC9Z9noTNitnKFeGNABoJI0Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 3ADF260592;
 Thu,  5 Sep 2019 20:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567714298;
 bh=To3WAd2bX7Z10le6Dxnqd0HRZWxcwydt0jg9aBddT84=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HTFni/y9kfhEJySNZKHm3OqnNcoaeJvcVgAXkbq8q3iXISpA5wCRNF+DKaCk4eP4t
 gJRs5MTkIqrS0TYVmos628bGZbO9Si63GfhOkxp6w3cY71kcDTEDuXAF4wKQAEEnuF
 ooGKDTHyqUkr2AS4uC9Z9noTNitnKFeGNABoJI0Q=
MIME-Version: 1.0
Date: Thu, 05 Sep 2019 13:11:38 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] mac80211: Store max_mtu in ieee80211_hw
In-Reply-To: <1567587484-31930-1-git-send-email-wgong@codeaurora.org>
References: <1567587484-31930-1-git-send-email-wgong@codeaurora.org>
Message-ID: <8d156cf1983fb973c9ff5d9d15fb070d@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_131139_722906_14C31A64 
X-CRM114-Status: UNSURE (   3.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless-owner@vger.kernel.org, johannes@sipsolutions.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-04 01:58, Wen Gong wrote:
> Make it possibly for drivers to adjust the default mat_mtu

nit: mat_mtu => max_mtu

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
