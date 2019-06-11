Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6313C3B9
	for <lists+ath10k@lfdr.de>; Tue, 11 Jun 2019 08:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnfVtOKtZ8X6LRe3X+o0LpwkJjotNtLLwHcRLi+I80Y=; b=K0P+jVu4R8QbTM
	Slur0ywogMXaJjRVk0T1WSH/Q/Ws4G1zDwe6x//7o+dBxMQxKBZ2QxgOsnMA0/s8Ga6+65lT2H7t7
	1azEd5N+LnBhFcl6WuJdm8eBzP1y1KOBP/frGfRwz3ZtKhGIKCYAVBodLtmWGLB+oRqjJfvYJnqff
	GQjZXq1PVE2Xqs3xb/cpVRxCHdLM6xARxlv5WiMw46/ykkl3IW4Wmj0rcZTqt29xkRDLb4WuoRQnj
	QS+ZEmZSwARJAk6G6CCjdF+fR5/YLKsX8J/4M3MTQdKWOvsj6RRrH+j6MUUC1BWR08RF04F22WZfo
	d15ErVOoomZA3rv6uxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZrI-0002yw-9a; Tue, 11 Jun 2019 06:02:12 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZrC-0002hA-Vm
 for ath10k@lists.infradead.org; Tue, 11 Jun 2019 06:02:08 +0000
Received: by mail-qt1-x836.google.com with SMTP id a15so13157045qtn.7
 for <ath10k@lists.infradead.org>; Mon, 10 Jun 2019 23:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=24nWy+FWO5DbLf1W2l/ocge/pj2/4txv8/6/17vj9UU=;
 b=chKAVt7RsItNuyPFoOQgj3xFGEXvynDiPQjG1E7Ae5tNHPoZ0SZANcjCrF3oPs1hfM
 2BSb4vV/kZFHFIBR4XC2pzyck36Sk3fxc7O7aNh+0QJTKUWUArjhBjSeX59p0VbGjAOc
 /WFNdxp8snMMK0NVxJPQaYvrv1bM5zrB8SSNORtUOT8oQTxKUKDcmHFAnvcXu7yaaXkV
 z320Ora10hFvSQ52CbS41sqCRKA1ZGSZJaS06L0yaaHQdOqEfcvD2ClLJ5CO35cFLGRp
 ElvqO1OZgj/VmH4gMH83xbm9gTkJ9damZ1Yl3SB0MvwxdknHCUKgMfcwqlagez6RD4Nl
 x1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=24nWy+FWO5DbLf1W2l/ocge/pj2/4txv8/6/17vj9UU=;
 b=JEDqPYLdz5+9YRAz4kq2/Vet/X7BVK0y6A6YR6ryZF2rQ/sbB52VwsT95p0KhwM5N0
 ZBRTq4sI3y+CVxBbDhJTYUnEpAnWvmr1jtc1xJ2XZ4Lb0Htf/vuBp+fafwFwdCm2+fNw
 FtFN/fmElFUy3O7Rb6AtQVQtDiMhkdyRVFliKt8gk/F5EFaRV/z2AqCdbJPAkbkd2fJk
 nPFYjHnvoKXZQ76dJZZ5JpFDwyBGbeToSqtxtN2Xkdr8jV2fgRcKXOuwUrvJZI/VYEpT
 wjZdliYT/W5SEfINzFkNEaiZw3/0WkgpyM1jBsYgEVWLcWXDghV2g8uFfuMOoc9g3PvJ
 MBmg==
X-Gm-Message-State: APjAAAVhd5IaY3uLbxBn9wxSGWMaG8VGDJoqI9AvNmlWFqxF6zxufSUm
 C632XpM41wG/zjhlraMHkl/Wohn+hTT2b5jQWVbYEQ==
X-Google-Smtp-Source: APXvYqw+jAN4EGphnEuM72KJ8pOLtyMrnPXrI4aLvx/M6bZFWQmdeOMoVQWqciQOwI+ECZmWJP8hp+nSDWELFOazjuc=
X-Received: by 2002:a0c:d24d:: with SMTP id o13mr7602665qvh.86.1560232924408; 
 Mon, 10 Jun 2019 23:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAD8Lp45wxQ3vL_ttq-yKYDxscjn2KyJVCx_vJBCn+u8Yc5QtOQ@mail.gmail.com>
 <87h89lei7e.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87h89lei7e.fsf@kamboji.qca.qualcomm.com>
From: Daniel Drake <drake@endlessm.com>
Date: Tue, 11 Jun 2019 14:01:53 +0800
Message-ID: <CAD8Lp455PaQYqC0PKYK_2_nP2dP_bn=eCJnpiJP3=Dh34B0whw@mail.gmail.com>
Subject: Re: ath10k QCA9377 firmware crashes and fails to recover
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_230207_093853_9A0DB769 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:836 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Endless Linux Upstreaming Team <linux@endlessm.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

On Thu, May 23, 2019 at 3:36 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Daniel Drake <drake@endlessm.com> writes:
>
> > We are experiencing failures with QCA9377 wifi, using Linux 4.18 and
> > Linux 5.0 with the latest firmware version:
> >
> > ath10k_pci 0000:02:00.0: firmware crashed! (guid
> > 54a4649a-1240-4459-9442-9d498c49de79)
> > ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
> > 0x003821ff sub 1a3b:2b31
> > ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
> > ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.1.0-00002-QCATFSWPZ-5
> > api 5 features ignore-otp crc32 c3e0d04f
>
> Is this a regression? For example, have you tried older firmware
> versions?

Sorry for the delayed response, as we were testing old versions.
It doesn't seem to be a regression, at least we tested:

Linux 5.0 / latest firmware API 6
ath10k_pci 0000:02:00.0: firmware crashed! (guid
697a3b62-bf3a-4953-bf3d-058eb3b828ff)
ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
0x003821ff sub 1a3b:2b31
ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api
6 features wowlan,ignore-otp crc32 42e41877
ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
ath10k_pci 0000:02:00.0: htt-ver 3.56 wmi-op 4 htt-op 3 cal otp
max-sta 32 raw 0 hwcrypto 1

Linux 4.18 / latest firmware API 5
ath10k_pci 0000:02:00.0: firmware crashed! (guid
54a4649a-1240-4459-9442-9d498c49de79)
ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
0x003821ff sub 1a3b:2b31
ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.1.0-00002-QCATFSWPZ-5
api 5 features ignore-otp crc32 c3e0d04f

Linux 4.15 / older firmware
ath10k_pci 0000:02:00.0: firmware crashed! (guid
7e1505fa-49e1-4fab-a7c5-a2352f1a47f6)
ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
0x003821ff sub 1a3b:2b31
ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.1.0-00267-1 api 5
features ignore-otp crc32 79cea2c7
ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
ath10k_pci 0000:02:00.0: htt-ver 3.1 wmi-op 4 htt-op 3 cal otp max-sta
32 raw 0 hwcrypto 1

Linux 4.13 / same older firmware
ath10k_pci 0000:02:00.0: firmware crashed! (uuid
701e7d5e-b405-408c-ae27-7de285c38c8f)
ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
0x003821ff sub 1a3b:2b31
ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.1.0-00267-1 api 5
features ignore-otp crc32 79cea2c7
ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
ath10k_pci 0000:02:00.0: htt-ver 3.1 wmi-op 4 htt-op 3 cal otp max-sta
32 raw 0 hwcrypto 1

Any further suggestions?

Thanks
Daniel

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
