Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B2E70D7F
	for <lists+ath10k@lfdr.de>; Tue, 23 Jul 2019 01:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPk5fR4ls2uUXU0leootZNGgiZHBMvYWtzatx8wt854=; b=acEjYbCjuwmdSj
	FBPXfcYcsZudy11PR4hqtJrqI/x1NmfZMT2+ChV8HXLzocCo0+kwjxNz1aOkJjssnKhmMYpa5BHBk
	n+RGC13rIVSfzPi5Hl98hoa8eWEz0plTs13ZfQVExCO0Ls0O3ZCEnIry3iG9/fHegK2eace8NiDym
	rDOfDbF+RW+6sffVEcK1ZvIsarl7fMf2uE0o8N3uUxy114UEofD6jwuoDphFbXdeS1ByhxV8t+LbO
	LPG8YwL4hSi1LAX23QaDo370tFRQ8wLW7XFINOqNaYowJTIhklgvq9gLQyLAy7p3dahMIUGs21x9L
	YRY/C10u/y57XbWWONBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphv6-0001we-9f; Mon, 22 Jul 2019 23:40:40 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphux-0001wA-AS
 for ath10k@lists.infradead.org; Mon, 22 Jul 2019 23:40:32 +0000
Received: by mail-io1-f68.google.com with SMTP id q22so77864389iog.4
 for <ath10k@lists.infradead.org>; Mon, 22 Jul 2019 16:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5kbmdtyoIqqv6CwHcDBtSAQ4GBxL50XX+ghk096nEbg=;
 b=Nlz+BPLCXDWyT72WDwD5dDmbY2H6hk/bu9oQ6c04Ge+BV9CTU4SFrP8I5r5jWRnjqJ
 woSDLJc1QCtRkw9S9YORiEBYBz2iwRq6Qx8qCQNqqYkuXI9pMzgXK44nm6iESgT9GcA2
 EBX3nX5wf4I57IMQ2tnb9LZfm10DioP/1VskGdCQeQW2EgB4sRBpqkiB/Ei7+HTJgxZN
 RwmeWs3GsuzBMgXwNhRmITwCEql2M+4n0tb5K6gJ6m0KPcVv6IEbtiJnhdIqmIhhD5BP
 xfpSKAs25lzzfpX82SRbu6mVEvveOEC0xFxNBwh25m1oNkDClG1SouC+h94/TbyWzr+1
 /EqQ==
X-Gm-Message-State: APjAAAWioLNUP8dYY4Ho5DybPx7v8MM1DGtZ+nyvyAfDhVJcvjUJcuEf
 VD+KWVWd8XMYJo/TCSNVkA==
X-Google-Smtp-Source: APXvYqy62yyWeiDelOvsPn92v9VPMA8T01uWGBXpV51/F9WWhSRt1TyGUnsdb2HOGw4UOR09ewfkmA==
X-Received: by 2002:a5d:9711:: with SMTP id h17mr66640433iol.280.1563838830268; 
 Mon, 22 Jul 2019 16:40:30 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id j23sm33872892ioo.6.2019.07.22.16.40.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:40:29 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:40:28 -0600
From: Rob Herring <robh@kernel.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH 1/3] dt: bindings: update compatible dt properties for
 WCN3990 wifi node
Message-ID: <20190722234028.GA9986@bogus>
References: <20190703035711.25592-1-govinds@codeaurora.org>
 <20190703035711.25592-2-govinds@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703035711.25592-2-govinds@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_164031_374147_B502EDF8 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-msm@vger.kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed,  3 Jul 2019 09:27:09 +0530, Govind Singh wrote:
> update compatible dt properties for WCN3990 wifi node to be
> compatible across different MSM platforms.
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
