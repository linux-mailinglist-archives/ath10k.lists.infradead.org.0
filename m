Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA1C5B6C6
	for <lists+ath10k@lfdr.de>; Mon,  1 Jul 2019 10:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TG6HwmCW+3zKnyFbMX5gEO2WFr/rOMtIcRaiJV7d7E=; b=cxZxXwLmh20Jyc
	TvmeZtaQ9LIvmo84kiC+/9HjPj/r3oPpVHUYn1GsJ2eeyP1G20PV5tXm/lRglxxefknMpQ+/QOIbS
	0HdaCapRJTclNmpQuTD2V5m3GEIqbr+wiVM/CsTjGymNRArXUsqj+9eBkMD6Gu4Dij2gaJ6ahDQgd
	ynkXdVYgccLaXURODIHtamfpcF9zwYQmGJyUZXCO+i+W0gj1jnQVjU2fHtnR4C4MMIgqeqMk7bs7l
	/HoQz0bjycjpe3rqmMKv3Wpa7vVmqlAtrYu69VU6dd77HGuAnypIyjdD/N+sX6vu7mqmTfDktB3yZ
	LkGOOwsqgRU53LTJybrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrdt-0000WO-6D; Mon, 01 Jul 2019 08:26:29 +0000
Received: from mail.flowyourbiz.eu ([89.38.146.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrdl-0000Vd-Sf
 for ath10k@lists.infradead.org; Mon, 01 Jul 2019 08:26:23 +0000
Received: by mail.flowyourbiz.eu (Postfix, from userid 1000)
 id C11CD87C21; Mon,  1 Jul 2019 10:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flowyourbiz.eu;
 s=mail; t=1561969500;
 bh=e4w1glmN9V1hv/cKBgnphFEKGOfw5geVqEgJJQZpGDc=;
 h=Date:From:To:Subject:From;
 b=FdPe/ZAXz0aBGK+KfktCN34dR6PSKWE8scDN37hTWkprm1pl7nF/8FMjisCjfH0Vd
 mYqOItpflPlbaEtC0IoIryonwMWBavnfMuCbIWQeU5asZsCZkC2ogptRHlS7GIYqip
 O3QcYsEXm56Dsa/PWw3mGF2msieIC3QQuIKKo0ns=
Received: by mail.flowyourbiz.eu for <ath10k@lists.infradead.org>;
 Mon,  1 Jul 2019 08:23:41 GMT
Message-ID: <20190701102217-0.1.6.4bg.0.plrak58ii8@flowyourbiz.eu>
Date: Mon,  1 Jul 2019 08:23:41 GMT
From: "Kamil Adamec" <kamil.adamec@flowyourbiz.eu>
To: <ath10k@lists.infradead.org>
Subject: =?UTF-8?Q?Dodate=C4=8Dn=C3=A9_zdroje?=
X-Mailer: mail.flowyourbiz.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_012622_096393_38E62109 
X-CRM114-Status: UNSURE (   0.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RG9icsO9IGRlbiEKClBybyByb3p2b2ogcG9kbmlrw6Fuw60gxb5pdm5vc3Ruw61rxa8gamUgenBy
YXZpZGxhIGJhcmnDqXJvdSBuZWRvc3RhdGVrIHByb3Zvem7DrWNoIHpkcm9qxa8gbmEgbsOha3Vw
IG1hdGVyacOhbHUsIHpib8W+w60gbmVibyBzdXJvdmluIHogZMWvdm9kdSBuYXDFmS4gbmV6YXBs
YWNlbsOtIGZha3R1ciAobmV6YXBsYWNlbsOtIG9kIGRvZGF2YXRlbMWvLCBwcm9kbG91xb5lbsOh
IHNwbGF0bm9zdCBhcG9kLikuIFYgdMOpdG8gb2JsYXN0aSBqc21lIGppxb4gcG9tb2hsaSDFmWFk
xJsgZmlyZW0sIGt0ZXLDqSBtb2hseSBkw61reSB6w61za8OhbsOtIG7DoXZyYXRuw6lobyBmaW5h
bmNvdsOhbsOtIHVza3V0ZcSNbml0IHN2w6kgc3RyYXRlZ2lja8OpIHrDoW3Em3J5LgoKU3BvbHVw
cmFjdWppIHMgxZlhZG91IGZpcmVtLCBrdGVyw6kgc2UgemFtxJvFmXVqw60gbmEgb2Jkb2Juw6kg
cG9kbmlrw6Fuw60gamFrbyBWYcWhZSBmaXJtYSBhIHphIGtvb3BlcmFjw60gcyBuw6FtaSB6w61z
a8OhdGUgYm9udXMgLSByeWNobMOpIHNwbGFjZW7DrSB2ZSB2w73FoWkgYcW+IDQgc3Bsw6F0ZWsu
CgpSw6FkaSBieWNob20gc2UgcyBWw6FtaSBzcG9qaWxpIHphIMO6xI1lbGVtIHByb3ZlZGVuw60g
YW5hbMO9enkgbW/Fvm5vc3TDrSBwb21vY2kgZmluYW5jb3bDoW7DrS4gCgoKUyBwb3pkcmF2ZW0K
S2FtaWwgQWRhbWVjCkFjY291bnQgTWFuYWdlcgp3d3cuZmxvd3lvdXJiaXouZXUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxp
c3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
