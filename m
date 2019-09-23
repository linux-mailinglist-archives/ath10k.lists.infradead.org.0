Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6240ABBC6A
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 21:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrqDhJXUHej/8TdXfipt7zmUS0d0604gqLVPb6Cu6lE=; b=sYz0q3tH6qvXcZ
	77FblDK3UTERWcp0r0USC8QGeUHkQf934RvZGjE0CaUuJ2Q7V/1bMcAwfRcGqYS+W0wBwyje/qVlk
	bZmSMprYsRpz2vvqvSSQV0z9aFhN5LXJaBbEwFvb2e/xVlt8lDvcf7om7E5vAXxlhfYysM8igou3g
	ViCDpQOyB85AJCgOJUts9cp8C+9eVEzhBLAMA6NSKe20KABVo6yo34mjLhHljX0kX1pJBdfAtjufR
	F4UXlXBF2+zK44IuCLvWTjXMgO+ViFM4i6WqDeMGvpQd94rap0jmgWJijpx2g6cDqxidqpg33P6eY
	712CWItnuQCtJhnYXDEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCULH-0004ZP-OF; Mon, 23 Sep 2019 19:49:51 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUL4-0004OL-DR
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 19:49:40 +0000
Received: by mail-wr1-x431.google.com with SMTP id v8so15351074wrt.2
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 12:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wFJ6zWicZY8f8WavDOdQQjHVPH6dk+nXo+I5rtEql2Q=;
 b=Rt60OX8Z2aP2lClSHF94qpReq81yO6UTZhBKFzpRND/bqG0AbzEElEMBwTCFa3NgJ0
 Kil6nR38vaTtwgYB6TQKSuLhKZnmk7KTpotl8+TBRGiv1Z4VtdMupC/sPsHKc5J18hgA
 mPObVg1eCcX3jKX0NwaMIUqqln7FYYL/Nvw0okslxgb0CA7qZV8NrIcoCo9kPd7zpIC7
 lyJkCIuHmTDubMiCcEgpk1hwhcA5PWDKUzpa6MLVd2BEpmxRL1Vllp+Z1JJgTuNQb61h
 KPmMlBUCV4TK2MotuMZHXENBQ5oBLsx2f8gw+wGCVdC1S+2SyGS6YlJHlS9wYpnKqX9N
 bxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wFJ6zWicZY8f8WavDOdQQjHVPH6dk+nXo+I5rtEql2Q=;
 b=X1ncplIhHrbA6AI0+mKtUfdaXmLQUgOpDa2pHjmfJWz94liJEfpJbSObv/9K6J9GDD
 rbOjCoIp8Qzg2Nz7M5arFx8UpRcdl/gqYWUAcnijAGzAyrgL4ulwoCCBeGznH99NdvfU
 9aFl5+aDf8BPI9bAVA1b5dDF+CDE2fYwJAFvNB0pzbahMRiJ5cpZWyeWjnKwmAkfXtj9
 JrfKgq41Ux5C688V9HBn94qX9j5zmZvOFMK+5EySUndbmoNsT9DjpJTiWoCINQ6nCuSX
 o1JrqwdtDudSGCkV1F9YKrbDTJVL1t+0R6LPHuz31jowBTyqKotl3O4XQ/h/IfmcbYvC
 /LbA==
X-Gm-Message-State: APjAAAV3q+3x6DC8V767Q50J96RG4QVWVfW0j6HLbKIHN4QHGlapKruD
 jhzollD8egdpa/dIno4wkwU=
