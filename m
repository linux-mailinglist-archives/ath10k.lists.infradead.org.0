Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EB212571C
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 23:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvliGJaEuStzg6zqCGfxYqdXYoG4ov7iaOMwXB/LTg0=; b=cTRA8R80IKa4F8
	ilWr1E77SSo6pcxkZLSdtjNUy1sMbpc7ZYUBSiJIiya60O5yP04X8ZIha6w3Gfm5Sbo/8vNJ15NcO
	oCjLTZrn/x7KAdQupF0FEiqKlcyLReibJzOOIMUOJLksv1HZrs7i0mTeoi8VJLI5sSgHZmGIG86Mu
	gTuV/T4qcZxU171378DmyDRPtlVBTazw9RUQLO7pWp4mfdWo04XvUHwy1nHN3/U4KkG9U4mK5f34G
	Zqa2Vy56tO52fEjN3IwHgeGOdkQ4PdLtT+8UVHxOWN/TnGZcfjcAJHbR1lN51kmQOqzjJVAiGjejm
	PpL2POunxRAIhFLjNUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihi4A-0003li-Ms; Wed, 18 Dec 2019 22:45:14 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihi47-0003ko-G5
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 22:45:12 +0000
Received: by mail-ot1-x341.google.com with SMTP id r27so4437285otc.8
 for <ath10k@lists.infradead.org>; Wed, 18 Dec 2019 14:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=oUM61ig48dGp6BTSyXKlzMTD2Se0Ze6HBqgSf5x4H8U=;
 b=TPvPsRBQ4RU9841X5EEjyKkIQKLPNUTPwte/PUm3es1Bhy80tSRxEfr+LbKduirPS9
 5KdfHy6GO7Rt+zVg+5z+cQgYPBv4QaijMUfeeT07WA/N4Knq6qx3vJE7orLPdJ/OcIe6
 7VZSEr0Mb7j6QbCX640q/TifvQ8O1Rk0T8VUmERs1gHQcHBz58E6G72G1fUoOd0MrmRy
 TKlvTUqHat8eNPK20246Ksl/RErAiTo/F7r3uGtPnrtUfa7SALOp3y9heYdnDrR2+0lJ
 /bWkE8iI0nHBLXd39fK105Dqntgh9/KVkwkz0pFkyPsZLWLSSKU4Y6CnhGeMtXbQKWY2
 Pugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=oUM61ig48dGp6BTSyXKlzMTD2Se0Ze6HBqgSf5x4H8U=;
 b=H1RyT9Oyj68ucMg5kwcFz3b9hKSsg3KG6LOrOHrF8t02IGCumfjcMNO4/Tan9Ia0Jg
 bd+W5CxSg0zH7LhGplVCTUlpEs6IBAeW4O9yNMl9NvWbCGr1Mftgj/2FiQh2WtY1+8BK
 PNWWf0Vns3sI7AGciO9d1MU86ySelwb5aWY3pU5B+PK6UVRlcJZ2QnqOgavtxxbpr7pD
 IHVUK3Kh6ngGi/h1FHhYUVlHHZEozAZa0ArnPoSA3TB0NsbXdh4ZMBpudTyS8+GIZcxH
 yNneMaoD8uZCu8roG0C7pCIyTuDaKrz9Ct7d4NAA3uX04IplZ4usadHQJDlfAccnuFTf
 W6OQ==
X-Gm-Message-State: APjAAAXkAuvC6FJKl/zIV9GScy17Ca7v7XCP880ppI3IhKuRBdj99hws
 6prQ69GOkTH7cgOs1DxycaMfDDSwQpR3RG758Eg=
X-Google-Smtp-Source: APXvYqyv4FSgGRe5K+ifNRYBl/StBzCnqJV+gR+y7xJRLH5ARyXNyfkBMSVi9HvdffmRpnkvGfwtPjs0J2BqM2c3/+8=
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr5311658otq.63.1576709110567; 
 Wed, 18 Dec 2019 14:45:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Wed, 18 Dec 2019 14:45:09 -0800 (PST)
In-Reply-To: <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 23:45:09 +0100
Message-ID: <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_144511_585635_3213F873 
X-CRM114-Status: UNSURE (   4.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ccing Johannes Berg since upstream change (mac80211-next) breaks build:

In the commit log its written: remove SUPPORTS_80211_ENCAP HW flag

Any sane reasons for doing that? mac80211 fails to build because of
removed flags, this is on backports-5.3-rc4

Other than that the feature delivers the promised:
QCA9880 iperf between wired and wireless machine
native mode 449Mbps
ethernet mode 522Mbps

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
