Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA1FF05E6
	for <lists+ath10k@lfdr.de>; Tue,  5 Nov 2019 20:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QvvrwnfkgTtPgFRukkGcZh5NAV60YX8XYvXqBsbbF3o=; b=m7J
	makvLWxEBL2RJAfV9WCsAu15hG9MWVEKbOOKCBbth0ogvXZ2NVAedha9Pvfi99P+hVitdX7oIYrW/
	qLgQ2Gg4V9gHWCGT+eNi2zu3OfLUCMahQnmBVeagylRP6f/pzF7LESO7PyZpJR9kSAjUsfmgJriqp
	Rjycr9BRW2iBSrA6IWomYzTbm01ce9JrNYw6AbPkkfiL4UaLiYYi6tmKN0kuwSH62rvTo94ffapOf
	GGDRGIW+ezj9jrKaeZIQTW9KXRth8oX+8lq4FMDtREqWmT/9gC6rmlPJNQFs0TeYI0vcH0kOEAd7i
	cSIF5i683n8CAox9PPPmbBZxUwbFEeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4SU-00049V-RK; Tue, 05 Nov 2019 19:25:42 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4SR-000491-GD
 for ath10k@lists.infradead.org; Tue, 05 Nov 2019 19:25:41 +0000
Received: by mail-ot1-x341.google.com with SMTP id 94so18624445oty.8
 for <ath10k@lists.infradead.org>; Tue, 05 Nov 2019 11:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9Xmvxla+FOMPcV59TDL9shlIkzoaLP3iO7IOe3nQYEs=;
 b=nWufCnc5cvSrkNj9Vc0gr+pwmuvqU0zYMqwBJWNRPnjnqlvpuFvUUlYQsRONdz0zRJ
 t2d8vibT4TYSvVAY7MQzlfcFhPiJbCyCZ+nseXvvpIG5rigyvl0r5wSC42zgLfiTg7y8
 5N+EqVIYb/W0pFcqEGnCQ5o5BAAug0DlV9R3M3hLCPnpqLqe2NOiOhW7kcCvYPYrr7tL
 jDlL1S5+zjsJgzjg8Mqr4/Sw4RTwAOb3PHgcNCuIQSwckPzuTIS9PjO46sDO5h4yOv4y
 Wyk5Fx1fcLmd8jA2mtKQq9D/AwVYVyzEUOziMmP0/ak0G+K+zT5dbFCqklGafr+HN2KI
 3nrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9Xmvxla+FOMPcV59TDL9shlIkzoaLP3iO7IOe3nQYEs=;
 b=K+oH757PmQgQLOVAcqJHxT757Kec1LrVFJvY8v0HPZYnx4r5yBkNgSZK8+mCAn2uzf
 TOqr4bmdRuvWN7GqTif7MdVplWE/qEL7Iy158wJntz7vv/vS4ee2ryvOA6TZ19XB+zET
 UseRa5HA50OzFwe1d37ZYLefFDq3C2BEQtqaKPIKoXPbM9RJ1pUfRq38IFe4M+pDD740
 N9Uw65UdyKTuzIHDlr4BnvAZ5oERB8XeQA0N9RInVK2DVYxGgbtyRcJP/Uuoj4v6XWoy
 N7lAWEAnSp2wqXDVpiWtJjL/hLBu5UEGd6NOW6ht6Tfqq4Fg/7HqRIRL/iopKlYnEe9l
 Onbg==
X-Gm-Message-State: APjAAAXB73X0oDv6D4p66w7GiIOUjgR8sLQ87UYzXjotXs1HT1OA9EB3
 hTOzxeVKynaNEXTJuFGzdxt/nh5YumoIcsBeKTzuX4NxNP8=
X-Google-Smtp-Source: APXvYqz04nTd4A1MYuJPJCIjylXpnKEUeVDXvk7wOG3NfIIiY0zdXdc1DTTA6ADjTO0pxJh4S38ZhoijGBL4ydhiBv0=
X-Received: by 2002:a9d:568:: with SMTP id 95mr4422101otw.99.1572981936897;
 Tue, 05 Nov 2019 11:25:36 -0800 (PST)
MIME-Version: 1.0
From: Goran Sustek <gsustek@gmail.com>
Date: Tue, 5 Nov 2019 20:25:26 +0100
Message-ID: <CAFweJaPHmQORJARFTrONWE9-+eZ-9M8tXnw1oG9iu3-S46Pbgw@mail.gmail.com>
Subject: Unable to set Transmit Packet Steering "xps_cpus"
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_112539_565227_1DBADC50 
X-CRM114-Status: UNSURE (   3.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gsustek[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi, i have unusual issue setting Transmit Packet steering.


Hardware (NIC chipset, platform, etc)
NIC: Compex COMPEX WLE1216V5-20 5GHz
Platform: KANSUNG Model: K515G6
(https://bit.ly/2IOlSeQ 1)

system: ubuntu eaon latest update
driver: latest  ath10k , any firmware ,board-bin

root@gs-Default-string:/home/gs# ls -lrt
/sys/class/net/wlp6s0/queues/tx-0/xps_cpus
-rw-r--r-- 1 root root 4096 stu 4 17:03
/sys/class/net/wlp6s0/queues/tx-0/xps_cpus
root@gs-Default-string:/home/gs# cat /sys/class/net/wlp6s0/queues/tx-0/xps_cpus
cat: /sys/class/net/wlp6s0/queues/tx-0/xps_cpus: No such file or directory
root@gs-Default-string:/home/gs#

root@gs-Default-string:/home/gs# ls -lrt /sys/class/net/
total 0
lrwxrwxrwx 1 root root 0 stu 4 16:50 lo -> ../../devices/virtual/net/lo
lrwxrwxrwx 1 root root 0 stu 4 16:50 enp5s0 ->
../../devices/pci0000:00/0000:00:1c.4/0000:05:00.0/net/enp5s0
lrwxrwxrwx 1 root root 0 stu 4 16:50 enp4s0 ->
../../devices/pci0000:00/0000:00:1c.3/0000:04:00.0/net/enp4s0
lrwxrwxrwx 1 root root 0 stu 4 16:50 enp3s0 ->
../../devices/pci0000:00/0000:00:1c.2/0000:03:00.0/net/enp3s0
lrwxrwxrwx 1 root root 0 stu 4 16:50 enp2s0 ->
../../devices/pci0000:00/0000:00:1c.1/0000:02:00.0/net/enp2s0
lrwxrwxrwx 1 root root 0 stu 4 16:50 enp1s0 ->
../../devices/pci0000:00/0000:00:1c.0/0000:01:00.0/net/enp1s0
lrwxrwxrwx 1 root root 0 stu 4 16:50 wlp6s0 ->
../../devices/pci0000:00/0000:00:1d.0/0000:06:00.0/net/wlp6s0
root@gs-Default-string:/home/gs#


Regards,

Goran.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
