Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063C6D466F
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 19:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/75GV85+23r+MGyz8bjn3EK6VzF1eOHt4rR6nyArkg=; b=A6Ct1osaNl4ASL
	om/XcM/J+/g7X1YRYdI84DfNIcXDfa8Uqj0Ecnpv6xU+pYHGFJr2P4x1uAI6zCkABPdo03d9CBcQR
	O38krfvfE7xL93QembOZhG2tE7FgozgkOgrvoXIy3r2VUAoSR8Khd2wZQrz0l+gskkkDj4/XIblQC
	pKg+pOedMqbVYMmMUebFAZc1CHhSgD4gW+aBjNlNmLIEUpBCGSajQjsqmSJLowE2YrOtl+uOVLxy5
	wt9WphcKNGCP/ubXXY3D90g9iDRKhUTdb1CQhUHzWRvHrvnilg0AbwNn6kx70hF2YvXugW/DtSeB5
	SFLg6ZTZ5yhA2YViyB0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyXF-00013X-Dv; Fri, 11 Oct 2019 17:17:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyXB-00012g-9T
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 17:16:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so6468492pfr.3
 for <ath10k@lists.infradead.org>; Fri, 11 Oct 2019 10:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mBriml3iAfauQRKfpDbQ5vaiaD735vODzhiE9KF4g38=;
 b=Ub4xqxEXKetk/JV1WBUC4NL36KIS0kftpqOkawvxIYToHs/vjFe/4YqmK1OFX4mwVo
 5WZGZt2rLF7WoEv9/rKk1L2lAypfxdkDNZURmCUjqBjrGvaf52hFZtm5/mc/Gpr24Pgw
 RhprVxdJwYCDhjbCwracqpkAlx4SYSzsTFq0uOo8Mja/+E6CKL3VmuakLFVdm+41vozu
 3e5tO9+Mrv5hI/8so5sl5ibpgYP8qMaVPtxkyWu4DChlDYcfK35HC8Gf00Rx895FuPSu
 pzyx+lMVujTDx3QDdp0PDixeN3TbKkTqELkl1fY2VXxOXdVnm/4W91qsA2QUz7mI+cOI
 oE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mBriml3iAfauQRKfpDbQ5vaiaD735vODzhiE9KF4g38=;
 b=Eyg0a0CoJYnGLlUaFyo6ryjC3przGEQRFv04L5FCjM0FulpSCRkLyFWm4PuQF1oVIv
 +Rm8aNp8Cvu/kaz7j5zLrTNHPWOOl8NCoYTMznMyq3TKr1rZ6GUhxfRbIFE41iWL0jaP
 XU76casDrKNwP/IRnXgVxS20NRlCqYzgUGHwMNu48zzcyjG9Jk9CgqW4jLEFnOtpWtLp
 JJ/zmCPDRTFR4kJtEt8lQp0zcl6OO0zr6mnSjdiMQ1BG7PllmJOzwfiH3eNskgjqEZPo
 NpH4VB46PDv6i4jnw+YSzV5l7rbI/usysJqy5mvED10Z6IhUXL0GB/9Xf+s6TZAMNDdj
 xKKw==
X-Gm-Message-State: APjAAAXAfb8Ox5mAc4ckvK/IY7pHOqitrMXgrmXfpt7hLwQVK9YNm3Fs
 dRWpqrbY+5Pj7qZIZU6NAkE3IrtLuCE=
X-Google-Smtp-Source: APXvYqw5pokzdLc2n6Op+HT2ZfXwi+YPWVWQFGtUwfC3RFA+PjDKcolG6VaPUhE98V4ZPamoeTyVTw==
X-Received: by 2002:a62:870c:: with SMTP id i12mr17524206pfe.247.1570814215586; 
 Fri, 11 Oct 2019 10:16:55 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w134sm9658594pfd.4.2019.10.11.10.16.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:16:54 -0700 (PDT)
Date: Fri, 11 Oct 2019 10:16:52 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: Correct error check of dma_map_single()
Message-ID: <20191011171652.GF571@minitux>
References: <20191010162653.141303-1-bjorn.andersson@linaro.org>
 <20191011115732.044BF60BE8@smtp.codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011115732.044BF60BE8@smtp.codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_101657_336223_69FF17BF 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 ath10k@lists.infradead.org, Niklas Cassel <niklas.cassel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri 11 Oct 04:57 PDT 2019, Kalle Valo wrote:

> Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
> 
> > The return value of dma_map_single() should be checked for errors using
> > dma_mapping_error(), rather than testing for NULL. Correct this.
> > 
> > Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> > Cc: stable@vger.kernel.org
> > Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Did this fix any real bug? Or is this just something found during code review?
> 

CONFIG_DMA_API_DEBUG screamed at us for calling dma_unmap_single()
without ever having called dma_mapping_error() on the return value.

But Govind just pointed out to me that I hastily missed the fact that
this code path leaks the dequeued skb. So I'll respin the patch to fix
both issues at once.

Regards,
Bjorn

> -- 
> https://patchwork.kernel.org/patch/11183923/
> 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
