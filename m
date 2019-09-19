Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20582B7003
	for <lists+ath10k@lfdr.de>; Thu, 19 Sep 2019 02:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9r3UZT9V/EB9n9El1o+8Z7y5toQhAKlTI1qEChs3ZU=; b=biWUN6f85uBUOp
	jd7aPRvPsVAVVm91MGiZd+vGqMt1J7YHtSseEufl2h5BAJXiONAiXx4V5FfJArN9sK+od32p40kqb
	Y50oAxNG5aca3GkTD8lUxvtEbo3Lt04p5D5Oyyt+kcjLzfb5jDU/Y20bSX8SPT2mpqBVp1SI3V2jO
	6QG1SQbEvaBkJDVSmQB1Df8r4DWjRQGP9F4UBIM35icK8ffQFMJ1IZ93iY3iImg9WewT0/7/EK1X4
	9TknhLyazXilCOdU+7CA+ij90Bo5H+QITdA6j+x9gCMNyQz9FMrvbH+WDsz7rOwawCWeACB1IZ3c0
	biySFfFzU8fN2w3joojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAkC5-0001ih-4k; Thu, 19 Sep 2019 00:21:09 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAkBz-0001iK-Rv
 for ath10k@lists.infradead.org; Thu, 19 Sep 2019 00:21:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id m11so3625020ioo.0
 for <ath10k@lists.infradead.org>; Wed, 18 Sep 2019 17:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bobcopeland-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LGFJWhNRpfPDkxQiLAsv0dpfSscHnJEMTZIfgTSOTVI=;
 b=CqweiLWhfGBlt+91VHeB760UcD+rMvZZbhWwfMPVFcPgkX918x6xWHiurUfnK3RhF+
 Tbl377hvInemif/ryImLaiz9voLiYlm4G17wQd6ulThTe2+bclqGMJKy1+e/gOOWilZp
 zTRdfwkJDuyQ9EELbryO0YYB+CGADeStnAc51M0og8ihys1CklaKZusB2VgxIwPkX5dS
 8EkdXU6qB1zdwKo0HxXjDs2Z5GX1jf71j1O4oAO5d2fAhTIRZD9CNKCJQ2Z7e6cDk7ev
 VmVq9o80z3RNajnmHtTc7ywkuI0kTAyFHrvV9baJSFoYPW0Milqp3+hzLJG0Jw6Fz++u
 nyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LGFJWhNRpfPDkxQiLAsv0dpfSscHnJEMTZIfgTSOTVI=;
 b=E6U68NBmTX27YAl89WrTZ23Gd7oKvMOQJiaF69iZkjYwA6Z/BLl+pye4GcwREP+zHC
 hagG8MPQgEeTXwCMCA0+MbXO10sfRYiA3KZlCtjeRe3ox+gSN8afE0k96GjV12aVvFDw
 rsM8/6lDoHNdRP5eqVZGzKOGfpMRWeiD3LNQJS8t58jiemEQA362faF5YwhvPZo/vUst
 KIMhTja+RFgjCh97BjQNsd0Uy7KJS+3/GNlU0gUtHmAkB8pO/BwWSV/l9EXdHvu+vQN8
 jCk2iP4O1b/YH906cDl6LaJOAPplmqeVx4Qz6vkYsRjRRNwbJeorVKFnzlsSZudtl93O
 4RVA==
X-Gm-Message-State: APjAAAXj61MtlFMwpkOfbGgFQjg4hgVjNtGGnGy2+xTFDdmffnjNTvNN
 VFZHdbtHkq1p+7x0Z4IBqxXLiw==
X-Google-Smtp-Source: APXvYqz7yySgx822+qGRpN9SqkD8SIzOGoBt8C3gItOFhf8H0MW6E9R4noYo1YWRp04AOMFd8Vm3Tg==
X-Received: by 2002:a5e:dd4c:: with SMTP id u12mr8199933iop.181.1568852462525; 
 Wed, 18 Sep 2019 17:21:02 -0700 (PDT)
Received: from hash.lan ([2607:fea8:5ac0:1dd8::d25])
 by smtp.gmail.com with ESMTPSA id e139sm5903756iof.60.2019.09.18.17.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 17:21:01 -0700 (PDT)
Received: from bob by hash.lan with local (Exim 4.92.2)
 (envelope-from <me@bobcopeland.com>)
 id 1iAkBw-00063c-Ue; Wed, 18 Sep 2019 20:21:00 -0400
Date: Wed, 18 Sep 2019 20:21:00 -0400
From: Bob Copeland <me@bobcopeland.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v4 3/3] ath10k: add support for controlling tx power to a
 station
Message-ID: <20190919002100.GA28186@localhost>
References: <1553856587-21611-1-git-send-email-bpothuno@codeaurora.org>
 <20190402223709.GB8910@localhost>
 <871rwdbu1p.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rwdbu1p.fsf@kamboji.qca.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_172103_967735_F210C9C0 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>, johannes@sipsolutions.net,
 Ashok Raj Nagarajan <arnagara@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 04:41:54PM +0300, Kalle Valo wrote:
> Bob Copeland <me@bobcopeland.com> writes:
> > - on A, changed the global tx power limit to 1 dBm
> >   -> result: signal level dropped to ~ -95 dBm
> >
> > Reading the description above, now I'm wondering if the txpower is
> > max(sta-power,global-power)?  If so, that seems a bit unintuitive to me,
> > or at least isn't what I hoped for.  I'd prefer to have per-sta power
> > setting override the global power.
> 
> Balaji, please reply to Bob's questions. I missed this thread while
> applying v5, sorry Bob.

Just to follow-up, I ran more experiments since writing the above
email and it didn't look like it was doing max() either -- at least
on my hardware/firmware combo it had no effect at all that I could tell.

I did verify that the wmi update went through to the firmware.

I can't remember now, but I may have been testing mesh mode in case
that makes a difference.

-- 
Bob Copeland %% https://bobcopeland.com/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
