Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988C410E523
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 05:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhRm9eUtJb9liSyNdLEbGD//8uSW9gOJGxc85YAawto=; b=IsgU/nPx+16fvi
	rNFNx9s/bjWbwmb520OJqh2hmgiUn77Ty3CUbKgNDDh9RdHvLxNwfwRJqW8AXV6W4AFUkLwX+0kbF
	8CLijwNwkxjRM9I9FLZ54eZl4ar4HW1yrbTrPcjkFqBsAnNhMbiFZ9FYJgEwpcXKjG0f22Cq9ClPL
	jwetimxMV8vkpaIDgA9XAV3UtMkItpmF627eaKlKcIQ9NnPbTGdbZcD8JvyuBS1dTrVDhPJ3V3/Zr
	4F/7KnDlb4VGiM0N6X5vi+RGR9X+2S2v5jUrxMgg1W/KdbnASEanVhyWz59atiJTqyPA4ZLbHCHON
	YI4/Vi+hKLUJlDd+DYLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdad-00006u-0f; Mon, 02 Dec 2019 04:45:39 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdaN-0008LG-Kv
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 04:45:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id a124so7545808oii.13
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 20:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xx1IcUCVnmm+ltQmJpqmycxjMGQYkRxxjPLHuniV3bs=;
 b=u8LXDOsi/31CpWJAQz7I7WHgjXVzzU/IXOOu6ngWLP+lUeYaYlObs0lybNUhrsEeN8
 pgE5v8nft+wbIL+pz0LV1G1SCdaClLbY/4koX60vfVShtcVABXdk0bQ8ZudZyXOo69ff
 bEtqoKi4yXK78oL50b60DO4A7wrcu7l+SC+pCU7Vm7Lie7G2xriSr9MlZUvIAhYSkza5
 U2Bczuh2DAn1CQV9A0z6YwTFgz738DhLxOnlwpC6BSHdA3ZsCjUY/Ns4fHIFFkvt6Kvu
 seqfXPVOXZOSmKKopqrtvNmv+miXPXRN0PiL1x0LiIF4ncmzCqeKp4T/VxZgcmjxSbSn
 MIxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xx1IcUCVnmm+ltQmJpqmycxjMGQYkRxxjPLHuniV3bs=;
 b=iN6OpWqtKItSaltF2q/kDLVeVHIdY9CK/vTEncYJOwhhQe49npEpb3cnq0XBUl93i0
 lS+wlZ3USPM28+Iff5GeCZOGH8vAXxxZOAvm5TOFzwxMaWrl5ruAvQoW3By+buPC7PxB
 CjuvrdOxyAjICQ7Ywhf5jekGEgkE93FIjJssxyQEo4qIERpzdgqS23laooeudPQtZW/b
 yKpEWmSZS92UbtohMK0N4BZSpAn8vNlSbHZIfkJVKT2YSPAB21SryC2LoiaN/9uE1MOE
 ZA9WzyUTQkBz/JVpKuc001CCUfhwFvHYHPgHDtoxHqyXln4Bzx2ZtA4LDTdc/YkXcarW
 uSew==
X-Gm-Message-State: APjAAAVkwV7c+uYGvL+C9oMbreCTPaV2TtikGXMFqoXKbnGOSt010rrJ
 F9t5Ay5HB/OX1b2TB2tTggoDoR2On0jiHjG6YTk=
X-Google-Smtp-Source: APXvYqysbsxAKgbExho+j5MbF9MHIEHnmRlacbXTeCUQ3FiklrOpQzE2aFflR239WvHDV9AYjUGAnPEy7m8J+riw77Q=
X-Received: by 2002:aca:af54:: with SMTP id y81mr19088039oie.154.1575261922530; 
 Sun, 01 Dec 2019 20:45:22 -0800 (PST)
MIME-Version: 1.0
References: <0101016eaadee57a-54500c6d-4751-423f-8bab-5acd8fad2175-000000@us-west-2.amazonses.com>
 <0101016eb61d9520-b0306a23-c9b9-4b57-b708-9f80ac47eef1-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016eb61d9520-b0306a23-c9b9-4b57-b708-9f80ac47eef1-000000@us-west-2.amazonses.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 20:45:08 -0800
Message-ID: <CAMrEMU-VOYeHO2F5AjyWJLqgEVq5HOUHZkMJqGio1qovFPo8ug@mail.gmail.com>
Subject: Re: [PATCH] ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_204523_719581_88C241F3 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Are there security concerns here? Was the peer known to be authorized
beforehand? Would it be better to just trash the peer in the event of
a fw crash?

On Thu, Nov 28, 2019 at 11:46 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Wen Gong <wgong@codeaurora.org> wrote:
>
> > After the firmware crashes ath10k recovers via ieee80211_reconfig(),
> > which eventually leads to firmware configuration and including the
> > encryption keys. However, because there is no new auth/assoc and
> > 4-way-handshake, and firmware set the authorize flag after
> > 4-way-handshake, so the authorize flag in firmware is not set in
> > firmware without 4-way-handshake. This will lead to a failure of data
> > transmission after recovery done when using encrypted connections like
> > WPA-PSK. Set authorize flag after installing keys to firmware will fix
> > the issue.
> >
> > This was noticed by testing firmware crashing using simulate_fw_crash
> > debugfs file.
> >
> > Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> >
> > Signed-off-by: Wen Gong <wgong@codeaurora.org>
> > Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> Patch applied to ath-next branch of ath.git, thanks.
>
> 382e51c139ef ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
>
> --
> https://patchwork.kernel.org/patch/11263357/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
