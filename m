Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09690BBC69
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 21:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wDnc5IAs8gOLlQ2hOSs4dmDe+6+yPppSDfADHXZrxk=; b=EtM7eL2QSQh67w
	9ol4SbfY01uPegqCPwtmekkwZihcAS+lT0ajXX0bXFGbrlq4F+HwPMv//cNf3qCpC7Qu5RopBhSFf
	5V3nPZ7wIr4NyehYcIewOSwt38+4X5rmFWjz0OHEpDz5DpYknXqPPkuP0eMEljn+fYKYIbn2MRo8s
	9ikIt6yGxz2ywI6l4FVG2wmROK4cQvYg5eqsu7p5cZiUoH8UfeCYh53AZOysmheImPgdx9+VPjxIL
	NNADfLdtJS7apuXE3A7mQI7zZ45Nohz8i0y2XsewqkTk0du8NaCKvWVWfbQrba+QjSQPKty3vcOLX
	BYp/2PcjkrwrSl+ym3sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCULD-0004Uq-D1; Mon, 23 Sep 2019 19:49:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUL4-0004ON-CX
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 19:49:40 +0000
Received: by mail-wr1-x434.google.com with SMTP id r5so15285483wrm.12
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 12:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aKtmtSedZmqwNRKQvTjw2tVLyZk03BE91Oh9l3casmw=;
 b=JsvvtVAxCOZoelDBfv0L7dpTIp+6bhECrNPMlbkJBaReoPqBMYFAsQQF6DWn+iKuoV
 AXsMK8uu/ZpJmKRa1Hoe/Jp1kF7U+nKFMSFA7cOBi4AuYf+IDVeQhl395hPLX1bunZPX
 +KwUHbiEUX2sI8DnvXOrf8hJ5Ff4sLiyAn2YkEPXay2myhY3/pB3CxN8kH6Yhxgu3BWn
 WQluni2SyyXpjmdQEexEfZLb5a4Owu9ImsJpEipmIULkyzlMMUn5CyO9VeqXh6AA/J2Z
 vzNI+C0jD6XaAyvgbTAjxxZ9LeeKoeY/RG2U5LGlL/bdfQXXkajTEZzj8p5P4olaZoqq
 8LKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aKtmtSedZmqwNRKQvTjw2tVLyZk03BE91Oh9l3casmw=;
 b=dCd4pTIP4DaptwuwCr7VmIId4h+42O8nrSX7Vv4jqPze3qrivoPcvWAyd0VmxZM4sJ
 /p6JHfbcXXgmQ7zaPe0iWk2tMDwAtofiPi8D2mwQh8x6dkJsXnF0lkfnwQXagElvfPnv
 ddZMsjRekzO9lL80YriT4uYDlv8G9mAU4Jw1DEn+E1Hj8qzpQWBsnK4oEf/o+CoQS6o2
 RK1FeSYP9K7BwKeSj7gIQJ1GNqb3TrEzBkyCYjH5H8CSZlExW062HbqnA+5vFc5Hpy/+
 my84wdx8fiVmfFtuW3zCwCDVx8XQYtWLvm0JNhT+TUSQ3aA5uWmfsX2Cb1YSV4NqqexW
 NLsQ==
X-Gm-Message-State: APjAAAWWHsLJhbRdmlmQZ2FY4+fQDYvEwvEaQDqSX++RVUND0VO5+RVQ
 10feeezUmC5trSkxFyXznIk=
X-Google-Smtp-Source: APXvYqzRZfNdTml48n2fpSD+PnGFA8XeER/BMeskg+CehdxikXvvDyocfgel1T0zP/CQteTzEEuTAA==
X-Received: by 2002:a05:6000:a:: with SMTP id h10mr802484wrx.226.1569268171849; 
 Mon, 23 Sep 2019 12:49:31 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id
 o188sm25108013wma.14.2019.09.23.12.49.31
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 12:49:31 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 4/5] ath10k: change sw version print format to hex
Date: Mon, 23 Sep 2019 21:49:24 +0200
Message-Id: <1569268165-1639-4-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_124938_423214_6F737290 
X-CRM114-Status: GOOD (  10.29  )
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
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
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

U29mdHdhcmUgdmVyc2lvbiB3aXRoaW4gV01JIGV2ZW50IHJlYWR5IG1lc3NhZ2Ugd2FzIGRpc3Bs
YXllZAppbiBhIG5vdCB2ZXJ5IHVzZWZ1bCBkZWNpbWFsIGZvcm1hdC4gQ2hhbmdlIHRoaXMgaW5m
byB0byBiZSBzaG93bgppbiBhIGhleGFkZWNpbWFsIGZvcm1hdCBpbnN0ZWFkLgoKU2lnbmVkLW9m
Zi1ieTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jIHwgICAgMiArLQogMSBmaWxlcyBj
aGFuZ2VkLCAxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvd21pLmMKaW5kZXggMmQ0M2FkZi4uNTlkMmQyYSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYworKysgYi9kcml2ZXJzL25ldC93aXJl
bGVzcy9hdGgvYXRoMTBrL3dtaS5jCkBAIC01NjUwLDcgKzU2NTAsNyBAQCBpbnQgYXRoMTBrX3dt
aV9ldmVudF9yZWFkeShzdHJ1Y3QgYXRoMTBrICphciwgc3RydWN0IHNrX2J1ZmYgKnNrYikKIAl9
CiAKIAlhdGgxMGtfZGJnKGFyLCBBVEgxMEtfREJHX1dNSSwKLQkJICAgIndtaSBldmVudCByZWFk
eSBzd192ZXJzaW9uICV1IGFiaV92ZXJzaW9uICV1IG1hY19hZGRyICVwTSBzdGF0dXMgJWRcbiIs
CisJCSAgICJ3bWkgZXZlbnQgcmVhZHkgc3dfdmVyc2lvbiAweCUwOHggYWJpX3ZlcnNpb24gJXUg
bWFjX2FkZHIgJXBNIHN0YXR1cyAlZFxuIiwKIAkJICAgX19sZTMyX3RvX2NwdShhcmcuc3dfdmVy
c2lvbiksCiAJCSAgIF9fbGUzMl90b19jcHUoYXJnLmFiaV92ZXJzaW9uKSwKIAkJICAgYXJnLm1h
Y19hZGRyLAotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
