Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CACB52FE
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 18:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maTYlBIU20WyZZNW+9/u72a+GqE0AtXTWYwq60OjLjI=; b=ODGSNcJWWC/pPc
	QehqPz0gF3YkL9IGiR9oSbEkGstvAlVOzdekuTOuCWJmR3U4B1du8yj4fPAKNGLzKdEJjlKFbbaGy
	qKAFWoGD8tIDiwQ8Wxhk9xHrGF47UtDl3c6fyVCp5Zkj6ck7k1vBdT7jHiXivMDqs19BMccJ9ivJ6
	PNRLxvJc5bWYEFS9709edjeEkp0oIWwfBIyZ/38ZcRIcYLGzhQ27aeZT6lJUwdSuLF0k0Wbeb0fDO
	dnd/DcQMBXIAlVogURgyhl9tQUfw/b6VmQXzjvFRuIQhLo3oC0y3CI1fkuRloptDV4PMNtjKcHuqG
	dsjBiznVJwoxrLtG/4xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGPj-0000VF-TU; Tue, 17 Sep 2019 16:33:15 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGPc-0000Uo-39
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 16:33:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id e17so4153680ljf.13
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 09:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iQDRRInEfkOmolUWUlkWs8+kiucdxwd5FC1fGShr5c4=;
 b=dgmHFsLVgUDYlzKnx2AI9EBhRyfdronIQPVc9nmshBfpBav41pgLiKHS47u1qbTMRV
 /OwRABb4gyj/8eMrwgTXTZKo1ZEr3OZ650q9RGo2V85QlQDznn7pVQpcjv7vyWQko1kV
 m46DsLgVSgceBujZfIRs97mCBeZ7wHovtGGcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iQDRRInEfkOmolUWUlkWs8+kiucdxwd5FC1fGShr5c4=;
 b=pywm8BzXlBI6pQn/jB4aLGFfQuRFFAOF33uDF/aIstpUAP/oiD+86H+vlwlCqfm4ru
 Yf9T8JAll3LG/Qq3lT/Cm6Vu5QQjfHCJpOQmnjb0opMalugwq9tuAmN9wI+Om7yumLuX
 Ezd1iqR5+a/ln/TUg0gUqybBf8qE048mNpGdJ7QIbPOGOhxUz0ALvrSyymtLJTStSgp4
 lDhsC3Nw4Y1V48B3owGV4A6LI5Hou8usN931L9LBKs08QiHYrDbpXy57EpJids2w+Aeg
 81tU8EqsLUdiOHcF7Lw6tGVtSm11UYspyfWe0/sfyTQS385yrZQrdyZKMBP6ykcDW5/g
 voDQ==
X-Gm-Message-State: APjAAAVzVCtARQA/cVWvrsdCJZ8yeRntuRQcy8/J10kBdOzoy0Y0uz5E
 YNgrN7Kg17n7xeATbAK37+bAzvqvdBg=
X-Google-Smtp-Source: APXvYqwKozfb+Yd+IAZRSkVHkstVFAAEM8jS+suNWKEAonTqwVSIty/VjMESb8yInYZdgWV3TQPwEA==
X-Received: by 2002:a2e:9854:: with SMTP id e20mr2486549ljj.72.1568737985540; 
 Tue, 17 Sep 2019 09:33:05 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
 [209.85.208.181])
 by smtp.gmail.com with ESMTPSA id u1sm514097lfi.83.2019.09.17.09.33.04
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 09:33:04 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id v24so4238918ljj.3
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 09:33:04 -0700 (PDT)
X-Received: by 2002:a2e:8592:: with SMTP id b18mr2284561lji.18.1568737984442; 
 Tue, 17 Sep 2019 09:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
In-Reply-To: <20181114225910.GA220599@google.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 17 Sep 2019 09:32:52 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
Message-ID: <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
Subject: Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_093308_156709_0CED9137 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Linux Kernel <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Since Wen has once again suggested I use this patch in other forums,
I'll ping here to note:

On Wed, Nov 14, 2018 at 2:59 PM Brian Norris <briannorris@chromium.org> wrote:
> You've introduced a regression in 4.20-rc1:

This regression still survives in the latest tree. Is it fair to just
submit a revert?

Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
