Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0C41F1769
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 13:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1Kn6J05zk3HQqbCEslXYUeRH6YAG7HJJEF3T2TKJZ8=; b=AYBrOiBZLT5Z3w
	oOa8BKRIvySYKQh6WTPCN1/fF8ZhWVXxvyaoq7awPZSlyO4L7Mjr/eJ1++oqSeSxD3YGwvbSQN0hG
	Uf7XKDlKwkD/o79klMDqxy8Cj2uDkasEyjR9g9Iu2DhqE2jjbduDHdKlxxjLizL4k51NIPPkOG8ml
	1f5OnV+Ld94miVPLDqcZavHBk1h6xGubMHFepxKDgxH10A8Ozrdx7UKGMEQfxGkH5DjLgM2yRHDMu
	bYQWL8MLMr353bri7bSi4cBTHJhkDpRcnsdbsQlycM3aGdo5o/NLz+Rqdq45dcgoIRV8L8Pla5CVW
	fUs5CfJ0xdL3hiQMa1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFmq-0004Fc-Qu; Mon, 08 Jun 2020 11:17:52 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFml-0004EY-41
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 11:17:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591615069; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=A2l8ZtjPyjr/T5aVcdRp4TQUyoApQ642+Fc1l7Et+tQ=;
 b=bFXvbgKIjPcHz8u+c+wDVqTXOEj4csRJFX5fef69SgdJ+a98lozRkmNERTZ31pkSqMeV6tZ5
 swqN9jHtl/5CKAEcoZK1ke5h8V8h6yYo7Z/aEjnKnIBSLMQM56xO0cP7vL6aw1vwNBpGFP5a
 PRD87IRljuOwIgupemBag7YsCtY=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5ede1e516ecee74a4fe4f3c2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 11:17:37
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2BF35C433CB; Mon,  8 Jun 2020 11:17:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00956C433C6;
 Mon,  8 Jun 2020 11:17:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 00956C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
References: <20200602052533.15048-1-john.stultz@linaro.org>
Date: Mon, 08 Jun 2020 14:17:31 +0300
In-Reply-To: <20200602052533.15048-1-john.stultz@linaro.org> (John Stultz's
 message of "Tue, 2 Jun 2020 05:25:33 +0000")
Message-ID: <877dwhkdro.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_041749_231507_67AB1065 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Amit Pundir <amit.pundir@linaro.org>, Govind Singh <govinds@codeaurora.org>,
 Rakesh Pillai <pillair@qti.qualcomm.com>,
 Brian Norris <briannorris@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

John Stultz <john.stultz@linaro.org> writes:

> Ever since 5.7-rc1, if we call
> ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
> reboot, resulting in the device getting stuck in the usb crash
> debug mode and not coming back up wihthout a hard power off.
>
> This hack avoids the issue by returning early in
> ath10k_qmi_event_server_exit().
>
> A better solution is very much desired!
>
> Feedback and suggestions welcome!
>
> Cc: Rakesh Pillai <pillair@qti.qualcomm.com>
> Cc: Govind Singh <govinds@codeaurora.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Niklas Cassel <niklas.cassel@linaro.org>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Amit Pundir <amit.pundir@linaro.org>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: ath10k@lists.infradead.org
> Reported-by: Amit Pundir <amit.pundir@linaro.org>
> Signed-off-by: John Stultz <john.stultz@linaro.org>

Just so you know: as you didn't CC linux-wireless it's not on patchwork
and hence not on my radar. But hopefully we find a better solution to
fix this.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
