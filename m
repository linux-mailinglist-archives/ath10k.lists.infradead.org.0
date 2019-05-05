Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FAD14039
	for <lists+ath10k@lfdr.de>; Sun,  5 May 2019 16:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EmzrBIdhtB9dtymqtR2JV5vM6dhIMnJzWf6eOUXnZwg=; b=I/4IOZSiyI0ISc
	dypEVneWNNHVLszGzgthfxnut0ZMZUzODDytohKzuAaMAg9jGY1LSElvYflUV2x/zsKKrgmkEF34w
	aSFvD4Nt9lgVdDrdQnaILM1r5Ons71PeWxLeZsTFUU87eRfpZTGL9kfnIJ4FPrxHla+nEPX04/Bao
	WRTgQypr2FvThbszTl2BynS9ZmjTSMiQZ8avfhB8BoFvceX2tf4yzuT9k/HzKhdOVP0X1gFZhkE/X
	wJcrrjUr2gQHkQDeGQNqOAKmuhkhZ3dBQtbWhfPtjum1yqeuOke/Bjo8do/N+r9UFRB4q4GQICot+
	7sVscB6x4F7yOYbBtHuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNI2V-00014Z-C1; Sun, 05 May 2019 14:22:51 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNI2R-00014G-QH
 for ath10k@lists.infradead.org; Sun, 05 May 2019 14:22:49 +0000
Received: by mail-lj1-x232.google.com with SMTP id e18so8942156lja.5
 for <ath10k@lists.infradead.org>; Sun, 05 May 2019 07:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=a/kpj5AbPzXlg1QMNcIIy5gQViWApTGilGNkG/JYsOU=;
 b=oRgXDog2ES+wT1AEl6wt8PEDWXfp5OD3qvT5+k4zwYW3uL9pCVVdrzvGyyRJN8YmRw
 KI8rBjwWhaHa6xskdtBC6dYy1j22IqpSR7dltPQf5tHIByIXy996/2F+Gv99En3J9z1r
 ZdF84WBKP1/lIDcpUaOh0ThxD/lTJzTS9fcqQzZvF+37gXfwAKgU/y3gj16AZNFpzG/1
 zDmh4R9CzSvPFyHsxA/S2AVMYrqc+zGZyM6sHwLS7yaXdIRJuRV3rNOgvYjX/kJCvR8N
 3Hrha6Cd38wX/Ode2LNR+NkqJPrV9WFbHjjZBhsfrXdP+yaGrEzlRL5fs+ojsLAWt4D7
 CicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=a/kpj5AbPzXlg1QMNcIIy5gQViWApTGilGNkG/JYsOU=;
 b=arSZjSAs3ZyEDhFg907XGAoCvwcRkk+Nc+mjQmJvz5OtmI/T8zQWKtL4+3YGwUF4AC
 Heam2etjiui/Vq8ErrOBCuTAzA8FScvUUwSkARdxksK2EdPyHRgL3PuYoTw3QUBMhFUx
 WlImUxx83gFtuyF6S7ycObUr5AVEhd6H0FeWKKFv6tqFXPsAQAcdakoqRL+IcphX56jy
 G29u//acyctpliDvX9NbC3oylLjyxJ7pD0GBWs6aYa+lgJbfvyjEyQ7DYxa1MRdAAYsY
 WHRi9TGOl2LYO6o5nV0GOeueoUn4Wi8Nce9zhgNjkZgnBLkvbfr9n/rDLNVNMuqNBJ/T
 /Jug==
X-Gm-Message-State: APjAAAWvD6x/gZLV2FQ+a8pZGxNkEH7Jl5rg67QzryIHnF9QFwm8lmC7
 1psG3tsYDvjFYPzBv1owqneUe3kq
X-Google-Smtp-Source: APXvYqx2DMmgrQSmv6sDBHzBs7/n9fGuMdZ0/8xOeZSmQn9+881nQGu6f65VtroEY68HQ+NX9WZpmg==
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr10750574ljm.62.1557066163781; 
 Sun, 05 May 2019 07:22:43 -0700 (PDT)
Received: from [192.168.1.244] (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id d22sm1547570lfc.80.2019.05.05.07.22.42
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 07:22:43 -0700 (PDT)
From: Erik Stromdahl <erik.stromdahl@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>, wgong@codeaurora.org,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: ath10k: Two missing sdio patches
Message-ID: <1d5b4f00-2da8-b435-9122-07f93890dda9@gmail.com>
Date: Sun, 5 May 2019 16:22:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_072247_855529_D8D2D434 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hej Kalle, Wen,

I see there are lots of SDIO patches coming in to the mailing ath10k list, great!

I while back I submitted two patches that adds an inline wrapper for an htt op.

patchwork:
https://patchwork.kernel.org/project/linux-wireless/list/?series=97099

Without these patches I get a panic due to calling a NULL pointer callback
with SDIO.

It is the htt->tx_ops->htt_h2t_aggr_cfg_msg() in ath10k_htt_setup() that causes the panic.

Kalle:
I notice that you don't have these patches in your pending-sdio-usb branch.

Wen:
Do you have any other patch that fixes this issue (I can't see how it can work without
these patches unless you have some other fix)?

--
Erik

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
