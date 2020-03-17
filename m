Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15D1187B15
	for <lists+ath10k@lfdr.de>; Tue, 17 Mar 2020 09:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOACt4PivzP5Ya4godYd2zVrq0ZNjDc/Fpa6B+ZLaAc=; b=pCp2nLecII2sv2
	RfW+4OtDcP/ZuDDjIkHkz9paP8OXz4ZWomilvb0eXJhGNUDZyxZyomkpDbMkjSrW6UN9F2/9trVRh
	7O8InpkVC4HQ5500lPGu3gVlA2bK6Hm/RrJE9OcfBttpV6+ULx1RmQYfrK6lh4XEG3v5BuTn9Ry08
	zG0JxGNxFo0bJ9ZBRPORxnfNgAm7C0NdsB9j06632cycJn6T1e3Lk+je91UQifXbfqnwK/2t3fLtr
	pvzSQ4LqjfnyAP4RA2Cu0O/pvfvbXxBUa2Fo1Oecwbucdn37snQk5OB02vYeSmHIMcPXf+Y2eybS3
	WTncTOz90cJQI5K73UBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7U7-0008PR-H5; Tue, 17 Mar 2020 08:21:59 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7U0-0008Oz-HS
 for ath10k@lists.infradead.org; Tue, 17 Mar 2020 08:21:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584433315; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=lcMjkModPfHCY4xb3Mo5RqUlC1uH126BYmn9dAA8jNk=;
 b=Q6PZc/Sln7GegEHlUj2G9oNr0cXBUOPwVXQAR8kMZRdAgSGSOlTowPt5Z4It7BTgio+NywNI
 ZvQ2rloNgzOkiM0MCwW/krvgpGLONFgSVLdVgpRd4j1oczs3iGuuX/S9Y88b1eW7xNkoVN4j
 QkkAA+YYCnhUVSZLrjeAwUQks5Y=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e708891.7f76a1a51a40-smtp-out-n04;
 Tue, 17 Mar 2020 08:21:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9817CC432C2; Tue, 17 Mar 2020 08:21:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 086C9C433CB;
 Tue, 17 Mar 2020 08:21:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 086C9C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: ath10k: Fill GCMP MIC length for PMF
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1584426499-27819-1-git-send-email-ssreeela@codeaurora.org>
References: <1584426499-27819-1-git-send-email-ssreeela@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200317082136.9817CC432C2@smtp.codeaurora.org>
Date: Tue, 17 Mar 2020 08:21:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_012155_118528_B6761455 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yingying Tang <yintang@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sowmiya Sree Elavalagan <ssreeela@codeaurora.org> wrote:

> From: Yingying Tang <yintang@codeaurora.org>
> 
> GCMP MIC length is not filled for GCMP/GCMP-256 cipher suites in
> PMF enabled case. Due to mismatch in MIC length, deauth/disassoc frames
> are unencrypted.
> This patch fills proper MIC length for GCMP/GCMP-256 cipher suites.
> 
> Tested HW: QCA9984, QCA9888
> Tested FW: 10.4-3.6-00104
> 
> Signed-off-by: Yingying Tang <yintang@codeaurora.org>
> Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>

Failed to build:

drivers/net/wireless/ath/ath10k/mac.c: In function 'ath10k_mac_tx_h_fill_cb':
drivers/net/wireless/ath/ath10k/mac.c:3611:6: error: 'sta' undeclared (first use in this function); did you mean 'stat'?
  if (sta) {
      ^~~
      stat
drivers/net/wireless/ath/ath10k/mac.c:3611:6: note: each undeclared identifier is reported only once for each function it appears in
drivers/net/wireless/ath/ath10k/mac.c:3612:3: error: 'arsta' undeclared (first use in this function)
   arsta = (struct ath10k_sta *)sta->drv_priv;
   ^~~~~
make[5]: *** [drivers/net/wireless/ath/ath10k/mac.o] Error 1
make[5]: *** Waiting for unfinished jobs....
make[4]: *** [drivers/net/wireless/ath/ath10k] Error 2
make[3]: *** [drivers/net/wireless/ath] Error 2
make[2]: *** [drivers/net/wireless] Error 2
make[1]: *** [drivers/net] Error 2
make: *** [drivers] Error 2

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11441863/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
