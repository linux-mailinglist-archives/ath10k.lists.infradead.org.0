Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19720D3B3B
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 10:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KW4T52Rx3tlijk6HpNKtZyvR+oHZVnwRD40lm0SfXLo=; b=JctHxCulec+/ME
	4QKt7LmL0xHII4DZstRCqz7cDXdC1hzTznjQXQyJcvWCAf/TGJn8gO4kQ9mK5ewfCeMTMpQLScdmp
	1+BNAWaYJ6Ll+O2iVUrJQEdRXwmHPdMbWot8LGiVsIplQIhJ8Q2nZGdXF/8pVdpiAG8IfqMZNQGoF
	tTelX/F8pC58JDn61KdxsDEgnFfq+1cgyN/HqZJMMl7PO45L2Z/j43gE7VJmbM89LcAszb7UccnZJ
	B4ebdMdhrnDkgSGvLg/70NmLUsYO2acjMhvDx5Cc301ziyVKUCugO+OWRwWDbf1BVwkDgvixbdej3
	WZMkGQGnk8VnLYu/OW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqN4-0007WX-QR; Fri, 11 Oct 2019 08:33:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqN1-0007WF-86
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 08:33:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B000460D35; Fri, 11 Oct 2019 08:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570782834;
 bh=JYWPR3LzvWjcDpMpzfmkiNQeMdbcCBhWZvYVl3wjHS4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=bwJf6uNvmr2ok0HrhaeEOfG9iR/0GAIctzLDsVW/AmsoFpk6ANOVxoGBbzbONedRt
 XJxnkr+WYXGQqYABn8MkroGQgEALRAEhH9G3X9/J6MlWf7yjWctznrAfo/mWnqXDS/
 fvhbnUns6xp58AVGvrJewIRnGL/IGNtAU9Z6nhv4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E09A660112;
 Fri, 11 Oct 2019 08:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570782834;
 bh=JYWPR3LzvWjcDpMpzfmkiNQeMdbcCBhWZvYVl3wjHS4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=hHSdPsSB2P59un1Op/e79GYZ1ITp0bv9giQLqTZOnbpXEEz4T4WGXGvNEpRYB3L0t
 IE9SWgjk0DhJRWyZK0LjsAtxKhMA+u3T5XUWzEiU6q5EguHpe6AqpPdrbRHXALrHvs
 CFLl9QNADnWa6W2tF3kicjZp2MTVj5eFHCn8Rm1U=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E09A660112
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: check data ack rssi enabled/disabled in htt rx
 event
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1561707084-10021-1-git-send-email-bpothuno@codeaurora.org>
References: <1561707084-10021-1-git-send-email-bpothuno@codeaurora.org>
To: Balaji Pothunoori <bpothuno@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191011083354.B000460D35@smtp.codeaurora.org>
Date: Fri, 11 Oct 2019 08:33:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_013355_308696_0B16FC1B 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Balaji Pothunoori <bpothuno@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Balaji Pothunoori <bpothuno@codeaurora.org> wrote:

> For all data packets transmitted, host gets htt tx completion event. Some QCA9984
> firmware releases support WMI_SERVICE_TX_DATA_ACK_RSSI, which gives data
> ack rssi values to host through htt event of data tx completion. Data ack rssi
> values are valid if A0 bit is set in HTT rx message. So enable the feature also
> for QCA9884.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.9.0.2-00044
> 
> Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
> Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
> [kvalo@codeaurora.org: improve commit log]
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

cc78dc3b7906 ath10k: enable transmit data ack RSSI for QCA9884

-- 
https://patchwork.kernel.org/patch/11021495/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
