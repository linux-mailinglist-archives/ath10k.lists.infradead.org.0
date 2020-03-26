Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0503F193C6F
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 10:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc/KZ7+/kCyGm/sHuNwwUVPwGbUjQVgYYlDS4JGOV/Y=; b=fgbUPHG1vHbxNZ
	ZZ9tPWGA83OgAj4doGpbikv2B26mBLh3hwIjGgCXUXsACrZgNummi0vcMeQkTozDFZ2oRSS27XrDg
	csGH17YfGFMEIrbuG5xkyoI6/GowqXG14dp2onS8cfWNHKftaQ+xnO5y13ZUpIjNOLn6G1W6fRugb
	NxQpdmYxhW2nhSY3b5uhHKOFh5s++LgrdBaeDlSSb2aLIBZPtSt8XkQXdOOgzN4VnLfFtADeoKnOT
	3+EIelJOTKpATcLq8eX1p/Uj2fwjACsNVltoy6D9WZw/523K8DVilkfKvFoOn6Lem/CWW4BkAPfS5
	/2PtsjPLqsbQNajNi6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPIK-00056r-Ep; Thu, 26 Mar 2020 09:59:24 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPIF-00055q-Ip
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 09:59:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585216759; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=QzM855rs5LMFz/JxZbe1l1lDacKdVQUuIt7ztjoVwIA=;
 b=C4swBMnropakPOZ6XlMJpGfJJugvpZEIPEVHYCfEjZFHrQV6ouVtq4IYECEjdpISvvJ2/Cy/
 Rq5hRsVtpXybhAPf2AMmaYpadecnA5LhJVU08JVb7OFp7tehExhsYyr7psrBHPhkLYR8mgVn
 y6MlI/ppVg/l/v8lUN5gCFXnO6Q=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c7ceb.7f47f6c71b58-smtp-out-n05;
 Thu, 26 Mar 2020 09:59:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5A227C43636; Thu, 26 Mar 2020 09:59:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 13B82C433F2;
 Thu, 26 Mar 2020 09:59:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 13B82C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enable VHT160 and VHT80+80 modes
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1585148169-2320-1-git-send-email-ssreeela@codeaurora.org>
References: <1585148169-2320-1-git-send-email-ssreeela@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200326095907.5A227C43636@smtp.codeaurora.org>
Date: Thu, 26 Mar 2020 09:59:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_025920_094976_5F4EE647 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lei Wang <leiwa@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 Rick Wu <rwu@codeaurora.org>, linux-wireless@vger.kernel.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

