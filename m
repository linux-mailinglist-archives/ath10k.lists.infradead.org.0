Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2059D33
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fl/X7KWru7cw5+jGj/x6S8VKH1UbZO4aJrLpKbJfA30=; b=EF+PFypUgw1qj0
	kzM/j47hwrzlkoazoLNR1CxR2O1bSvOXxpd3zqiANi8z1NfZj4TI3PfEkxelEsvxzoW8o4Auvj/Pl
	fq07H5gZYD9xRMnd/khSs9T3uxAxhdFqkM7f5zbvOCwgMAR7tIRnxqI7yPwuNZR65+3nQxVA3xxnr
	b5HHpBeRUvOUGU4Iv4SsyLoE70W3dT9ZdMCX8FOl8Sa4U/QyouXeciMy1e9yiBCPOarHuN/qZcMxh
	n0RWDELygMw5wBawjCEpbgoI1fX3QRCmq653TiPMYWzTB8AJqBGy4QG/g6x/5/iXeVj33Abf6BJjx
	He0P1z3n2RnyndlexNew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrDC-0002yT-8A; Fri, 28 Jun 2019 13:46:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrD7-0002y8-8G
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:46:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D66EC602F4; Fri, 28 Jun 2019 13:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729600;
 bh=C3sjIQZtxpbv0qHh291Z4bIPx6jbCLHGf5BuctXpGYE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BGwyFxjzipr5ot/kFaMeClAKsZACHK4n4w+rcrdeOjTJENXdqLYTGmAWve5eyFC8t
 5iHBgcV4b8piol1wLPK8mj0dponj+EGZdZGT6rRR3vt/QesOk6L2UkIpkDWXZrFJFX
 waBO3STAOdXayo6/vhyD8Q9wpS8gYY2kod3819+Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 82FAD607B9;
 Fri, 28 Jun 2019 13:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729600;
 bh=C3sjIQZtxpbv0qHh291Z4bIPx6jbCLHGf5BuctXpGYE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BGwyFxjzipr5ot/kFaMeClAKsZACHK4n4w+rcrdeOjTJENXdqLYTGmAWve5eyFC8t
 5iHBgcV4b8piol1wLPK8mj0dponj+EGZdZGT6rRR3vt/QesOk6L2UkIpkDWXZrFJFX
 waBO3STAOdXayo6/vhyD8Q9wpS8gYY2kod3819+Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 82FAD607B9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Robert Marko <robimarko@gmail.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Update Netgear Orbi Pro SRK60
 specific BDFs
References: <CAOX2RU591S72kfihFV04uP4Mp03cwp2LA+ZXwKQchMZbHPd8aQ@mail.gmail.com>
Date: Fri, 28 Jun 2019 16:46:37 +0300
In-Reply-To: <CAOX2RU591S72kfihFV04uP4Mp03cwp2LA+ZXwKQchMZbHPd8aQ@mail.gmail.com>
 (Robert Marko's message of "Wed, 27 Mar 2019 14:26:16 +0100")
Message-ID: <871rzdddqa.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064641_325729_0B60A8C5 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Robert Marko <robimarko@gmail.com> writes:

> I am currently working on the Netgear Orbi Prok SRK60 support for
> OpenWrt. This
> AP requires three special BDFs to get the Wi-Fi PHYs working (correctly). The
> bmi-board-id='s would clash with one of the the IPQ401X AP-DK boards because
> QCA doesn't provide special IDs for customers and seems to use the AP-DK
> board-ids in the wifi firmware to change its behavior.
>
> This update improves stability and performance.
>
> Now to the questions from the wiki page [1]:
>
> * description for what hardware this is:
>
>   - it is a QCA4019 based module (based on qcom-ipq4019-ap.dk04.1-c1)
>   - one QCA4019 radio is used as 2.4GHz radio
>   - one QCA4019 radio is used as 5GHz radio
>   - an additional QCA9984 5GHz radio is attached via PCI
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - it was pulled from the factory firmware image
>   - it is based on latest 2.3.0.0 firmware
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0
>
>   + bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=Netgear-Orbi-Pro-SRK60
>      md5sum:
>      28eee902927c105f4ce259e3e5b187f3
>
>   + bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=Netgear-Orbi-Pro-SRK60
>      md5sum:
>      195fddececf3c50cf83bc48df3c1b1c7
>
> * attach the actual board file (board.bin)
>
>   - The name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

New:


Changed:
bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=Netgear-Orbi-Pro-SRK60
bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=Netgear-Orbi-Pro-SRK60

Deleted:

0 board image(s) added, 2 changed, 0 deleted, 50 in total

https://github.com/kvalo/ath10k-firmware/commit/06a5f4bf7ebbc4f12240f74348585d3b5c20f5be

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
