Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D73BBC67
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 21:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qfd2RZt6ZOCSlhkkPe+/4oGLFSZp+rm9FOhvgDy00C0=; b=tTAizgBO944x1U
	WIsWokDV/O1JoMsbjtcnfcma7BcxaozmBKiPaYmHJHKSEeKvPXsmgFR74EZTaq67pykPA1+FUOA/o
	vZUPSLfYlx6k9AZB4nKQ4PkpdbcPGu+HA/RKhENumbFPuLhGogmq5nmkuXffBC2lYs7HgphoFD0Zk
	sSLaL9apVhEV44ixkhzBjkZdrQTVWHr0EYsHaeJN6Rb423xvUqf2gwuaThtCZMkRABg6NWY6ap1xu
	YR4DMVoZnKO57xhNA+KQQKfDQk1QKasxmLmpCJOuR+/29u9Wi7V9Gr/skc1fAyghSjg4f5BhEh/Yp
	mmDKJq8/I5IkyHSrO/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCUL7-0004Pe-6m; Mon, 23 Sep 2019 19:49:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUL2-0004OP-Ec
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 19:49:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id y21so10592130wmi.0
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 12:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5B/Mh0LM7+3R0IUqdEb/xm0Cw/iYqewSqzeC/0CfkIw=;
 b=Je1LjaS7mkfqGTMy9PS8hdn/1XvE3ixc3SgKhuKwXQNG5LT/RpvjxmvOfS+90WubTc
 jbm8RG8AY7l1Wf5EVFaKtWt1NI5F48WubqwcJBsx76PHTi7rJzQqtwR/ASifgWuiyP2V
 Grr4K90JF9ANJiQ3UvDP8JQS5CFkrVuirR7yd9W0HVgEKTdh9+DyBPpCd0ahkkB6U1Xi
 aaRd4su4ZBKmpiTzv9WHNPX517tUHRM64xLSUGTaL8Lf9lhyFuUVh2OW9YWXxt3R3bKL
 iQfWWBPsfjSofThp1HF0FhbIILBlSZT0LdictHzrZ/wTnd76e66+yXxXNWYhwx6xl4Vd
 JcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5B/Mh0LM7+3R0IUqdEb/xm0Cw/iYqewSqzeC/0CfkIw=;
 b=ToG1UUyduciFLn43LFH6fRj01OTKSB/oRaPog2VhvWJyMI32rrnaTnCFc6OjZATMVH
 AonnWI/bXo0kbdayiXZrkFwiYKe+Ii8G4Baj+bA5vD1Df1mUl++aR2E21CM4R1YtDCHZ
 4axZuX6kKghboZzpj0cexzmUWdCeutb2g0DZ/YWXcT16gG8LeffuQxYJY6FpX8I7chTE
 3NEPfGDCBkHIGTxPsn4Hcgh0J0E+HQNC2G+JqyGoqAHgIBQ82UXzbuoO36c4XD29U+pQ
 26HWi1ELMFkQ5JqIrWOy3EUe5Kj4GV+4JJxGi9h8TI6eLf6YQ9ESHk0FrJ+HiE/Gqm6T
 gzmA==
X-Gm-Message-State: APjAAAVOIldnT4be6jPd5oDQn1dwEYydKlK3eWS+lHLduacE0EIKpa9Z
 8QKsXuUAJrLscZhcjLrOaPVUSc7n
X-Google-Smtp-Source: APXvYqwL53XSKibUyDWZ7XLazAjizCey5Aut1uilDPUfzn73pHc89LjaNpRT0xm8yHme8Bz578baAA==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr991788wmc.113.1569268172748;
 Mon, 23 Sep 2019 12:49:32 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id
 o188sm25108013wma.14.2019.09.23.12.49.31
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 12:49:32 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 5/5] ath10k: pull_svc_rdy code-style fix
Date: Mon, 23 Sep 2019 21:49:25 +0200
Message-Id: <1569268165-1639-5-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_124937_214378_23DA220B 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

