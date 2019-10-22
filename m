Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17992E0A5E
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 19:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AM5t4jFoXWe4SWV0IOV/SRYhgHpTuJ3UQU1Mkr8MbTE=; b=GiOb0rg7/yS3u9EZE9pDQfpCR
	HuF2qTZzlVpCG1UqOJhVHoSoHhufCs20FDcKDLbzNZe6oVkWAxW62BmjWGBZGTMQm9l4aAM3kDup5
	fF9MQvfGo9IZx0/qb6OWEivVl54z3hfQ/lOBxH8mQm7SYaNjgL/PcX8zNDK6lA2PFLh6tlXbMCTuU
	pnLvWy/llveE8DqgYLFnDN7MRHRidOtD2Ap+aOLBUOAGGSvhnGeEvuGtd9UaqMjNNcoeqMuGm4m7B
	3tQU8SpKOG1YuK9DGIG6W2qnCJDqBxezJ8AaNzoDvmBj3KcvJ3w1qY1Wevm+7LP1Eivw/PrdBKnog
	/aRlim4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxmK-0007MP-0A; Tue, 22 Oct 2019 17:17:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxmG-0007LH-D0
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 17:17:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id f14so10317501pgi.9
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 10:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=GHvPOx7Y78ZeJ1Yw7axrjUXLhpN94yYCRzl4dJi2nWk=;
 b=GWDcpvx1auFIYbVdNJw/pgsS8e50PuTC5qQeUDHNMtTqYF4Fv6cxLdYzH++VXfVIbn
 soNeQcRZUdPA5eLLQaUzK9KWs5Q0cJ38puY+sRZHWW9ORrwQZ2A7syR3PAX8ZjI71Ft/
 AH5ieJ6+gf8vayXNyG3DJrDuUbWxQTtIA8P7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GHvPOx7Y78ZeJ1Yw7axrjUXLhpN94yYCRzl4dJi2nWk=;
 b=F4Htux2tDt6SPY9NzrQ9f26szwJO7J9A8GKlkReaUc1PLunS5c4Iw1VkQeDr0vRhxz
 mr3qHsInkaU/Tp1dttYYHJGSBFDdLdfrJJTj2yJmysagumM96p3lY69EIe/VcIdGA3eN
 sKLmT6m6fx+Cp2eEEJOaZzK3zyOA//FWEqtlIzjIrz9dex9lbZL2K7daL1eYZX5vU8s7
 SP7FvZEjeuMxAzYDRrsll/XJjVa2M9ERpk/pKfpFQT5toULZqZblV2Ltqa4N50LD8YEy
 nn9Zq66unTHy8FSRrqKk8FzSD40SlOeYXdz0NpCkU04ExfMTt4UauOUAhnyJBklILjtS
 o+Dw==
X-Gm-Message-State: APjAAAUX8ZtfLnFiekRgFelxZkJAPgm9kt3XDwp5emvUOkEpqRgwptHP
 XfEftu5uDXlfifm1Bxx1ey6FSQ==
X-Google-Smtp-Source: APXvYqwJqI342gzP2JTytRol266Tw3+AT8qsdYN7EYE+D2Ueg/APyfQxpWsXua5mUhI9fzRUZtUgeA==
X-Received: by 2002:a63:f750:: with SMTP id f16mr4977771pgk.206.1571764618980; 
 Tue, 22 Oct 2019 10:16:58 -0700 (PDT)
Received: from [10.0.2.15] (eero.static.monkeybrains.net. [199.116.72.162])
 by smtp.gmail.com with ESMTPSA id u3sm18761515pfn.134.2019.10.22.10.16.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 10:16:57 -0700 (PDT)
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: Zhi Chen <zhichen@codeaurora.org>, ath10k@lists.infradead.org
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
Date: Tue, 22 Oct 2019 10:16:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_101700_489311_1851B953 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 10/22/19 1:57 AM, Zhi Chen wrote:
> This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
> PCIe hung issue was observed on multiple platforms. The issue was reproduced
> when DUT was configured as AP and associated with 50+ STAs.
>
> With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
> issue happened. It broke PCIe spec and caused PCIe stuck.

How can you say value 0 (I believe it's 64 bytes) DMA burst size causes 
the symptom and 1 fixes it?

Peter


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
