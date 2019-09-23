Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62BABAE66
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HkY7pMAon6YfRT53uLC4+LeI7NVM/0RyvEyXDO0P2bw=; b=lSK85KG6NuKv8i
	i6UBDw3SYrHgqi9ov7KM/s6qDQoBYN3SBVrD9gmKtWvSpxj1DNbTnnUugepxlEqad9WJcKLX3ar/3
	BN8OMyASCRsM3oKNXjOel1FT/IadehkKt4PmYjgBi9lcWuUUET6RKdVol5BRxN8VhRnOQvvRGueaW
	PZX7kOk2FclBELK1ctgrU/ZwIImy5a9PHmCo88IK6XgWpZREVjoRoFJDklu3/pxuv/XYoDVNXwU9I
	M7RrPs2+95cvJUs2EGwO5tP39PzdO6iUDpl/9W5s02obBShDYPam7pLOfCqc5NHPyTADO7r7qDyRm
	RT8W3xOYC7H3EEn3kC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIe5-0004LG-Kh; Mon, 23 Sep 2019 07:20:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIdz-0004Kt-Fz
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:20:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6AAB36074C; Mon, 23 Sep 2019 07:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223221;
 bh=YXQQg1QmF5UFWDYNhDFlNIhg9/MebxMrqpKpp6NXSNA=;
 h=From:To:Cc:Subject:Date:From;
 b=ZwF3BQVoYK/Qh6EAy7qXTIXxnrY66PibjwfMdn5g6JyHSRY5XMKb8cms5ydIInO6V
 Cuc5ufnm1sOSSGNloX6zRSd9Bins+d1R/IOQcyYtRp+JfWtP1ttSxRlQwk89+W85JW
 3ePHGFVK4Y/2Ydj/+SgyH026zQ3sJMBwS2YYIcBw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yiboz@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1D5FB60240;
 Mon, 23 Sep 2019 07:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223221;
 bh=YXQQg1QmF5UFWDYNhDFlNIhg9/MebxMrqpKpp6NXSNA=;
 h=From:To:Cc:Subject:Date:From;
 b=ZwF3BQVoYK/Qh6EAy7qXTIXxnrY66PibjwfMdn5g6JyHSRY5XMKb8cms5ydIInO6V
 Cuc5ufnm1sOSSGNloX6zRSd9Bins+d1R/IOQcyYtRp+JfWtP1ttSxRlQwk89+W85JW
 3ePHGFVK4Y/2Ydj/+SgyH026zQ3sJMBwS2YYIcBw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1D5FB60240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH V3 0/4] Enable virtual time-based airtime scheduler support on
 ath10k
Date: Mon, 23 Sep 2019 15:19:57 +0800
Message-Id: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_002023_560189_EB42CED3 
X-CRM114-Status: UNSURE (   6.99  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgZml4IHNvbWUgaXNzdWVzIHdoZW4gZW5hYmxpbmcgdmlydHVhbCB0aW1lLWJh
c2VkIGFpcnRpbWUgc2NoZWR1bGVyIG9uIGF0aDEway4KCkNoYW5nZXMgc2luY2UgdjI6CiAgQ2hh
bmdlcyBzdGF0aW9uIGFpcnRpbWUgd2VpZ2h0IHRvIGJlIHBlci1BQyBiYXNlZCB0byBhdm9pZCBz
eW5jIGlzc3VlCiAgUmVtb3ZlIENvLWRldmVsb3BlZC1ieSBhbmQgVG9rZSdzIHNpZ24tb2ZmIGFz
IFRva2Ugc3VnZ2VzdGVkCgpDaGFuZ2VzIHNpbmNlIHYxOgogIE1vZGlmeSB0aGUgYXV0aG9yIG9m
IENvLWRldmVsb3BlZC1ieSBhcyBKb2hhbm5lcyBzdWdnZXN0ZWQKClRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiAoMSk6CiAgbWFjODAyMTE6IFN3aXRjaCB0byBhIHZpcnR1YWwgdGltZS1iYXNlZCBh
aXJ0aW1lIHNjaGVkdWxlcgoKWWlibyBaaGFvICgzKToKICBtYWM4MDIxMTogZGVmZXIgdHhxcyBy
ZW1vdmFsIGZyb20gcmJ0cmVlCiAgbWFjODAyMTE6IGZpeCBsb3cgdGhyb3VnaHB1dCBpbiBtdWx0
aS1jbGllbnRzIHNpdHVhdGlvbgogIG1hYzgwMjExOiBTeW5jIGFpcnRpbWUgd2VpZ2h0IHN1bSB3
aXRoIHBlciBBQyBzeW5jZWQgc3RhIGFpcnRpbWUKICAgIHdlaWdodCB0b2dldGhlcgoKIGluY2x1
ZGUvbmV0L21hYzgwMjExLmggICAgIHwgIDE2ICsrLQogbmV0L21hYzgwMjExL2NmZy5jICAgICAg
ICAgfCAgMjkgKysrKy0KIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzLmMgICAgIHwgIDQ4ICsrKysrKyst
CiBuZXQvbWFjODAyMTEvZGVidWdmc19zdGEuYyB8ICAxOCArLS0KIG5ldC9tYWM4MDIxMS9pZWVl
ODAyMTFfaS5oIHwgIDE3ICsrLQogbmV0L21hYzgwMjExL21haW4uYyAgICAgICAgfCAgIDggKy0K
IG5ldC9tYWM4MDIxMS9zdGFfaW5mby5jICAgIHwgIDI1ICsrKy0KIG5ldC9tYWM4MDIxMS9zdGFf
aW5mby5oICAgIHwgICA4ICstCiBuZXQvbWFjODAyMTEvdHguYyAgICAgICAgICB8IDI4MiArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KIDkgZmlsZXMgY2hhbmdl
ZCwgMzQ3IGluc2VydGlvbnMoKyksIDEwNCBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5n
IGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
