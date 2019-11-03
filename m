Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8B9ED3B6
	for <lists+ath10k@lfdr.de>; Sun,  3 Nov 2019 16:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVai8SBLIGKkj3dpSS7MqKMONjIB0jSWAoOGIit4RvU=; b=THGssj38Np+B8g
	pFZKVgmSgX89zf99JHZ4Fo64GZQieBNnFiyP5gOB/cWz48qEHk24pV6r38IN3ecm51dEm35GmSDrA
	Fd04xY2QK5//pymFPZB+q49qymH59UiTj1wwu6Dek5Qn09EweRQpTOAa7XRtFkEy7bjTG/Gv86ZCA
	0quj+qI6dBASsEMEhpC8MXWwNoPBeTTFmE/ENF7y3gBzXSa8fw0Nw1dEgDPq+CdcgKfpVFUrj7POf
	DX1KBeF5TzOtQ9d7frPzvl8p2afl7jL93I8HsdZ+gs1yePBrUKDtCDCiJinucg6dOPaIf6xDLpOgl
	JPYF9XpEambFOuSK14JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRHvH-00059p-OH; Sun, 03 Nov 2019 15:36:11 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRHvC-00059F-Rq
 for ath10k@lists.infradead.org; Sun, 03 Nov 2019 15:36:09 +0000
Received: by mail-oi1-x241.google.com with SMTP id l202so12069794oig.1
 for <ath10k@lists.infradead.org>; Sun, 03 Nov 2019 07:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=orWvojcokT0GElJ+Jy5svBGq0U6iJmEd1nn+wFy1Qm4=;
 b=gzmg8ZplSKhdnNMMMEa4Ry5XC6Fg/RqZo57eP7NLbZXeNXXq34JCO/1StMS/XE0qpn
 M+xKzgImWOS3mDZ8YWnDPQW+Yu+wDu1H5ayCA7OYSjfbbHb6M4PcHQO1Voy8c8eW8eMt
 jbY5cJbRmsJ6PPbFAiIgmjZNTckX59wDa9DHQ6S1sqvlxUE0vby8XQsOLckdHzWGvx7L
 SKT1nZGzU57wSkvB6BHLWNB/Ym3Ybd7OKmGWUC1UCnVgIN6f/NtXHU95cNBfgsNhpbPk
 grwVP1fqbHANBAfV/HgP0+ZqBuwxpXv/imMCqoLLXv0oX+Jnlf0lxMwKfClI7Ick0qhn
 vl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=orWvojcokT0GElJ+Jy5svBGq0U6iJmEd1nn+wFy1Qm4=;
 b=k+LYJWGTZ2WQxlaO5+Wc2tZpvbPVEeNFYnWwCxMtZA8pVAfTrsM8ZniweYY68F1WSp
 s8dx8cErpz75JZYx3wYSHQUGkQVY6KuNaS+xk+MqQ3eh7ubL+uS1jl/X6wUeTJHx+yLt
 k1bR8VAwDhjCemsFxkXxniTGEGqu9Moi/u7Aq4gsHXstRMlHeOTtXnHZV53NVPXR1lYC
 8828Im3I20mRcMKh6WQyn0VyJ1M2McQzSdvegDH4d6bjL/J+tx/blVGOXtAWUIiSrthy
 g+f/8Tee8OBShTjSXAhPkH/wbMHYMmWy3bldvyZHzptqZLXtXg3+ivsKoJ6lSko8u8/S
 gfuw==
X-Gm-Message-State: APjAAAVacEJV2j8Ccwf/FzegwpbCXIB8T/BGSyDM+J2d78U3ke+xuZ/2
 Nuo5oHOcQlZsdN+EVtGV73v9UMPaUujBgyFQ3FYyBM20
X-Google-Smtp-Source: APXvYqyzCjS3eSbQS7p5mE1O0SYjXYtqs7nxGU+tFT8CGvMUUGQQTi26psof/asLi2c6bBtYG4HImkcIf9Jf0Au5CBU=
X-Received: by 2002:a54:448b:: with SMTP id v11mr11164112oiv.155.1572795365033; 
 Sun, 03 Nov 2019 07:36:05 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Sun, 3 Nov 2019 07:36:03 -0800 (PST)
In-Reply-To: <8c6d531f6474faf4df55f90185466774@codeaurora.org>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
 <8c6d531f6474faf4df55f90185466774@codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 3 Nov 2019 16:36:03 +0100
Message-ID: <CAKR_QV+Qh_ErYduYoD8=u_i-y=cbKSJkkajtKxsJ5ML8-Z79EQ@mail.gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: zhichen@codeaurora.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_073606_924999_785CB18E 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, Peter Oh <peter.oh@eero.com>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 30/10/2019, zhichen@codeaurora.org <zhichen@codeaurora.org> wrote:
> On 2019-10-23 01:16, Peter Oh wrote:
>>
>> How can you say value 0 (I believe it's 64 bytes) DMA burst size
>> causes the symptom and 1 fixes it?
>>
>> Peter
>
> Confirmed from HW team that the configuration controls AXI burst size of
> the RD/WR access to the HOST MEM.
> 0-	No split , RAW read/write transfer size from MAC is put out on bus as
> burst length.
> 1-	Split at 256 byte boundary
> 2,3- Reserved
>
> That's why we see issue with value 0.
>
> Zhi
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k
>

is this true for both wave1 and wave2 ? at least per this commit
message: ath10k: Fix DMA burst size
it's suppose to be:

0 - 128B max (not sure if this means 128B static, or any size between 0 and 128)
1 - 256B

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
