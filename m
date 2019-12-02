Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B2C10E87F
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 11:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V3MA6BOmKldr6ktEde//I73wggLRT6k0dnDJgjN0c/k=; b=PiHK5O5SGOH/Ee4j53vli9usN
	ONAVbgDpgn3VqodpV5DzASnMiDA1akSzyjXgd3Jij3uPrDUK40JZ5SyLtZNL0Hg3SvE8iNQT6Hm+D
	hpLr1sy3qpt+YPo02EcZa3qR34jz+GS3ScamAUQM+U1LebVhAFCMwvxgb85Ud0k1+WqSImjhuq4V7
	rxfSq20TmI4ED/oiB1IxKovKCvTXzexN8KNWrTEhAonoTL78oaH4cSL3ApQruJatArJwRx3mefJ8x
	5Y+Kg921+LhIG+2A3wI7QkEbr5mzJPKk521QJpQH8QnMF+4RuvdndsN9DsmALtwJpFYFKJQ9qo+az
	WunQ0uASQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibik4-0001SO-Li; Mon, 02 Dec 2019 10:15:44 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibijI-0008AC-QM
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 10:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575281694;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID;
 bh=7jfhDHYrFmOsa+E/bKLTMYNOGK/iizPKQh4d9/trfkw=;
 b=hpoJzulbaECTM34Kouo0Pi8b3x5sjRAS+rmD9cdh1339O3vMviVqqnhK5Z12MRXq
 RBIYEfHK/ERe4wEFwa28QT0XMHhEeeGqHaUVJUo7UQId7CTMT9SmLtORIGAKAne1G2q
 3k9MF417XKdcaGEH747s2RhRdDuCS3ib+r2zhETI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575281694;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID:Feedback-ID;
 bh=7jfhDHYrFmOsa+E/bKLTMYNOGK/iizPKQh4d9/trfkw=;
 b=Ql7BINVgt7ZlE8I1njKuh0zBEI3gsOxtlwKYuZfYBWLFuTSuof7Lntc9xQJCBYaN
 IXLO6U9z1R2v6b1tRjw8qfaosKNpU5BOR3N9ZG6a74JLEOTWb8rMpaRkRx/VJgYZGL4
 uwuYPZnv6eS4MVYJbwFZ3ZmDPUyA7xmhTCL8Bfjw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Mon, 2 Dec 2019 10:14:53 +0000
From: wgong@codeaurora.org
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath: add support for special 0x0 regulatory domain
In-Reply-To: <20191202100833.0C1B9C433CB@smtp.codeaurora.org>
References: <0101016eb614d832-1f2459b1-1555-4ce7-8f90-5704d201bc10-000000@us-west-2.amazonses.com>
 <20191202100833.0C1B9C433CB@smtp.codeaurora.org>
Message-ID: <0101016ec61b147a-7013f605-ca40-4860-ae5c-943904ed3ae0-000000@us-west-2.amazonses.com>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.12.02-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_021456_966224_E99734BA 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-12-02 18:08, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> wrote:
> 
>> Some sdio chips of rome QCA6174's regulatory domain code of EEPROM is
>> empty, then ath_is_world_regd will return false for this case, and
>> it will lead function __ath_reg_dyn_country not work, thus the 
>> regdomain
>> will not update for NL80211_REGDOM_SET_BY_COUNTRY_IE type, it result
>> ath10k set the same regdomain/reg_5ghz_ctl/reg_2ghz_ctl to firmware,
>> then the tx power will not changed with different regdomain's AP. The
>> regulatory domain code of EEPROM of some QCA6174 PCIE chip is 0x6c, it
>> means world wide regdomain, for this chip, it does not have the issue.
>> 
>> For empty reulatory domain code chip, set it to world regulatory 
>> domain
>> in functio ath_regd_sanitize, then it will fix the issue.
>> 
>> Tested with QCA6174 SDIO with firmware
>> WLAN.RMH.4.4.1-00029.
>> 
>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
> 
> Patch applied to ath-next branch of ath.git, thanks.
> 
> 2dc016599cfa ath: add support for special 0x0 regulatory domain
But I did not see it in ath-next now.
https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/log/drivers/net/wireless/ath?h=ath-next
is it has some delay?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
