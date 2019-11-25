Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640A2108D56
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 12:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nn2kjWc9jUEOvdEdyYpRKeff4DNb1geB9fNqc3n9Adw=; b=g27DiUEziwMQK8
	bngYnun+qHVQEbFHTD6eVoWOioYSBEBvQDrgEpyPvVJNQAE9vJXAsjlMuhj12UKAN7zF4qBVQb+10
	xiO2j6GfkASbOd4NcZD8erM2jyB9+vkf1m1fioZxpWdA9zMRCQ/rLv2vFdKroKXlBXbRzGWR+KQA9
	dvU9DMCIxMcOcQeOekgZgctKjmOgzoKNaqVuN3rZM7THTULTt5QrarsbZBT0M+QhiN13Dvh1W2DYM
	KnZslf/YDv1Fyl48OtrmETQ03iOicpJdG1y+wttzb90gwrSXvhp0Ld93oc4wVoJuyFsonu6DcfI7h
	E/Yyg6KAEtljxF71v96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCyd-0006LJ-St; Mon, 25 Nov 2019 11:56:23 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCyZ-0006KN-9O
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 11:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574682977;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=cTtwrlGNTkiAUYkuNC9OPAuoAAZBBpmDBW6s3hPB4Xw=;
 b=nQvvjNs8xf5bdIvS+Y4M284e2+mLXjYSWpf5uM/mu+waMg7GWLjQQ9SlvPraEAxW
 C6kiKwQEYm6OHpsuA+Z0+h9/T6p4dL7XuYn/9/4UrMb7dylfHvxZ516eNqTv7+eSi0b
 e2vpQpvSMnoxogC0LRQI9Oy95dij3PStcqr/fJdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574682977;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=cTtwrlGNTkiAUYkuNC9OPAuoAAZBBpmDBW6s3hPB4Xw=;
 b=RU3F3sdEdqTOPE7596fMF8KT+31B3T3sbrmW69R2kPs50bYKi2Jc3AF/y3s8DlU2
 Nr5+7xMU+egb78uQcjknOpeUZUsn8cjX3bHPE6dt0PO6EEsrHnImpErguQetdoEGjMy
 rdU+4V/s3wgrgm1Z7meYOUhG7argfnS5mzGDhO50=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 958EEC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Handle when FW doesn't support
 QMI_WLFW_HOST_CAP_REQ_V01
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191106233130.2169-1-jeffrey.l.hugo@gmail.com>
References: <20191106233130.2169-1-jeffrey.l.hugo@gmail.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea26b6399-d6caa372-d7b8-49bd-81eb-4e3d96507211-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 11:56:17 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035619_355382_76A4AB60 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Jeffrey Hugo <jeffrey.l.hugo@gmail.com> wrote:

> Firmware with the build id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0.2-XXXX does
> not support the QMI_WLFW_HOST_CAP_REQ_V01 message and will return the
> QMI not supported error to the ath10k driver.  Since not supporting this
> message is not fatal to the firmware nor the ath10k driver, lets catch
> this particular scenario and ignore it so that we can still bring up
> wifi services successfully.
> 
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

501d4152b018 ath10k: Handle when FW doesn't support QMI_WLFW_HOST_CAP_REQ_V01

-- 
https://patchwork.kernel.org/patch/11231343/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
