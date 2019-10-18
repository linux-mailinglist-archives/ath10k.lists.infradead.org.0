Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AF2DC712
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjZreCR/NKqs7b+Te9H9KdBwRyKEG7S7Kxi7BPxN0/k=; b=Aa8E32kQhSsXpt
	EAUPeMqT6N2r4l+TRCgnDQaDZ45PcLRMpDRdsGVo0aZUIpbLI7Kjlqwvnos7bEIjFot06ohQC676l
	IAeGa0znfkvKdhE04T26ligSiXK2aeZgg+As8/YR7DxZ6LQvLHhmxugtUXbrzHRQ4KmC+BmkA6jA5
	COWu9A921eVyCTlCa5l8G6GNfLeUjyn24xq/te4KBrV4rx0a6YXDQcHmY6heTJWoP9jsXQQ7OpW39
	E3Mm/jkAdBy1UwVt4T/DZ7UubvX5Quvvt6Mnfi4fHlreLPF3OucEIwnY6SloPqVKdKVRV3/uKKKzM
	LBtLgJq3qB2d4ufo8Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLT2M-0006iJ-78; Fri, 18 Oct 2019 14:15:26 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLT2I-0006hv-BT
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:15:23 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLT2A-0004eq-5f; Fri, 18 Oct 2019 16:15:14 +0200
Message-ID: <32a96b6ad48387876b7125adba147578564d297a.camel@sipsolutions.net>
Subject: Re: [Make-wifi-fast] [PATCH v2 4/4] mac80211: Use Airtime-based
 Queue Limits (AQL) on packet dequeue
From: Johannes Berg <johannes@sipsolutions.net>
To: Kan Yan <kyan@google.com>, Sebastian Moeller <moeller0@gmx.de>
Date: Fri, 18 Oct 2019 16:15:11 +0200
In-Reply-To: <CA+iem5v-K0pA9WLfDNxBKVjufgH=2MeuGmV0aDJysLT8jdawAQ@mail.gmail.com>
 (sfid-20191018_031141_683850_A491125A)
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
 <87o8yfg0zo.fsf@toke.dk> <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
 <87lftjfz51.fsf@toke.dk> <18FC6F1D-084C-44BD-87E7-C9F394D6FCD1@gmx.de>
 <CA+iem5v-K0pA9WLfDNxBKVjufgH=2MeuGmV0aDJysLT8jdawAQ@mail.gmail.com>
 (sfid-20191018_031141_683850_A491125A)
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_071522_397477_4FF6AB92 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, 2019-10-17 at 18:11 -0700, Kan Yan wrote:
> I don't think it is hard to take care of extra header size for frames
> with VLAN tags

VLAN tags are payload as far as wifi is concerned, so no need to take
that into account ...

johannes



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
