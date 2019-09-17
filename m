Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F81B5765
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 23:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbImlsi1rcifGVSmyhh1AWNz4gf/6OsLD2SjJd2VCUY=; b=SqbcvS/DRE/oax
	EZvegvlJYcVLhkPF6Zk2a008q7iJQ0AOMG0JGQ7be6Ix+FgCJmSYZVcB8vqEs2yOeWxo2GzR1aZkj
	evp/3jsFwiDu2Uqndcs+HB/T4qvx5W7I1FsVZxB0j6aHnkAcp84F9S9pqDmLYborpGv4yN8fbeLIL
	AywWJN1DPVdspErlFYXwua7gqLqjIW80YLXbZ/i99wuExbByRTd7fNLrvww8L7MVgS30zmAPGleBM
	ffvh+aHsdvdKKBKHAnbmQLhakWLB1rg+EI4mI6j4yZjWahoKCgUjetFZZOKPvWWGXF5U9EnBq0ptp
	D0RK0qmsVY6UqEKs8b9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKmU-0007nx-NE; Tue, 17 Sep 2019 21:13:02 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKmQ-0007nD-8B
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 21:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568754776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QiemktB+P3N/GEfmW+MKZJP+wYiESC5rsqS8LBxmPzk=;
 b=H3KPjCdnZbAq4NuiHSz9JHefkY7gs+FJhyNRYVpdNlu4CQafwr5GO6jvD936EPA8ieEVKh
 w/WkiEd2u29Sc1IbVeOCMS+uTpe6mgwR+xoL8jx1shF+1DBecRDn8vVvAOWO+xQTlNDH1M
 6as8uRzh0K+LEKNPRN/dsCLJ3C2EeKs=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-93-tGnKmMhCN8O2V6YMpRX-IQ-1; Tue, 17 Sep 2019 17:12:54 -0400
Received: by mail-ed1-f69.google.com with SMTP id c90so2958577edf.17
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 14:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=QsNXQII0b/hVtJPOGBZPLEU9w4W7+7j0E1yxUVa+EH4=;
 b=UoPajU9ipdUvHjyBk27aIv0snKu/cf1UXXHgujuMjjhuPWtE3/WeOCzoPsMu2MBGzX
 ks7XKlxvkz0Sjntdv1/G1GHJEwQXYg4ebjJmCmmBz4d4HkzZD3QBjNu3azV88H9z9KXh
 dc/XFCzMzVkbjjroAHg8JHDkgoZS6G3VzYf9H6VAK5NiB08WVyXkYvVLvOcdXRNh05+i
 DX9JlBhSv7Sz6a5Bhi520haSJbASdhmOMbNGLVxwBhPsLIjOCdCp2CirV3xBG4ivN5Zs
 ES5OmArMW4pexm94QPdCkfMS/eTdohI1ZaRN+4XN5tjHgKlsvPUQsYZY4xJlCKhTOrPG
 OP8Q==
X-Gm-Message-State: APjAAAU2FgyzTL95kzkiQ3PVt/eVoucgeh4ruMnmbbM1BU1fCisbfBQE
 7SrHMSi0I6/h08wQlXhZemCLs8fOxaVl2RFzE9+ji+1Zlp6Z2fSBYMHkV5YR3H1HQ6/sxcDDLD3
 kuHFX1nF5h2PYFSe3auMRWA==
X-Received: by 2002:a50:ab58:: with SMTP id t24mr6854406edc.131.1568754772898; 
 Tue, 17 Sep 2019 14:12:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRA7NHjKCA535vf76iWEHhOAKFbmQpLrfYd8hhQqMp1T2bLnH1lhfLyyXWyjNfLdb1TRnUMA==
X-Received: by 2002:a50:ab58:: with SMTP id t24mr6854398edc.131.1568754772744; 
 Tue, 17 Sep 2019 14:12:52 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id s4sm406666ejx.33.2019.09.17.14.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 14:12:52 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 971C41800B9; Tue, 17 Sep 2019 23:12:51 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
In-Reply-To: <8e4cd872d082c6bce598c87411a2125f@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
 <8e4cd872d082c6bce598c87411a2125f@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Sep 2019 23:12:51 +0200
