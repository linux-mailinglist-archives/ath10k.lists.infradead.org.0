Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1982BBC6B
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 21:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sr3L8ty1ExjBpPjg4Q3sg+b3fLjI8qRVam7fxeTAqfk=; b=Wjm6IK6k7c+HYg
	VSPMPG23dw+7NLFvtCkYnmcgUng3SXGK49jdMFdIGPRPy9tCjxYgjG8EMy3bqpdBcOSoFqhfobiFX
	BvBKddv5uCCDkE5DY0FutkyIF1K0NPk9cpPpoh0PlBAevva4a37Rs/1cR7hw7QSoDG1KkvhcVSgWT
	GXme49Rw6v/6o74F6/tyqcaa4mJG7qd8i6nJ6aK1vmUOXIs3qhTR7Dz9eoA14VgA9jfBfZEMiw7qj
	wsQwwxhI1HydkxF+St+oUsDxwVPpQcSM24Sy5T+oLy9Yu8nJRhgdQM2Pz5iGY4IZ2KeP3/ha9E4DB
	y6of2Xq9cQJKQAXRJ5Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCULM-0004eu-BN; Mon, 23 Sep 2019 19:49:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUL4-0004OM-C1
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 19:49:40 +0000
Received: by mail-wr1-x435.google.com with SMTP id l3so15308811wru.7
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 12:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CkWW93VozEz14AiNPO1yGBR7cePQrOV3NZ94jN8016A=;
 b=nkJynhx+vwQ0RhTfTBsO2m56l3r8vY/SrUOX/dZeE8TiM5/QM5w0u1bkm4Vv9RcHk/
 xlVnP/V5h/5+CNqvoZZorJX1/9JOn0IHChkyAYdp6SWULMAOX86w9gZlaCz2Nr2VW21O
 ERBQwKZTDf4iwAvpj5TaRRbcLhs6EPhJ3cQzCqviZJCQHtkdgVQefY4BEg1/YqNb58BW
 cO6S6mSbS3jUqsP4GBuWJ+AcMBLoBLgyexTV5TtmV5vXkzaXDMGCpmNtYG3va0N0aSwU
 wcvjkO56Cp5HA+9jLIJEEcHJUlwMGW8N8H5jDS9RKyvfXMJbooiduXk/nwubJCRkos3X
 yrgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CkWW93VozEz14AiNPO1yGBR7cePQrOV3NZ94jN8016A=;
 b=IxxNK1tsJ8tzku91f9zSVkAImMUstJnVD9erM9oSWUZiwGpWTm4A4SGyf6liV+3CXM
 8fBJsq7bYW8PBgLpEvLY4SQ2JFRYIE6UJsK3eGeS3CywityAh5v0wh02WPoGiomQfzwR
 QlRP0Fg0LGTwKBmeeo7DHeLLjchRmD6cpjSuKdDerba2ZYCiQKBUCj628cQSfOI0jKbh
 iO+BrfcFXKLvzEwRTHYnunROAlrzafpxFgKMr0OSGDnWM41Zimg36YbPRcLKwl3h9zIO
 xR5s0+ZooEkIHE7WvUKdtns58l4Odk1kILWzxmPDOKpXEr4nIMFDFXNRCKDDvPAW7150
 9wIg==
X-Gm-Message-State: APjAAAV1SGdu7e6tKCQAOclfH7kpu7WKtm3EV6ZVBsbFnzVuWt2fg/VA
 3le9SJG0Vk8/yDNYmDopqpU=
X-Google-Smtp-Source: APXvYqxLULFakI4c/RH3kHp+oLCsg5q8vI+kXh2wJM7CGtIFBiOne5ZxU9/T7iUVXVtSASPTFJLmHA==
X-Received: by 2002:adf:ab57:: with SMTP id r23mr786240wrc.222.1569268170984; 
 Mon, 23 Sep 2019 12:49:30 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id
 o188sm25108013wma.14.2019.09.23.12.49.30
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 12:49:30 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 3/5] ath10k: print supported MCS rates within service ready
 event
Date: Mon, 23 Sep 2019 21:49:23 +0200
Message-Id: <1569268165-1639-3-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_124938_409972_63202EB5 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

