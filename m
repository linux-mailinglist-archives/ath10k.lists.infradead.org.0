Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4191E064E
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 07:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDWjms89X0zkfKH0fkvnzPlce1re8ceADO/9/E6/m54=; b=Ic+gg5uwmdj7U5
	TRfrr/aFwExjE1ACzuxxVbuhZatUiBcMAiF85Y6WNuaNnDClzXkXxgmGhTjiFcMAe7LriKnmHz+RB
	9a1p2Sq3+KB8xqjcZ3KYHR4UqhHRzo7J1brxojHX0Dw7rtk/S1IvlXYqeIFkBIjrrcWrd36dYPPW/
	wMXT9FC7rS4jIcMWDBLlKOompRYCDI4fMubBP/g0vKaEGmUV84sgF2N3XYScn8YGjY1Yupb+2tSKU
	kiLfuilUsEOU+In3kLhPbUp6VQNpxTQQGyXfFU+H/GNSZBBH0bhOQg/y3b+5/K1B1kpPgphoe8djB
	GE+ciuYUG0QkExWh0rzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd5My-000333-7t; Mon, 25 May 2020 05:09:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd5Mu-00032d-MG
 for ath10k@lists.infradead.org; Mon, 25 May 2020 05:09:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so15886218wrt.5
 for <ath10k@lists.infradead.org>; Sun, 24 May 2020 22:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=B7WmPqSxKkGHLwOXcalhC8FQYCxg3ob4TqLkSNgE3ME=;
 b=MDvMHnHWHRB6j+QHZqtEPXcD9WLeCDcRxBf2nbzu3eDcInxRON5LbVL4t0vdRMxWtf
 CnmRbsX8kycSD/l6HbtXB1vTKX9hhEUHfoFMZvb1xiw2zol7DR/gpgVjbmaUfvruvZvT
 CUfISFF2rBD/yNfHc74aOYhUokJ5z1BZtnecDGAwqLt++pV6Z6NpRC4uMpUgCBZbgSfG
 7xNEEyJIYDCwrJFE/c1gQFXpyvWV3jdHyaMejM/Jop9z+8zLw95LeAnnBY9HSj6Da3zY
 q37t1x07J3vsvS+uM8j/zVUrQW6B6fUB3DzYt+ibDpZ+t1YW2+a9C1P4KmKPC0Lq7afb
 cdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=B7WmPqSxKkGHLwOXcalhC8FQYCxg3ob4TqLkSNgE3ME=;
 b=DCmT2UBtp5aDaf/DEMApPuSI3+nur9ON9YBpQU66dYhr5xSl46Fyn4rq9LUJnEkx4E
 gBK+k8XEeIT6PSBIJ4do1YqsrU06rnQOfp0ufeEk6BMwTPqtF4aeblx4am0RYBeW7xu6
 pijPZRoCAMhMmJwhV8PtwIt2v+hUB7WdIlMBImfdUZRP5Tw1Fqsmv2Y+hZuQdILSriaK
 tjiHIOJu7gYFem8istEvWYn0vjIsom3zwMYEUlAqFbVZ1vLx4TlyqsSMsF6Dn5w0uAN1
 7/kAX+GexPRqDDy18UcuFRgnHKYZiOuyzkm3jgYG3yhbB+j4afq6vCuLivC1KwUMe+NW
 v5Qg==
X-Gm-Message-State: AOAM532koukSfcy1K5J6Sd6myIvRa1O5sqmOigDOYthvLsUbWIxhSO+y
 KvNJ7+7dXZWipWMzmu8+ffc=
X-Google-Smtp-Source: ABdhPJyOQH+I+lUOwRriQmpOTtG3236uelfyjcB3kUnnKDiaBAWJ48ynwdAd+AmGoJ3RoGZhUnLYug==
X-Received: by 2002:adf:ab1b:: with SMTP id q27mr6297475wrc.268.1590383379745; 
 Sun, 24 May 2020 22:09:39 -0700 (PDT)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id a10sm17221451wmf.46.2020.05.24.22.09.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 22:09:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Subject: Re: [PATCH] ath10k: add SDIO firmware for QCA9377 WiFi
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <CA+5PVA5K0naJRhBvmDmArkBWQBCuA6p2yP+pYPMr3dZ47q53aQ@mail.gmail.com>
Date: Mon, 25 May 2020 09:09:35 +0400
Message-Id: <37BB0344-C9EB-41F5-87E7-D66DA45A488E@gmail.com>
References: <20200524135933.1623-1-christianshewitt@gmail.com>
 <CA+5PVA5K0naJRhBvmDmArkBWQBCuA6p2yP+pYPMr3dZ47q53aQ@mail.gmail.com>
