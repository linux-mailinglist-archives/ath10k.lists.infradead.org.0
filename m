Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE143C992
	for <lists+ath10k@lfdr.de>; Tue, 11 Jun 2019 12:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yOXNQIVmI7PCjCyr3Hr2KGMKOXh9V2bKd9qmuLPpVf8=; b=tnS
	Bls2wrhhyisxAfUQA5/NvTOVwSf/bVYmllsfvA79vZLz9zhNJGLJsqOMYjmqiGil9rwJkbTe7xSaV
	TGpg7NNcCK/dtRqOnHQ4JcD1xILCyEnCeDQqD/qDedIUdwyfgBzm2n9Nn3vEf7sxSaejg/EhkD3uC
	clGFimsknYFW3uEByU2MJ9ETH1Lxmw28oBexNEq1pTlcenpelM6FAb0UGk/77jqtCtyK+Iw6bKwoH
	QqZhtSQEn1bqS/ChdWN2qzW83iJccWhyRkYQS/0/dgUXZ1PbvEdR3uWyHBu0oUD46oBF3be1lbPXS
	uBXU+doBO4NZc2y0N9fl737UF8FpqKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeVI-0003V0-HI; Tue, 11 Jun 2019 10:59:48 +0000
Received: from us-smtp-delivery-195.mimecast.com ([63.128.21.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haeVE-0003L7-6S
 for ath10k@lists.infradead.org; Tue, 11 Jun 2019 10:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datto.com;
 s=mimecast20190208; t=1560250780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=+v87z0P4rM7EEZQPcCwg9tFlDOKnvISf9XezE2nHIAc=;
 b=aCIdcAtVqN6OvPn8qWBdNAmC3bYraiX0NuEdndHxNbMmbhUidoWQKgTbEveGChXv3fnDy3
 C1ejVfW0vRAxBvTatT1Jjt/hzgu8SWVha8/vFEodbOHxE7UFaQcUsax7WYyqHEcOOntReg
 EN7WM4gH7NzuquekQaIF96Q23Wz6MXc=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-sk6jwVElOhuGTTE18BoHxw-1; Tue, 11 Jun 2019 06:59:38 -0400
X-MC-Unique: sk6jwVElOhuGTTE18BoHxw-1
Received: by mail-qk1-f198.google.com with SMTP id c4so10580603qkd.16
 for <ath10k@lists.infradead.org>; Tue, 11 Jun 2019 03:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=datto-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=+v87z0P4rM7EEZQPcCwg9tFlDOKnvISf9XezE2nHIAc=;
 b=eEFTHnHFGdrxcXLROJ4pKUgsuns+teuMl1ALAtaIJbmVmtGEH/lhLJTKdu4PccgKrl
 k89n6zOoPdzE5+BhOiTeYGcG0d5r+YQkmB38m4FNIWh7VljLFIBhKgu+3dZX+aeF0hkP
 MCXw5S1nCvCho5+REfADk1VJ7xRcLcIM+z8yuWSZd1ptbjeI5EBfhaPk6LjWNBroglJY
 mFuiRs2DI7fCZR/XHznVEtrCzlc7Mk+6QLbAQ6Ebut7Pf4V/PoE++JfPyFqJzpwtP5p8
 xgKlr/wRGurpvsWhIwhwM00VadS5bx1jTg4bQTI1PcgoOicZnaVvEuz+Oo6jREtGOSqI
 5Mgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=+v87z0P4rM7EEZQPcCwg9tFlDOKnvISf9XezE2nHIAc=;
 b=BZsWmP2fA1+tNzhlBqP0QF/BTqAiAjL2wAmia93NJ3CYHIYq1pszsOWZjKUeS3VUZY
 R/BYRAMy4lRmmYQnRGiBJf8Gh8aJbiagBnrgaHZDkqMrT+JxYEUzlq3qutfdVRb1Felx
 C0udmFi/+LnArhZWvpB9EO43K/bXUx17YHxbWIEKcfIkTQ6TcKk9nM5+PdC2mXe1UkAI
 J5X0vxwxq0KNvGguTg02Kils0zoumSeHexRsWVewAg06tZQm2+lwJmbmLoAiMRegNA2m
 XNYAoK3kAQ/qaaNInd5xjuputBPLg50p1JBJELQg7Kra1e/JesWaov7kJRMo77Zr+j9r
 aSow==
X-Gm-Message-State: APjAAAVf+xf2l4Od3mFELd9/wR/6zjv/YUMC+EkhBL04fVAY8hZUfKxT
 p9tRmcPGPClpsZVSRU/gmSaYhCtn3LjWTuqmX+zX3WljJKyQ0kodbPE7m+UuatyVlUjukgSrb4h
 9EaYuieT8319ZFrCFIsEoMQ==
X-Received: by 2002:a0c:baa7:: with SMTP id x39mr42437007qvf.100.1560250777926; 
 Tue, 11 Jun 2019 03:59:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwiBT46ZMMI4lfewxn/+KqxsSFq+eKTsqdQ+QIQoglT0IHcV5hWQf4J1vcO9dEBJ0veQO16vw==
X-Received: by 2002:a0c:baa7:: with SMTP id x39mr42436993qvf.100.1560250777661; 
 Tue, 11 Jun 2019 03:59:37 -0700 (PDT)
Received: from bentobox.localnet
 (p200300C5970379EE000000000000070D.dip0.t-ipconnect.de.
 [2003:c5:9703:79ee::70d])
 by smtp.gmail.com with ESMTPSA id y3sm2850426qtj.46.2019.06.11.03.59.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 03:59:36 -0700 (PDT)
From: Sven Eckelmann <seckelmann@datto.com>
To: ath10k@lists.infradead.org
Subject: ath10k: TPC: Max antenna gain
Date: Tue, 11 Jun 2019 12:59:25 +0200
Message-ID: <17533428.x5EMhTv9h2@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_035944_525014_817825E8 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.128.21.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 LOCALPART_IN_SUBJECT   Local part of To: address appears in
 Subject
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Maharaja Kennadyrajan <c_mkenna@qti.qualcomm.com>
Content-Type: multipart/mixed; boundary="===============4035565249572160864=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============4035565249572160864==
Content-Type: multipart/signed; boundary="nextPart62412551.3YSEZU2eEr"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart62412551.3YSEZU2eEr
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

the firmware doesn't seem to parse the max_antenna gain from 
ath10k_update_channel_list anymore. At least the 
/sys/kernel/debug/ieee80211/phy0/ath10k/tpc_stats shows me max antenna gain 0 
when I set it in ath10k_update_channel_list to 12.

    grep Gain /sys/kernel/debug/ieee80211/phy*/ath10k/tpc_stats
    /sys/kernel/debug/ieee80211/phy0/ath10k/tpc_stats:Antenna Gain  =  9 Reg. Max Antenna Gain      =   0
    /sys/kernel/debug/ieee80211/phy1/ath10k/tpc_stats:Antenna Gain  =  8 Reg. Max Antenna Gain      =   0
    /sys/kernel/debug/ieee80211/phy2/ath10k/tpc_stats:Antenna Gain  =  9 Reg. Max Antenna Gain      =   0

Just tested it here on QCA9888 and QCA4019 with 10.4-3.5.3-00057. Is there a 
version which is known to work?

Kind regards,
	Sven
--nextPart62412551.3YSEZU2eEr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz/iY0ACgkQXYcKB8Em
e0an3g/9F6ErLA2Im+jiRNViy3FEAK//N7Mw2GhbNWoaInJRzgUTuLggpBARrNxZ
YnwXHUGc4vNrbBd9cMhDfKEkhdLn3B7O9a/yWzN9dTiP1Dd/aghJ+i+aprhxOhGJ
gkUScQk7pMMVzRH4JYtIJusD60h48Xbu8VkstmrgE3teWh/Dp9rob9qtIEhQk3EB
BkPHvjdWLA1I/QF5UK6bQFDbO2TeRq+1IvjdSttLoBQ5faSw463kZugf50U5FECU
G+DhVzpdcKUxp79BFz0v+85zT2yJ4ZLk5VdmF2UDSasTTidNHdMtEcu9tfDrvhFT
8g0HuFkxuMV7H94GenL6ZfEoau4wSyX7iV5N2fcxBm4RtHLxsLqaOU5DE5MH3BM8
AUwmZFQiq9BMXAZhaBbo9nXjAIzMdHkNKh9JFbA3t6LLfsMcjGLGfFs87eKNEKPw
JZ/OFmxv6dq8a2s5qEILZOoHDv+pVUkJm13WKR2cXPbMf2u2VPIxlJruUims6QNK
7kY7Qvetwsh6tZWgUKo+4vMHl0QWGYPtmR0NrOFZEOBReI3jEY+bbA/djaDr9rER
9oQyD3irgNqtwlY2nXFUSOJr/8g4J2LP8o/xA2BO8Q+bEJfnvqtL0wTX6o4We5bN
L08VzY1SfI56CNEH+zRcH6TtNJFEA3ELlUmTqHXZPsigKdUT5/U=
=jCCs
-----END PGP SIGNATURE-----

--nextPart62412551.3YSEZU2eEr--





--===============4035565249572160864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============4035565249572160864==--




