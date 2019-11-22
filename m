Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D296106979
	for <lists+ath10k@lfdr.de>; Fri, 22 Nov 2019 11:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+NM0EKCcc2irecC1PpRBl0WpcPspveMnoSA/sZw0Qo=; b=L1JhuC/GVYaCIB
	GBw9w1LGTXMHvDdkxJvGMql38uwrOBozs2zZGgzH3Ty9MH1+tCbZCsUAfLpNN8MHzNSW4XuHH12ea
	QxlFtcUxyXVl2QwxW4ubWII9H7lNU4ySitAlUfQ+SYpxNhBWImKqejp+R0yILAs2bhwiT4EcRrsSf
	QrdS1k46ViHSJtCOHH4A7KA7HAkAey+49uQYwhsyZ71J9Nfs5ImNpAYo3j3DyXicPqRycB6JnbPRY
	0Hq0LffSKhXHBeqE4p45rBEcyzZ/TnNH+EqBtN0qjVYYPDraJI22iIjWM/pQ5La3srsG2JIP40Af4
	ki9z4bInj+Onr5cCdPLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5lz-0005tR-Ef; Fri, 22 Nov 2019 10:02:43 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5lv-0005i3-CC
 for ath10k@lists.infradead.org; Fri, 22 Nov 2019 10:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574416955;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=AlNw6b30Bh8L6QhdL0cnrdZTD8RXiY/LEYyCbwFLZtk=;
 b=my33NrbaCy7jzmhOVniXTdPYuFcZVGQCkN8ra8upGX1ORv/l4OFVeeZ7VZM02mn3
 rUY9lud0As7du4VmMfV71xGxlPDgbBDGxb1jlz8LH+xGmeL3hGw2T/bFs9vLWAfAVlU
 vlZluM9A7pwXfoFKT86bHWP7QW5DNRdmigTNU0I0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574416955;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID;
 bh=AlNw6b30Bh8L6QhdL0cnrdZTD8RXiY/LEYyCbwFLZtk=;
 b=bI6+u2oIqpvpH/ZWNfz82lFk7kGJHtiwa84V8IrymhP9i5jdUWys/lD7dX+KmviL
 1S5tjTvGjrwMQ7qzCvB9M4tE4Z+cDx9jTZvmxR5YPr48Ff0ln1wHspqAm9VYAm/naDz
 IWwM8svOVxprNApU6He+MlGywEa1aqsQKVQtXsuM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A76B0C92FED
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 3/3] ath10k: add workqueue for RX path of sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-4-git-send-email-wgong@codeaurora.org>
 <8736f92sfx.fsf@kamboji.qca.qualcomm.com>
 <3f3641ad49a2664d346558760e38b404@codeaurora.org>
 <70f8f208f631a2a2c7337f45b873a16e@codeaurora.org>
 <87r22ewqi6.fsf@codeaurora.org>
 <ee6539c50cff626968984df3b511a5a8@codeaurora.org>
Date: Fri, 22 Nov 2019 10:02:35 +0000
In-Reply-To: <ee6539c50cff626968984df3b511a5a8@codeaurora.org> (Wen Gong's
 message of "Wed, 13 Nov 2019 11:37:57 +0800")
