Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F301E6C3
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 03:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1qWOVUMxB8XsIcu+5WwaYmrSuBTp/NKuq06YLXKf3uc=; b=OW2Uu+zfrDdbMh
	oM+DRTkDMWxHUY+79BmpFvpInQWK07fjOXEA+EqtaevBsPCRwRAh3Pq+S2eYeRMoyyG5Y3JYaUpep
	IMdeRyjfYmldnXZ5vUIn9GWU6ihhno5l6eyHJ9mkzljcSfvpNAqJCuhWSH+9FwHkjtXdYY5i6s+i0
	YzKoz5uozU6EbPyYeQxUw7zhwPsvHaM4spgRP/bVyJ3D/nk+z7ky0oPuOR4upS+wP+PSwXa9mc7P5
	i7Whv3ZqbtrmuHZ9+vvt1r2vrVXs4PF+y2ZcZlQuAjdgjiu2D3K0EMhJJvihFavtoo4GxDwBvqSFz
	gR9MctdhhHcCtF1C9TSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQj5t-00064B-EP; Wed, 15 May 2019 01:52:33 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQj5q-00063q-2p
 for ath10k@lists.infradead.org; Wed, 15 May 2019 01:52:31 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 1CEEA16320
 for <ath10k@lists.infradead.org>; Tue, 14 May 2019 18:52:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 1CEEA16320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557885149;
 bh=z+OQKhaHFUeEpO42o1eo8PISpjNDTuZEyblYtkeEqr8=;
 h=To:From:Subject:Date:From;
 b=XXirQ3aH4/rNo/l6rP/ysFXgZKrT7sY6HF8uXs35pc7AJObpxjLHAfj6H69WQfCO2
 RcNtvxUk0rMCNIeo2PUfpE4gsOvCCKL8d6GO5vnhduvWXexh7E5tna8dVvYryYjFHy
 MVPi2b8En8LCz2V8LLJJu3ga8uM/e4X1+5kYqNn8=
To: ath10k <ath10k@lists.infradead.org>
From: Ben Greear <greearb@candelatech.com>
Subject: Problem with 9984 in routed mode with 512b frames.
Organization: Candela Technologies
Message-ID: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
Date: Tue, 14 May 2019 18:52:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_185230_151417_79991C9C 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello,

I found a strange issue and curious if someone has seen similar.

I made an AP where the AP interface acts as a routed interface.  I generate
traffic through another interface in the router.  When sending 300Mbps of 512 byte
UDP payloads, in the downstream direction, and with the station being a 1x1 /AC device,
then the AP NIC appears to mostly lock up within about 1 minute.  I still see beacons, but no
data frames.  In some cases, I reproduced with very slow speed traffic as well.

I tried using a mostly un-modified firmware (ie, similar to upstream QCA), as well as my
hacked upon firmware, and all act similarly.  I'm using the 4.20 kernel, but at least for now,
it does not appear to be a kernel issue.

If I use larger MTU sized frames, or have a 2x2 station instead of 1x1 then it is much harder
to reproduce (and maybe cannot be reproduced).  Also, when generating traffic directly on
the AP device instead of using the routed interface as a traffic source, it is harder to
reproduce.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
