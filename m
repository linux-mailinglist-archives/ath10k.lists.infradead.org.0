Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F01AC15A
	for <lists+ath10k@lfdr.de>; Thu, 16 Apr 2020 14:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfC45mIagfqHflXVvooFdOxwdDzB1cwmZFHDuuXckbc=; b=n7+RdC4vPJLZgZ
	1dFon6r6osoWVkgZegbPx3JmtWXZjmKAFs0sST8j6+l5yaly2tt+WX3gJmY678iZsQTyC8fwd60V6
	KJu1VvyfPx5FEdDAIPVcyAVSn4XE0raFfR1mWVPNMNh2LVej4oKKpBnn0MGpABsR0jfuhxb5xcZF+
	tdQkhjNF2kZyrkJ1+xGGIBkRMC0pFJB5x7r4rRsI+ywXIIiuAl0p6+Ul5H8O+rjkLuaf3fCLa++Hm
	rOoKHDpzJnYDEw9+gvgHGIXczZtZPSNwQu87IMJpiAomK1BkR+EWS3E7kFq9xOmt8SL9SjvUwi4eJ
	MMb5Z07NZsn1eEV1ULZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3jd-0005uu-Qs; Thu, 16 Apr 2020 12:35:13 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3jS-0003fl-Vf
 for ath10k@lists.infradead.org; Thu, 16 Apr 2020 12:35:11 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587040510; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=n4dagZYzuz89oguNszytFLjNH388aZHCdBtZJwNPmXg=;
 b=pzN/RsJV+gtCkqi88IAUXNQWXt2HueaFc5+NO2hUZ//wFoQmkaLUGYF3IAYnvYbXra0i8vRy
 LiqWYi4V/3r7YxiAS9z29K6qVmdxG9JVnYDIaXjWmk519WRstJ7NzXjKNC9lLP0ZFjvs8hNr
 XUvFGjMV/e0yMTWc11KX5IWfxh8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9850f2.7fbac2bdd4c8-smtp-out-n05;
 Thu, 16 Apr 2020 12:34:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 166DDC433CB; Thu, 16 Apr 2020 12:34:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D856EC433F2;
 Thu, 16 Apr 2020 12:34:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D856EC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Nicola Mori <nicolamori@aol.com>
Subject: Re: Killer WiFi card keeps disconnecting due to latest firmware
References: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749.ref@aol.com>
 <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com>
Date: Thu, 16 Apr 2020 15:34:54 +0300
In-Reply-To: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com> (Nicola Mori's
 message of "Tue, 14 Apr 2020 09:26:16 +0200")
Message-ID: <87ftd3r4lt.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_053510_305132_E267820D 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Nicola Mori <nicolamori@aol.com> writes:

> Hi, I have an issue with the WiFi card in my laptop, that keeps
> disconnecting from the network in a strange way: randomly every 1-2 
> hours I can't access web pages or even ping the gateway, but existing
> connections (like existing ssh sessions or Zoom videoconferences)
> continue to work. The only solution is to restart the network
> connection.
>
> The fix for me has been to downgrade the firmware by removing
> /usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin so that
> /usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin is used; with
> this, I have no issues.

These firmware filenames tell nothing to me (-6 and -4 are just
interface version numbers), I need the exact firmware versions of which
works and which doesn't. 'dmesg | grep ath10k' is the best way to get
them.

Also adding Wen to the loop.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
