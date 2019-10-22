Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B9AE0B61
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 20:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EjUTwyOHKOMimWlv6Y1OgNPcQHVXkiVPLJ3u8zsFFw=; b=nLd5TteljmBc/V
	VNHbxMZK1dQWG5mEkWN3A6BJjzzi3u6OWfg55ineSbFo/QWdlcbpMUe8BRP3bwiv7maxbXvUjHWhb
	zkQGSbbUDn5jMRHOo78dnPpnoqPskPQzHOgCLnRVJBKS1PtJrSt32IFN6ppwd7PaTd2BBo+qMUsUe
	YrF+OkpZ4qfHHDJShkYbidDgkHJ5lCECvxhEg4QT1SJ5lH5bBjskGyTf9gfw4cnng0PX6K49JRT2i
	zMlNmUtFZaO6ut5f21VKq6GmpolUjHtO2+9D2EqbgLiGyxXHcoKF9vqDpuNWvZTCW6tgSLDv5bP6W
	Yl+n2ayANyCRxYfA2LDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMypy-0007Pw-FS; Tue, 22 Oct 2019 18:24:54 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMypt-0007OV-SY
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 18:24:51 +0000
Received: by mail-qk1-f194.google.com with SMTP id m4so260080qke.9
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 11:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6a2nV0MVVlfJzNZnPnOTDLrt++nGC/Q++LUC46+Srfs=;
 b=Mg9hfqx9BaNJgUkVsXjSUDVdGZv2kOgKt54f4F0UkgUERQO7HtNTaJh9caC9GOiINh
 zdl8j/9uUU+jwLItjFkMXrGUipdV+urYxLfNNtpCADACSUps9ci6AP/pjAVubHpXAItU
 T+6i6Gm6PCh6c/2yC1AQxNZ7GGHieQZRfKX17zaKqQ4G+96vIX1ovPVc4Sf8wUwDVHYy
 d1QPwxejnthcrOd86+H67NfLZQOzPIsHO8vp/BllF/1u03wMpiMS1CBnLzMHur2fNibf
 m9++ROhcBVDcPyNCjxcBKLeK/EiEQuFLBHBcc8HvU4bnJVHKOJgGdLZdElCNm6uOdn2H
 N+cA==
X-Gm-Message-State: APjAAAXq64OYU+BZkFR5KFkS6r9hnP0ZPEVx1l3iGniSM+REtdUjZoIR
 FEW6GS0b9DlvdoqFHH3cWuf79zKYKMeTQb5KLoI=
X-Google-Smtp-Source: APXvYqx9mOfVbCYC9GsKFZa4fGYTxPWRK90Y0l+O0nTsCrcQwbRGfHV+Trm4l5Z1EWT36RNpBdbMKGjLmtkMaFyycY8=
X-Received: by 2002:a37:67d6:: with SMTP id b205mr4512027qkc.183.1571768688431; 
 Tue, 22 Oct 2019 11:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
In-Reply-To: <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Tue, 22 Oct 2019 11:24:36 -0700
Message-ID: <CAJ-VmonXbUQ=Gv9fBbpN+ez25c3Pz+xxLoL67etMdC0Q+bwyXg@mail.gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: Peter Oh <peter.oh@eero.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_112449_918165_06FC1607 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 at 10:17, Peter Oh <peter.oh@eero.com> wrote:
>
>
> On 10/22/19 1:57 AM, Zhi Chen wrote:
> > This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
> > PCIe hung issue was observed on multiple platforms. The issue was reproduced
> > when DUT was configured as AP and associated with 50+ STAs.
> >
> > With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
> > issue happened. It broke PCIe spec and caused PCIe stuck.
>
> How can you say value 0 (I believe it's 64 bytes) DMA burst size causes
> the symptom and 1 fixes it?


+1 to this question.

Also, shouldn't the DMA engine be doing what the firmware says? Is the
firmware/copy engine actually somehow bursting / prefetching across a
4K page boundary?

Surely this is something that can be fixed in software/firmware by
correctly configuring up buffer size/offsets?



-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
