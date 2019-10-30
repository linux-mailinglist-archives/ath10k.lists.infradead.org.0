Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78925E9637
	for <lists+ath10k@lfdr.de>; Wed, 30 Oct 2019 07:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xEdQxwzuLUClGFe8kcPu7qlW37Jd5T5BmT+7RxFdPm8=; b=DBkxtcYoI4A4UOCFs3Ub2Ltmz
	C+8zjlSUf1xLZempQW/CnMt/9CE3G6LzgaYhrG9VoTFjP4vWlqp/5pj8aDpZiIx+vm404NFrPXexg
	ytC5qZKTd7abHuaDP3IJ+iFD1/L9P4mdx9zReT9S4zOQXKnbBntJUsVFE+UbBJAVm36+kR+dTMgdo
	RgHPXtnjosnqP2GKbCuGG+wxr2YACm/hVZKutjhjNxIhECtG1k81hnWDVNq9E1LpLWxW+bZKcR9Xv
	QjjMZT47rQVyqquSq2HSzN7mWQCt7iqhpIski0Drn9bQOTnhecDyEmAOxu6GatNy3WdV0Nle6Hf0v
	XC7fHpm1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPh63-0008WM-5o; Wed, 30 Oct 2019 06:04:43 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPh60-0008VT-1U
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 06:04:41 +0000
Received: by mail-yw1-xc43.google.com with SMTP id x65so459186ywf.12
 for <ath10k@lists.infradead.org>; Tue, 29 Oct 2019 23:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=VmzNbGg34FnbG5Nbkk0uiTVnFkTAGV+lRGweiedphdo=;
 b=JUb5oATapZ8cFR6+UNLQPySWl/+RFqK3ccphBvJAJx9Sn24eqYrpbzx9HMQeshfi2o
 zTp+vn87GasFaEJcMbP9sl1ZMS2GW2Md83UhldxxT/8i0uc+1DdCO5h/hWsj/txpPjQ+
 8OE/I4kdivJgObIFnU+/p9plKd+fkaCuELy2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VmzNbGg34FnbG5Nbkk0uiTVnFkTAGV+lRGweiedphdo=;
 b=Y8QP8Nl8GslfPVZ6tzVtcoXlTMlwLDMhMz9hDZHdlNyOhy36XRcAznOCW/nYbHMsTZ
 tus4Mjh50wnl3k3pJbikY4FSQ02upSaK+qspasKqCOXWbcgpoaba8bQ/XIsFX5oFBct1
 JDzU8Lm9yx/uQyTpxM18e8ld+Wn7Z8A4mTMEhXad06DY1vuG1yMBfWGqw1d2U65NqKpA
 3OMcBUxaLoupM4GObnDlyhYs/arrtu2tpmQ7ZzChHcRL9OcViyg3FYV5x0/kaZHg/vDk
 hzfvhPo8NujT3Kp/mjmI3vEAYxB6I6yDgxVyIpjoT7MFJAgH1tJRv6tOpiwmIDOUI48u
 J3dg==
X-Gm-Message-State: APjAAAXBXacP3EprD4XXgV0OnbduovNyW+s8ykZ2nGA5f79e9OzPZ640
 ImHays0OsLULvVdreDjHdw5lbw==
X-Google-Smtp-Source: APXvYqyuiOOOuO6kU5b7wixMyo1Wa+E2D0aiRdAnTB816TlperTzJZvCLfKQkg4cEy47RNToZSh6Pg==
X-Received: by 2002:a0d:c585:: with SMTP id
 h127mr20719404ywd.325.1572415478146; 
 Tue, 29 Oct 2019 23:04:38 -0700 (PDT)
Received: from [10.0.2.15] (75-25-130-58.lightspeed.sjcpca.sbcglobal.net.
 [75.25.130.58])
 by smtp.gmail.com with ESMTPSA id d192sm846986ywb.3.2019.10.29.23.04.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 23:04:37 -0700 (PDT)
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: Adrian Chadd <adrian@freebsd.org>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
 <CAJ-VmonXbUQ=Gv9fBbpN+ez25c3Pz+xxLoL67etMdC0Q+bwyXg@mail.gmail.com>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <8211c499-ec34-d1de-221e-e037e1fd0332@eero.com>
Date: Tue, 29 Oct 2019 23:04:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ-VmonXbUQ=Gv9fBbpN+ez25c3Pz+xxLoL67etMdC0Q+bwyXg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_230440_087927_19D6F428 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 10/22/19 11:24 AM, Adrian Chadd wrote:
> On Tue, 22 Oct 2019 at 10:17, Peter Oh <peter.oh@eero.com> wrote:
>>
>> On 10/22/19 1:57 AM, Zhi Chen wrote:
>>> This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
>>> PCIe hung issue was observed on multiple platforms. The issue was reproduced
>>> when DUT was configured as AP and associated with 50+ STAs.
>>>
>>> With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
>>> issue happened. It broke PCIe spec and caused PCIe stuck.
Can you elaborate how 64 bytes DMA size breaks PCIe spec?
>> How can you say value 0 (I believe it's 64 bytes) DMA burst size causes
>> the symptom and 1 fixes it?
>
> +1 to this question.
>
> Also, shouldn't the DMA engine be doing what the firmware says? Is the
> firmware/copy engine actually somehow bursting / prefetching across a
> 4K page boundary?
>
> Surely this is something that can be fixed in software/firmware by
> correctly configuring up buffer size/offsets?
>
>
>
> -adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
