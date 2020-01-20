Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFC2142163
	for <lists+ath10k@lfdr.de>; Mon, 20 Jan 2020 02:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFQ3qEupb5BSB1yzmaftZupYq0DUS6VnNGsYWVVldxA=; b=ly2F22IJF53/EA
	HdhLY9MAF4uDlY9TSl/2pc09DTbziXCdNJS2HqoobB5YhtzU4j2pPn++8L/vpUJsK+DjwWYpkd4t3
	d2O/mYXXgzdwuD7OwlnaovqHdLS6dvkIn0I9SWY2USI35LveGSAw3DVeHdIwPsqyvgk76Am1eQkYO
	vZ/1Hr78lia1NYBKiCbLVqZpohcubTcefTvS3TVQeFtPQX1hh82yMcqDrxQipJP0hZ2ae3/4YEBsV
	cF+TmPK9aQpp84AFe9TANGUgnDNJp3JWvuBUmhBf4AZyHcNkfDSBNCiQvFUDxNDKLmMj1qn1OUoAX
	mdoTtNpBTGTyb2Us1pyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itLh6-0000GB-Gh; Mon, 20 Jan 2020 01:17:32 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itLh1-0000Fm-Uf
 for ath10k@lists.infradead.org; Mon, 20 Jan 2020 01:17:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id 59so27252758otp.12
 for <ath10k@lists.infradead.org>; Sun, 19 Jan 2020 17:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=StOpaJLAlWqkutfis3lnlKQAMkujEsqs3adqZGTuqtU=;
 b=CHe1gicDpMRIWgWVD6RYmR+YPM54YyVKfsgxYWheiieGlgDDQ2cYmP7KAxqnfNQE0d
 HUyn1H7gKxaC4c7yQKlRLL8UMPVEWtU3/rwsUm4gAwJaaeV7OI5S7bFDgjG2WJZ+apQN
 mpZkC9JI/2Vdr8NelpZFfnY1L1fe692Hyeoo0SJALfqv/n8dAspkUYs5ftByScKxd6Cp
 wlVkeM8E/PQqKSsak1d3DZjZ1gS+SfavJ6hfgDusNlc+6H1rxoOP9Rk4maKx+YrdcuMh
 /l3liS4aXttK1vDOsfqBT8ExLVpypfrs+ug0/figx6YrSASzx4EcpnGAumvrcjPS8o1V
 jfcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=StOpaJLAlWqkutfis3lnlKQAMkujEsqs3adqZGTuqtU=;
 b=VJTz/rlIxsBG2nW9kGSe+PH2VyJxLQ/BFZyqBJkeiFgKTvtiQumD7/ezVnQTGauoUg
 ZEC2Nv63NEXqj1NQWacYkfRYvRoyto3ctj3ZZ2f0SjBQm1t8RN7Y/jcWuHrsfNNlANHO
 9gesgITMr80rVyA34oPar/7wVdIPOUr9U8k3PO8EH2buDBZadHIJwd0C2SLg03Ac5DG9
 ieWWgGYzAmEx0tulzzffmtJBWrn8LVfMrTqH1Szx2MElio4AC4z+vQhdisbTkUgEPRLa
 VDKo+/jZRQhCtgFjVmOEthJNHJlIkcqRZox0K3+1F9bYGLTJYxAM7aqQGj8VUewDix7+
 lBDA==
X-Gm-Message-State: APjAAAWpOBYkbJvGlcnkw8UmPHQw1yAKfIX9K4e6sCU0bLgslKo9DYTI
 HeVUTvtZnb11KA6VebiYh9kyi78e2SE0VMHSU9PtOtPS6Pw=
X-Google-Smtp-Source: APXvYqzJBXncPu1iX62kEQJu6sinnzNaBEULRxsFr8HdQhzFT3dbS624tLGdIzYu/tapm7byQKwwPv2KzuoAnHzdW4Y=
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr13549208otp.177.1579483045276; 
 Sun, 19 Jan 2020 17:17:25 -0800 (PST)
MIME-Version: 1.0
References: <20200117083605.392-1-wgong@codeaurora.org>
In-Reply-To: <20200117083605.392-1-wgong@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 19 Jan 2020 17:17:14 -0800
Message-ID: <CAMrEMU-57qrCP3Kh_cna-QNCBfGu6G3e0Y_0-wg6axq_EuoCcw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add retry mechanism for ath10k_start
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_171728_020963_45C86A3B 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Is the same address always used for "struct ath10k *ar = hw->priv" --
even when driver is stopped / bus errors are encountered? If not this
could potentially be use after free scenario?

Most code tries to protect the ->state with the config mutex, might
need to do that here too

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