U293bWl5YSBTcmVlIEVsYXZhbGFnYW4gPHNzcmVlZWxhQGNvZGVhdXJvcmEub3JnPiB3cm90ZToK
Cj4gRnJvbTogTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJvcmEub3JnPgo+IAo+IFNldCByaWdodCBj
aGFubmVsIGZyZXF1ZW5jaWVzIGluIFZIVDE2MCBtb2RlIGFjY29yZGluZyB0byB0aGUgVkhUMTYw
Cj4gaW50ZXJvcGVyYWJpbGl0eSB3b3JrYXJvdW5kIGFkZGVkIGFzIHBhcnQgb2YgSUVFRSBTdGQg
ODAyLjEx4oSiLTIwMTYgaW4KPiAiVGFibGUgOS0yNTLigJRWSFQgT3BlcmF0aW9uIEluZm9ybWF0
aW9uIHN1YmZpZWxkcyIsIGJhbmRfY2VudGVyX2ZyZXEyCj4gY29ycmVzcG9uZHMgdG8gQ0NGUzEg
aW4gVGFibGUgOS0yNTMuIFByZXZpb3VzIGltcGxlbWVudGF0aW9uCj4gKGJhbmRfY2VudGVyX2Zy
ZXEyID0gMCBmb3IgVkhUMTYwKSBpcyBvbmx5IGRlcHJlY2F0ZWQuCj4gCj4gRW5hYmxlIFZIVDgw
KzgwIG1vZGUgYW5kIHNldCB0aGUgcHJvcGVyIHBlZXIgUlggbnNzIHZhbHVlIGZvciBWSFQxNjAg
YW5kCj4gVkhUODArODAgbW9kZS4KPiAKPiBCYXNlZCBvbiBwYXRjaGVzIGJ5IFNlYmFzdGlhbiBH
b3R0c2NoYWxsOgo+IAo+IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxODA3MDQwOTU0NDQu
NjYyLTEtcy5nb3R0c2NoYWxsQGRkLXdydC5jb20KPiAKPiBodHRwczovL2xrbWwua2VybmVsLm9y
Zy9yLzIwMTgwNzA0MTIwNTE5LjY0NzktMS1zLmdvdHRzY2hhbGxAZGQtd3J0LmNvbQo+IAo+IFRl
c3RlZDogcWNhOTk4NCB3aXRoIGZpcm13YXJlIHZlciAxMC40LTMuMTAtMDAwNDcKPiAKPiBDby1k
ZXZlbG9wZWQtYnk6IFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAZGQtd3J0LmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQGRk
LXdydC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBSaWNrIFd1IDxyd3VAY29kZWF1cm9yYS5vcmc+
Cj4gU2lnbmVkLW9mZi1ieTogUmljayBXdSA8cnd1QGNvZGVhdXJvcmEub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IExlaSBXYW5nIDxsZWl3YUBjb2RlYXVyb3JhLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBT
b3dtaXlhIFNyZWUgRWxhdmFsYWdhbiA8c3NyZWVlbGFAY29kZWF1cm9yYS5vcmc+CgpGYWlscyB0
byBidWlsZCBvbiBHQ0MgOC4xLiBEaWQgeW91IHRlc3QgdGhpcz8KCkluIGZpbGUgaW5jbHVkZWQg
ZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9t
IC4vYXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6ODMsCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9u
ZXQvbWFjODAyMTEuaDoxNiwKICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvbmV0L3dpcmVs
ZXNzL2F0aC9hdGgxMGsvbWFjLmg6MTAsCiAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25l
dC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5jOjg6CkluIGZ1bmN0aW9uICdhdGgxMGtfcGVlcl9h
c3NvY19oX3ZodCcsCiAgICBpbmxpbmVkIGZyb20gJ2F0aDEwa19wZWVyX2Fzc29jX3ByZXBhcmUn
IGF0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6Mjc5MDoyOgouL2luY2x1
ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mzg6IGVycm9yOiBjYWxsIHRvICdfX2NvbXBpbGV0aW1l
X2Fzc2VydF8yNjMxJyBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogQlVJTERfQlVHX09O
IGZhaWxlZDogKCgoKCgofigoKDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgzKSkgKyAxKSAmICh+
KCgoMFVMKSkpID4+ICg2NCAtIDEgLSAoNSkpKSkpICsgKDFVTEwgPDwgKF9fYnVpbHRpbl9mZnNs
bCgoKCh+KCgoMFVMKSkpKSAtICgoKCgxVUwpKSkgPDwgKDMpKSArIDEpICYgKH4oKCgwVUwpKSkg
Pj4gKDY0IC0gMSAtICg1KSkpKSkgLSAxKSkpICYgKCgoKCgofigoKDBVTCkpKSkgLSAoKCgoMVVM
KSkpIDw8ICgzKSkgKyAxKSAmICh+KCgoMFVMKSkpID4+ICg2NCAtIDEgLSAoNSkpKSkpICsgKDFV
TEwgPDwgKF9fYnVpbHRpbl9mZnNsbCgoKCh+KCgoMFVMKSkpKSAtICgoKCgxVUwpKSkgPDwgKDMp
KSArIDEpICYgKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICg1KSkpKSkgLSAxKSkpIC0gMSkpICE9
IDAKICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fz
c2VydF8sIF9fTElORV9fKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4K
Li9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzMxOjQ6IG5vdGU6IGluIGRlZmluaXRpb24gb2Yg
bWFjcm8gJ19fY29tcGlsZXRpbWVfYXNzZXJ0JwogICAgcHJlZml4ICMjIHN1ZmZpeCgpOyAgICBc
CiAgICBefn5+fn4KLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzUwOjI6IG5vdGU6IGluIGV4
cGFuc2lvbiBvZiBtYWNybyAnX2NvbXBpbGV0aW1lX2Fzc2VydCcKICBfY29tcGlsZXRpbWVfYXNz
ZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fTElORV9fKQogIF5+
fn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjM5OjM3OiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ2NvbXBpbGV0aW1lX2Fzc2VydCcKICNkZWZpbmUgQlVJ
TERfQlVHX09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cp
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4K
Li9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmg6NDk6Mzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvICdCVUlMRF9CVUdfT05fTVNHJwogICBCVUlMRF9CVUdfT05fTVNHKF9fYnVpbHRpbl9jb25z
dGFudF9wKF92YWwpID8gIFwKICAgXn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvYml0
ZmllbGQuaDo4MTozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ19fQkZfRklFTERfQ0hF
Q0snCiAgIF9fQkZfRklFTERfQ0hFQ0soX21hc2ssIDBVTEwsIF92YWwsICJGSUVMRF9QUkVQOiAi
KTsgXAogICBefn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsv
bWFjLmM6MjYzMTo0OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ0ZJRUxEX1BSRVAnCiAg
ICBGSUVMRF9QUkVQKFdNSV9QRUVSX05TU184MF84ME1IWl9NQVNLLCAocnhfbnNzIC0gMSkpOwog
ICAgXn5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mzg6IGVycm9yOiBj
YWxsIHRvICdfX2NvbXBpbGV0aW1lX2Fzc2VydF8yNjI3JyBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0
ZSBlcnJvcjogQlVJTERfQlVHX09OIGZhaWxlZDogKCgoKCgofigoKDBVTCkpKSkgLSAoKCgoMVVM
KSkpIDw8ICgwKSkgKyAxKSAmICh+KCgoMFVMKSkpID4+ICg2NCAtIDEgLSAoMikpKSkpICsgKDFV
TEwgPDwgKF9fYnVpbHRpbl9mZnNsbCgoKCh+KCgoMFVMKSkpKSAtICgoKCgxVUwpKSkgPDwgKDAp
KSArIDEpICYgKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICgyKSkpKSkgLSAxKSkpICYgKCgoKCgo
figoKDBVTCkpKSkgLSAoKCgoMVVMKSkpIDw8ICgwKSkgKyAxKSAmICh+KCgoMFVMKSkpID4+ICg2
NCAtIDEgLSAoMikpKSkpICsgKDFVTEwgPDwgKF9fYnVpbHRpbl9mZnNsbCgoKCh+KCgoMFVMKSkp
KSAtICgoKCgxVUwpKSkgPDwgKDApKSArIDEpICYgKH4oKCgwVUwpKSkgPj4gKDY0IC0gMSAtICgy
KSkpKSkgLSAxKSkpIC0gMSkpICE9IDAKICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwg
bXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fTElORV9fKQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF4KLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzMxOjQ6IG5v
dGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8gJ19fY29tcGlsZXRpbWVfYXNzZXJ0JwogICAgcHJl
Zml4ICMjIHN1ZmZpeCgpOyAgICBcCiAgICBefn5+fn4KLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVy
Lmg6MzUwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX2NvbXBpbGV0aW1lX2Fzc2Vy
dCcKICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fz
c2VydF8sIF9fTElORV9fKQogIF5+fn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2xpbnV4L2J1
aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ2NvbXBpbGV0aW1l
X2Fzc2VydCcKICNkZWZpbmUgQlVJTERfQlVHX09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1l
X2Fzc2VydCghKGNvbmQpLCBtc2cpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmg6NDk6Mzogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdCVUlMRF9CVUdfT05fTVNHJwogICBCVUlMRF9CVUdf
T05fTVNHKF9fYnVpbHRpbl9jb25zdGFudF9wKF92YWwpID8gIFwKICAgXn5+fn5+fn5+fn5+fn5+
fgouL2luY2x1ZGUvbGludXgvYml0ZmllbGQuaDo4MTozOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8gJ19fQkZfRklFTERfQ0hFQ0snCiAgIF9fQkZfRklFTERfQ0hFQ0soX21hc2ssIDBVTEws
IF92YWwsICJGSUVMRF9QUkVQOiAiKTsgXAogICBefn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmM6MjYyNzo0OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8gJ0ZJRUxEX1BSRVAnCiAgICBGSUVMRF9QUkVQKFdNSV9QRUVSX05TU18xNjBNSFpfTUFT
SywgKHJ4X25zcyAtIDEpKTsKICAgIF5+fn5+fn5+fn4KbWFrZVs1XTogKioqIFtkcml2ZXJzL25l
dC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5vXSBFcnJvciAxCm1ha2VbNV06ICoqKiBXYWl0aW5n
IGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCm1ha2VbNF06ICoqKiBbZHJpdmVycy9uZXQvd2lyZWxl
c3MvYXRoL2F0aDEwa10gRXJyb3IgMgptYWtlWzNdOiAqKiogW2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aF0gRXJyb3IgMgptYWtlWzJdOiAqKiogW2RyaXZlcnMvbmV0L3dpcmVsZXNzXSBFcnJvciAy
Cm1ha2VbMV06ICoqKiBbZHJpdmVycy9uZXRdIEVycm9yIDIKbWFrZTogKioqIFtkcml2ZXJzXSBF
cnJvciAyCgpQYXRjaCBzZXQgdG8gQ2hhbmdlcyBSZXF1ZXN0ZWQuCgotLSAKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTQ1ODAyMy8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5r
ZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1h
aWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
