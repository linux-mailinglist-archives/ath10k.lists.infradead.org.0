Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF58BBC68
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 21:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvKQN6Q2eaBQn7rFwuYMbmcRSFR5t5XAWEa1ezoDVP4=; b=TkGQAryib0rT7l
	QM7P/AsbD5spuqM0WhiDSfSLg3zcHYrWMSALOFx6NfIXEFwNGfPUOAyTTSGCQ2br7UTRE8KO0JtUG
	K+njmb0tGI3Cs8iImAhddcwRvkksiVrEZ2TTQ5pWgUN8Vh1Uz6DFr983SeJkrnUvDUjmAKL2lg5kh
	bRdNbWB++aliyShKwlDO3zD3JDn/Q20t0DlpIOG3F6DsQhHQXWURexZleENvCotzDSp3a3MqyAY2i
	wyaSUfOOHPRh+FyEA7ykWMVKFBaBWZhzBSDmFVgRpu/pbvQyxyDAJs/XQ2jsNXXzjuIMAzyatw+iH
	OXf3RGKMJY31psZL979A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCULA-0004Qy-9E; Mon, 23 Sep 2019 19:49:44 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUL2-0004OK-Ea
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 19:49:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id l3so15308750wru.7
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 12:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lK6WlBeQcjY7Not1nMx9ZS5+6Wp3U85aur3QzZr1FA=;
 b=AhBHyFJgbx7ML1bQqxnUg1XlOIo3uu/rqUHrLIGn/QlzNb2sRelCeoxIsF8KvQnyz9
 1R1aRtcwtmtbRnU9mm84CroTa0WBiwwUj1Zhvb4tIxp6uR8zC7RKqJoNLD2Ptyg9Hlwh
 Il9yhAy6L1H/s8uFFvaTNWe70l0YO30PTSaOft5HXIYIGGOJMl9c8i+l+q9P/kB0XFRd
 aS0ECl9ysYtzBPzj+AAiovGMjQekzYqWAIG2wG/kPDUa3QVVhiKvwRfO9w6ru46fOZE2
 xU+6Rrk4zP/4YxugTG+IyuQzkd4KA2vXUXwZ9bDD9gxRpi27xPLnI8EifkqDcB+2VYeg
 WvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lK6WlBeQcjY7Not1nMx9ZS5+6Wp3U85aur3QzZr1FA=;
 b=Tz+GgLyxJOzw6r/YTra58KzQgD+GCs8kDVy6X1ngtZbDsCtfS8CvBsmb8wpLZeAdZw
 s3NqdfCWebHYb1XBOdE1dTCsG+u5Tow2xYMlIaA4q1jyNHYx8A2AujXebItalEWZcuV2
 z1Uh8LMg8A1EjvJYDMhDxLlZ0tfMjGQmZld+xQzsMHd1mJqJDdSHXLh2CsVfFDhusvLD
 skmxujlMMoPGrpizQ99g1THKUAe1YH6Kw5gFzrYGGZ4IIR3tmH7+RyvVcvODB/xmYzXY
 HImElxFw8ydjHxLSaHnDFdj8v7gFqIPpAnYpLOpDlAx4O1R+wtJyJ3MpievnpFX0MkYW
 70TA==
X-Gm-Message-State: APjAAAWgVV6MHtW+6mlUlA4LCRi9KS2KgXhamKPIxIzOZsDNsWH1B/Q4
 b9Fa3V1oZsXhD0i8VSiTA4k=
X-Google-Smtp-Source: APXvYqzfXPfuj8hKWKJL2QQ6nISmLt+VACR6pfnLr6MlfHcXleAdCC4nCekzlP95ch/PBmkO5qrsGg==
X-Received: by 2002:adf:f5cc:: with SMTP id k12mr766764wrp.278.1569268169290; 
 Mon, 23 Sep 2019 12:49:29 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id
 o188sm25108013wma.14.2019.09.23.12.49.28
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 12:49:28 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 1/5] ath10k: add 2ghz channel arguments to service ready
 structure
Date: Mon, 23 Sep 2019 21:49:21 +0200
Message-Id: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_124937_214706_0C5B3F9B 
X-CRM114-Status: UNSURE (   9.01  )
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
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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

