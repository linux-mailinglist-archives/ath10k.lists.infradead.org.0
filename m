Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BF6BD7DF
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 07:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D82RELuWThRN4or/dQQv0pN9DWWOPDUWeCY2wS3mZUc=; b=Oo1yt1OPkRGH5H
	U3V84W1T8FaPU2mDSwqZSBDMSE/96eBcMfR9WdMb5Xhw17JE7Pp4TiwbOvvx/jCc/mpGHzQ6op++H
	uO0yqRZE/CeeSl7skcDyL0d8DrAd01zUvlq52xj0A8sKO756Jvy1eXvCPi8EXny2QkwpwHRQ5iJ0X
	jmse1uEjACv7IfnjhZfTAVZvHNhcYa4OjUpaQW+7U7lCuCOJIIGxWeCpgvx1RsND4Hvy/WjzDUmyG
	IHlBvL+uZLf9hdTnaekidCM0rUB2uOeYlqKJNcXDP9Hf6UBIjkQRHXTcntyIvt7KMsevovkvjlxvE
	4UvRP4zZNVzSjmxuXcXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD079-0005TM-RV; Wed, 25 Sep 2019 05:45:24 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD073-0005Sb-II
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 05:45:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 11D3E611FA; Wed, 25 Sep 2019 05:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390317;
 bh=kg1B4tioUuK2mKyINtDUZUa/WJl6mgVPUyGVNAJcqv4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=E8goaxrr7Ovh3t8vau6i76RneZkNvOVJXuZAPPW0YAfa3xwVAAk6PXpNVpypmTvT3
 famNHzFanJ3tsZpB89mc/DJTqzXLhOM5sU69vUEWFrVzbFG7CaT7drI3AwGS5TUYNQ
 EQJY2gixe30KUPe/wg5RPpab3Bxp2ev222PPnydI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 81FEA60E73;
 Wed, 25 Sep 2019 05:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390316;
 bh=kg1B4tioUuK2mKyINtDUZUa/WJl6mgVPUyGVNAJcqv4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Dt5jh7N5QUv48B6bXkglksM9eDzPAg7kU/uEAfRK4PK9T5/KE9M42mwyguYinPIuF
 KUyG8brsbOe7sHrhRdBVz3SIU6/hrK78lUFZ99BT05XjjivKmfvHbx4ews11WSM9r0
 /HGqgeCqunAeYVNPNCg9QqpgBDgkZhRwACyoBTBs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 81FEA60E73
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 3/5] ath10k: sdio: read RX packets in bundles
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190417191503.18814-4-erik.stromdahl@gmail.com>
References: <20190417191503.18814-4-erik.stromdahl@gmail.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190925054517.11D3E611FA@smtp.codeaurora.org>
Date: Wed, 25 Sep 2019 05:45:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_224517_662332_97368160 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, kvalo@qca.qualcomm.com,
 Alagu Sankar <alagusankar@silex-india.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RXJpayBTdHJvbWRhaGwgPGVyaWsuc3Ryb21kYWhsQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IEZyb206
IEFsYWd1IFNhbmthciA8YWxhZ3VzYW5rYXJAc2lsZXgtaW5kaWEuY29tPgo+IAo+IFRoZSBleGlz
dGluZyBpbXBsZW1lbnRhdGlvbiBvZiBpbml0aWF0aW5nIG11bHRpcGxlIHNkaW8gdHJhbnNmZXJz
IGZvcgo+IHJlY2VpdmUgYnVuZGxpbmcgaXMgc2xvd2luZyBkb3duIHRoZSByZWNlaXZlIHNwZWVk
Lgo+IAo+IEluc3RlYWQgb2YgaGF2aW5nIG9uZSBzZGlvIHRyYW5zZmVyIGZvciBlYWNoIHBhY2tl
dCBpbiB0aGUgYnVuZGxlLCB3ZQo+IHJlYWQgYWxsIHBhY2tldHMgaW4gb25lIHNkaW8gdHJhbnNm
ZXIuCj4gCj4gVGhpcyByZXN1bHRzIGluIHNpZ25pZmljYW50IHBlcmZvcm1hbmNlIGltcHJvdmVt
ZW50IG9uIHNvbWUgdGFyZ2V0cy4KPiAKPiBPbiBhbiBpbXg2ZGwgdG9nZXRoZXIgd2l0aCBhIFFD
QTkzNzcgU0RJTyBkZXZpY2UsIHRoZSBmb2xsb3dpbmcKPiBwZXJmb3JtYW5jZSBpbmNyZWFzZSB3
YXMgb2J0YWluZWQgd2l0aCBpcGVyZjoKPiAKPiBCZWZvcmU6Cj4gCj4gWyAgM10gIDAuMC0gMS4w
IHNlYyAgMy4zOCBNQnl0ZXMgIDI4LjMgTWJpdHMvc2VjCj4gCj4gQWZ0ZXI6Cj4gCj4gWyAgM10g
IDAuMC0gMS4wIHNlYyAgNy4xMiBNQnl0ZXMgIDU5LjggTWJpdHMvc2VjCj4gCj4gQ28tZGV2ZWxv
cGVkLWJ5OiBFcmlrIFN0cm9tZGFobCA8ZXJpay5zdHJvbWRhaGxAZ21haWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEFsYWd1IFNhbmthciA8YWxhZ3VzYW5rYXJAc2lsZXgtaW5kaWEuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEVyaWsgU3Ryb21kYWhsIDxlcmlrLnN0cm9tZGFobEBnbWFpbC5jb20+CgpX
ZW4gaXMgd29ya2luZyBvbiB0aGlzOgoKW3Y1LDIvOF0gYXRoMTBrOiBlbmFibGUgUlggYnVuZGxl
IHJlY2VpdmUgZm9yIHNkaW/vv7wgMTExMzI2NjFkaWZmbWJveHNlcmllcwoKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTEzMjY2MS8KClNvIEknbGwgZHJvcCB0aGlzIHZlcnNp
b24uIFBhdGNoIHNldCB0byBTdXBlcnNlZGVkLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTA5MDYwMDUvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9l
bi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0
CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
