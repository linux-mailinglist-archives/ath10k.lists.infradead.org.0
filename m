Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF831264AC
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 15:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AkV4awZzNzhe9/wY4Klr9VWojdiGMBW1Ie2sPSFPfbQ=; b=JTscYoeNG29nDGMycYZyzxcjS
	8/5djd38rBKNKnVrMsK4hzPh1WiSn+wO6/ZNCfL3fKvIJagA8iK9JyssbUwKcFmffeur+iECLoB+u
	a6KWFg//S7PwLc6BywvDrw8wrljiQQyC35XELCQ3j2b0vX2zb7MRUslPr2ELX2L8KPuNUC7HedBel
	QpS6cwUYRxN5DUV6iY/TvAeLjeYRPKUIyAHvqYX7sBhmy1moSFtpvqtjOm2+4pP2y9yIy+1mswNSc
	rw+4wPjkF0BmxU9Wy2VNTZctLP2fQlie5qxB4TUx4UxXLxnSdbIc7eA3YwVyLqroHRG/SPePPcjuV
	9dRQ08P4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwnt-0001tr-Km; Thu, 19 Dec 2019 14:29:25 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwnp-0001tY-DD
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 14:29:22 +0000
Received: by mail-ed1-x541.google.com with SMTP id dc19so5040934edb.10
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 06:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UhFjAFltYCyzRH3ujc/w8dyQT7TRLcLqXgMDLirCbrc=;
 b=APOsFYGFcBfcpbcrFigIoDmZjytG4oL3oRM4CRE/+k2mKUZBlfwaqB1LGO7oRSOU/G
 580xwWim1HfpGSbZ5zu8HHSkkM9qSKXn8kRHPnX7NJ2FIZgVwj7A/qwoAmaw3u0NhjzA
 i75kxxqtfwVMF1w24L+WZpjHGTvFLQajtyzdSQ3RS5OQL6+W6mmdDIVjozZaP06WGdAr
 U+v2xiUeEEJ1ZRRnZRSeaQAzGn/Ys91pcnwPW57NsUDyHQ8Wyg6MCqs58sPy1qrHIWeB
 1hYyECOPt3rLLS4Zblzi4XVqrxJ500cYc0pv83Y/d6RuIpjgtvwmER42GvBl7qxVE6zQ
 zmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UhFjAFltYCyzRH3ujc/w8dyQT7TRLcLqXgMDLirCbrc=;
 b=R+6cKMyjVPPBRT8ESy+Id6qnk8OLRcH3xujSk+85Svbo5Ep7GQisHhjl6y4Eja6CYG
 c6okd9nXIVU6PtLeWdGXjv9M/QykaIrT0bYjmiFuKguGhwDDbpa9QIpqVfbX9Ih7YXgZ
 zeWRQ2bxVnqVQFSqCp4pCdWIk82lgzfKspV8GECoKn6CDlZ8btUH+HTlTm+rkVdRDgZX
 m0l3zl31mAnqL4rvjwpatbU2n9K2q+xYXR+DKbjpt5x0ZqzQYSlxyNACzn/jmFJZpBBl
 H/aAvxK+8Nk5NvZKFxRogWAIcMH1pAIMiDbzHCjhcag+IDP3QwtnaaDUzVmwvjfIe8xV
 CY9g==
X-Gm-Message-State: APjAAAVGDMqyAUxeMqMGMZpkZKwz1txs1uZKgd81jy46IqrGpX3azfRM
 hZpUjNv4RWmkrcKxXRaMnFKwqg==
X-Google-Smtp-Source: APXvYqyZPWOkOSnAhj5sr6bTr+m3mp50ealr0bgqj0CgCijIhawAly+6PZWhzDUUsYa95M3r/ZNm7g==
X-Received: by 2002:a50:b8e2:: with SMTP id l89mr9486539ede.245.1576765760010; 
 Thu, 19 Dec 2019 06:29:20 -0800 (PST)
Received: from [192.168.0.38] ([176.61.57.127])
 by smtp.gmail.com with ESMTPSA id j17sm390080ejf.83.2019.12.19.06.29.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 06:29:19 -0800 (PST)
Subject: Re: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG
 when safe
To: Kalle Valo <kvalo@codeaurora.org>
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
 <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
 <87woas5slt.fsf@kamboji.qca.qualcomm.com>
 <38bf1f75-0554-920a-0f29-354e70cfc077@linaro.org>
 <87sglg5rb0.fsf@kamboji.qca.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <4a8b7913-c9b9-dd67-124d-b4f71747c849@linaro.org>
Date: Thu, 19 Dec 2019 14:29:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <87sglg5rb0.fsf@kamboji.qca.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_062921_581047_AAB94DA5 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: akolli@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 19/12/2019 14:21, Kalle Valo wrote:
> 'dmesg | grep ath10k' should show it.


[    6.579772] ath10k_pci 0000:01:00.0: firmware ver 10.4-3.9.0.2-00044 
api 5 features 
no-p2p,mfp,peer-flow-ctrl,btcoex-param,allows-mesh-bcast,no-ps crc32 
c3e1b393


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