QWRkIGxvd2VzdC9oaWdoZXN0IDJnaHogY2hhbm5lbCBhcmd1bWVudHMgZm9yIHVzZSB3aXRoaW4g
V01JIHNlcnZpY2UKcmVhZHkgc3RydWN0dXJlLgoKU2lnbmVkLW9mZi1ieTogVG9taXNsYXYgUG/F
vmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVz
cy9hdGgvYXRoMTBrL2NvcmUuaCAgICB8ICAgIDIgKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0
aC9hdGgxMGsvd21pLXRsdi5jIHwgICAgMiArKwogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0
aDEway93bWkuYyAgICAgfCAgICA2ICsrKysrKwogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0
aDEway93bWkuaCAgICAgfCAgICAyICsrCiA0IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDEway9jb3JlLmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaApp
bmRleCBjOTZkMWExLi4yYTBhMDA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoMTBrL2NvcmUuaAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2Nv
cmUuaApAQCAtOTY3LDYgKzk2Nyw4IEBAIHN0cnVjdCBhdGgxMGsgewogCXUzMiBudW1fcmZfY2hh
aW5zOwogCXUzMiBtYXhfc3BhdGlhbF9zdHJlYW07CiAJLyogcHJvdGVjdGVkIGJ5IGNvbmZfbXV0
ZXggKi8KKwl1MzIgbG93XzJnaHpfY2hhbjsKKwl1MzIgaGlnaF8yZ2h6X2NoYW47CiAJdTMyIGxv
d181Z2h6X2NoYW47CiAJdTMyIGhpZ2hfNWdoel9jaGFuOwogCWJvb2wgYW5pX2VuYWJsZWQ7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS10bHYuYyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLXRsdi5jCmluZGV4IDM2M2ZkMGIuLmJk
YTUyY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLXRs
di5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLXRsdi5jCkBAIC0x
MjA3LDYgKzEyMDcsOCBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfdGx2X29wX3B1bGxfc3ZjX3Jk
eV9ldihzdHJ1Y3QgYXRoMTBrICphciwKIAlhcmctPnBoeV9jYXBhYiA9IGV2LT5waHlfY2FwYWJp
bGl0eTsKIAlhcmctPm51bV9yZl9jaGFpbnMgPSBldi0+bnVtX3JmX2NoYWluczsKIAlhcmctPmVl
cHJvbV9yZCA9IHJlZy0+ZWVwcm9tX3JkOworCWFyZy0+bG93XzJnaHpfY2hhbiA9IHJlZy0+bG93
XzJnaHpfY2hhbjsKKwlhcmctPmhpZ2hfMmdoel9jaGFuID0gcmVnLT5oaWdoXzJnaHpfY2hhbjsK
IAlhcmctPmxvd181Z2h6X2NoYW4gPSByZWctPmxvd181Z2h6X2NoYW47CiAJYXJnLT5oaWdoXzVn
aHpfY2hhbiA9IHJlZy0+aGlnaF81Z2h6X2NoYW47CiAJYXJnLT5udW1fbWVtX3JlcXMgPSBldi0+
bnVtX21lbV9yZXFzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEw
ay93bWkuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMKaW5kZXggMWVj
NjA5ZC4uM2VmNmVlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEw
ay93bWkuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jCkBAIC01
MzYyLDYgKzUzNjIsOCBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2NfaG9zdF9tZW0oc3Ry
dWN0IGF0aDEwayAqYXIsIHUzMiByZXFfaWQsCiAJYXJnLT5waHlfY2FwYWIgPSBldi0+cGh5X2Nh
cGFiaWxpdHk7CiAJYXJnLT5udW1fcmZfY2hhaW5zID0gZXYtPm51bV9yZl9jaGFpbnM7CiAJYXJn
LT5lZXByb21fcmQgPSBldi0+aGFsX3JlZ19jYXBhYmlsaXRpZXMuZWVwcm9tX3JkOworCWFyZy0+
bG93XzJnaHpfY2hhbiA9IGV2LT5oYWxfcmVnX2NhcGFiaWxpdGllcy5sb3dfMmdoel9jaGFuOwor
CWFyZy0+aGlnaF8yZ2h6X2NoYW4gPSBldi0+aGFsX3JlZ19jYXBhYmlsaXRpZXMuaGlnaF8yZ2h6
X2NoYW47CiAJYXJnLT5sb3dfNWdoel9jaGFuID0gZXYtPmhhbF9yZWdfY2FwYWJpbGl0aWVzLmxv
d181Z2h6X2NoYW47CiAJYXJnLT5oaWdoXzVnaHpfY2hhbiA9IGV2LT5oYWxfcmVnX2NhcGFiaWxp
dGllcy5oaWdoXzVnaHpfY2hhbjsKIAlhcmctPm51bV9tZW1fcmVxcyA9IGV2LT5udW1fbWVtX3Jl
cXM7CkBAIC01NDAwLDYgKzU0MDIsOCBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2NfaG9z
dF9tZW0oc3RydWN0IGF0aDEwayAqYXIsIHUzMiByZXFfaWQsCiAJYXJnLT5waHlfY2FwYWIgPSBl
di0+cGh5X2NhcGFiaWxpdHk7CiAJYXJnLT5udW1fcmZfY2hhaW5zID0gZXYtPm51bV9yZl9jaGFp
bnM7CiAJYXJnLT5lZXByb21fcmQgPSBldi0+aGFsX3JlZ19jYXBhYmlsaXRpZXMuZWVwcm9tX3Jk
OworCWFyZy0+bG93XzJnaHpfY2hhbiA9IGV2LT5oYWxfcmVnX2NhcGFiaWxpdGllcy5sb3dfMmdo
el9jaGFuOworCWFyZy0+aGlnaF8yZ2h6X2NoYW4gPSBldi0+aGFsX3JlZ19jYXBhYmlsaXRpZXMu
aGlnaF8yZ2h6X2NoYW47CiAJYXJnLT5sb3dfNWdoel9jaGFuID0gZXYtPmhhbF9yZWdfY2FwYWJp
bGl0aWVzLmxvd181Z2h6X2NoYW47CiAJYXJnLT5oaWdoXzVnaHpfY2hhbiA9IGV2LT5oYWxfcmVn
X2NhcGFiaWxpdGllcy5oaWdoXzVnaHpfY2hhbjsKIAlhcmctPm51bV9tZW1fcmVxcyA9IGV2LT5u
dW1fbWVtX3JlcXM7CkBAIC01NDU0LDYgKzU0NTgsOCBAQCBzdGF0aWMgdm9pZCBhdGgxMGtfd21p
X2V2ZW50X3NlcnZpY2VfcmVhZHlfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJYXIt
PnBoeV9jYXBhYmlsaXR5ID0gX19sZTMyX3RvX2NwdShhcmcucGh5X2NhcGFiKTsKIAlhci0+bnVt
X3JmX2NoYWlucyA9IF9fbGUzMl90b19jcHUoYXJnLm51bV9yZl9jaGFpbnMpOwogCWFyLT5od19l
ZXByb21fcmQgPSBfX2xlMzJfdG9fY3B1KGFyZy5lZXByb21fcmQpOworCWFyLT5sb3dfMmdoel9j
aGFuID0gX19sZTMyX3RvX2NwdShhcmcubG93XzJnaHpfY2hhbik7CisJYXItPmhpZ2hfMmdoel9j
aGFuID0gX19sZTMyX3RvX2NwdShhcmcuaGlnaF8yZ2h6X2NoYW4pOwogCWFyLT5sb3dfNWdoel9j
aGFuID0gX19sZTMyX3RvX2NwdShhcmcubG93XzVnaHpfY2hhbik7CiAJYXItPmhpZ2hfNWdoel9j
aGFuID0gX19sZTMyX3RvX2NwdShhcmcuaGlnaF81Z2h6X2NoYW4pOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5oIGIvZHJpdmVycy9uZXQvd2lyZWxl
c3MvYXRoL2F0aDEway93bWkuaAppbmRleCBiZGVlYmM1Li45Y2NhZWI3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5oCisrKyBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvd21pLmgKQEAgLTY4NzAsNiArNjg3MCw4IEBAIHN0cnVjdCB3bWlf
c3ZjX3JkeV9ldl9hcmcgewogCV9fbGUzMiBudW1fcmZfY2hhaW5zOwogCV9fbGUzMiBlZXByb21f
cmQ7CiAJX19sZTMyIG51bV9tZW1fcmVxczsKKwlfX2xlMzIgbG93XzJnaHpfY2hhbjsKKwlfX2xl
MzIgaGlnaF8yZ2h6X2NoYW47CiAJX19sZTMyIGxvd181Z2h6X2NoYW47CiAJX19sZTMyIGhpZ2hf
NWdoel9jaGFuOwogCWNvbnN0IF9fbGUzMiAqc2VydmljZV9tYXA7Ci0tIAoxLjcuMC40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxp
bmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
