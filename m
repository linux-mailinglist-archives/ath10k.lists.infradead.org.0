Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5C72418E
	for <lists+ath10k@lfdr.de>; Mon, 20 May 2019 21:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XuSRLxMiffa0O0pGmUB9fsRtz7qFxED7xO4CBKge9Mc=; b=A48Mg09Yrm7zO4AgFQhR0G0Do
	XE3MvoiEkpR81aXTHPYSbi478Erx9RQWAXcYcDhiZz1P1OFG2CRtBWYiZmQfS5HycBYX0hCzpb1d+
	HfmsC0v3JlYz5gG3UUO9c5MQx0icTDyuPWr7DGZx1IqQ6m1LzHoDfDJGQ3AGGuiutIhYMxtMqInGg
	trsaAhny6Nud/6m68c04q9v+ELt8Ds4XCoe7p9pV8AGljGs4HoLxkVNgLdSlOadaDFMW7PdQzMU1h
	SHQ/LSNWPxF+TrRJFmSUJ666F/3SmsF8wVld4T7vvKbG44wyPJR3WApQG7VFiQRDZJMc9Xu8ZAv9E
	Fx8yIx0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoMX-00079g-Tf; Mon, 20 May 2019 19:54:21 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoMT-00079J-Su
 for ath10k@lists.infradead.org; Mon, 20 May 2019 19:54:19 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 237D216322;
 Mon, 20 May 2019 12:54:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 237D216322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558382057;
 bh=Rzgly6L/LPYJbCIuGM2iSRJLyA08LLdFvEEGmfS8324=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=qjp3rgqIHMLAj7gL9AF2P9bjqj1XpuwmaTalHv6tQbxDCjGGrtmSNiSneDSIVhPOf
 F+N+MA0wm14sQhNAeIKrLK0Lpd7ezqQJZIcfu9NeLpcQUEfqpE/n7lpLgBoiw3zyiz
 xM3a8lqhxK+Yigq9wK96M2A2LdMH56KmE53IecX0=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Adrian Chadd <adrian@freebsd.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
 <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
 <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
 <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
 <3d1db9ca-92a0-2bf7-5608-54e2b8e0476f@newmedia-net.de>
 <CAJ-VmonsmNVhzge5jiOVhJn13B8oWEop8zr=Xk+dgYZDTaGU+Q@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <41a3c98c-4cea-3d85-cc70-d153d18dc672@candelatech.com>
Date: Mon, 20 May 2019 12:54:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ-VmonsmNVhzge5jiOVhJn13B8oWEop8zr=Xk+dgYZDTaGU+Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_125417_975767_72C79FF6 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/20/19 12:25 PM, Adrian Chadd wrote:
> On Mon, 20 May 2019 at 09:59, Sebastian Gottschall
> <s.gottschall@newmedia-net.de> wrote:
> 
> 
>> the curious thing is still that the fallback code applies only for 2.4
>> ghz so it would never have affected 802.11ac
> 
> Hm, does RC fall back to 11na or 11a rates when doing 11ac? (in 5G
> mode.) It's good to know fixing that would fix it in 2.4GHz operation
> but yeah, I wonder about RC in 5G.

It appears the rate-ctrl tries to fall to CCK 2Mbps or 1Mbps and skips a/g rates.  /n
rates are a subset of VHT, so those are used as part of normal VHT rate-ctrl.

I have no explanation for why I saw the tx-hang in stock-ish firmware, which indeed
should not have tried to use any a/g rates in 5Ghz.  The high-level failure looked exactly like
what I eventually debugged as falling back to /a rates in my firmware, for what that
is worth.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
