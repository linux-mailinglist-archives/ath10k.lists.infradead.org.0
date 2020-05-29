Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAEC1E8A5E
	for <lists+ath10k@lfdr.de>; Fri, 29 May 2020 23:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lcDo1lWbqWoeadT6S+EccwFs2EMve9wrH0mqtEy2QNk=; b=VoRrEH1IB23vcs
	OSQOneF7QYb2aqvFCjt6oCkscngoQ1FkqMotTBe/r4Wc8Zczk8PsLPpjHRaSJ7MUniJ6tzAsEoqRN
	RMo6G5EtuSIJBXcL7e3m0n7H5ZoqaaIJXfHN9AUlcPojGLb6Fg7bs/zBb8+2W6QvKdjXBSlY6c7Q7
	4hbf13v9mVlt/K1O+pb8KDzZR7FxMUod0id3yIOgcCWkmT4ZggW/U+KrYyvsSuhsfByJXacXPXF8j
	wpSlG8tzKqhKK8zkvO35tdOFwKTjmZK7JGNbjm1USZRgLgO79A+nbeVTN2h2LZmHG/k0ZeKvtxxO8
	P3Ng8pe85W5pkL22r3oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemqD-0000zL-OC; Fri, 29 May 2020 21:47:01 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemqA-0000z0-Dq
 for ath10k@lists.infradead.org; Fri, 29 May 2020 21:46:59 +0000
Received: from [192.168.254.4] (unknown [50.34.197.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 4481313C2B0
 for <ath10k@lists.infradead.org>; Fri, 29 May 2020 14:46:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 4481313C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1590788817;
 bh=fma0fDSsy7I0BMwasiU9uNRH0GK3kUefnuLbdnNEEgE=;
 h=To:From:Subject:Date:From;
 b=CgrkpdKzY4mMo05mHfQFS+ium5FuJWIC60xlvkPDtoX/l1gvnejzsi25dMOxyUDfW
 QBLtnwJhCLUftNtDBqZNaNZIxZWpxuwOgJ+pBJVLeNftNqy0RCGp/+wJlUEjnY82k2
 611U/LO6jcy4hDSgQA4ZFWTw31ELiuAppX3c3xZo=
To: ath10k <ath10k@lists.infradead.org>
From: Ben Greear <greearb@candelatech.com>
Subject: Potential issue with htt flags
Message-ID: <d8b142d3-74e9-4695-5eb9-b5307867045b@candelatech.com>
Date: Fri, 29 May 2020 14:46:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_144658_538253_173D8BC4 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

While porting forward my patches to 5.7 , I noticed this:

#define HTT_TX_CMPL_FLAG_DATA_RSSI		BIT(0)
#define HTT_TX_CMPL_FLAG_PPID_PRESENT		BIT(1)
#define HTT_TX_CMPL_FLAG_PA_PRESENT		BIT(2)
#define HTT_TX_CMPL_FLAG_PPDU_DURATION_PRESENT	BIT(3)

#define HTT_TX_DATA_RSSI_ENABLE_WCN3990 BIT(3)
#define HTT_TX_DATA_APPEND_RETRIES BIT(0)
#define HTT_TX_DATA_APPEND_TIMESTAMP BIT(1)


Both of these are used against 'flags2', but as you see, some bits are defined to different
things.  In particular usage in,:

static int ath10k_get_htt_tx_data_rssi_pad(struct htt_resp *resp)

looks suspicious to me.

Maybe that ath10k_get_htt_tx_data_rssi_pad should be labeled specific for one particular
chipset?

I didn't look further, but maybe whoever added this could take a look?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
