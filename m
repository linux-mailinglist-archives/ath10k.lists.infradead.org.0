Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CAF2BD3E
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 04:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLJGFpuijapASDBwr9uholHj7s0q2xahsrW1QUaHZ08=; b=DD3oz4q3Vb16uw
	4go6PW+aRBP0BpJYoOe8BKUwBmUjg9Ohysj0FFKwQDNX+Su9qzca/eM/gIt1QjcGFY3gAyk+eofh+
	cwlu4RvhUyjkhy9b1o967Xw30JphIb4qX22MkNQtBp4FFlAfZp5Uor3xakgjizUnGCMU98q3IZ8Q8
	sEp2IAgul4jWMAwuF284PEv/jzEXmsj/SNRoIDWG8bRZ3Dv3aN8qE0j+Bo9JqHCuCbmqF46MJLNR5
	hV7mNDmiuJnV2Hdag2oHXwVQIybCrqGmIlL+imXxBwvl1iGJUBsyx/FpOAm6Vrb8zE9jdiHUk6PDi
	AvLbzW9jm95GWkOH3J9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRus-0004RJ-BD; Tue, 28 May 2019 02:32:42 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRun-0004Qe-Tx
 for ath10k@lists.infradead.org; Tue, 28 May 2019 02:32:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id m14so1241650qka.10
 for <ath10k@lists.infradead.org>; Mon, 27 May 2019 19:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gazIaoRjX4+ZH2UoFthw+2LC5GJZT06O6CMr8RDmhSw=;
 b=OyRdXpdzi3s1S8noasNbxCVQTvgCNb1jt09tkwpfQtEiqBFrGZ5Xq1rHdJVguW0jWk
 D3JYNTEpjDsifZXfusqjvSRUOM8ECBijRcu5fVIdGa+zpuQT7cV7rYICzI9hQqwaErSn
 lIRXLxi2ERkQ2stkbKgVTw718AJhQjZPMLoS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gazIaoRjX4+ZH2UoFthw+2LC5GJZT06O6CMr8RDmhSw=;
 b=m71f0c9B12UDSuop1esnRvig4XECgiDgf7oOJmAqCbh031xJPFLwXfqyTFbQ+h7c/g
 1ecmYBbd+ri6ZUQ3qN0jLLcouFc6e2sI4WOkEOTIfIX4EZ6Wa7mQesW5ZsJZN5g+nGsj
 t00V5yGK8A5xbnsD+bTpSHukZMxChkq7MQYcE0AsToMUh9N47hbfz95b36IyWq7er6xf
 MPqOmNscxLCykSpKrrFU9iTLiV14wNDZBqQ1ifGEGEM9GbohKSqpe1zv8n9k2ICRbcSr
 yrVy1hDB7YzAWJ1jvhbM3Tladt/B68SGVAEenHGpnl0UXn+xT3svNbIRmYEHU6TeeVTv
 B3lA==
X-Gm-Message-State: APjAAAVFk0/DePYgwVNWePspdYU8NRBVk76DaL3rwUYwiMTneU95A7Cf
 LD5IK4tKbegwBBR1W9nmsvwNz2zR/CmerLwkLRsBsA==
X-Google-Smtp-Source: APXvYqyK1ZwSczQWrH4SrzKh0yrWlc2AguPwpnCRPMfy2AHPig+E94P5GmmGBxVJdD/ddu2rbTk+c+FmOzkVavmkeRw=
X-Received: by 2002:ac8:2907:: with SMTP id y7mr61840750qty.278.1559010756074; 
 Mon, 27 May 2019 19:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <1558506776-19702-1-git-send-email-wgong@codeaurora.org>
 <CALiNf28PQFtAM6uZVPhh-_ASnYeeAtm8kWpP0b8k_P6zGwxbcQ@mail.gmail.com>
In-Reply-To: <CALiNf28PQFtAM6uZVPhh-_ASnYeeAtm8kWpP0b8k_P6zGwxbcQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 28 May 2019 10:32:25 +0800
Message-ID: <CANMq1KDgafzxyVc6H6i0OtKW32T2mpMSp4di81qNChDv-5RBKw@mail.gmail.com>
Subject: Re: [PATCH v3] ath10k: add support for firmware crash recovery on
 SDIO chip
To: Claire Chang <tientzu@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_193237_990121_F567E024 
X-CRM114-Status: UNSURE (   4.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Change to the interrupt handler since v1 sounds good to me.

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

On Thu, May 23, 2019 at 4:53 PM Claire Chang <tientzu@google.com> wrote:
>
> Tested-by: Claire Chang <tientzu@chromium.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
