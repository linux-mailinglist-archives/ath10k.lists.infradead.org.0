Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B32310E2BF
	for <lists+ath10k@lfdr.de>; Sun,  1 Dec 2019 18:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWJbef7RFTh6EDT2ciGmm7wNwrYRzDhiBuwoLdoSRn8=; b=Av4+uEAqkad4ie
	Y7MMUynUqvVVuOkKhOhHsJQd45ENmvu8kl8lkjTdsi+OuiOtCpxwPafwAldVWcIzyq5OP1lgyoLmp
	NvsBX8QO6Q8Ak8JPpzTx0PdJ5bS2wKe0kcTU6jMW6vYDWcLovAfbsvOZRUmvIQbEFOUa2qQXLRLhJ
	p+NtDqa7UBjzFtzIFAxzA0RRUytOqDjv4QcOJZS4FRk14VSNCXiZGoxAdEH+9xp/QBq5lt/jBrGc2
	fbDgT5N55EThXUP0TWWvkNR1wVPZzq1O1QjVC6hww/d+hl/y31frkeqjJvisZ6uGQZ6VQxEiWJyKy
	Q9QhLTGiPeGx0luAWsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibSrw-0003GM-IJ; Sun, 01 Dec 2019 17:18:48 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibSrs-0003Fm-Jk
 for ath10k@lists.infradead.org; Sun, 01 Dec 2019 17:18:45 +0000
Received: by mail-ot1-x32c.google.com with SMTP id x3so4416169oto.11
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 09:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EQKNMPrdXSYVEzSKBBBvZGHSq7QUnMaV8BnvFQDMcpo=;
 b=ZhhsCU3FhEAqdJkjrcaRaLR4LHnSVQ5zKnigmJ6Bzr/YhUF8sQsAN/BBWH0SRtkj9X
 wr0mEQy5G5tQjacqqVDPc6PfUOG8QtfcL+sbgqRZqcUMvZmFIKLHTsTt+nWBgvnQrRaM
 Y1zo5Z/6k7ANZ5SFWhQLDs1rPUjuAaF3cO9CYFUXPZGWHlN0BPq2GD91jJ12yFEshTfi
 jhKTjph2nPdpps1aTTsP+238QwTaQ6SnSOPk9rtJOyqhioYqugaw5Ks6QiZr/9LS7pfh
 fI0gem52OZAQLyaZYSdAVt6fUbUY9gYU7hltBbltcO25uymXmkrMO8wN6U4NTA9f6FNO
 G2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EQKNMPrdXSYVEzSKBBBvZGHSq7QUnMaV8BnvFQDMcpo=;
 b=kfsT9stL/JbyL6Z6htlWG+LmvKHauYi5mv+HpMYSrRbDhf+uqMbhHgqgerC08xqfiL
 c6uX8HEhWTp1eO0zHrn+D/cgjSuwVt61f6tOEEcvv7p7aggIGQdAUZOU2+VqnR/zRBdO
 WrUlPJ4cpi6ZBiIptFQmSuPu6iI3uKn1rGos5l7mB7/ogUXOJJgqOIrG0cjMcDmUg9A0
 t8hY3PWmAKIPr7xw+1QlLCdyKIaF1fvAg+NGLLoHnm2fO5Q0B5rhVaDNiyQzMF2Ab4L7
 mP2kea9Dbh1lFwGDV2s55xAVPLhN7+icqY2I7b9I0rTWLiNDv/r3G8yVS0eOp9nyqleP
 3gbQ==
X-Gm-Message-State: APjAAAUJEiCPfCK5koPp2WJ+G4nTjAFJA80SePJx1miVZM8ejnTy3gRg
 QJWYTYtWc+fUwf6ABjlgoBUR3KwQkU8Gc/P9PFU=
X-Google-Smtp-Source: APXvYqz3KPRUb5ADcIziGm9d8X36Ewn++0KuA+zTElbbXHq5M48lezNGqerbgEZrIeAporQhIPT8EGm/D9JLm6HpC7U=
X-Received: by 2002:a05:6830:10c9:: with SMTP id
 z9mr641259oto.200.1575220719595; 
 Sun, 01 Dec 2019 09:18:39 -0800 (PST)
MIME-Version: 1.0
References: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
 <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
In-Reply-To: <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 09:18:25 -0800
Message-ID: <CAMrEMU_nahLwE39DX=6e=Pr9S8R7oyC0mFFCqis4b8-FPC80YA@mail.gmail.com>
Subject: Re: duplicate authentications / excessive missing ACKs / deauth due
 to inactivity timer
To: Adrian Chadd <adrian@freebsd.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_091844_673271_6D273A59 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32c listed in]
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

No Apply devices--- Android (BRCM?), and Linux iwlwifi. I guess I
could have left the OUI's in the MACs.... But it is a recent
regression and multiple clients (all my devices) seem to be impacted.

On Sun, Dec 1, 2019 at 9:01 AM Adrian Chadd <adrian@freebsd.org> wrote:
>
> Are these er, apple devices?
>
>
>
> -adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
