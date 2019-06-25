Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAE555003
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTM6YkXjfOod9Fc+nGGKCeOixAvmB/46QNpUn8y2tQA=; b=HmcwNb0G/IP2R+
	R4nwP2EiLZvw1ykKOtK5A7LtAdg7IplwBKQhYafgGpTBRCSNuYmQ/OaXtf8wNhO4MGVlAtvyfWQVx
	8vjVYkNymjitKvO0yE4h5UumIi82mJT0Ub8V9OLjFYyIqed+okFvafO8gjbPXWmIHdksxqZAspdIy
	ZupJIuQOzYUoaOALOe85N2pOwgXUZoumX/JTiFBLk3O0folQfmrCKjCr7esOZEIGzi/4b6EHJiOd9
	DAC0JxKehGawS9A1hnNcfVOU+PTFbBxjLIoIcdfpZqrmZsn+5XOdZqm979SZVYPHX0I79nZYKhy0p
	Gi2ByAq/mp3lXS/P+pug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflHk-00023u-6P; Tue, 25 Jun 2019 13:14:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflHg-00023I-4P
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:14:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D07FA6028D; Tue, 25 Jun 2019 13:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468491;
 bh=XCoX9Dil4UwfqX5wbBt4vZpqhxU4FoaYfE6brIoyU/k=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=H7qmR58hT99aG05dNuOI9lGapd2up4dWgH9MFA/nhuhh1odTtjIwMceQTH4gj/GDW
 UJg0DBKAhpa6TpWU3VLDvDTPU3aYupP0rYwRkdRwLZvYJQpqKIQ1zqoEcKjRWeMzOL
 FUjJIJ9S0PqsVOGnaaomVoPQqaC4oXv8dQZnRpOs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E80FE606DC;
 Tue, 25 Jun 2019 13:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468490;
 bh=XCoX9Dil4UwfqX5wbBt4vZpqhxU4FoaYfE6brIoyU/k=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=pBTD6yDpjlLRMQBhidbXWeekPKFMgNS4DU7EUmsDtYZEfxC3qS3CdNd09xv4TtjCt
 +83Gyz0K2d2ZrME2qQtBNgsrcsIe/TX1Epm8zydVkvUuyZ5/oMh/2uq69JpKKHqQtR
 gjcRP3OEiYzoUOHnwUvgj6E2mIdTJyon6hU2p4ZE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E80FE606DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v5] ath10k: add support for controlling tx power to a
 station
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1559209638-23887-1-git-send-email-bpothuno@codeaurora.org>
References: <1559209638-23887-1-git-send-email-bpothuno@codeaurora.org>
To: Balaji Pothunoori <bpothuno@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625131451.D07FA6028D@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:14:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061452_189223_15793421 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>,
 Ashok Raj Nagarajan <arnagara@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Balaji Pothunoori <bpothuno@codeaurora.org> wrote:

> This patch will add the support to control the transmit power for traffic
> to a station associated with the AP.
> 
> Underlying firmware will enforce that the maximum tx power will be based
> on the regulatory requirements. If the user given transmit power is greater
> than the allowed tx power in the given channel, then the firmware will use
> the maximum tx power in the same channel.
> 
> Max and Min tx power values will depends on no of tx chain masks,
> for QCA9984 allowed tx power range values from 6 to 23.
> 
> When 0 is sent to the firmware as tx power, it will revert to the default
> tx power for the station.
> 
> Tested Hardware : QCA9984
> Tested Firmware : 10.4-3.9.0.2-00046
> 
> Co-developed-by: Balaji Pothunoori <bpothuno@codeaurora.org>
> Signed-off-by: Ashok Raj Nagarajan <arnagara@codeaurora.org>
> Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

33410a51468f ath10k: add support for controlling tx power to a station

-- 
https://patchwork.kernel.org/patch/10968517/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