Message-ID: <0101016e92903924-6cb9c71f-eaec-45ae-a239-8281c59fd89a-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.22-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_020239_453118_25737471 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V2VuIEdvbmcgPHdnb25nQGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cgo+IE9uIDIwMTktMTEtMTEg
MjA6MjMsIEthbGxlIFZhbG8gd3JvdGU6Cj4+IFdlbiBHb25nIDx3Z29uZ0Bjb2RlYXVyb3JhLm9y
Zz4gd3JpdGVzOgo+Pgo+Pj4gT24gMjAxOS0xMS0wMSAxNTo0MiwgV2VuIEdvbmcgd3JvdGU6Cj4+
Pj4gT24gMjAxOS0xMC0zMSAxNzowOCwgS2FsbGUgVmFsbyB3cm90ZToKPj4+PiDjgIE+IEkganVz
dCByZWFsaXNlZCB0aGF0IHRoaXMgaXMgUlggcGF0aCBzbyB3ZSBzaG91bGQgdXNlCj4+Pj4gQVRI
MTBLX1NLQl9SWENCKCkKPj4+Pj4gaW5zdGVhZC4gSSBtYWRlIHRoZSBjaGFuZ2UgYmVsb3cgdG8g
dGhpcyBjb21taXQgaW4gcGVuZGluZyBicmFuY2g6Cj4+Pj4+Cj4+Pj4gSSB3aWxsIHRlc3Qgd2l0
aCB0aGUgbmV3IHBhdGNoIHRvZ2V0aGVyIHdpdGggb3RoZXIgcGVyZm9ybWFuY2UKPj4+PiBwYXRj
aGVzLgo+Pj4gSGkgS2FsbGUsIEkgaGF2ZSB0ZXN0ZWQgd2l0aCB0aGUgcGF0Y2hlcyBvZiBwZW5k
aW5nIGJyYW5jaCwgaXQgaXMKPj4+IHN1Y2Nlc3MuCj4+PiByZXN1bHQgaXMgc2FtZSB3aXRoIHRo
ZSBwdWJsaWMgcmV2aWV3IHdoaWNoIEkgdGVzdGVkIGJlZm9yZS4KPj4+Cj4+PiB0aGUgcGF0Y2hl
cyBJIHRlc3RlZCBvbiBwZW5kaW5nIGJyYW5jaDoKPj4+Cj4+PiBhdGgxMGs6IGVuYWJsZSBhbHQg
ZGF0YSBvZiBUWCBwYXRoIGZvciBzZGlvCj4+PiBhdGgxMGs6IGFkZCBodHQgVFggYnVuZGxlIGZv
ciBzZGlvCj4+PiBhdGgxMGs6IGRpc2FibGUgVFggY29tcGxldGUgaW5kaWNhdGlvbiBvZiBodHQg
Zm9yIHNkaW8KPj4+IGF0aDEwazogZW5hYmxlIG5hcGkgb24gUlggcGF0aCBmb3Igc2Rpbwo+Pj4g
YXRoMTBrOiBzZGlvOiByZW1vdmUgc3RydWN0IGF0aDEwa19zZGlvX3J4X2RhdGE6OnN0YXR1cwo+
Pj4gYXRoMTBrOiBzZGlvOiBjb3NtZXRpYyBjbGVhbnVwCj4+PiBhdGgxMGs6IGFkZCB3b3JrcXVl
dWUgZm9yIFJYIHBhdGggb2Ygc2Rpbwo+Pj4gYXRoMTBrOiBjaGFuZ2UgbWF4IFJYIGJ1bmRsZSBz
aXplIGZyb20gOCB0byAzMiBmb3Igc2Rpbwo+Pj4gYXRoMTBrOiBlbmFibGUgUlggYnVuZGxlIHJl
Y2VpdmUgZm9yIHNkaW8KPj4KPj4gVmVyeSBnb29kLCB0aGFua3MgZm9yIHRlc3RpbmcuCj4KPiB0
aGlzIHBhdGNoIHdpbGwgdHJpZ2dlciBjb25uZWN0IGZhaWwgZm9yIFBTSyBtb2RlIEFQOgo+IGF0
aDEwazogYWRkIHdvcmtxdWV1ZSBmb3IgUlggcGF0aCBvZiBzZGlvCj4KPiBJIGhhdmUgc2VudCBw
YXRjaCB0byBmaXggaXQ6Cj4gYXRoMTBrOiBjbGVhciBpZWVlODAyMTFfcnhfc3RhdHVzIGZvciBz
ZGlvCgpHb29kIGNhdGNoISBCdXQgYXMgdGhpcyBwYXRjaCBpcyBub3QgeWV0IGFwcGxpZWQgSSBm
aXhlZCB0aGlzIHBhdGNoCmluc3RlYWQgd2l0aCB0aGlzOgoKLS0tIGEvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRoL2F0aDEway9odHRfcnguYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
YXRoMTBrL2h0dF9yeC5jCkBAIC0yMjM1LDcgKzIyMzUsMTAgQEAgc3RhdGljIGJvb2wgYXRoMTBr
X2h0dF9yeF9wcm9jX3J4X2luZF9obChzdHJ1Y3QgYXRoMTBrX2h0dCAqaHR0LAogCiAgICAgICAg
aGRyID0gKHN0cnVjdCBpZWVlODAyMTFfaGRyICopc2tiLT5kYXRhOwogICAgICAgIHFvcyA9IGll
ZWU4MDIxMV9pc19kYXRhX3FvcyhoZHItPmZyYW1lX2NvbnRyb2wpOworCiAgICAgICAgcnhfc3Rh
dHVzID0gSUVFRTgwMjExX1NLQl9SWENCKHNrYik7CisgICAgICAgbWVtc2V0KHJ4X3N0YXR1cywg
MCwgc2l6ZW9mKCpyeF9zdGF0dXMpKTsKKwogICAgICAgIHJ4X3N0YXR1cy0+Y2hhaW5zIHw9IEJJ
VCgwKTsKICAgICAgICBpZiAocngtPnBwZHUuY29tYmluZWRfcnNzaSA9PSAwKSB7CiAgICAgICAg
ICAgICAgICAvKiBTRElPIGZpcm13YXJlIGRvZXMgbm90IHByb3ZpZGUgc2lnbmFsICovCgotLSAK
aHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0
aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
