Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC48417D207
	for <lists+ath10k@lfdr.de>; Sun,  8 Mar 2020 07:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xepFbMo6BBoL6Ze+sxJgyz5PDE4dva54lCp8xN1pQ/I=; b=sTKrBS+29Nfu9p
	bdIDvbK1zbhJ1V9TkRgHkQIBrj9ZhxYjOaoYY+vOJ9MvFk62C5gk2nUvV2EaeR+yq9ZxVG9AU1b6r
	w84fzPe521XAHBPrzE+QuqVErs2AlspMHlkwKTofuc0mP3Sx7ppGbeENJbfOq8Zs8WVE/T6+UdVze
	BwgceycNv0BVWr5twoZjWixWryCcX4/bTiKSZS4xJHyexGyfRd22HNa3vDflNMovSMn0jtJkIPzxc
	VbM3bC2R+QQn/47Lc+l+xjTo74ls8KewDrsPBbuRIRGLPo56dfHEZFkW4g7urljXKTGbVFpi5NYk2
	ifvaNmu02ymtIcvdFCww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jApD7-0005DM-Qa; Sun, 08 Mar 2020 06:14:49 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jApD3-0005Co-F9
 for ath10k@lists.infradead.org; Sun, 08 Mar 2020 06:14:46 +0000
Received: by mail-vs1-xe29.google.com with SMTP id u24so4118663vso.11
 for <ath10k@lists.infradead.org>; Sat, 07 Mar 2020 22:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ZqeRJppyR4X7IWp+u7jYSDUzXVvmsDxdEb+Dt8/kZsE=;
 b=IxCr2m/pP4NZtELgoIXliDE+Isw4q7qF8vnw23ZTXaQ766RGKaivF5e+JwYtFo6ZLL
 uJKeilvNxX5z7rZBKrBOSRIESY3Iv1d3mkbZTkj/ffVgBW/kPx6yZKB9DukKhzGIfpsQ
 ncqVRiZd539TNYTUWXXWi/vO5DnwcBdVU4btcGUzxZ5ekRwy/IR6B3B5kuu/PXLZfq9o
 FEuK2FKyAyi3KtmB6fUyiN9CCLEtF07hC+UidKkwcJ2A308CrLyvs8zqq7Ho9PaHxzZ5
 2DbetxTyTnzare8dSqFbY2c3P58L35L3076D8xHMx2Cn6bUgC575rc5dF3czWXuJa+HC
 U4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ZqeRJppyR4X7IWp+u7jYSDUzXVvmsDxdEb+Dt8/kZsE=;
 b=j1+0xUH3m9S2x17CFA8OSrrsKnKXQ7jSdm9ScfIGtY+cqzhDCBjQ46wsLTjYNUal9c
 se6Egsvxhhokl0wPWZ5iKq4NW/juF45tot6MYSXt4iKTdw2xgEGE/1zoZhmJbs8CQCig
 PZbqqAhGTg6CJRrSnGmRJgCuPyfzO1/kpspNF6FcONP5TbSGKYnNVFDXOi0IzcWFywnG
 WbHOJ4DJAWxmkmeA4LD6DioS6c+Ye/79C63KHTr5yWnqPzbGH1jamOG1j9Dx6nJDRHOi
 WlERh0b+mHR6uymF0Jn6U/lYbZEZUPtwGoj0KZFpYcbvsjKMmPQw01UStIltfdVW+LMs
 zW8Q==
X-Gm-Message-State: ANhLgQ2eIzwC6SGnHE42d8+ke1NJX1lSvbGNd/P+hcOEwbGRl8VUwvBV
 ZA/uw/hnYyb63Cq2alURj28CPUQzPOuoi1GJ188=
X-Google-Smtp-Source: ADFU+vsvs7lLQ4pCULe2OAv2YUH+Mysp7mFJkaHZoQ38gSpYCUFphafOeF8dDt7iLefvOsfpWpQeqQmdc6EIjA+auc0=
X-Received: by 2002:a67:870b:: with SMTP id j11mr595823vsd.39.1583648083465;
 Sat, 07 Mar 2020 22:14:43 -0800 (PST)
MIME-Version: 1.0
From: Justin Capella <justincapella@gmail.com>
Date: Sat, 7 Mar 2020 22:16:19 -0800
Message-ID: <CAMrEMU-8A5scsr-sXdKYa9fO+AGVDWafMz2km5KnAu2R31H5rw@mail.gmail.com>
Subject: Re: ath10k: add QCA9377 sdio hw_param item
To: "erik.stromdahl@gmail.com" <erik.stromdahl@gmail.com>
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_221445_533336_1A1B00E6 
X-CRM114-Status: UNSURE (   2.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> >> +            .hw_ops = &qca6174_ops,
> >> +            .hw_clk = qca6174_clk,


Would it be worthwhile to refactor / rename these? I also recall there
being a qca6174_sdio_ops

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
