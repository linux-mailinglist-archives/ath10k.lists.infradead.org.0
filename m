Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831F71BE3A5
	for <lists+ath10k@lfdr.de>; Wed, 29 Apr 2020 18:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8NBnDG8xqXu7ELoNRckOm/ZUr/uWXoy6uoQ1tRj7mMk=; b=V+HZSUxofMtCy3
	8h41eWMrnfX5Mf/T/DHm/wztDrufIKCb2NP1s/VeSEmvNzSpZTtRYKGtsLwSsFzeFPFj4inLxSqHd
	D0TA+0m0+gP5zJQkC2zur7VJTAfhmAt2J+xA+QuoeZf22bnyGreLAuy+TQ6z28teRpBz0aw1b4/RT
	Ww5vYfvVGdTMSgyS31aUkjpXNN3TkPEyw1kf29iYbRPhutzZCGMhgB7hdPaHRyxGT35sIFk4rJOTK
	lz1LWsyCsTQ6Rw4QmE2XCVAFvXWleoOuE/ICW+AJ9+zj3yICZuFoULVAuMkVLB84yD/grxMQc4hBm
	5T/6zmeLZQuMLd86fJKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpSm-0001DY-6u; Wed, 29 Apr 2020 16:21:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpSh-0001CE-Kn
 for ath10k@lists.infradead.org; Wed, 29 Apr 2020 16:21:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so2696647wmg.1
 for <ath10k@lists.infradead.org>; Wed, 29 Apr 2020 09:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=l3RJasF30mGbf3mi4WPrMn8V4udGgWfHN2XQc4Jc41k=;
 b=MPWTIQQIipetWhgXD92Foc4we0TD2aVA1gYlXHnR1+4PmQXXzwuWD1PUaKv+h1uI2o
 b3WYYy3jiUzLKFYE3gGlXqQ1emHiOQiCR7Yolbhz1Z8KpjS27GIw6VFGUoQTXdiJJTa6
 fbvZOYV7Vz/ih0NEfKdTrMYzRLzvffhWpWfrt3+K3RM90elGFWhFxpdMuWiEY8pNtZF4
 eUywRCuvd/Ghsvb04U6XwpRiGWTQKu6zLNkV1iyrj41iWkOKOHj2pOuTaOMHmCw+QSJc
 Y4s3wtRd3a+9kDsTodKqlCQQr2mNkZ87RoQQZ2orhqSERcDRWBfq1R7kNoq8K7wFTuS3
 xTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=l3RJasF30mGbf3mi4WPrMn8V4udGgWfHN2XQc4Jc41k=;
 b=a1pYqx5xB8F2FiCWo5FcmydsqEtz2DjKelS0wcADyn2HYM5Gz8RvbCWdDYEx5C8aPA
 PmdIEFg2uu6JLWpFNNvVpK7yBFDhgeoNZJpAgQ0EuGALyyorixf9NY2kSozVmglk5OKo
 9XHfiiCmGRuRm5+W+pRaKTNfe5fkSYHmapT88au/vBu36EZrZevVlZYz1znIDgmNuZZ/
 7nH2e6oCQ2poeYYWvHjDM8CAaVzUu2w3a8Hjjahw1PFyxXl+oQgHCA3snmaaLhGrIGLq
 bPGCcJLLuJSFiKJHL1KwAX8m5YfIjKVQsLTsftWDT4tmxQraLmatuqbN093lH6nHYUui
 VWNA==
X-Gm-Message-State: AGi0PuYJ/t9bWHko3KF3FPB5cWMkRpQn4RQbC4IAEObw88qbS9bj6nL9
 FP5YnR8ltXyu4s6gVYRg/ke1Gp8FGua8P51Y3YOr0XG5
X-Google-Smtp-Source: APiQypIspbvJZiiHRfhXbA/o0+I1hpD9BLJDk8XKrRD2jLQHZ3IyfDO3bXi3AmHG1XT5z2/KuVM9N6f+ppMMLilbv58=
X-Received: by 2002:a1c:4186:: with SMTP id o128mr4080312wma.21.1588177284794; 
 Wed, 29 Apr 2020 09:21:24 -0700 (PDT)
MIME-Version: 1.0
From: Amit Pundir <amit.pundir@linaro.org>
Date: Wed, 29 Apr 2020 21:50:48 +0530
Message-ID: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
Subject: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092127_690636_2EA92184 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

I see a reboot regression with v5.7-rc1 on Dragonboard 845c
(wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
commands do not work as expected when the board is connected to WiFi
AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in
dmesg and board reboots into usb debug/crash mode. I do not see this
reboot regression when the board is not connected to WiFi.

It started with qrtr-ns migration from userspace to kernel which
landed in v5.7-rc1. I didn't run into this reboot issue when I was
running qrtr-ns userspace tool. According to Mani, in-kernel qrtr-ns
just live long enough to catch modem shutdown requests and advertise
it to the modem, unlike the userspace tool. Which seem to be the case
here. I further narrowed it down to ath10k_qmi_remove_msa_permission()
call in ath10k shutdown path. If I comment out that function call then
the reboot command works as expected.

Any thoughts as to what might be going wrong? I do not understand
qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped
here. I'd be happy to help debug things.

Regards,
Amit Pundir

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
