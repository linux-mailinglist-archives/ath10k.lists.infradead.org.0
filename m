Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076521E5F7B
	for <lists+ath10k@lfdr.de>; Thu, 28 May 2020 14:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXJuXl54skdh4zENFVinYcAeCv2btButGrIR/BkFTvE=; b=UN9+aQ2W1adnoY
	PwGJQJB94LzaNEg2pv3SKLTNjGlXzcQoXlhGP2NNewYhQECx99Zc35HFdu5so3mVwBaoaf5j+2AZu
	Q8pim4dhUrD1abg/eOwI/rQ9ukNC2ZiE8fX2qZo5KxGnpmRMDV8aeBanwbAXQLIB26Z+U6CbATUf+
	0Ya2BDIUaY0VvgpeEj7tZmbqZrZYmkpJOKT2gbVkTPReX8JQ45XqGgEnHGEe2veYWqMab4NrzSBMW
	HorvFSv9ADEkV8nhLyip01X5s98ACwsTQWGm6RVnfYKYAipWDEhKH1nys5YnSNOQjpbBnlKTmBZcC
	Fl9j5u/9jluXgAUBsTug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHFO-0008Gn-Bg; Thu, 28 May 2020 12:02:54 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHFF-0008EH-BZ
 for ath10k@lists.infradead.org; Thu, 28 May 2020 12:02:49 +0000
Received: by mail-lj1-x22c.google.com with SMTP id e4so10561740ljn.4
 for <ath10k@lists.infradead.org>; Thu, 28 May 2020 05:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tZAAtlUG9AhJ/Atr4cE+FEtEOyGU5vjMq1zxXLMbm/M=;
 b=ZorZ4K4yDcy4gsjhpUw7Oun7inOYaU2WCjP9bqsic1m6WYUd5QevLW3/AXbdkm9PSu
 AtB17UQLllBYLMI2by7yQ/c81HwSUzqR3UaR4eLOGejdMjdkEGu2DOZqq/PjvMNhV/WO
 IgLAw0dNHgMGV1Gl1G2XsYG/ZqXTLaNLsalsaENaqueEf5htqY3JpIvAvzu21614JVsG
 nxQ1j1MNmF3fl4n/1s5aXXsUOXwwfoq44wwDJMHhTqc6NlDEE3cY6dsyisuxJIpAWFp3
 51r6WCC3chucPPhGUpM1BKRABx4bbGSCVPdYfplXOSQul4vdHxTnFqChe0DT59uJiTC7
 8HVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tZAAtlUG9AhJ/Atr4cE+FEtEOyGU5vjMq1zxXLMbm/M=;
 b=WYWDm1eAw+ezhDoN9nwFsD5Ju7G9Z29WDkCsTGGwWSkUvsHhOkfeqrCG6LD2OaagDd
 31p7yws/MV3vWo3Bvl8XrTC423svkDAS1ue8mW/vUPDKJ5GOXKG9ddmhUyaszo+sbw2k
 16htqcxNdQOG5lwFOCz1L9fkk8KuX4JcksH6+4rYApW4Fwg5Z+WysZ4Y/Um2/Pm06/SO
 T93RjPnKdiSYKJy1JCEIw7Y60uNDCYdVPcNRa99Y1t+85D5XE3AuubgHF6kOEGFiQ8SE
 kwYY+ShhOGibssTk6SF93AqOaqrekbVwl7QEB0US2MHAPEs9nsWQkrm41dxQUoO9NuYy
 aarQ==
X-Gm-Message-State: AOAM531arDoySU6Zr3AvprROjle3Izfa+J/TTNYU+VGQaxVOvaqMv1A7
 CSp/AAW/umC+0dU7mcZpXy0H98zMUH/+Miao4hE=
X-Google-Smtp-Source: ABdhPJwmCZRWpoHjgLbsA2QTPKomwsN+ITixXa7o67e3iIg1zmy/OAFe7ddh+2EQj5ThIgflVLMLH3fIhHSR6K+mtUg=
X-Received: by 2002:a2e:9891:: with SMTP id b17mr1395244ljj.319.1590667363018; 
 Thu, 28 May 2020 05:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200527165718.129307-1-briannorris@chromium.org>
In-Reply-To: <20200527165718.129307-1-briannorris@chromium.org>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Thu, 28 May 2020 22:02:31 +1000
Message-ID: <CAGRGNgX5n=0OEi7hMrmgVZGD=orGpgvkyLrhmXVKSFYdBJ+eUw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ath: add support for special 0x0 regulatory
 domain"
To: Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_050245_414940_F5F00A06 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [julian.calaby[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Brian,

On Thu, May 28, 2020 at 5:18 AM Brian Norris <briannorris@chromium.org> wrote:
>
> This reverts commit 2dc016599cfa9672a147528ca26d70c3654a5423.
>
> Users are reporting regressions in regulatory domain detection and
> channel availability.
>
> The problem this was trying to resolve was fixed in firmware anyway:

Should we tell the user their firmware needs to be upgraded if it
reports this regulatory domain instead of completely dropping support
for it?

Thanks,

-- 
Julian Calaby

Email: julian.calaby@gmail.com
Profile: http://www.google.com/profiles/julian.calaby/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