Message-ID: <87lfumiq3w.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: tGnKmMhCN8O2V6YMpRX-IQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_141258_377905_7455B878 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBPbiAyMDE5LTA5LTE2
IDIzOjI3LCBKb2hhbm5lcyBCZXJnIHdyb3RlOgo+PiBXaXRob3V0IHJlYWxseSBsb29raW5nIGF0
IHRoZSBjb2RlIC0KPj4gCj4+PiBJZiBzdGF0aW9uIGlzIGluZWxpZ2libGUgZm9yIHRyYW5zbWlz
c2lvbiBpbiAKPj4+IGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0KCksCj4+PiBubyBwYWNrZXQg
d2lsbCBiZSBkZWxpdmVyZWQgdG8gRlcuIER1cmluZyB0aGUgdGVzdHMgaW4gcHVzaC1wdWxsIG1v
ZGUgCj4+PiB3aXRoCj4+PiBtYW55IGNsaWVudHMsIGFmdGVyIHNldmVyYWwgc2Vjb25kcywgbm90
IGEgc2luZ2xlIHN0YXRpb24gaXMgYW4gCj4+PiBlbGlnaWJsZQo+Pj4gY2FuZGlkYXRlIGZvciB0
cmFuc21pc3Npb24gc2luY2UgZ2xvYmFsIHRpbWUgaXMgc21hbGxlciB0aGFuIGFsbCB0aGUKPj4+
IHN0YXRpb24ncyB2aXJ0dWFsIGFpcnRpbWUuIEFzIGEgY29uc2VxdWVuY2UsIHRoZSBUeCBoYXMg
YmVlbiBibG9ja2VkIAo+Pj4gYW5kCj4+PiB0aHJvdWdocHV0IGlzIHF1aXRlIGxvdy4KPj4gCj4+
IFlvdSBzaG91bGQgcmV3cml0ZSB0aGlzIHRvIGJlLCBlcm0sIGEgYml0IG1vcmUgdW5kZXJzdGFu
ZGFibGUgaW4KPj4gbWFjODAyMTEgY29udGV4dC4gSSBhc3N1bWUgeW91J3JlIHNwZWFraW5nICht
b3N0bHk/KSBhYm91dCBhdGgxMGssIGJ1dCAKPj4gSQo+PiBoYXZlIHZlcnkgbGl0dGxlIGNvbnRl
eHQgdGhlcmUuICJwdXNoIHB1bGwgbW9kZSI/ICJmaXJtd2FyZSI/IFRoZXNlCj4+IHRoaW5ncyBh
cmUgbm90IHNvbWV0aGluZyBtYWM4MDIxMSBrbm93cyBhYm91dC4KPiBIaSBKb2hhbm5lcywKPgo+
IFRoYW5rcyBmb3IgeW91ciBraW5kbHkgcmVtaW5kZXIuIFdpbGwgcmV3cml0ZSB0aGUgY29tbWl0
IGxvZy4KPgo+PiAKPj4+IENvLWRldmVsb3BlZC1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVy
b3JhLm9yZz4KPj4gCj4+IFRoYXQgYWxzbyBzZWVtcyB3cm9uZywgc2hvdWxkIGJlIFRva2UgSSBn
dWVzcywgdW5sZXNzIHlvdSBpbnRlbmRlZCBmb3IgCj4+IGEKPj4gRnJvbTogVG9rZSB0byBiZSBw
cmVzZW50Pwo+IERvIHlvdSBtZWFuIGl0IHNob3VsZCBiZSBzb21ldGhpbmcgbGlrZToKPgo+IENv
LWRldmVsb3BlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cj4g
U2lnbmVkLW9mZi1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KPiBTaWduZWQt
b2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KPgo+IEFtIEkg
dW5kZXJzdGFuZGluZyByaWdodD8KCkkgdGhpbmsgdGhlIHJpZ2h0IHRoaW5nIGhlcmUsIGFzIHdp
dGggdGhlIHByZXZpb3VzIHBhdGNoLCBpcyB0byBqdXN0CmRyb3AgbXkgc2lnbi1vZmY7IHlvdSdy
ZSB3cml0aW5nIHRoaXMgcGF0Y2gsIGFuZCBJJ2xsIGFkZCBhY2svcmV2aWV3cyBhcwphcHByb3By
aWF0ZS4gQW5kIGluIHRoYXQgY2FzZSwgd2VsbCwgbm8gbmVlZCB0byBoYXZlIGNvLWRldmVsb3Bl
ZC1ieQp5b3Vyc2VsZiB3aGVuIHlvdXIgbmFtZSBpcyBvbiB0aGUgcGF0Y2ggYXMgYXV0aG9yIDop
CgotVG9rZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
