Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD58C960B
	for <lists+ath10k@lfdr.de>; Thu,  3 Oct 2019 02:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aem7SgQ34qxg+ojFaE3ma6yflONDl6U+LVXzvKFyknc=; b=pyp4vxGSBPU7BN
	tpyT2dpqfRQS6XT3zgeMR4ORXk8sAYEdKM9NHUq6D7uMgQ4KI8oC+wyhLzZZ0w9g1qoyf9omzJLp9
	E+li/mIWTYvqRGjj6hOUvOKJcG1eQx7KF2dJ+xUVD1pFnxBEm2q8DJYS8CZacI85fiKrYuNNT8uPS
	CfBXAF61UspwW8TWdmi5IYCRAt+iP41iAMvWy3xBBG4GoAxv0zm1LyaaDsv7UZqkUmDrtKuevQaDY
	eooOTp0HmeZFbsGd1i9TDh28cMR72WQaweIsp3U5rI28+LtjBuXTJi736V7/99Hp2nIQdSrFZ51P4
	3KpOGXRS7TGzJcL9b/Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFpSe-000704-GY; Thu, 03 Oct 2019 00:59:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFpSa-0006zl-Vr
 for ath10k@lists.infradead.org; Thu, 03 Oct 2019 00:59:14 +0000
Received: by mail-qk1-x742.google.com with SMTP id p10so645788qkg.8
 for <ath10k@lists.infradead.org>; Wed, 02 Oct 2019 17:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=55RbO+WJOZQM19PtQHPKSMAcog+78GCdZAbUU16u3QY=;
 b=Sqr/+PBJ5fEYkxrO1ypoC2tYCBLiV47GV9vCT/nTGcrpbllCs/FDKV880+zZt9x0Gj
 5iTgP7DGuJJrNOGCHiFtLtKi5jn2nY9rNJfhEWYFzdN0OaP8kecSwpHFuU2IVDaPoWxq
 bMerE5fK9wIhPN40VUcqlDb6C3sYp3feqhxSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=55RbO+WJOZQM19PtQHPKSMAcog+78GCdZAbUU16u3QY=;
 b=XT374CSA7/SQy7ZZz5t8jNsnudZI1+hxihQoLSNHWdffjd85b2e1JxocOnSYpHiB/b
 UmwpkH8BxPN3IBXngg/xPIyTzzQ9Ko+48WDRi8d/RURmSaE2vNUZGsG5ltpWkzpgX6Mn
 ycV7GrBX2OjwufiPuQqwenDl1GFjZ2bsamMzreEY7BU1DTdPwzuRC340x3w/PZBo4xlo
 AevVYZAHi0jZhQoIWycI4Ckd3IzpQr3VdfJXaOG5fBwVNh+xBGUIIAVKl+m88F1DuawJ
 Fq/putofpCubxPvtJAEMsaeOPpHlhcf44nIG5RHS+LOLMXGJBOP2QNG7p39K+wI4G97w
 eJKQ==
X-Gm-Message-State: APjAAAXxHtuLEcfoK4TnrCtc71gpeIRpFSYoIwrcvLLC7TUDPbxUOB+D
 uQOfEsgFboT1UjHEHxP2kzZku/zmMeQ=
X-Google-Smtp-Source: APXvYqwxWizfectU9s7mbgHYzizb4EuJHNiKLh1+0a4RgDamo/39XKRmF8O4ms77xZiioc8ZYg0HwA==
X-Received: by 2002:ae9:e810:: with SMTP id a16mr1832973qkg.364.1570064350675; 
 Wed, 02 Oct 2019 17:59:10 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com.
 [209.85.160.172])
 by smtp.gmail.com with ESMTPSA id c131sm640696qke.24.2019.10.02.17.59.08
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 17:59:09 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id c3so1228184qtv.10
 for <ath10k@lists.infradead.org>; Wed, 02 Oct 2019 17:59:08 -0700 (PDT)
X-Received: by 2002:ac8:6047:: with SMTP id k7mr7395287qtm.238.1570064347909; 
 Wed, 02 Oct 2019 17:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
 <40854e84bd4b4a9699b60530b1c373ad@aptaiexm02f.ap.qualcomm.com>
 <87pnjvctjh.fsf@codeaurora.org>
In-Reply-To: <87pnjvctjh.fsf@codeaurora.org>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 2 Oct 2019 17:58:56 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNXZrBS8dZW4jmXkg7c8-sK=pcYtQtj5KPxCDCEc8XqYA@mail.gmail.com>
Message-ID: <CA+ASDXNXZrBS8dZW4jmXkg7c8-sK=pcYtQtj5KPxCDCEc8XqYA@mail.gmail.com>
Subject: Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_175913_050041_54D14FDA 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Wen Gong <wgong@qti.qualcomm.com>, Linux Kernel <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

Sorry, I failed to follow up on some of this.

On Fri, Sep 20, 2019 at 12:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
> But I mixed up the flags. I meant that can we enable
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR in ath10k? Does the firmware
> releases which have WMI_SERVICE_NLO support
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR as well?

I'm looking at firmware which supports WMI_SERVICE_NLO and
WMI_SERVICE_SPOOF_MAC_SUPPORT. This leads to support for
NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR and
NL80211_WOWLAN_TRIG_NET_DETECT (good!), but it also leads to
NL80211_CMD_START_SCHED_SCAN support and *not*
NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, which is inconsistent
(bad!).

(I think a few times in here you noted the FEATURE_SCAN variant, when
you probably meant FEATURE_SCHED_SCAN.)

If I understand Wen correctly, he is working on dropping
NL80211_CMD_START_SCHED_SCAN, which would fix the inconsistency.

But I also noticed that ath10k does not support
NL80211_FEATURE_ND_RANDOM_MAC_ADDR, which is again an inconsistency:
we're going to lose randomization when in WoWLAN + NET_DETECT mode. I
don't suspect we (Chrome OS) would ever enable this feature in that
state.

Regards,
Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
