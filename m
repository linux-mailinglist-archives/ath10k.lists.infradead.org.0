Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8481264FA
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 15:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yLMPOGE0xhfb8CAHB26pRIXKoEGwpN5934HOIrd5Nk=; b=DRfik5AKGaOHDx
	KTrHfWAf4U06PkMm83FH7tA3WhtHkQmpY6pDJYzgzl2l4pqpL5VqD1oMQogCmF5wWPZogIajyh5aU
	RMOsYrYXxIOc7tDo09Cpb2JiTTUc7b+5FRQi457a14a6SH0GHYTZ+f9EDrGfQAbDQa5FYQ21Hirgt
	aXz8WvANw2zME+TVyVqb1o1jggRJg8ED//60wIItnOg8jr7UZhTw9hLAPo6iRh+nAAQNVSD5hcbg7
	1uMFHxCUEP3gI60/MqS/QMgYwMh3SkLgMoVyOix30fF1lnyR6PBEMbu01xEQGrrPMt39VWyiUL7RC
	AnKbQC8KrON6sB8bUolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwxl-0007GI-9j; Thu, 19 Dec 2019 14:39:37 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwxh-0007G1-Q9
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 14:39:34 +0000
Received: by mail-ot1-x342.google.com with SMTP id b18so7504261otp.0
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 06:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=oFOf+MWDFUmc1sY/Zs1YC5RTRUuqHQJ3teYVmEjeOEk=;
 b=TcAXceDg+FJbb4u0xRlVaA0he7AjjE1+5vDSYAOP6ejWO7reVxKZrniNpKP/5/YeRs
 RQNdePo51hLzFoIKVChThZSGXKCV7Kas4RoO+ASQg5PRSu50grABrFel3G/OCr+cgmKJ
 wn1UkksgcM3Nur419xZbqTXqysZLOGnck/fhCXDfyUfh7BTpmwjmcJjZLh4tYYJzBfxB
 EbDSsF2ErHFAfE2W6OV0PfLxujWtknAVyAEPDmY9iwIy5cXLU0UVQR/9iJOJySDM09v8
 /1B9q7Pd+Se6B9U2hKj99HBV6rfQfuLMDW/wfyOdYVH+G0xXIxIRcpNIrwDLIN346iBt
 qEug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=oFOf+MWDFUmc1sY/Zs1YC5RTRUuqHQJ3teYVmEjeOEk=;
 b=Fu9dvhoP9c9Tf9o3H5kMoxdZANXqhw1gBQb6AszKQi+eunPKMix60urRJpEvkKaAnu
 r4J1dR0lXii2NqFoTyvdNlRKLIVlisqvEtQnn6N8Cbliih70vypPiw0P29P2ghwF9ZyL
 6Dln7l3n3iz3FtWfI0JC5yFQR635AS6hd87So1FTUVKnzNudTBMGp3nFX7/wkknrAZwl
 OZ7O301GRfACxqqKM2MjjAq9blVMipZ8txD2w+/DikRVSivVYKtv1p51F6dYpLJqhvcy
 XXSRN/k2ck3K0gCB9Of8p9XUx1rlI+FSNtxVcBE6ctkCg5yr9qud9QroQaHRyiptoNVF
 svTg==
X-Gm-Message-State: APjAAAUWeb/yQVsq/n+r3sOPKkPtOLgOfqHjjXAXv65+ODEdiZkXEoVd
 RChyJWGueP7IjVdFd4VZr0c3JR2K12J5J7S/m78=
X-Google-Smtp-Source: APXvYqzRlVuJ3F6OK1gefKIM577/C7DSA1BBJ5S4Or2vsMlTF9aPZpxmvjEnWao/1Ep92xY68kWq/jv8OB3VBS8+2Ao=
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr9391597otq.63.1576766372387; 
 Thu, 19 Dec 2019 06:39:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Thu, 19 Dec 2019 06:39:31 -0800 (PST)
In-Reply-To: <000eaa2a-4798-a855-93a9-c9679b8860c8@newmedia-net.de>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
 <d24c7821-4e5e-28b5-5d1d-f076cfd762fc@newmedia-net.de>
 <CAKR_QVLKfoo15EqszGSZ9zf6YnfEkih9=PeB0d92k3i0SJZfxQ@mail.gmail.com>
 <000eaa2a-4798-a855-93a9-c9679b8860c8@newmedia-net.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 19 Dec 2019 15:39:31 +0100
Message-ID: <CAKR_QV+Le2zRvnGz4EiMKtXY8HTzH9eru86n6kN+5A9XSF7y3A@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063933_847748_D7913B88 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

in core.c there is also needed ethernetmode check in
ath10k_core_init_firmware_features

ar->wmi.rx_decap_mode = ATH10K_HW_TXRX_NATIVE_WIFI

replace with

if (ethernetmode)
	ar->wmi.rx_decap_mode = ATH10K_HW_TXRX_ETHERNET
else
	ar->wmi.rx_decap_mode = ATH10K_HW_TXRX_NATIVE_WIFI

QSDK driver sets it like that when using eth mode

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
