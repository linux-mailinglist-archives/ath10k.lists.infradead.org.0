Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECB5E0AE
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 12:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JO6bNtpJFe0mMGyoKWTAlvWxCAxmTqw8FBGNV0TlLc0=; b=SijFAf6hXafrz+
	1j0IwJsINKoH/9EIOA1FuO0+ar+HFaHXdJwcFZ9OyLEd/iKW7mYAz+BEBMXewYGv1CLLJPdO5e4zR
	K5g7ho5KDX/q7dlBPqn8AbFULTOw9m01EPEaebVZCo8COD/Ip0B+F2HuhtVGetdX8xh3e+lspXpEx
	y0qsdW7AnUVeoRmBqz0jjOv/pIqcu4HT9PpxozRleJpRY0ZvYNkxAPD5hSLkcbEb0sWN5+Y88rio0
	ArKLOCNesY/z9kGOvxZasQSLk8kecbCvt5lmhS8yNvdU4Mk9XegwlJ8cfuAGuhcMvXzvleh7wVRhv
	8hE8LlG92Mqt4qMzdVpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL3jd-0000hc-DF; Mon, 29 Apr 2019 10:42:09 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL3jY-0000hD-S1
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 10:42:06 +0000
Received: by mail-qk1-x744.google.com with SMTP id m137so5608749qke.3
 for <ath10k@lists.infradead.org>; Mon, 29 Apr 2019 03:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mti7KwMi+FS7lNJiLBXoxgVN3ENDHL6rbQJBPEZLm8c=;
 b=e6Z9KN+6jcezK4vxJLAWJ4wS+bpxKehspqny2MSjUgaOejBm5SChPK+bwk3HlBKrwj
 cxjDmvPu1FDIMhcQNGe0i3iacMH6nOIdGlv9koKvO+L23/izsmwYOK3RSUyqLnk+Z4S/
 40b9hQCT4A7O4M06WpDPjq4S0Nb9QQNLU2Rio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mti7KwMi+FS7lNJiLBXoxgVN3ENDHL6rbQJBPEZLm8c=;
 b=VL/CccgQ7qD894katYGS/LDFXJoMToz2xKHyi45MN/jiYjd438TWo8NAXHqoWDYuHK
 v58okcC+016aHcGoYiLZwm4nhPVNuTaXcKyhkF3UmmvgZfKgXoKlfaaES9LYQZA3ERZQ
 +54s05XJ91ohYm+4po18R1g3PXOGaN6vfN2ri/7cMqc+erpSqGpiIoRk/j1CnOJabJsL
 dCX+/RptQhFk0OA4VaFsH4ddVw5HjtO2+ODz8Aif/OpU0RKy77uZmAZXjKWL9NKkOUxM
 0su2+ZzV0uyswk/8CKXHyhepGBI+S1KAdHbe1Aw2zuYolXvbBCjJZNqyewWHeYgNo5h6
 QWYQ==
X-Gm-Message-State: APjAAAV2ANECjQsQ8E5sAj9V1q+1Ex/IHitkAkgUDzwKcE8EeFKuP4BT
 +gvhEcCBuOLJlxJK33qJWM4b+YSkpfcZoTFV
X-Google-Smtp-Source: APXvYqwI7342peLK/28d2vsvX0v9pkwY4KKsR3glcXF1XjAKi6Mpf3+pbXq0PZLQo4xyRJPK1QsRuw==
X-Received: by 2002:ae9:f816:: with SMTP id x22mr11407056qkh.200.1556534523542; 
 Mon, 29 Apr 2019 03:42:03 -0700 (PDT)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com.
 [209.85.222.169])
 by smtp.gmail.com with ESMTPSA id z85sm16628533qka.18.2019.04.29.03.42.01
 for <ath10k@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 03:42:02 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id w20so5584353qka.7
 for <ath10k@lists.infradead.org>; Mon, 29 Apr 2019 03:42:01 -0700 (PDT)
X-Received: by 2002:a37:4c7:: with SMTP id 190mr37260660qke.128.1556534521618; 
 Mon, 29 Apr 2019 03:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
 <20190403195718.GA74723@google.com>
 <87o94tutdz.fsf@kamboji.qca.qualcomm.com>
 <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
In-Reply-To: <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 29 Apr 2019 18:41:50 +0800
X-Gmail-Original-Message-ID: <CALiNf2_qV+iViHbS0tQquTMZfu6XfFvQCH14mdT5bixn94DZ2Q@mail.gmail.com>
Message-ID: <CALiNf2_qV+iViHbS0tQquTMZfu6XfFvQCH14mdT5bixn94DZ2Q@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Drop WARN_ON()s that always trigger during system
 resume
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_034204_931134_5E75D35F 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sriram R <srirrama@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, ath10k@lists.infradead.org,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Todd Brandt <todd.e.brandt@intel.com>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tested-by: Claire Chang <tientzu@chromium.org>

> Still, I'm quite sure that the WARN_ON()s trigger during system resume
> regardless of the hw/fw combination.

Also see this on sido:

[    4.925278] ath10k_sdio mmc1:0001:1: qca6174 hw3.2 sdio target
0x05030000 chip_id 0x00000000 sub 0000:0000
[    4.935721] ath10k_sdio mmc1:0001:1: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 1
[    4.948750] ath10k_sdio mmc1:0001:1: firmware ver
WLAN.RMH.4.4.1-00007-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32
b98adaf8
[    5.132728] ath10k_sdio mmc1:0001:1: board_file api 2 bmi_id 0:4
crc32 6364cfcc

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