To: Josh Boyer <jwboyer@kernel.org>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_220944_745019_1E4FD901 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kalle Valo <kvalo@codeaurora.org>,
 Linux Wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Linux Firmware <linux-firmware@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Cj4gT24gMjQgTWF5IDIwMjAsIGF0IDg6MzQgcG0sIEpvc2ggQm95ZXIgPGp3Ym95ZXJAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gCj4gT24gU3VuLCBNYXkgMjQsIDIwMjAgYXQgOTo1OSBBTSBDaHJpc3Rp
YW4gSGV3aXR0Cj4gPGNocmlzdGlhbnNoZXdpdHRAZ21haWwuY29tPiB3cm90ZToKPj4gCj4+IFRo
aXMgY29tbWl0IGFkZHMgdGhlIFNESU8gZmlybXdhcmUgZm9yIGF0aDEway9RQ0E5Mzc3IGNhcmRz
LiBUaGUgZmlsZQo+PiBpcyBmcm9tIHRoZSBCb3VuZGFyeSBEZXZpY2VzIHJlcG8gWzFdIGFuZCBo
YXMgdGhlIHNhbWUgbGljZW5zZSBhcyB0aGUKPj4gZXhpc3RpbmcgZmlybXdhcmUtNS5iaW4gZmls
ZS4gU3VwcG9ydCBmb3IgUUNBOTM3NyBXaUZpIHdhcyBtZXJnZWQgZm9yCj4+IExpbnV4IDUuNyBb
Ml0uCj4+IAo+PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL2JvdW5kYXJ5ZGV2aWNlcy9xY2EtZmly
bXdhcmUvdHJlZS9iZC1zZG1hYy1hdGgxMGsKPj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2
YWxkcy9saW51eC9jb21taXQvNmU1MWIwZTQ5MTNjYTJjOTMwNTlmNzNjYTQ3N2NhMzBlYTk1YjZh
MAo+IAo+IFRoYXQgcmVwbyBnb3QgaXQgZnJvbSBLYWxsZSdzIHVudGVzdGVkIHJlcG8sIGFuZCBk
aWRuJ3QgY2Fycnkgb3ZlciB0aGUKPiBTaWduZWQtb2ZmLWJ5LiAgWW91IGRpZG4ndCBjYXJyeSBv
dmVyIHRoZSBTaWduZWQtb2ZmLWJ5IGZyb20gdGhlIHJlcG8KPiB5b3UgZ290IGl0IGZyb20uICAz
IGxldmVscyBvZiBpbmRpcmVjdGlvbiB0byBpbmNsdWRlIGEgZmlsZSB3aXRoIGEKPiBnaWFudCBu
b3RpY2UgZnJvbSBhbiB1bnRlc3RlZCBzb3VyY2VzIGlzIGEgYml0IHRvbyBtdWNoIGZvciBtZSB0
byBmZWVsCj4gY29tZm9ydGFibGUgd2l0aC4KCkFwb2xvZ2llcyBKb3NoLCBJIGhhdmUgYmVlbiB1
c2luZyBteSBvd24gcmVwYWNrIG9mIHRoZSBCb3VuZGFyeSBEZXZpY2VzCnJlcG8gYW5kIGhhZCBj
b21wbGV0ZWx5IGZvcmdvdHRlbiBLYWxsZeKAmXMgcmVwbyBleGlzdGVkIGFuZCB3YXMgdGhlCm9y
aWdpbmFsIHNvdXJjZSBvZiB0aGUgZmlsZS4KCj4gS2FsbGUsIGlzIHRoZXJlIGEgcmVhc29uIHlv
dSBkaWRuJ3Qgc2VuZCB0aGlzIHVwc3RyZWFtIDMgeWVhcnMgYWdvPwoKU0RJTyBzdXBwb3J0IGlz
IGEgcmVsYXRpdmVseSByZWNlbnQgYWRkaXRpb24gdG8gdGhlIGF0aDEwayBkcml2ZXIgYW5kCnRo
ZSBjb21taXQgbWVzc2FnZSBpbiB0aGlzIFJGVCBbMV0gcHJvYmFibHkgZXhwbGFpbnMgd2h5IGhp
cyByZXBvIGhhcwppdCBkZXNjcmliZWQgYXMgdW50ZXN0ZWQuCgpJ4oCZbSBoYXBweSB0byBzdWJt
aXQgdjIgd2l0aCBjb3JyZWN0ZWQgcmVmZXJlbmNlcyBvciBsZXQgS2FsbGUgaGFuZGxlCnRoZSBz
dWJtaXNzaW9uLCB3aGljaGV2ZXIgaXMgYmVzdCBvciBlYXNpZXN0IGlzIGZpbmUgd2l0aCBtZS4K
CkNocmlzdGlhbgoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTExNjI4
MzMvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEw
ayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