RHJvcCB1bm5lZWRlZCBsaW5lcyBieSBtb3Zpbmcgc2tiIGRhdGEgaW4gYm90aCBtYWluIGFuZCAx
MHggV01JCnB1bGwgc2VydmljZSByZWFkeSBldmVudCBvcGVyYXRpb25zLgoKU2lnbmVkLW9mZi1i
eTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4KLS0tCiBkcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jIHwgICAgNiArKy0tLS0KIDEgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMgYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9hdGgvYXRoMTBrL3dtaS5jCmluZGV4IDU5ZDJkMmEuLjhhYjE3OGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMKKysrIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway93bWkuYwpAQCAtNTM0NSwxMyArNTM0NSwxMiBAQCBzdGF0aWMgaW50
IGF0aDEwa193bWlfYWxsb2NfaG9zdF9tZW0oc3RydWN0IGF0aDEwayAqYXIsIHUzMiByZXFfaWQs
CiBhdGgxMGtfd21pX21haW5fb3BfcHVsbF9zdmNfcmR5X2V2KHN0cnVjdCBhdGgxMGsgKmFyLCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLAogCQkJCSAgIHN0cnVjdCB3bWlfc3ZjX3JkeV9ldl9hcmcgKmFy
ZykKIHsKLQlzdHJ1Y3Qgd21pX3NlcnZpY2VfcmVhZHlfZXZlbnQgKmV2OworCXN0cnVjdCB3bWlf
c2VydmljZV9yZWFkeV9ldmVudCAqZXYgPSAodm9pZCAqKXNrYi0+ZGF0YTsKIAlzaXplX3QgaSwg
bjsKIAogCWlmIChza2ItPmxlbiA8IHNpemVvZigqZXYpKQogCQlyZXR1cm4gLUVQUk9UTzsKIAot
CWV2ID0gKHZvaWQgKilza2ItPmRhdGE7CiAJc2tiX3B1bGwoc2tiLCBzaXplb2YoKmV2KSk7CiAJ
YXJnLT5taW5fdHhfcG93ZXIgPSBldi0+aHdfbWluX3R4X3Bvd2VyOwogCWFyZy0+bWF4X3R4X3Bv
d2VyID0gZXYtPmh3X21heF90eF9wb3dlcjsKQEAgLTUzODcsMTMgKzUzODYsMTIgQEAgc3RhdGlj
IGludCBhdGgxMGtfd21pX2FsbG9jX2hvc3RfbWVtKHN0cnVjdCBhdGgxMGsgKmFyLCB1MzIgcmVx
X2lkLAogYXRoMTBrX3dtaV8xMHhfb3BfcHVsbF9zdmNfcmR5X2V2KHN0cnVjdCBhdGgxMGsgKmFy
LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogCQkJCSAgc3RydWN0IHdtaV9zdmNfcmR5X2V2X2FyZyAq
YXJnKQogewotCXN0cnVjdCB3bWlfMTB4X3NlcnZpY2VfcmVhZHlfZXZlbnQgKmV2OworCXN0cnVj
dCB3bWlfMTB4X3NlcnZpY2VfcmVhZHlfZXZlbnQgKmV2ID0gKHZvaWQgKilza2ItPmRhdGE7CiAJ
aW50IGksIG47CiAKIAlpZiAoc2tiLT5sZW4gPCBzaXplb2YoKmV2KSkKIAkJcmV0dXJuIC1FUFJP
VE87CiAKLQlldiA9ICh2b2lkICopc2tiLT5kYXRhOwogCXNrYl9wdWxsKHNrYiwgc2l6ZW9mKCpl
dikpOwogCWFyZy0+bWluX3R4X3Bvd2VyID0gZXYtPmh3X21pbl90eF9wb3dlcjsKIAlhcmctPm1h
eF90eF9wb3dlciA9IGV2LT5od19tYXhfdHhfcG93ZXI7Ci0tIAoxLjcuMC40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlz
dAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
