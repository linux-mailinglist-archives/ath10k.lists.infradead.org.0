Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AECE142EDD
	for <lists+ath10k@lfdr.de>; Mon, 20 Jan 2020 16:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h199d6aNFVd0+yTqY+8bgZ1jnI4NmFpmDuUwcYDqjdo=; b=DLlAriNU5a7ldc
	0Fvg4kfoRssdvUPu0Xpo/CIGChuPZU4+VY09g3IfQ7J3uUS+i45lu6+wxLeqDQNVOUQ678WP6zWce
	6kzRA+rPbkEFarHgO+MuJfx/4SagNMt1Ye+7S7HAjYEjEq2ltCj5mIl6Xv07jUXW/WW9qTsn8IyU/
	NpXZsLv/JAoM4d5Ci56EO2U/j3ePSzMbPY7c9a1miJxWfGo61WufPckSf2gmCv2hLdTC9OsQXfn5i
	JtdbKlMs/j9Ly+q2NPxPi5EdHQWuKycD36MgZvh688GC1dl4aT+/Mfk10Cl1La/Clm9h3NzBwx88s
	TKXViT6R3yrqebiwFq8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZ7p-0000wr-M3; Mon, 20 Jan 2020 15:38:01 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZ7g-0000uK-M6
 for ath10k@lists.infradead.org; Mon, 20 Jan 2020 15:37:58 +0000
Received: by mail-ot1-x341.google.com with SMTP id 77so101783oty.6
 for <ath10k@lists.infradead.org>; Mon, 20 Jan 2020 07:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J+zkONziERjkHD7k3oYFXBXc05D/2+MxZQ4nSI7z3qk=;
 b=AHd+J4/3/7JacS9+SI6MIPMtosg9dAAmykNTi8KMxtIQ/ZKUIYvJo19iydRznddI57
 eDmxdC+hBiCQ6DIes+yUW0kYfOAdQ69Arcvkh6O4StLJodJlljGhuLN0Inz+svml6jDY
 CdioQy0uTCh3i4MhfiCdoa2CCfHAT0AZpFDozghLrxgWdKegz3UVFGnSu2oMvjKYQWkH
 Q6hmyoyFGoEH8rhud76+orkFhzwgOo60dO8rHe6OUtjw2X8fXnukWqSWC6V4jGNTBbTW
 DNAjx/2jql2pLB4K/bJjFhPQx6Cwf1Nw4ypkjFUwVbV2zjgKato26yoW7SrYVspoD5UL
 M0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J+zkONziERjkHD7k3oYFXBXc05D/2+MxZQ4nSI7z3qk=;
 b=f87D/yzy3Gi2Ghn5+AotNK6IV57V9XcJIfJurKkPtJIlKBpP1evcqYwa5C75zia7hB
 s8lT6jnNURF33dWQHVZejS079G4Y/WRla0NJdMltiE7E/pkiC0QmfqPZW3eij/FHjly+
 dYyaaPxCBz6UcE1uXUTiGHwyMqLnEWQ5b+RkpGvV/2vyKNdSceEi95/kDXr5f/5WgWds
 3uNnScuHVL3zAxBDpFjmT/k6FMUzHg8+Pmw6v9pzEqLXLrREOOh6L5VX6nIHCWwy6PX4
 FiHwDGpqIE73rOM8ZJxmtObmzzEEdPzwzoYXnwEAM0JFTBE0iBRVbb2cn76pREfVhgEi
 gq7A==
X-Gm-Message-State: APjAAAWeHPo4dHgiyuxrnvbdN+nzNhPM9WQEa2uHbMw104/LQAQI7ap4
 AYWO7L5dhgO+jks5yY0jCyBtkbU7HyXgla/VbOpgUETN2ng=
X-Google-Smtp-Source: APXvYqwu5mz6B9vSsztKWgBDqwfEReavjCw3dBtvZ76trPgreHoSv7P0QzJSKSAbE5ouumLLtljuV3VJuM1vF6PNTkI=
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr15658844otp.177.1579534671064; 
 Mon, 20 Jan 2020 07:37:51 -0800 (PST)
MIME-Version: 1.0
References: <20200108031957.22308-1-wgong@codeaurora.org>
 <20200108031957.22308-2-wgong@codeaurora.org>
 <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
 <55ab2d64e78d51a9da587f276899e08b@codeaurora.org>
 <a1950ee2cb8dd9fc10e7d31bf18c9c95@codeaurora.org>
 <CAMrEMU8DmXBGGU-WNd9bQAVVkHF6SCO7c_wv+dyH9D7KFOB8jw@mail.gmail.com>
 <7ad4db8ea256a823778edf89b2a1b2fc@codeaurora.org>
In-Reply-To: <7ad4db8ea256a823778edf89b2a1b2fc@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Mon, 20 Jan 2020 07:37:39 -0800
Message-ID: <CAMrEMU98aMAfJdxECYPfLgqLC-zp1rA4K+DkWz=v3bTehMaoiA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] ath10k: add refcount for ath10k_core_restart
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_073752_727486_27142C50 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sorry, that response was intended for the start retries.

On Mon, Jan 20, 2020 at 5:34 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> On 2020-01-20 17:38, Justin Capella wrote:
> > Ok thanks. I am still trying to familiarize myself with ath10k. A
> > couple things come to mind:
> >
> > firstly recently there was a patch that set stations back to
> > associated during recovery, do you know if the branch you're working
> > against includes that? I will try to figure that out myself but it's
> > at least worth considering.
> >
> can you give the patch link or patch?
>
> > If I remember correctly, the sdio rx involves peeking and checking to
> > see if the frame/packet continues/has more. In the case of firmware
> > recovery/reconfig I think current code enables all sorts of debug
> > pktlog stuff, historically it was maybe used as a hack to check for hw
> > changes... But I mention it because I think what might be happening in
> > some cases is fw crash follows a frame that would continue/extend,
> > which is messing with the content and act_len (maybe?)
> does it have relation with this patch?
> >
> > I also noticed that with aggregation I wind up getting a
> > deauth/dissasoc followed by mlme delete sta/peer/key.
> >
> does it have relation with this patch?
> > I think a retry count could be useful but what do you think of maybe
> > using an event / timeout?
> >
> does it have relation with this patch?
>
> >
> >

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
