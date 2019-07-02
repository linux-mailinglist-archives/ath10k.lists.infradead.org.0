Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C0F5D604
	for <lists+ath10k@lfdr.de>; Tue,  2 Jul 2019 20:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZtwwDYF5hqdidaGesLMNzEUyvg+yAgYcbpxLsZYOxaQ=; b=rZC+spExO5K5Cz
	s+jTf89mCPFm51pJprZ4tdmuE5Hj4m/MRRDZw8GgQ1aRdf54BsyD6LzEbnA5+dAemZVtESvbXBJK7
	hMtkUsl+OBJRL8i8w4FXer+FKWiZtpDXj2JVy4IYOvUmxi8Cu5g0eUDR1eDMiAz9svCbDEgWCFMW8
	Hf+IpM+s4omTDQ1i+USoVwi/kPtb+8DmsHo4P0h7mjJVa1EOvU7o/3l5ueR2BHDvoYm32ZRHmrOn+
	VQtsxfd0WrYCgpUHfdEHKJJ/cmHW+NwaKzN7hOEZSJYR5knIaMDzaC0kODNMZqvo3WLRWFaOBquRv
	k5lwEQwt7Beatl6DIjZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNMf-0004qE-3q; Tue, 02 Jul 2019 18:18:50 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNMY-0004ot-WE
 for ath10k@lists.infradead.org; Tue, 02 Jul 2019 18:18:44 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so28186852eds.7
 for <ath10k@lists.infradead.org>; Tue, 02 Jul 2019 11:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6FDA9K8Eg0DrYoV6H18cZ4zmwn9YbWUb9dW3L/lchDM=;
 b=XmvpP4bpmD2ftx2G8tJmGIqF+j0wqzhUqr4xYm3CvOdKAzC95mR4abl5+vdbXvut0c
 9+gC7S4NoEq/C9Vbpnxryq8emDlq60+IKRu0UUKwcIOlVJSvK3+Idq9uiGg8/xaEgB8X
 nN1x+ExDkRHvT78ZMpnVV/lzAGTufx40ZD9izY1oL1wDJnMJPR5hgOnSjVk7TM1AVyr2
 7KNrvOCvVUDuLC+fUkPvTLPWC3Ciia6vUmrTFZIO5MPUWzNWelxklms441wCDObHlUhd
 cJpaBsCONU79OqZL2ga+x6C+YqYPbl/6EkO2o7+3aJQX9Voxl3bbe2zkcndU+Kj+eufT
 CA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6FDA9K8Eg0DrYoV6H18cZ4zmwn9YbWUb9dW3L/lchDM=;
 b=kc1u2woMF/BOwEVyj/aZ/b4NsrdkFkiwDIn1dt0QmwVtlnp776zesIQ+cWTuZmflXg
 Y7B2+MDhclfaxZYOxKCP8EkAlbzZXVx4r24bYj485gZqwjFc9WYxwJvoqtEJi+rMV7jK
 Ys109VRDjwpW77MYeAFRIAnVkD8jK72nasd59L3h1R86tYxi/U+5yy1AmSDReI2uxLD/
 H1jfxIb689HaTyaysKypNafzLlHAE7G64SeyRaGLUqeRD1xjJ1+cYlHxMh28Zg6ow18I
 6mdY+xp8SML0FfgzRQLd50Drb9jL8fM2qONtdPO7L+hmyWhVPh3hlD8bN/NJv9vpGGa5
 v8Og==
X-Gm-Message-State: APjAAAVEsjyX2PHgXHo9p5++0fwX09RPmBoN/mM8WnmZgtkeEYfDDSqb
 A484j/13kFEZ+gB90lSyOelfDU1dVXE6kQ==
X-Google-Smtp-Source: APXvYqxTB811HcYtVYVeo5x+nXbAJILikgNeh0Gur9Y7ztJZkIvOOszbI7RHmnanShh3mT1l8E6xyQ==
X-Received: by 2002:a50:f599:: with SMTP id u25mr38225155edm.195.1562091519834; 
 Tue, 02 Jul 2019 11:18:39 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id q16sm2890782ejj.85.2019.07.02.11.18.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 11:18:39 -0700 (PDT)
Date: Tue, 2 Jul 2019 11:18:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Miaoqing Pan <miaoqing@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
Subject: -Wsometimes-uninitialized warning after
 8b97b055dc9db09b48d5a9a37d847900dd00d3cc
Message-ID: <20190702181837.GA118849@archlinux-epyc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_111843_043499_5B93D418 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi all,

After commit 8b97b055dc9d ("ath10k: fix failure to set multiple fixed
rate") in -next, clang warns:

../drivers/net/wireless/ath/ath10k/mac.c:7528:7: warning: variable 'vht_pfr' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
                if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
                arvif->vht_pfr = vht_pfr;
                                 ^~~~~~~
../drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
                if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
        u8 vht_pfr;
                  ^
                   = '\0'
1 warning generated.

This definitely seems legitimate as the call to
ath10k_mac_can_set_bitrate_mask might fail and vht_pfr
won't be initialized. I would fix this myself but I assume
there is a sane default value for vht_pfr other than just
0 that should be used?

Please look into this when you get a chance. Thanks,
Nathan

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