QWRkIHZodF9zdXBwX21jcyBhcmd1bWVudCB0byBzZXJ2aWNlIHJlYWR5IHN0cnVjdHVyZSBhbmQg
cHJpbnQKc3VwcG9ydGVkIE1DUyByYXRlcyBpbiBXTUkgc2VydmljZSByZWFkeSBkZWJ1ZyBtZXNz
YWdlLgoKU2lnbmVkLW9mZi1ieTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaCAgICB8
ICAgIDEgKwogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWktdGx2LmMgfCAgICAx
ICsKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMgICAgIHwgICAgNiArKysr
Ky0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmggICAgIHwgICAgMSArCiA0
IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2NvcmUuaCBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oCmluZGV4IDJhMGEwMDguLjE1M2M0YTIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oCisrKyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5oCkBAIC05NjQsNiArOTY0LDcgQEAgc3Ry
dWN0IGF0aDEwayB7CiAJdTMyIGh3X2VlcHJvbV9yZDsKIAl1MzIgaHRfY2FwX2luZm87CiAJdTMy
IHZodF9jYXBfaW5mbzsKKwl1MzIgdmh0X3N1cHBfbWNzOwogCXUzMiBudW1fcmZfY2hhaW5zOwog
CXUzMiBtYXhfc3BhdGlhbF9zdHJlYW07CiAJLyogcHJvdGVjdGVkIGJ5IGNvbmZfbXV0ZXggKi8K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLXRsdi5jIGIv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWktdGx2LmMKaW5kZXggYmRhNTJjYS4u
MjQzMmE3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkt
dGx2LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWktdGx2LmMKQEAg
LTEyMDEsNiArMTIwMSw3IEBAIHN0YXRpYyBpbnQgYXRoMTBrX3dtaV90bHZfb3BfcHVsbF9zdmNf
cmR5X2V2KHN0cnVjdCBhdGgxMGsgKmFyLAogCWFyZy0+bWF4X3R4X3Bvd2VyID0gZXYtPmh3X21h
eF90eF9wb3dlcjsKIAlhcmctPmh0X2NhcCA9IGV2LT5odF9jYXBfaW5mbzsKIAlhcmctPnZodF9j
YXAgPSBldi0+dmh0X2NhcF9pbmZvOworCWFyZy0+dmh0X3N1cHBfbWNzID0gZXYtPnZodF9zdXBw
X21jczsKIAlhcmctPnN3X3ZlcjAgPSBldi0+YWJpLmFiaV92ZXIwOwogCWFyZy0+c3dfdmVyMSA9
IGV2LT5hYmkuYWJpX3ZlcjE7CiAJYXJnLT5md19idWlsZCA9IGV2LT5md19idWlsZF92ZXJzOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMKaW5kZXggYjdiODA3Mi4uMmQ0M2FkZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYworKysgYi9k
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jCkBAIC01MzU3LDYgKzUzNTcsNyBA
QCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2NfaG9zdF9tZW0oc3RydWN0IGF0aDEwayAqYXIs
IHUzMiByZXFfaWQsCiAJYXJnLT5tYXhfdHhfcG93ZXIgPSBldi0+aHdfbWF4X3R4X3Bvd2VyOwog
CWFyZy0+aHRfY2FwID0gZXYtPmh0X2NhcF9pbmZvOwogCWFyZy0+dmh0X2NhcCA9IGV2LT52aHRf
Y2FwX2luZm87CisJYXJnLT52aHRfc3VwcF9tY3MgPSBldi0+dmh0X3N1cHBfbWNzOwogCWFyZy0+
c3dfdmVyMCA9IGV2LT5zd192ZXJzaW9uOwogCWFyZy0+c3dfdmVyMSA9IGV2LT5zd192ZXJzaW9u
XzE7CiAJYXJnLT5waHlfY2FwYWIgPSBldi0+cGh5X2NhcGFiaWxpdHk7CkBAIC01Mzk4LDYgKzUz
OTksNyBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2NfaG9zdF9tZW0oc3RydWN0IGF0aDEw
ayAqYXIsIHUzMiByZXFfaWQsCiAJYXJnLT5tYXhfdHhfcG93ZXIgPSBldi0+aHdfbWF4X3R4X3Bv
d2VyOwogCWFyZy0+aHRfY2FwID0gZXYtPmh0X2NhcF9pbmZvOwogCWFyZy0+dmh0X2NhcCA9IGV2
LT52aHRfY2FwX2luZm87CisJYXJnLT52aHRfc3VwcF9tY3MgPSBldi0+dmh0X3N1cHBfbWNzOwog
CWFyZy0+c3dfdmVyMCA9IGV2LT5zd192ZXJzaW9uOwogCWFyZy0+cGh5X2NhcGFiID0gZXYtPnBo
eV9jYXBhYmlsaXR5OwogCWFyZy0+bnVtX3JmX2NoYWlucyA9IGV2LT5udW1fcmZfY2hhaW5zOwpA
QCAtNTQ0OSw2ICs1NDUxLDcgQEAgc3RhdGljIHZvaWQgYXRoMTBrX3dtaV9ldmVudF9zZXJ2aWNl
X3JlYWR5X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCWFyLT5od19tYXhfdHhfcG93
ZXIgPSBfX2xlMzJfdG9fY3B1KGFyZy5tYXhfdHhfcG93ZXIpOwogCWFyLT5odF9jYXBfaW5mbyA9
IF9fbGUzMl90b19jcHUoYXJnLmh0X2NhcCk7CiAJYXItPnZodF9jYXBfaW5mbyA9IF9fbGUzMl90
b19jcHUoYXJnLnZodF9jYXApOworCWFyLT52aHRfc3VwcF9tY3MgPSBfX2xlMzJfdG9fY3B1KGFy
Zy52aHRfc3VwcF9tY3MpOwogCWFyLT5md192ZXJzaW9uX21ham9yID0KIAkJKF9fbGUzMl90b19j
cHUoYXJnLnN3X3ZlcjApICYgMHhmZjAwMDAwMCkgPj4gMjQ7CiAJYXItPmZ3X3ZlcnNpb25fbWlu
b3IgPSAoX19sZTMyX3RvX2NwdShhcmcuc3dfdmVyMCkgJiAweDAwZmZmZmZmKTsKQEAgLTU1NjMs
MTEgKzU1NjYsMTIgQEAgc3RhdGljIHZvaWQgYXRoMTBrX3dtaV9ldmVudF9zZXJ2aWNlX3JlYWR5
X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCiBza2lwX21lbV9hbGxvYzoKIAlhdGgx
MGtfZGJnKGFyLCBBVEgxMEtfREJHX1dNSSwKLQkJICAgIndtaSBldmVudCBzZXJ2aWNlIHJlYWR5
IG1pbl90eF9wb3dlciAweCUwOHggbWF4X3R4X3Bvd2VyIDB4JTA4eCBodF9jYXAgMHglMDh4IHZo
dF9jYXAgMHglMDh4IHN3X3ZlcjAgMHglMDh4IHN3X3ZlcjEgMHglMDh4IGZ3X2J1aWxkIDB4JTA4
eCBwaHlfY2FwYWIgMHglMDh4IG51bV9yZl9jaGFpbnMgMHglMDh4IGVlcHJvbV9yZCAweCUwOHgg
bG93XzJnaHpfY2hhbiAlZCBoaWdoXzJnaHpfY2hhbiAlZCBsb3dfNWdoel9jaGFuICVkIGhpZ2hf
NWdoel9jaGFuICVkIG51bV9tZW1fcmVxcyAweCUwOHhcbiIsCisJCSAgICJ3bWkgZXZlbnQgc2Vy
dmljZSByZWFkeSBtaW5fdHhfcG93ZXIgMHglMDh4IG1heF90eF9wb3dlciAweCUwOHggaHRfY2Fw
IDB4JTA4eCB2aHRfY2FwIDB4JTA4eCB2aHRfc3VwcF9tY3MgMHglMDh4IHN3X3ZlcjAgMHglMDh4
IHN3X3ZlcjEgMHglMDh4IGZ3X2J1aWxkIDB4JTA4eCBwaHlfY2FwYWIgMHglMDh4IG51bV9yZl9j
aGFpbnMgMHglMDh4IGVlcHJvbV9yZCAweCUwOHggbG93XzJnaHpfY2hhbiAlZCBoaWdoXzJnaHpf
Y2hhbiAlZCBsb3dfNWdoel9jaGFuICVkIGhpZ2hfNWdoel9jaGFuICVkIG51bV9tZW1fcmVxcyAw
eCUwOHhcbiIsCiAJCSAgIF9fbGUzMl90b19jcHUoYXJnLm1pbl90eF9wb3dlciksCiAJCSAgIF9f
bGUzMl90b19jcHUoYXJnLm1heF90eF9wb3dlciksCiAJCSAgIF9fbGUzMl90b19jcHUoYXJnLmh0
X2NhcCksCiAJCSAgIF9fbGUzMl90b19jcHUoYXJnLnZodF9jYXApLAorCQkgICBfX2xlMzJfdG9f
Y3B1KGFyZy52aHRfc3VwcF9tY3MpLAogCQkgICBfX2xlMzJfdG9fY3B1KGFyZy5zd192ZXIwKSwK
IAkJICAgX19sZTMyX3RvX2NwdShhcmcuc3dfdmVyMSksCiAJCSAgIF9fbGUzMl90b19jcHUoYXJn
LmZ3X2J1aWxkKSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsv
d21pLmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5oCmluZGV4IDljY2Fl
YjcuLmQ5ZDUzZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsv
d21pLmgKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuaApAQCAtNjg2
Myw2ICs2ODYzLDcgQEAgc3RydWN0IHdtaV9zdmNfcmR5X2V2X2FyZyB7CiAJX19sZTMyIG1heF90
eF9wb3dlcjsKIAlfX2xlMzIgaHRfY2FwOwogCV9fbGUzMiB2aHRfY2FwOworCV9fbGUzMiB2aHRf
c3VwcF9tY3M7CiAJX19sZTMyIHN3X3ZlcjA7CiAJX19sZTMyIHN3X3ZlcjE7CiAJX19sZTMyIGZ3
X2J1aWxkOwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
