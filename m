Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5C3BC28C
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 09:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1KML9dnf7izDQTa301Xs+pJPqB8v4iO8oo9m8b+CWk=; b=koH+2K3uPK69MD
	bnLzSNogJ0ADH6mh5CU4SzM5snmt0eXvQ9w4o+R+B0o6iWT5unGBBZOhesqOb58rpHEDNzNWqd1Ay
	rV/axTbiNofMZsZZtesDw19gP7nFEyuX5YhwiucmsDJwnpNojhmBed8zOztvvdiw2Zf1hiokaVsER
	pEFU64e/vsVcs4QXNXRDSxf5ZL5uM00tDz/VdCdlmLx8iDGptWuwzki1dVnfUbctvVy7WJE+jqbtm
	kNmoosx27NI4Bx/L9Ks1NX1IDmt5T6sCpCBpYTvvsoDv69EIpfiY0FWKreXsd4qjUDZvQpiSw6bEh
	+X1KTvVT5o7qM1htsl0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfDf-0003iD-Ch; Tue, 24 Sep 2019 07:26:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfDW-0003hR-5N
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 07:26:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569309992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bB6TxRbain4WIDuZF37AFcbI5yiKvhEh7P47JkbPNmE=;
 b=LNO9K9S4fsOxlum4cWH1QJfGGAt1ShBvtOIHDi1jpUjbTT8osSYqL3Z7KFdRN2CYav9sNx
 DXbJg+137wSTgPIvxFi72wfr3HDn6VU8S6ptz/B/M1EFM3sxatQQmawiEbzAfomgaGoZKv
 lBXmKX4NwZXsDPVTZcG/jlb+UI746u8=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-W0b_6kCDNoCfowrfJh6Cpw-1; Tue, 24 Sep 2019 03:26:31 -0400
Received: by mail-ed1-f69.google.com with SMTP id n12so487051edr.22
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 00:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/DbcvOaQW52kpEy5mspgh7NMJnYjChbVEruifrXRTR8=;
 b=b+DNr4DYLc9+MAC4iVGTO8wFf/ofFUwg3z73WGq6Oxvg4ijkK3e0ddunWazd2Lh8g8
 mgs01POF0ldIuzmzr+Q2N1o7rtOKmeX/2bd5nbpQLxIYfOcX/5QQyW/pc5sDk9eHTKvP
 yFY1+J2MHkDr3s9ULRHJqPWE/wOaybIXONtDKLWuSicjkGgUj2U9i/pJumlOGewnd9Vf
 i9ebpjrR9Lt5t4AkjRvzK9b2ehqVMnJYbK/kX9K0CaBAYQVXa29ukgvqJiEZETljHF6N
 IasFkh3roRSAyl/lxb2oh/fQ60rpe8Re0kba/ZstSYjnvZLIXpDhidKpUMD1R+FEPRQT
 EOVw==
X-Gm-Message-State: APjAAAUSI1zf3WLD1/gwZkmp3CZVl8v9GGVBPaw9dWH0Jpp+32sx4WCQ
 G1b4e0SyE2VTufTQ36DNK3JEtU2jwQiiBOmLWt69kIzME8op+N9zFkKGtznlCBsrqmifOkICGmB
 Ne9L7C6RgOv7XD082hq05+w==
X-Received: by 2002:aa7:d688:: with SMTP id d8mr1194191edr.156.1569309989981; 
 Tue, 24 Sep 2019 00:26:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYzOy3Wq0d8MIIgN/rs7j5umPy/q/GAygXGRQo8TPGdg81MuEx3Hkxu6uQT6y17g2M2kyDRA==
X-Received: by 2002:aa7:d688:: with SMTP id d8mr1194188edr.156.1569309989866; 
 Tue, 24 Sep 2019 00:26:29 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id dt4sm106620ejb.45.2019.09.24.00.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 00:26:29 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B0F1C18063F; Tue, 24 Sep 2019 09:26:28 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <1b3eab1f2481e0102b284f133605c6c4@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk> <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk> <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk> <1b3eab1f2481e0102b284f133605c6c4@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 24 Sep 2019 09:26:28 +0200
Message-ID: <87r24640kb.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: W0b_6kCDNoCfowrfJh6Cpw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002634_287512_ABF8D325 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

>> Hmm, yeah, I guess we could end up with a loop like that as well.
>> Keeping the schedule_round would be a way to fix it, but I'm not sure 
>> we
>> should just skip that station; maybe we should just end the round
>> instead?
> I am not sure. I believe, in some cases, the rest of the nodes which 
> could be most of the nodes in the tree will not have the chance to be 
> scheduled in this round.

My guess would be that it doesn't really matter, because in most cases
each schedule round will only actually end up queueing packets from one
or two stations; as the driver will pull multiple packets from that one
station which will often fill up the firmware queues (especially once we
start throttling that with the AQL stuff).

So I guess we can just skip TXQs that we've already seen this scheduling
round, and let the v_t compare determine transmit eligibility :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
