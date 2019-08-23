Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CCA9AA89
	for <lists+ath10k@lfdr.de>; Fri, 23 Aug 2019 10:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0vrIQDzecAaEI9yHKK7hGa1I+emRFPRG48M51Q4e3E=; b=RA2ThfzGpYw//z
	T3ULuc+V96CCqZWb6jaarlwF4SCAyUlUFVrbVX3gAxzZnPpzpiKZCI3oOY7fhNUGl9hl8r31Pzkrd
	g5lzJDZRnJ1NYPWeU6y2WRt913cKww5EhauyBMNhnxIdLX7/lBFOmT7PAMJ+IqiMh8tcPvV+KmEN7
	CZAeL4biEkazZxicMTdTY0U4hCYGHg1S7RVGtiNarQwMpsEoVjLkipAc3xp1V3sheZG4uCBTg0S8p
	tTu5LukkF3EdT1FImhySDDWaqqDRtMBxdvcHkoovUF9xXU+oZAyFgvq3yzfEXnkQ7R8P4rnxlLxV4
	SDMOviNeGhBKCSijOwHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i156L-0007F7-Tz; Fri, 23 Aug 2019 08:39:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i156E-0007Eg-Ky
 for ath10k@lists.infradead.org; Fri, 23 Aug 2019 08:39:11 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 001B94E93D
 for <ath10k@lists.infradead.org>; Fri, 23 Aug 2019 08:39:09 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id f11so4890737edb.16
 for <ath10k@lists.infradead.org>; Fri, 23 Aug 2019 01:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=FEChvyYJDid1Eoz0Uy7rSJIaS/vQA0YWw6nWi+DAOys=;
 b=cLqxL8+XwkVUBdXHV/IkkDvbpWIbF9KI9vlgmFrGilxiI4Ij6SnRDccEzNQSKl9mxQ
 YDFnOI+YbPUcLKfbQaMHgGO+gjf1WE8G98pYAkEpQb1fXBqTjt5np7GZ2IZOdP5NmIrw
 AyGayP/Mzjl5yOy8RDsfW5vHImE9yWmbILC8Q+PXqR1dyJU2pdGNs78ui0bD8/uSGd2e
 4ftv/f1IayRg02A6wjhuxvR0JDNIbwd/VChYyestgTEmneYwHSLK53mQHSaxX8ZZ9P+g
 D6ElIrsgw+NjA7bwKOXxzPvWaah5ibBa0IZJWNF1IGQXfoV3AaoR9d7ZYSW91N9hldOv
 Fwug==
X-Gm-Message-State: APjAAAWGC7jmOJoa/n+kj4PthEgrNJmPENqvlgX0Lk+5ifCa6Bg/cZCz
 +6pTa5X8GHSTjF9AxQYkv3954J+20bv/R+HH4KfQWYpNNqC0+nbqRbMpi2M/BD9zlZ8OiNF0YgH
 voI3HpE4yXxuhLleAhiWxDA==
X-Received: by 2002:a50:a5dd:: with SMTP id b29mr3252562edc.34.1566549548601; 
 Fri, 23 Aug 2019 01:39:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4vpB98rtsMnX02fNDGrQzVhDzRaXKcUoRjGDf64B3TdfNHFnesExKQx/4Hw2fBCgka4NAAA==
X-Received: by 2002:a50:a5dd:: with SMTP id b29mr3252553edc.34.1566549548486; 
 Fri, 23 Aug 2019 01:39:08 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id y9sm390623eds.49.2019.08.23.01.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 01:39:07 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 3B257181CEF; Fri, 23 Aug 2019 10:39:07 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Wen Gong <wgong@codeaurora.org>,
 "ath10k\@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
In-Reply-To: <250d064103394dfd864c1281f0da3d83@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
 <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
 <8736husub0.fsf@toke.dk>
 <86d0eabcc63849efa914f2c14a3cd59f@aptaiexm02f.ap.qualcomm.com>
 <874l29pffy.fsf@toke.dk>
 <250d064103394dfd864c1281f0da3d83@aptaiexm02f.ap.qualcomm.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 23 Aug 2019 10:39:07 +0200
Message-ID: <875zmonums.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013910_708474_1DBC7A4A 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V2VuIEdvbmcgPHdnb25nQHF0aS5xdWFsY29tbS5jb20+IHdyaXRlczoKCj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBy
ZWRoYXQuY29tPgo+PiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDIyLCAyMDE5IDg6MTIgUE0KPj4g
VG86IFdlbiBHb25nIDx3Z29uZ0BxdGkucXVhbGNvbW0uY29tPjsgV2VuIEdvbmcKPj4gPHdnb25n
QGNvZGVhdXJvcmEub3JnPjsgYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4
LXdpcmVsZXNzQHZnZXIua2VybmVsLm9yZwo+PiBTdWJqZWN0OiBbRVhUXSBSRTogW1BBVENIIDQv
N10gYXRoMTBrOiBkaXNhYmxlIFRYIGNvbXBsZXRlIGluZGljYXRpb24gb2YgaHR0Cj4+IGZvciBz
ZGlvCj4+ID4+IFdoYXQncyBhIHR5cGljYWwgbGltaXQgaW4gdGhlIGZpcm13YXJlPwo+PiA+IEl0
IGlzIDk2IGRhdGEgcGFja2V0IGluIG15IHRlc3QuIEl0IGNhbiBjaGFuZ2VkIGluIGZpcm13YXJl
IGNvZGUuCj4+IAo+PiBSaWdodCwgSSBzZWUuIElzIHRoaXMgY291bnRlciBhdmFpbGFibGUgaW4g
YWxsIGF0aDEwayBmaXJtd2FyZSwgb3IgaXMgaXQKPj4gU0RJTyBvbmx5Pwo+PiAKPiBJdCBpcyBv
bmx5IGZvciBTRElPLgo+IEZvciBQQ0lFLCBpdCBkb2VzIG5vdCBoYXZlIGNyZWRpdCBsaW1pdCwg
ZmlybXdhcmUgbWVtb3J5IG9ubHkgbmVlZCB0byBzYXZlCj4gVGhlIHR4IGRlc2NyaXB0b3IsIG5v
dCBuZWVkIGZvciBwYWx5bG9hZC4KCk9LLCB0b28gYmFkLiBUaGFua3MgZm9yIHRoZSBleHBsYW5h
dGlvbnMgOikKCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
