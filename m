Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5618A98CA1
	for <lists+ath10k@lfdr.de>; Thu, 22 Aug 2019 09:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRvovho/o/3Z8jdtfxrXNLGyAEl8egoFJSfagCAcgJg=; b=GoLAbylU1uB30s
	qrmTF0SzdRQsknsR8WO6ZL+sxXh8UTMy0up14SiP8p4hfrsU7AACfOSqIHt/GFX3seHG2RVwM7Frv
	fpkee117+5NFfzx3u2szko05anp+c4q18QhaWmDx/PMXdSL/qRLeintzyfHjOr/IJCzdmUFVbuf+N
	0LaRefYyc7DPCWMmcu6vbG5lsBiuykYs9fRC4WULKIk7laZ9ZVHciZIWQg4HIEkBydTQBs9xcS64A
	o57ThoE2ayKbLjrqu7DgOPlI1qKLCM4+cJGWuJOB4tiwIxesobmxLHvnDN8VCKQN5sCGqou015MXc
	2fuVQ21PCXodMLbj+7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hsm-0006JY-0B; Thu, 22 Aug 2019 07:51:44 +0000
Received: from mail.automatics-control.eu ([80.211.144.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hsR-0006HB-NL
 for ath10k@lists.infradead.org; Thu, 22 Aug 2019 07:51:25 +0000
Received: by mail.automatics-control.eu (Postfix, from userid 1001)
 id 5E180A15CE; Thu, 22 Aug 2019 09:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=automatics-control.eu; s=mail; t=1566460269;
 bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=;
 h=Date:From:To:Subject:From;
 b=jYXAhKeVsHK2y3NKB6QzFp8bP/ut3aXUiapYiQ83LbZVHUylLXLrUph00jKGzWvwa
 sJ2h1XXVYkWToZdI1QQ+nhUCu8aKCrCSaUCGkITonaFaZaJJWevIgeuOcpXzQs+9Vd
 CdvYGAYiNpa2q1nCQnSgnYAfouCCnbxjH5VOKPgw=
Received: by mail.automatics-control.eu for <ath10k@lists.infradead.org>;
 Thu, 22 Aug 2019 07:51:05 GMT
Message-ID: <20190822084500-0.1.o.2la6.0.n21100klr2@automatics-control.eu>
Date: Thu, 22 Aug 2019 07:51:05 GMT
From: "Kamil Adamec" <kamil.adamec@automatics-control.eu>
To: <ath10k@lists.infradead.org>
Subject: =?UTF-8?Q?Dodate=C4=8Dn=C3=A9_zdroje?=
X-Mailer: mail.automatics-control.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_005123_916857_1BE46190 
X-CRM114-Status: UNSURE (   0.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

RG9icsO9IGRlbiEKCsW9aXZub3N0bsOta8WvbSDEjWFzdG8gc3RvasOtIHYgY2VzdMSbIGsgZG9z
YcW+ZW7DrSDDunNwxJtjaHUgbsOtemvDoSDDunJvdmXFiCBwcm92b3puw61jaCB6ZHJvasWvIG5h
IG7DoWt1cCBtYXRlcmnDoWx1LCB6Ym/FvsOtIG5lYm8gc3Vyb3ZpbiB6IGTFr3ZvZHUgbmFwxZku
IG5lemFwbGFjZW7DrSBmYWt0dXIgKG5lemFwbGFjZW7DrSBvZCBkb2RhdmF0ZWzFrywgcHJvZGxv
dcW+ZW7DoSBzcGxhdG5vc3QgYXBvZC4pLiBWIHTDqXRvIG9ibGFzdGkganNtZSBqacW+IHBvbW9o
bGkgxZlhZMSbIGZpcmVtLCBrdGVyw6kgbW9obHkgZMOta3kgesOtc2vDoW7DrSBuw6F2cmF0bsOp
aG8gZmluYW5jb3bDoW7DrSByZWFsaXpvdmF0IHN2w6kga2zDrcSNb3bDqSBwbMOhbnkuCgpKc2Vt
IHBhcnRuZXJlbSBtbm9oYSBzcG9sZcSNbm9zdMOtLCBqZWppY2jFviDEjWlubm9zdCBqZSBzcm92
bmF0ZWxuw6EgcyB0b3UgVmHFocOtIGEgemEga29vcGVyYWNpIHMgbsOhbWkgesOtc2vDoXRlIGJv
bnVzIC0gcnljaGzDqSBzcGxhY2Vuw60gdmUgdsO9xaFpIGHFviA0IHNwbMOhdGVrLgoKRG92b2x0
ZSwgYWJ5Y2hvbSBWw6FzIGtvbnRha3RvdmFsaSB6YSDDusSNZWxlbSBwcm92ZWRlbsOtIGFuYWzD
vXp5IG1vxb5ub3N0w60gcG9tb2NpIGZpbmFuY292w6Fuw60uIEtkeSBieWNoIG1vaGwgemF2b2xh
dD8KCgpTIHBvemRyYXZlbQpLYW1pbCBBZGFtZWMKQWNjb3VudCBNYW5hZ2VyCnd3dy5hdXRvbWF0
aWNzLWNvbnRyb2wuZXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
