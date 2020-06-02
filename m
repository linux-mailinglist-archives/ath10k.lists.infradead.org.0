Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F369C1EC287
	for <lists+ath10k@lfdr.de>; Tue,  2 Jun 2020 21:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+b67dzljZ8ygbgYJtnb9B89o4pggt4LQ7zNS9HEctw=; b=lTTwQVuspg1I7B
	t0ZsuHxpDrg9J5u9Cvg6/VKhSMkmidk0RHsAgS1V/sL0+XQo0WepsVf4eQlWNTeNTBc1aKkANU7D8
	NdHiK6mr5sQ6jvrZeNJKFa62QNm7NHxet5Ly4o3ILSoyRpgrlePXWHw5DbuUt9PGa3pPhV+Pksqmu
	+h0GJ3JZk5PQgeo0hcMxMlHDHqKtTXHiKstqmnUjdXERbOAFw3GhzSAp1+vj6e8coOaqvAJ0w90TX
	kj5wXR3R3SqzuVAMgemTY3WIs/Fhh6sBkGhBqEw6DBFCWafCYKTtdU3r6hD1FUenZfDSSgASysbnR
	sG3GxpvJya9qqopRrOZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCOj-0005DN-2f; Tue, 02 Jun 2020 19:16:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCOg-0005Ci-A4
 for ath10k@lists.infradead.org; Tue, 02 Jun 2020 19:16:27 +0000
Received: by mail-lf1-x142.google.com with SMTP id h188so6870072lfd.7
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 12:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UywQyHtI8fXpM4VAmwZWYaYfXJnDPZ4DdqMwxQ4d9J4=;
 b=X5E0aMFrxTSQkPUj2EQgOzd/uLAf5y5ROaR2TC1U4xQeuRP4zZyFaefbtpALQl3g2T
 o5c5sK1LRGuKV5nMtFan+xBNBC3btdKUlZmOydCPjurotN4pCpVSg0XhDz4Ch3tEZpai
 oY+VeThPltHttDfod+i4ugG3wBHJf99F7dM50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UywQyHtI8fXpM4VAmwZWYaYfXJnDPZ4DdqMwxQ4d9J4=;
 b=m/7u5MjcdjAh3TR3H2sWOIKh010+MKUQxMWMCpYzPLaSUIiVHyJAbN0+aO/RsVAY77
 KvaKIbTZCkCi0nENdMIaLjwuX/GrRaD3Y8UgBmLZWacBUgQUMHWWmQOU8k3+mr8bYtYy
 +yQqowWO3U+jo7hWthlztNqMvK15SUl9MIEWi0BCitf0BeRZRTA7fG+4RYa1NXiyAJlQ
 IqD2rVIP6VIqpUlFH/I/5Gwe6lUkrunPshfzAHUd9eAsBxMZx0QUUYkuvCIkdq6eTXwZ
 vsZCv0DDVuYRCM5QDr89+cfhuApYho/E+NthJAuSGtW3eEfd/OWocBM+KnmVstqjxb5g
 twOA==
X-Gm-Message-State: AOAM531UcS1ATlvNZNjJZhIAI6uJpTAaG1JU4l9mtuo853KAog97+Vuo
 15bk9qqtK0sxVpktBzTi4hi6dv8Dq08=
X-Google-Smtp-Source: ABdhPJyDiY7Z24ttKMMgQDdLrehH07Clr0bNFRusPkZZQn9xTzEECGZDiWeeGQ68OpS3ou59IfSzuQ==
X-Received: by 2002:a19:f11c:: with SMTP id p28mr460286lfh.0.1591125382942;
 Tue, 02 Jun 2020 12:16:22 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id o2sm894830lfc.85.2020.06.02.12.16.21
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 12:16:21 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id d7so6837629lfi.12
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 12:16:21 -0700 (PDT)
X-Received: by 2002:a19:fc15:: with SMTP id a21mr424706lfi.121.1591125380888; 
 Tue, 02 Jun 2020 12:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200602052533.15048-1-john.stultz@linaro.org>
In-Reply-To: <20200602052533.15048-1-john.stultz@linaro.org>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 2 Jun 2020 12:16:09 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
Message-ID: <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
To: John Stultz <john.stultz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_121626_364142_6E89FFB1 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Rakesh Pillai <pillair@qti.qualcomm.com>, lkml <linux-kernel@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ Sibi

On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
>
> Ever since 5.7-rc1, if we call
> ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
> reboot, resulting in the device getting stuck in the usb crash
> debug mode and not coming back up wihthout a hard power off.
>
> This hack avoids the issue by returning early in
> ath10k_qmi_event_server_exit().
>
> A better solution is very much desired!

Any chance you can bisect what caused this? There are a lot of
non-ath10k pieces involved in this stuff.

Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