X-Google-Smtp-Source: APXvYqw03u9SkaVmEb8taXLU0dIbm/Mctsk+NemQWRnzsl/iUMVEZVxqkRKY019oIu2Ty1RnAh8I9Q==
X-Received: by 2002:adf:ce83:: with SMTP id r3mr846161wrn.219.1569268170162;
 Mon, 23 Sep 2019 12:49:30 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id
 o188sm25108013wma.14.2019.09.23.12.49.29
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 12:49:29 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 2/5] ath10k: print service ready returned channel range
Date: Mon, 23 Sep 2019 21:49:22 +0200
Message-Id: <1569268165-1639-2-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_124938_453352_652D575F 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ath10k@lists.infradead.org, kvalo@codeaurora.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RGlzcGxheXMgbG93ZXN0L2hpZ2hlc3Qgc3VwcG9ydGVkIGNoYW5uZWxzIGZvciBib3RoIDJnaHog
YW5kIDVnaHoKYmFuZHMgYXMgdGhleSdyZSBmZXRjaGVkIHdpdGhpbiBXTUkgc2VydmljZSByZWFk
eSBldmVudC4KVGhlc2UgYXJlIHNob3duIGluIGEgZnJlcXVlbmN5IGZvcm1hdC4KClNpZ25lZC1v
ZmYtYnk6IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20+Ci0tLQog
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYyB8ICAgIDYgKysrKystCiAxIGZp
bGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway93bWkuYwppbmRleCAzZWY2ZWUzLi5iN2I4MDcyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMKQEAgLTU1NjMsNyArNTU2Myw3IEBAIHN0YXRpYyB2
b2lkIGF0aDEwa193bWlfZXZlbnRfc2VydmljZV9yZWFkeV93b3JrKHN0cnVjdCB3b3JrX3N0cnVj
dCAqd29yaykKIAogc2tpcF9tZW1fYWxsb2M6CiAJYXRoMTBrX2RiZyhhciwgQVRIMTBLX0RCR19X
TUksCi0JCSAgICJ3bWkgZXZlbnQgc2VydmljZSByZWFkeSBtaW5fdHhfcG93ZXIgMHglMDh4IG1h
eF90eF9wb3dlciAweCUwOHggaHRfY2FwIDB4JTA4eCB2aHRfY2FwIDB4JTA4eCBzd192ZXIwIDB4
JTA4eCBzd192ZXIxIDB4JTA4eCBmd19idWlsZCAweCUwOHggcGh5X2NhcGFiIDB4JTA4eCBudW1f
cmZfY2hhaW5zIDB4JTA4eCBlZXByb21fcmQgMHglMDh4IG51bV9tZW1fcmVxcyAweCUwOHhcbiIs
CisJCSAgICJ3bWkgZXZlbnQgc2VydmljZSByZWFkeSBtaW5fdHhfcG93ZXIgMHglMDh4IG1heF90
eF9wb3dlciAweCUwOHggaHRfY2FwIDB4JTA4eCB2aHRfY2FwIDB4JTA4eCBzd192ZXIwIDB4JTA4
eCBzd192ZXIxIDB4JTA4eCBmd19idWlsZCAweCUwOHggcGh5X2NhcGFiIDB4JTA4eCBudW1fcmZf
Y2hhaW5zIDB4JTA4eCBlZXByb21fcmQgMHglMDh4IGxvd18yZ2h6X2NoYW4gJWQgaGlnaF8yZ2h6
X2NoYW4gJWQgbG93XzVnaHpfY2hhbiAlZCBoaWdoXzVnaHpfY2hhbiAlZCBudW1fbWVtX3JlcXMg
MHglMDh4XG4iLAogCQkgICBfX2xlMzJfdG9fY3B1KGFyZy5taW5fdHhfcG93ZXIpLAogCQkgICBf
X2xlMzJfdG9fY3B1KGFyZy5tYXhfdHhfcG93ZXIpLAogCQkgICBfX2xlMzJfdG9fY3B1KGFyZy5o
dF9jYXApLApAQCAtNTU3NCw2ICs1NTc0LDEwIEBAIHN0YXRpYyB2b2lkIGF0aDEwa193bWlfZXZl
bnRfc2VydmljZV9yZWFkeV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAkJICAgX19s
ZTMyX3RvX2NwdShhcmcucGh5X2NhcGFiKSwKIAkJICAgX19sZTMyX3RvX2NwdShhcmcubnVtX3Jm
X2NoYWlucyksCiAJCSAgIF9fbGUzMl90b19jcHUoYXJnLmVlcHJvbV9yZCksCisJCSAgIF9fbGUz
Ml90b19jcHUoYXJnLmxvd18yZ2h6X2NoYW4pLAorCQkgICBfX2xlMzJfdG9fY3B1KGFyZy5oaWdo
XzJnaHpfY2hhbiksCisJCSAgIF9fbGUzMl90b19jcHUoYXJnLmxvd181Z2h6X2NoYW4pLAorCQkg
ICBfX2xlMzJfdG9fY3B1KGFyZy5oaWdoXzVnaHpfY2hhbiksCiAJCSAgIF9fbGUzMl90b19jcHUo
YXJnLm51bV9tZW1fcmVxcykpOwogCiAJZGV2X2tmcmVlX3NrYihza2IpOwotLSAKMS43LjAuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
