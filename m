Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6771BC430
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 17:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRp25PngYdE2dF9aOHXZoVSQO/B69xNMSyZxAwwVBhQ=; b=g6rstc3bMfCdxI
	KCFCVIqPxEptI1bBZufHPKdHkzYjkKT3Sf6ffEqKWgE0zp6Qq7SFitjaJ9opHoBol+XZpr9jZ5s3j
	Z09lYRtadvxvacRIDhTG6X3638mHZmBv9n+4Kwi+MHA0uGC+GDFkcHDOTuPem2J5Q990Xp+pgMFLV
	JLfcsIu984QBIedUTHPCHgtabK7bXnp/nV/4swA7uWZITMVcKQr1OIyjPoG+w0+wDYhuipLaa7RXV
	AVhSOAOolJNOHGKNBRu8lp0tMoEW9uboS/xB2jJkvS08laR4O9TaySRiQBobOfvGaHYJWZvelXgpc
	KSZOV7cha+Mp6pSEjqwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSZr-00039V-1h; Tue, 28 Apr 2020 15:55:19 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSZo-000393-5f
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 15:55:17 +0000
Received: by mail-ot1-f67.google.com with SMTP id 72so33466187otu.1
 for <ath10k@lists.infradead.org>; Tue, 28 Apr 2020 08:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E/TydElCkArBzhog9A76R0UknEmptmdX1tix+Usu5wU=;
 b=M4b6kD2LrN0BPLEZDP0SUU8zH5BmzX14DZ8LNDKgk+uLdcgLghZUGebJ3KsvaXNFtk
 xPsBw3tO9sz8Ur85xXw+Ny/45yZzvo7y7lOYvEYYfakiIaUpU+4TVHJWHETuq7VuLKYR
 Kno7rjIWcgLaw0CbbULfXKr49Z4d4mgk7DLShxCbr64HuriVdppV4qGpb3axdsA/PYzZ
 FTPEgUTceuRWWZwjodrSqSuOb66jAEqIsgzrJCIpMWZaSKgdOOx5Z4V5ZalEzHJ+0Tbq
 ZnQN3r6KosKAG8LPH7gEPp45rwIX9t1ZlHQRNiOJM8I16Uk5mYirOpWsBYjTPe9gffI9
 iN2A==
X-Gm-Message-State: AGi0PualW4r/Ez6B1xE8kI2Vkr6vdO7Um1LHVMMo9yNRE0fY0m4UEKVh
 s9N5e/RQrsUUPQdWLI71xA==
X-Google-Smtp-Source: APiQypLk5ukhxmRNHN9chkS+4R+a6N/pjUn+lFfl6zwAhvJu+8TRSrJ7WgfuuegVBXhgFeZ9TxMPWQ==
X-Received: by 2002:a9d:37a2:: with SMTP id x31mr24139971otb.52.1588089315214; 
 Tue, 28 Apr 2020 08:55:15 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x82sm4935915oig.55.2020.04.28.08.55.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:55:14 -0700 (PDT)
Received: (nullmailer pid 29682 invoked by uid 1000);
 Tue, 28 Apr 2020 15:55:13 -0000
Date: Tue, 28 Apr 2020 10:55:13 -0500
From: Rob Herring <robh@kernel.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: ath10k: Add wifi-firmware subnode
 for wifi node
Message-ID: <20200428155513.GA29618@bogus>
References: <1586971906-20985-1-git-send-email-pillair@codeaurora.org>
 <1586971906-20985-2-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586971906-20985-2-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_085516_211501_F1700068 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, devicetree@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 23:01:44 +0530, Rakesh Pillai wrote:
> Add a wifi-firmware subnode for the wifi node.
> This wifi-firmware subnode is needed for the
> targets which do not support TrustZone.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt       | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
