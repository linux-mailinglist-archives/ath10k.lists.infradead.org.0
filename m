Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0BD1F1CED
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 18:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l03qFDW4Y+n2wFOvKmojPK3X5ms8Ry41PVuo16AaQNY=; b=mJh6+oaUYIrJXy
	0tyuemznQLzWjQHkOFXzWGioqrJv/2tE+PodqabwibfsGP7HQFshBwV1KA8hPrwC/TbQfxY3m95vP
	0WzOYZzRi8aM166QC9uQdgx4qy+iOndFUa/fQlbDT2f7K7BvF1l0j/ObCKgSG3tfBk0/neo7ZWve/
	c/E6RjS9NGTu9en+SFxaiks2aA6u1FW+ccaPuRcShY5/N9j6S9dT/g+x30o3Zl8kKDdLhQaT3y4z+
	5PKRcexBu+n9H+9KVySiIQAlSxAV6b/awVN81KjnaE4OJYmsDKrPgUDIb/6yacbt6FDe6czVa0SHm
	GbqY6Y+I1GXAUfpJKwpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKJl-0006Qf-ED; Mon, 08 Jun 2020 16:08:09 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKJi-0006QJ-84
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 16:08:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id c12so10555449lfc.10
 for <ath10k@lists.infradead.org>; Mon, 08 Jun 2020 09:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ClSQBWTNKy6QM/u0O+83mkKXa/fUb2mZhnsBDib3FXU=;
 b=Wj7uIHi3iVob7U2MnpWEYNidthbOPgWUvDSYkULGV6+X5T7T2QDw4sHvTkrkAIv0Ab
 6Fg0K6exQtytZPQKO34LagmdPRaq460ZHKWIsEukUVc/6/emrmYy/9IVYBXfE7+n142s
 THP8lUfiXgV4DF0FjAkuCp2x97R1OfEHEVP/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ClSQBWTNKy6QM/u0O+83mkKXa/fUb2mZhnsBDib3FXU=;
 b=EMDSPJkIYNqeeIsNFsrhdjrrNeQ6Kugff4pmvICj+cUu3NVul2Dm+ptXwdzsL4csZ3
 sKvKHrNJDy0r2mlUa/BwzV6PwDxOvLk+ZfQNYgtqAFIgYFVLbIn+AXxxHXDu16hERE4m
 UHFShJRJGVY43vizQreJVRFLR6z9akswz7xfk7dkdSE35FJxMVIK3LqGwnQcDOE3UpIr
 o5bW0gBOcOEvN/481FFOHSSKY8DxDHl8fMV5Hv25blgK5pf0mB+TBwoNTwuZIlj7jelH
 7KwcvN441jVSsr8hkYrQLjV0/xnFj/g+egc5h1LTVxIsAq7sAK7kuiDixFQbty7Mt7YH
 BLHA==
X-Gm-Message-State: AOAM530XlPlrq9Av4j0egQQCxIOlpPGhhGIPZk7Gn/KeSZ/naJPaV7rQ
 owaWB0Pdy1UWfSA3geLMa8Jb6ZjzNsM=
X-Google-Smtp-Source: ABdhPJzFNmDmVGJTf6kG9+2V9buLQRXxf6USqPVSTsARLxEfLuCkcYnb4PcZQKxD/TvaNCDomXLpog==
X-Received: by 2002:a05:6512:3208:: with SMTP id
 d8mr13023084lfe.38.1591632482627; 
 Mon, 08 Jun 2020 09:08:02 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id z12sm2200740ljm.25.2020.06.08.09.08.01
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 09:08:01 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id 9so11552096ljv.5
 for <ath10k@lists.infradead.org>; Mon, 08 Jun 2020 09:08:01 -0700 (PDT)
X-Received: by 2002:a2e:b4c1:: with SMTP id r1mr6601345ljm.370.1591632480876; 
 Mon, 08 Jun 2020 09:08:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200604105901.1.I5b8b0c7ee0d3e51a73248975a9da61401b8f3900@changeid>
 <87v9k1iy7w.fsf@codeaurora.org>
In-Reply-To: <87v9k1iy7w.fsf@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Mon, 8 Jun 2020 09:07:24 -0700
X-Gmail-Original-Message-ID: <CAE=gft76Nqo93QvvXU9xU-6sY-Q88H4RezMx8G6MWSBE7vJDKA@mail.gmail.com>
Message-ID: <CAE=gft76Nqo93QvvXU9xU-6sY-Q88H4RezMx8G6MWSBE7vJDKA@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Acquire tx_lock in tx error paths
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_090806_303899_A85E7D2F 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Govind Singh <govinds@qti.qualcomm.com>, kuabhs@chromium.org,
 sujitka@chromium.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Michal Kazior <michal.kazior@tieto.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 4:39 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Evan Green <evgreen@chromium.org> writes:
>
> > ath10k_htt_tx_free_msdu_id() has a lockdep assertion that htt->tx_lock
> > is held. Acquire the lock in a couple of error paths when calling that
> > function to ensure this condition is met.
> >
> > Fixes: 6421969f248fd ("ath10k: refactor tx pending management")
> > Fixes: e62ee5c381c59 ("ath10k: Add support for htt_data_tx_desc_64
> > descriptor")
>
> Fixes tag should be in one line, I fixed that in the pending branch.

Ah, got it. Thanks Kalle!
-Evan

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
