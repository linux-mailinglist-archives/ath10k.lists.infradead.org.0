Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DFF1BE8C5
	for <lists+ath10k@lfdr.de>; Wed, 29 Apr 2020 22:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	Subject:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BCXIOgF5Cnm+ePzIXmDv31Xs2znYlrwmnU3W2AKUuGY=; b=K/RSAuEUycxp8NDXaaJhXPuni
	F+donJr8FwyTfzhaYi8kX8x7o3rBsAxP7gNjZSSxNOCT+MWTeYlyQvleAMfsAiJDcu3QNqxXLVgQX
	ouL+Qpv27lltnAhNxVQza6w+KaSs2WAHSmRwuPBezy7OEC2QSPCXIGaB3DDghpMs2jJ4IhpIfIkGu
	2artMlKGgh3b7X6LsPqgxku1d9/BYgCk54qejEYRHgMfN09nAzthzT6qN18Min0IlbYn+TpWPpbSt
	q3krcmbrGbLHPP7D+zotEvwdeT2xYLBzBeMnYPSJvR893rpP351WH50UeI7PoOCftWfog4Mq9fEO9
	DknT/W7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtTU-0006WM-6d; Wed, 29 Apr 2020 20:38:32 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtTQ-0006Vq-O4
 for ath10k@lists.infradead.org; Wed, 29 Apr 2020 20:38:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so1229421pjb.3
 for <ath10k@lists.infradead.org>; Wed, 29 Apr 2020 13:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=tw/OfRk+WrpABXR0r0i7TqpKsADo1sIWUTVH+hSZLfU=;
 b=kcQ1qFSolFGtcO1bTTSwEQ7+frZM2HBK+8w9fE4vi2ias2JU6VZ9VrjhK+t2MM//n4
 qinNFdBcpl9Yg+T6Dmk+A5svBWR3KN2e5iXSDn/boPuUw1S9QIpXInipgPXeSjYc+rmG
 l+ycINbBrs28rNVjVVUc+DPyEmId63Eiw+HCfaYkAyvzqE39XQ8DWMg1TdUbqOSRmUDA
 ccOq0pH/6KbQ6NNmsu9KCQFDa4gVczfCo9UuhWYCpFcyviOCXV95R7Ohec/3CAmpPQJ/
 OUpTre00qSLqtI2tXQ3+LYrtpnWF4yqeumBwbAsAatEyWbX/RDYTsbREmnBkUIaYMy/Z
 Nfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tw/OfRk+WrpABXR0r0i7TqpKsADo1sIWUTVH+hSZLfU=;
 b=VHPmfZiXwK/65f3zJtS0mauoEUZWbrvuGLO/o/zI6i4TP9fe2XDg8j1MLHrrx3gHU3
 3/WQTp7C1bgCsuc2S9TAdc1I2g8WfOr3fRzLDljWns9h1jkNRLqDnJm/bO/tbhL+xIFK
 qAQv0cerqVNM7oRgkLJwfs230AXbfZkJBOs6mHGlAjBIq7vjJFeTEFnIx+zq1yh2CGsV
 2+lMMU3PhAlHWcDTIh2lLS1LrtbQMLJmx/K5iOVVZdVFpXvpOEa7jO0PlRRe0i824ibO
 GDdJwolPLm48/jaMeXupt3aiCf6XuWjKQQOtUgVTlIO3tvNQhySaLedCY1Kl3Wj7Ao2X
 kqXw==
X-Gm-Message-State: AGi0PubnUQTs6Muf9Al54jalh4rFbyYrjSVnagJl6gRd4PULRnIxsWgz
 T/LjTIH+FEdJHlWbvXlJLE5vIweJSeU=
X-Google-Smtp-Source: APiQypLTa4s7FwAeNZG5XnW+RofkpRzCYWpSIotXEJEjgx7wxoC7LI0Hl8LSHmyFBcpJ+szFmqs4nw==
X-Received: by 2002:a17:902:403:: with SMTP id 3mr205973ple.102.1588192707914; 
 Wed, 29 Apr 2020 13:38:27 -0700 (PDT)
Received: from [10.211.55.7] ([112.209.193.0])
 by smtp.gmail.com with ESMTPSA id d203sm1724828pfd.79.2020.04.29.13.38.26
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 13:38:27 -0700 (PDT)
To: ath10k@lists.infradead.org
References: <20200312082047.487DAC433D2@smtp.codeaurora.org>
Subject: Re: Re: [PATCH] Allow qca988x family to support ack rssi of tx data
 packets.
From: John Deere <24601deerej@gmail.com>
Message-ID: <9827dda3-7a4a-5e10-071a-c7b4e4044572@gmail.com>
Date: Thu, 30 Apr 2020 04:38:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200312082047.487DAC433D2@smtp.codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_133828_781582_D3DC6AB7 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [24601deerej[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello,

 > Firmwares tested : 10.4-3.9.0.1-00036

The firmware above is unavailable anywhere.

This patch doesn't seem to work on the latest publicly available 
firmware, 10.2.4-1.0-00047.

Best regards,

John

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
