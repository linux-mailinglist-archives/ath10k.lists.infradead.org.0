Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94601289C
	for <lists+ath10k@lfdr.de>; Fri,  3 May 2019 09:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ymn6K4pqUOYQgSeWAgmQCZ66zg+gM8AsggfkarNYJM=; b=dlRxzCC1uL2XJZ
	N3/ZAf4VO9LL9Xeg/Rq1jVOccfk8jqKl3drVGWc3HzeoRFbpIAUiAIDJTNcjrGfKWW+f4uZbEu+hZ
	1nt5Y6BkCLmToTIc017PXH0HWvuPKuXKOapfx3O4yj6bydeKdb+OAfueVvqp8SuovAHtpHtOBLjhf
	sfrQy9nLf3qTLuVbusDMRcCqhZypHo2ZpMXNgEeYMgTH+W1fjggUeIWWoFXo8N5H88GqHcWb/cuFr
	gYH56hg5dxJUC5sghXemCJ/B2Tp6TQciPvng+XcTixpwALSr1KVYXFXZErRg9VzHTWajPgSvePo86
	6+7GK2GUu3y0zMeX9xQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSTx-0002kZ-Cb; Fri, 03 May 2019 07:19:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSTu-0002k8-7d
 for ath10k@lists.infradead.org; Fri, 03 May 2019 07:19:43 +0000
Received: by mail-qt1-x842.google.com with SMTP id t1so4911176qtc.12
 for <ath10k@lists.infradead.org>; Fri, 03 May 2019 00:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QM7AfUqv9k9zKnTHqiBijx2lB5XBzmJgjDSzIJSvgaw=;
 b=MLCXFbwWfEBOnWzPhKPriCy8m99/zPW868BxyTQr4D8AYeLqR6iAY+s+wdaHzTErN7
 FpdQHDdfOYHk+tiBeBh9oaehLhFKqyVcvYNCN9d026luHVVd9pOBoGcmhHaYfhmmCvWF
 yl4zqXNC8N3X25lUERnwdxELwPGRvKn5jEazE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QM7AfUqv9k9zKnTHqiBijx2lB5XBzmJgjDSzIJSvgaw=;
 b=Fvbdr72lOujzlsaBUZ1uOOMYhs/B0yRFFyg11Y3LMHVscGi1rIgv5m7moaslDXHTtR
 3u8XkA0DXlPloKc5R0EdfoF8WQkkVZoVWUVBGJVIcFOMdLmvsvQluHCfyXaKoTe+3ubB
 2HWG40g77t+yZsKIDUaNR2yfWkvnAVxvgtTqkx+ZZGkPT063rqyfz1dt5Y7+JsJA5EdQ
 WuHZLgr9NH1B2QpOAcqnZqF0YpSlrYhOu6qTFHHB8EiXfwxluTUBJ4LO//tn1ANrw3vC
 0joosyyJMN71hbK8SootG3RVUglEL0UsmpmEhjvd4LkT5jTwQ9VNp1l442+uKihlHPfj
 vRlw==
X-Gm-Message-State: APjAAAVqVIB0olcNgA6qNrHHtVd0Bs2wM+AtOHhoDoKWpBxLfj1BTABc
 /RFkv8NG1B1T6tSoGplhTbXOMIuvQH8=
X-Google-Smtp-Source: APXvYqzuHx7JivCWrvizTPWUDsGH2WMDYrqXIkU15A1UU74XtITLEkXPTUOgNeo/421KC72igcge5Q==
X-Received: by 2002:a0c:b523:: with SMTP id d35mr6964271qve.104.1556867979600; 
 Fri, 03 May 2019 00:19:39 -0700 (PDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com.
 [209.85.160.175])
 by smtp.gmail.com with ESMTPSA id 8sm923939qtr.32.2019.05.03.00.19.38
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 00:19:38 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id y42so5624837qtk.6
 for <ath10k@lists.infradead.org>; Fri, 03 May 2019 00:19:38 -0700 (PDT)
X-Received: by 2002:ac8:25a5:: with SMTP id e34mr7199582qte.346.1556867978193; 
 Fri, 03 May 2019 00:19:38 -0700 (PDT)
MIME-Version: 1.0
References: <1556536632-19433-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1556536632-19433-1-git-send-email-wgong@codeaurora.org>
From: Claire Chang <tientzu@chromium.org>
Date: Fri, 3 May 2019 15:19:27 +0800
X-Gmail-Original-Message-ID: <CALiNf2-WUfiFeV5QDGRhjRh7A6J-y5xihN5M3RgBqdiiFKqAiw@mail.gmail.com>
Message-ID: <CALiNf2-WUfiFeV5QDGRhjRh7A6J-y5xihN5M3RgBqdiiFKqAiw@mail.gmail.com>
Subject: Re: [PATCH v2] ath10k: add peer id check in ath10k_peer_find_by_id
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_001942_275972_8FAEFEEB 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> Signed-off-by: Wen Gong <wgong@codeaurora.org>
Tested-by: Claire Chang <tientzu@chromium.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
