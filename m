Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5573C11DE84
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 08:19:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0d0YZ+whfkCihr6t7cNHZCbDqajSbwYzQae/FetNVo=; b=CvBlplUAH/BIwA
	DVepQuii6Sv0lQZyi0qFBnEEoHPKDJ2uB6LkdBPL2FHT6q9E27gjsXZUJJMLw010pqIAUQYSQ11xN
	WAP3pi7RpbM1IGSQ0vPhAp7HWMfahIvFUSv1RHtuWwU2HZQFeltPU8jhDm696nCuib9AVNdb8HCox
	aNVGlCg7BpwFPj17zCA1QAnPvpBtlsA80t+kzKEIHqoKRC5rxHuF1dIBXhVuG+IoUx7OAX6+balJz
	oDQwmtO33121HRQIZnmGBbGoL3EDCi8bcVA51ul/RW7bdcsm/0E9KuILCgH7nhWVvmHg3hylDat4G
	QylN9ySb1lCwYhoFqdoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffEM-0002Y2-2f; Fri, 13 Dec 2019 07:19:18 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffEI-0002Xj-B9
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 07:19:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576221553; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=WLCDqno1s3uHYEMChVxX5DZEV90VVhx2NHGKrO4DQg8=;
 b=wfXShygNYtgi6F8/f1MLIOAQYlcMqcoFSauJATYrlrn8XSOsMVbJej7Zg/DPBT8Qapam0RnW
 A+UK6jbL7qElkq9OMtBwevDgQIpTQ3nl+rj3wHCtWOqle7t0JAbWsvQg4m1tD0JD0DSjqBMT
 3CV0Og7DOxKal1VqyGdAL3Ctac4=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df33b6f.7f08ba884880-smtp-out-n02;
 Fri, 13 Dec 2019 07:19:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D80C0C4479C; Fri, 13 Dec 2019 07:19:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00A10C43383;
 Fri, 13 Dec 2019 07:19:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 00A10C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH V4 0/4] Enable virtual time-based airtime scheduler support on
 ath10k
Date: Fri, 13 Dec 2019 15:19:49 +0800
Message-Id: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_231914_434015_36637E14 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgZml4IHNvbWUgaXNzdWVzIHdoZW4gZW5hYmxpbmcgdmlydHVhbCB0aW1lLWJh
c2VkIGFpcnRpbWUgc2NoZWR1bGVyIG9uIGF0aDEway4KCkNoYW5nZXMgc2luY2UgdjM6CiAgQ2hh
bmdlIHNjaGVkdWxlX3BvcyB0byBwcmV2aW91cyBub2RlIG9uY2UgaXQgaGFzIGNoYW5jZSB0byBi
ZSBtb3ZlZC9yZW1vdmVkCiAgZnJvbSBjdXJyZW50IHBvc2l0aW9uIGluIHRoZSB0cmVlIGluIGxv
b3Agc2NlbmFyaW8gYW5kIGJyaW5nIGJhY2sgc2NoZWR1bGVfcm91bmQKICBpbiBjYXNlIHRoYXQg
c2FtZSBub2RlIGlzIHRvIGJlIHNjaGVkdWxlZCBhZ2FpbiBpbiB0aGUgbWVhbiB0aW1lLgoKICBJ
bmNyZWFzZSBhaXJ0aW1lIGdyYWNlIHBlcmlvZCB0byAyMDAwIHVzIGluIHRoZSBmaXJzdCBwYXRj
aC4KCiAgUHV0IHBlci1BQyBzdGF0aW9uIHdlaWdodCBjaGVja2luZyBpbiBpdHMgbG9jayBkdXJp
bmcgY29uZmlndXJhdGlvbiBmcm9tIGFwcGxpY2F0aW9uLgoKQ2hhbmdlcyBzaW5jZSB2MjoKICBD
aGFuZ2VzIHN0YXRpb24gYWlydGltZSB3ZWlnaHQgdG8gYmUgcGVyLUFDIGJhc2VkIHRvIGF2b2lk
IHN5bmMgaXNzdWUKICBSZW1vdmUgQ28tZGV2ZWxvcGVkLWJ5IGFuZCBUb2tlJ3Mgc2lnbi1vZmYg
YXMgVG9rZSBzdWdnZXN0ZWQKCkNoYW5nZXMgc2luY2UgdjE6CiAgTW9kaWZ5IHRoZSBhdXRob3Ig
b2YgQ28tZGV2ZWxvcGVkLWJ5IGFzIEpvaGFubmVzIHN1Z2dlc3RlZAoKVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuICgxKToKICBtYWM4MDIxMTogU3dpdGNoIHRvIGEgdmlydHVhbCB0aW1lLWJhc2Vk
IGFpcnRpbWUgc2NoZWR1bGVyCgpZaWJvIFpoYW8gKDMpOgogIG1hYzgwMjExOiBmaXggaXNzdWUg
aW4gbG9vcCBzY2VuYXJpbwogIG1hYzgwMjExOiBmaXggbG93IHRocm91Z2hwdXQgaW4gbXVsdGkt
Y2xpZW50cyBzaXR1YXRpb24KICBtYWM4MDIxMTogU3luYyBhaXJ0aW1lIHdlaWdodCBzdW0gd2l0
aCBwZXIgQUMgc3luY2VkIHN0YSBhaXJ0aW1lCiAgICB3ZWlnaHQgdG9nZXRoZXIKCiBuZXQvbWFj
ODAyMTEvY2ZnLmMgICAgICAgICB8ICAyOSArKysrKy0KIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzLmMg
ICAgIHwgIDQ4ICsrKysrKysrKy0KIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jIHwgIDE4ICsr
LS0KIG5ldC9tYWM4MDIxMS9pZWVlODAyMTFfaS5oIHwgIDEyICsrLQogbmV0L21hYzgwMjExL21h
aW4uYyAgICAgICAgfCAgIDIgKy0KIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5jICAgIHwgIDI1ICsr
Ky0tCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uaCAgICB8ICAgOCArLQogbmV0L21hYzgwMjExL3R4
LmMgICAgICAgICAgfCAyMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tCiA4IGZpbGVzIGNoYW5nZWQsIDI3OCBpbnNlcnRpb25zKCspLCA5OCBkZWxldGlvbnMo
LSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
