Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC21AA2E4
	for <lists+ath10k@lfdr.de>; Thu,  5 Sep 2019 14:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjDwHj5DuUeqq6UPWteDBvqfC1JxwKQNitCDgcQwrW8=; b=HtpCBWXOOL3ifd
	k9Nz3jhxXFosr1mc7x6oZxBNV7xQi1f/AFkSPMJAeT/b2W8MlLgVNNhNVwmxk0wLH9U6xoZqb8gqr
	O1Co5btTIHKPdLL82iEBLq6RJEC0YbMkiaW+ocoOa8DhsUepNtvCgyErRXtlDEdTmaq0NMEMNwTAb
	ADUnzVkmp8ttS779VXC2CSLqL+hrHi9HXD4koMcnexnut7I6Uykj1R5wyCORCz64qfJ+6sy8tf1kG
	2JgVMe10iEJUyTzMiQVl6PuVPeh/q8zYPh/4KehckHTypzG967GjZZfrfnf6JijFqGkZ87ZjCECzw
	+lLF946GMCOjjWvhO2/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qkE-0007Xf-IA; Thu, 05 Sep 2019 12:20:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qk8-00073C-Gm
 for ath10k@lists.infradead.org; Thu, 05 Sep 2019 12:20:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E5AAD605A0; Thu,  5 Sep 2019 12:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567686004;
 bh=Y5jzBWaoxbHQwkqFZtjIhJ21JazMaO6JvYJZgDsm6lg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OVV60cCO2ZRg7JJogWRR3NW9LWvoZ+FZV6ZZ2lRANckMZ8Vl8oCTGFKb5BEdUwq/c
 wesc+tbfoUmDvI/6Z3sv8Q6wF7YT9EQ9c8AZ0p3OtUp1gl44Jxf8rNsUYnpNOSI6BR
 cDlkdTbDB1a1QCXS5LEzvgXsH8wbmqpgr8NBiyVE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B4B556058E;
 Thu,  5 Sep 2019 12:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567686003;
 bh=Y5jzBWaoxbHQwkqFZtjIhJ21JazMaO6JvYJZgDsm6lg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=eSpIoSIFBRk7oLCAtWWHHBv3owayzUA/WFRQypPQYsM6AhH/wCim24IK7rq+5AFgv
 E7D5Fw1h3JqI7pQMlRHZr65AJtVC0De6d/FLes4x/rHgcomV/qUjw/aRSZvo/+VXPJ
 pHBh7SJJ60cx2IT5lWi9X0EB68ZruuDNI7s5l1Fc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B4B556058E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH v4 8/8] ath10k: enable napi on RX path for sdio
References: <1567416146-14403-1-git-send-email-wgong@codeaurora.org>
 <1567416146-14403-9-git-send-email-wgong@codeaurora.org>
 <c816734498c349119c12c23bc8a4827f@aptaiexm02f.ap.qualcomm.com>
Date: Thu, 05 Sep 2019 15:19:59 +0300
In-Reply-To: <c816734498c349119c12c23bc8a4827f@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Thu, 5 Sep 2019 10:50:29 +0000")
Message-ID: <875zm7lyts.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_052004_592898_F963C893 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
>> Sent: Monday, September 2, 2019 5:22 PM
>> To: ath10k@lists.infradead.org
>> Cc: linux-wireless@vger.kernel.org
>> Subject: [EXT] [PATCH v4 8/8] ath10k: enable napi on RX path for sdio
>> 
> Patch v5 sent with change, https://patchwork.kernel.org/patch/11132677/

No need to reply to every patch in the series. It's enough to reply to
the cover letter that a new version was posted, less emails that way.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
