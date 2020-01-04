Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD0812FFE1
	for <lists+ath10k@lfdr.de>; Sat,  4 Jan 2020 02:00:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gB6i1UPAaDYGiSWWcZ3kv97ZUDBXSbWZbLvelHUAQpM=; b=O+mdo17R98BNbZ
	6bvBUErYtfTJDzT6Tro+YtGYlWj2qape0jtHBzguPQnHwXIJrpWmjKdbb5RQSwL0EVvaw4Xeez9xJ
	KRoy0tQc6twJ60A5OAiBI9secucmDQm3zbMRHuwhYnc6UBFqwEltBAmmXLB6OfHqt/xtO1iJhh/VK
	KiGUMdjwpUiaT4a7XzPlgRuHsKJz9FtnCnpiErV8BEK7sr31N1Yb0azLEr7ltsc3HSrGM42d93Wsg
	RAixFV9rm/ZyNQZw+jyBdkGqrkr37q9Qp1TFS+YhMxsB/DEdPoECVXKXW5wNgdeloIUJc1WM6IpYI
	36TaphVmuxq9lXDBj/vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXnV-0004sa-30; Sat, 04 Jan 2020 01:00:09 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXnP-0004KN-3S
 for ath10k@lists.infradead.org; Sat, 04 Jan 2020 01:00:04 +0000
Received: by mail-il1-f193.google.com with SMTP id g12so38070079ild.2
 for <ath10k@lists.infradead.org>; Fri, 03 Jan 2020 17:00:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I+/EbHTtG3XdToYbfWwK52tIPgUdmxs5X56AS9/kYW4=;
 b=IREe0Cpcyb7gstDXQ8RV5dMblZr8C+kRjS3gIiA0RI0SdkZGP0ijykNAqA1+Hs7lyh
 CcXScrsaKsXFA18X+yY3nG2uKt6hhehj3uzopL+st/E08KglYY034OfCM3Q9P64svNLH
 tNlnlb13Ujm/HN2x3ltZJ5NX8YBa/YQelCMXP4Gnt+B+xrILSQik8nC9T2KFgjcW/0LP
 mFtDHwP8CTwuWUay5DdAzFfwwJG7Gc9TaUR/6YVgdlfcdqe8LQxAZc6N+1JztYle9vL1
 XIICQGlkQXlrAZWz9b8X1kzrt3xHToi4evOnhOFqx2FewZneJlaANR98kIFH2OCDEfvs
 lm9Q==
X-Gm-Message-State: APjAAAUbwBvfzVufs+T34E5YEWrj2aMpiXBL486QbneuTKVgOwoO+2B0
 fH3POG68tehxLAmdya2d7VUa+Pw=
X-Google-Smtp-Source: APXvYqxXrVnvswqLT/hg9q2NwsJtb6d4w6lBXN8fiGRYYF19pKnF5CJ2zZzdcjcAtdS/MXsakT5cUA==
X-Received: by 2002:a92:485a:: with SMTP id v87mr75411573ila.128.1578099601827; 
 Fri, 03 Jan 2020 17:00:01 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id o83sm21501277ild.13.2020.01.03.17.00.00
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 17:00:01 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:59:59 -0700
Date: Fri, 3 Jan 2020 17:59:59 -0700
From: Rob Herring <robh@kernel.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH v3 1/2] dt: bindings: add dt entry flag to skip SCM call
 for msa region
Message-ID: <20200104005959.GA15965@bogus>
References: <20200103134414.15457-1-govinds@codeaurora.org>
 <20200103134414.15457-2-govinds@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103134414.15457-2-govinds@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_170003_714759_22909080 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: robh@kernel.org, Govind Singh <govinds@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri,  3 Jan 2020 19:14:13 +0530, Govind Singh wrote:
> Add boolean context flag to disable SCM call for statically
> mapped msa region.
> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
