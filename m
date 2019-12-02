Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48AB10EF86
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 19:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSCycnrFQKDuTn8er6SwetxYyuvuWDUBbiQTNMMRSgo=; b=sCL1c/Rj5w1Ys1
	Wu225ARyfZJflw/JorEOGT5ofOi4qWEQm4aM8/HNfQPIaRDuhKZw+Qa1oNz+oWHgCkuWxCYA8GubX
	GssWpShutH/kY16oIruxNDb0lBSRRPzQt2EBFj8ralh6SgAsy8jq1Uj75kEfdMLPEdZpEB+GP7VpB
	/w93svk9+LkjV1N1wgtkKltlbfmw7se0FRk4vdSD63H5kufQsrpTurdPjao9mhC4LYR7q8+NMKerV
	ssK0w/yGr24VNNkQqsnqvYvjGai2UBy49DOuM3C9EgentlWZih5Bd2/NPKZ6WzNKmcLpwf4kUcQU0
	JsNtm+s3ByB+MKHxjGXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqkq-0007CE-34; Mon, 02 Dec 2019 18:49:04 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqkm-0007BI-C6
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 18:49:01 +0000
Received: by mail-io1-xd29.google.com with SMTP id z26so509142iot.8
 for <ath10k@lists.infradead.org>; Mon, 02 Dec 2019 10:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tJ+m0mSzIeOb5sZruqACdh0sGgA9QWLB1HsmrayP9B4=;
 b=Of7gE+DwkR5XuGo8buT3QWoDgHM8egXbttQebXtPXHv6nKdCiqBk+K49zrUDTWhM13
 Sm/5Bc9HspVWUQrABojD2VPLtBc0AgOiF9cCQNSnJHpE4GYKNy0XEY4yjzCm4wfel4tN
 UtS2KOxSd/dWLxFZPCCkP3hEmjiChfx9egTaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tJ+m0mSzIeOb5sZruqACdh0sGgA9QWLB1HsmrayP9B4=;
 b=qPQn4jJdKdQGpPOrE6RLQP4X1KKx1PgisyWy1qYnB4MsJMN23CfOYxcRCETC3oIRiP
 plQ75qnh5pO/KWfGrKNl3QqEVoGXPJfZ1uxC/kTRk12e83FiYmZjZZO4LycU3Pe1aOhM
 9CqymzBYqeJ4eTuAmfbpm3EpALHfPGKb0ncu8fW6mDfgEtLfNWadPrukcmgEVmOAGXna
 PbL3TsuH6sXRzL7gh8TGGkRNGvqdRLA8LN/ZHeFGvkR4pfLwlxaGvg66KZ1JTK7DvJFi
 eMuN916HTPBbzaMBtgXz8GBt+6SQAHV0VEQEI/rDyiO2HQ7ocZfEUJ9Brua0if7Iy1Fy
 CPqg==
X-Gm-Message-State: APjAAAUcz85bPvvAyjGblesuyq8o9KRZbfyt/gi87ERjAlKI8aHcDGle
 J7lx2VqgJn1JyWdmuXkO6hvlxwkQh+w=
X-Google-Smtp-Source: APXvYqz+WDcfKRVLVRoaPNl0gNLlBRvevbIR4m+Nenny3T9eYBvSgWx7uBhz5/qymS1UHZQfAm5Jzg==
X-Received: by 2002:a02:c6d5:: with SMTP id r21mr1021510jan.129.1575312537878; 
 Mon, 02 Dec 2019 10:48:57 -0800 (PST)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com.
 [209.85.166.174])
 by smtp.gmail.com with ESMTPSA id w2sm70754iod.50.2019.12.02.10.48.55
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 10:48:55 -0800 (PST)
Received: by mail-il1-f174.google.com with SMTP id r81so686953ilk.0
 for <ath10k@lists.infradead.org>; Mon, 02 Dec 2019 10:48:55 -0800 (PST)
X-Received: by 2002:a92:d18a:: with SMTP id z10mr263197ilz.48.1575312535313;
 Mon, 02 Dec 2019 10:48:55 -0800 (PST)
MIME-Version: 1.0
References: <1542163848-837-1-git-send-email-wgong@codeaurora.org>
 <20181115002836.GA71934@google.com>
 <c94346b26a6d4b11a045a176ca854051@aptaiexm02f.ap.qualcomm.com>
 <20181115184333.GA87504@google.com> <87va4x8q2c.fsf@codeaurora.org>
 <CABvG-CVAnwkiKVJik0PdsmRxF62kKv2N+aRKNq=nbopoExLvDA@mail.gmail.com>
 <87y36q75wr.fsf@kamboji.qca.qualcomm.com>
 <CA+ASDXO8NujrORVLZMPbDy916cnzOvx_Bp8Vr-VvkbBwJvB97A@mail.gmail.com>
 <87h8cd8zy2.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87h8cd8zy2.fsf@kamboji.qca.qualcomm.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 2 Dec 2019 10:48:44 -0800
X-Gmail-Original-Message-ID: <CA+ASDXM8gtn3=p5pQ=GOFdfTy-698ZPW91JEgAfapdLEcU+eMg@mail.gmail.com>
Message-ID: <CA+ASDXM8gtn3=p5pQ=GOFdfTy-698ZPW91JEgAfapdLEcU+eMg@mail.gmail.com>
Subject: Re: [PATCH] ath10k: support PCIe enter L1 state
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_104900_439608_788B11D6 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Micha=C5=82_Kazior?= <kazikcz@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Mar 8, 2019 at 1:42 AM Kalle Valo <kvalo@codeaurora.org> wrote:
> Brian Norris <briannorris@chromium.org> writes:
> > On Fri, Feb 8, 2019 at 5:42 AM Kalle Valo <kvalo@codeaurora.org> wrote:
> >> No replies from anyone (including Wen) for 3 months about testing this
> >> patch on anything else than QCA6174. So I'll drop this now, please
> >> resubmit once test coverage is better.
> >
> > I know this isn't exactly what you're asking for, but FWIW we've been
> > using this since late November on all our QCA6174 products. No issues
> > seen as far as I know, and we have seen some power savings.
>
> Thanks for the feedback, this is very good to know. I also would like to
> apply this but not before we have some testing feedback from AP chipsets
> like QCA988X or QCA9984. Wen, are you planning to test those and
> resubmit?

May I ping here? We (Chromium OS) are continuing to carry this patch,
and would love to come up with something that can land upstream. If
necessary, I can rework it to apply more specifically -- e.g., only to
QCA6174 PCI IDs.

Thanks,
Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
