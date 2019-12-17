Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F6123AFA
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 00:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYsj+yNNpWMQkfB2UYl/y087WcgX0TTGjgqRNxCLB2Q=; b=BNxSuIRY8kBEzc
	RJHPUwzUfYe4fIphnk84LaCrxUuTb67ZXq7I5U6DiGW7dqsVykKMnme0qw8JOdmkqAQnTaib4Hw3k
	n2TRR5VADKqtTbDIEn2UmIQjtorlJnd96Thz9OGYi2zgq3XREAyB5IhCn/xAFQRkMWM/UP5pxLZwY
	+kpKQ0cX3321ZeHckLdPiheHtfo9qn2i7y7wd7xYHHsnAD5Fv+zGHVFyFhXquPtCqFFAK4x6OnC4a
	eSZU68a2U7a0oqrOSBXaB6gTfaiWaYLLf91trV2PIaIDaFowO/O/jhTFhZk/M/0Qoy+QkVFFDg+kS
	Rw6yNYJIvLW4pJptB5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMPQ-0008Pa-6K; Tue, 17 Dec 2019 23:37:44 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMPM-0008PA-9B
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 23:37:41 +0000
Received: by mail-ot1-x330.google.com with SMTP id 77so39563oty.6
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 15:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=/0x5LI6Cliq3r3WqRFVAa6MjVnvEl/FWbTVS8rks1Rc=;
 b=SSXE6m2UYNXz8kYy8zX/wy9u/yK2pRIZcSBDPuHAnGUKAfMcomJpHXRhIX+JfSPkxJ
 aZODGITphMVBoxlQ1H/WOsd3JOYKIJyK3Jw4AErx2vIFgi3y59BhLZCPuhH6oSki5i91
 7+DYf2U4MU3woXQoxIHCnY+efh7gAs5obWi3fapyWiL/ZY2cDffdOA/vaknooGNKAzkJ
 w1xwdo+a3eZhmDRrp/oMro53e+RIBNZgxNa2v7ChJmfKcgilll4JgHzCCdTkoxQdKE+B
 vmuCAI8xoSdfi9t68DopSx2yUGVSNwIQhgJD+6AqyjKDHMi0qB+vsnRyUN2b5BBSv5O3
 Zd3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=/0x5LI6Cliq3r3WqRFVAa6MjVnvEl/FWbTVS8rks1Rc=;
 b=k1MI85T+E9uTHNu+0A9e9Il7d/72j0X2PwaIKxhn0c77agnw4ee55eoGLBZXlS/cDX
 ba6yICSC8e6XUbNXkgEJqV7GBgqjbeRuk6NNxqUO/VTmhmZmZ9u26r4BS2nHP/PbB6dO
 MW30lIk0JORojjfvskHnz0uMt6EVyCFgPWRjPoVQ9gNARe4ls+r1Zt4TaE7mXw3I+lpl
 HtVcKa2uHAqTPeRN7TxRbWvBnk44W7yg9eRPcAT/ErTvHu9CPDx2QPvUaK4vwfMZ8Tyx
 a+caL19JpKJhRqHnH++oFubXiZab2noCzkl6+lY1HulBiMq4UABsITTd3VwGSqxEUgrm
 VXzg==
X-Gm-Message-State: APjAAAVNDmKaJXizt05yHRJmEeEL2Fsa0TaGoQtbY/k5UZIlfFFwVMbh
 KjOb5P1hSgvX73p4z9lYQcW4tYgIjgidEwY/QaQ=
X-Google-Smtp-Source: APXvYqzNaLUQ/yA7iMcwgimKTSeMakiGiiIK1Ad9Mr21DmVINFZYCBr8EEuCo4o96Bok2xQ20QY4e2n369iwZuXVEpY=
X-Received: by 2002:a9d:7f16:: with SMTP id j22mr59798otq.256.1576625859483;
 Tue, 17 Dec 2019 15:37:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Tue, 17 Dec 2019 15:37:38 -0800 (PST)
In-Reply-To: <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
 <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
 <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 00:37:38 +0100
Message-ID: <CAKR_QV+KV1dR_QKjANL34DGJuyf3OSN8J6gs3bqcmiRCCzkdXA@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_153740_322649_1E3FC9EC 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

also noticed now that the noise floor changes with signal strength as
described in this bug report:
https://www.mail-archive.com/ath10k@lists.infradead.org/msg11553.html

after wifi restart

iwinfo:

signal: -59dBm noise: -108dBm

then goes to

signal: -52dBm noise: -103dBm

and finally drops to

signal: -59dBm noise: -103dBm

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
