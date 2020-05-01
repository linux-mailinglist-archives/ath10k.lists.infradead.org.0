Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C23F1C1006
	for <lists+ath10k@lfdr.de>; Fri,  1 May 2020 10:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rcBzv7i4N/qgBJtSoDQlMNkQDYhKaurh6twh2v6u1bA=; b=aRpbslozAss7+0
	nHmo2QadT+N2C6H3Leirwu4SlcYHjT7WjGfggSad5Eu9xlTzO+p9FUnEd6bPzlQ33aK1sM5g+Van3
	tVhu9oL8IzMocHcI3x/ixIP2zqINT2K9//LmLZWTuVNNBwxR8ow5bjPnEA1X5s13M3UvZi2XGhG0a
	n8KzEURH3oz6oPWY2A4SqQVsJkVEhbN2W1gZARzxWuavHB54I94AfjY0GNN758Cq/kWUt2pI+yAlO
	YEBTSG7ptQYHN/Z9zNc6efRIH6VMUDLU9fKCZd8u40hBiENJsDkRRCWkcUcxv3xGxkXE7nUphWIEM
	rWxWvFPjQx66vXdYNZrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURMq-0004Gp-UU; Fri, 01 May 2020 08:49:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURMi-0004CE-5M
 for ath10k@lists.infradead.org; Fri, 01 May 2020 08:49:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so5273771wmk.5
 for <ath10k@lists.infradead.org>; Fri, 01 May 2020 01:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:disposition-notification-to:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=XZWNkgvybUKUX1agGxi7VyzkrF1k8fHNGSEC/ET68dA=;
 b=TK9knx3l34GH5+EPNCOyJifD+c6v0r4nK5VAqA/QgFRPGncGyDiK9Wv2wLaz7G48VF
 urg535jwXGjRhWs90ns07zy4oj0gmNhKd/OLLL1xGIoa3cXLWGV9b2HrQuw4m2XTi9RF
 rR3NBSJk0QLFNAX89wpSPquxASPQujW695rmnF/hcZgLIGR+vuyfTUE93nX25s3Z4z38
 Ayd2+I6JMVBZa2OXF7PZKr3aZDUewqL6Ezo+SPF5O9we7DYIVs1Ycc9GpgcIbAZX366n
 8o/AVbec3wyM51woRfp7uMugCQpR3BPEWTJtwIPt54qxs6+fCRyosCIw0zGN3urcmTVF
 4kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id
 :disposition-notification-to:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=XZWNkgvybUKUX1agGxi7VyzkrF1k8fHNGSEC/ET68dA=;
 b=pEvHdfcr+hoGdb1mlgJuL38hz6MSjVh5M9vUXvrqOYJ1724/98+UP7EgySom6giZHk
 e1SsM9SHBjY9Q97x+mXEnfyPMr12sjl7nOzPeA+65n6nIH+dUT5CeQh2VBJUHCZWkPiE
 kbWc0ehM6npZ/AqFHRsxqxWRKVYxrZk+s8f/37D12/jkhPXgpHsGER6DncdSfqY5gXHv
 vFA5P0nOlQzRCub2QTwH6f498r+Dl6u8DZsLmayxma/7Vtp5L8kfhumsgJHGXcDGD554
 /Kr3FNq5mjEzMqDKtURnOq/iinMCfRPGBIRDWhj73QyEZ+BRG0P6ZzUk8xn69kyaOzo8
 lWZg==
X-Gm-Message-State: AGi0PubGaBCpwfhk+UFWT+K38OY2aNmQbtvpNHerPcqDp7Fottq8PRgX
 1OdNUTfCcxWocLGGmrkUyllIL50/
X-Google-Smtp-Source: APiQypIhN1vpQzBgWaY1WZ9vuArQxAOzMFOXGLJZ9CwvnBDSx+4o29RQppOOBuVJ8ZvzB/hhAi9ejw==
X-Received: by 2002:a05:600c:29c2:: with SMTP id
 s2mr2858089wmd.111.1588322985243; 
 Fri, 01 May 2020 01:49:45 -0700 (PDT)
Received: from ?IPv6:2a02:2f0a:b00c:7500:69c3:560e:1d57:ba?
 ([2a02:2f0a:b00c:7500:69c3:560e:1d57:ba])
 by smtp.gmail.com with ESMTPSA id n131sm3132262wmf.35.2020.05.01.01.49.44
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 01:49:44 -0700 (PDT)
From: Ionut Radu <ionut.radu@gmail.com>
Subject: ath10k ch12&13 are disabled for no reason
To: ath10k@lists.infradead.org
Message-ID: <acf023c8-6c00-1091-1323-8cd3ecd36a87@gmail.com>
Date: Fri, 1 May 2020 11:49:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_014948_236263_B42F83D2 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ionut.radu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.5 GB_FREEMAIL_DISPTO     Disposition-Notification-To/From or
 Disposition-Notification-To/body contain different freemails
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SGksCgpDYW4geW91IGhlbHAgd2l0aCB0aGlzIGlzc3VlOgpodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTIwMDk3OT8KSSdtIGxvY2F0ZWQgaW4gUm9tYW5pYS9FdXJv
cGUsIGFuZCBJIHNlZSBubyByZWFzb24gd2h5IGNoMTImMTMgYXJlCmRpc2FibGVkIGZvciBteSBj
b3VudHJ5LgpUaGVzZSBhcmUgdGhlIG1vc3QgZnJlZSBjaGFubmVscyBzbyBJIHdhbnQgdG8gdXNl
IHRoZW0sIGFuZCBpdCBiZWNvbWVzCmZydXN0cmF0aW5nIHRoYXQKdGhleSB3b3JrIGluIHdpbmRv
d3MgMTAsIGJ1dCBub3Qgb24gRmVkb3JhIDMyIHVubGVzcyBJIGNvbXBpbGUgdGhlCm1vZHVsZSBh
bGwgdGhlIHRpbWUuCgpTb21lIGRldGFpbHMgKG5vdGUgdGhhdCBJIGhhdmUgY2hhbmdlZCB0aGUg
cmVnZC5jIGZpbGUgZnJvbToKICDCoMKgwqAgY2FzZSAweDY2OgogIMKgwqDCoCBjYXNlIDB4Njk6
CiAgwqDCoMKgIMKgwqDCoCByZXR1cm4gJmF0aF93b3JsZF9yZWdkb21fNjZfNjk7CnRvOgogIMKg
wqDCoCBjYXNlIDB4NjY6CiAgwqDCoMKgIMKgwqDCoCByZXR1cm4gJmF0aF93b3JsZF9yZWdkb21f
NjZfNjk7CiAgwqDCoMKgIGNhc2UgMHg2OToKICDCoMKgwqAgwqDCoMKgIHJldHVybiAmYXRoX3dv
cmxkX3JlZ2RvbV82MF82MV82MjsKKQoKCmRtZXNnOgpbwqDCoMKgIDguMTkwMjg2XSBhdGg6IGxv
YWRpbmcgb3V0LW9mLXRyZWUgbW9kdWxlIHRhaW50cyBrZXJuZWwuClvCoMKgwqAgOC4xOTAzMjdd
IGF0aDogbW9kdWxlIHZlcmlmaWNhdGlvbiBmYWlsZWQ6IHNpZ25hdHVyZSBhbmQvb3IKcmVxdWly
ZWQga2V5IG1pc3NpbmcgLSB0YWludGluZyBrZXJuZWwKW8KgwqDCoCA4LjM2ODI2Ml0gYXRoMTBr
X3BjaSAwMDAwOjAzOjAwLjA6IHBjaSBpcnEgbXNpIG9wZXJfaXJxX21vZGUgMgppcnFfbW9kZSAw
IHJlc2V0X21vZGUgMApbwqDCoMKgIDguNTg4Mzg0XSBhdGgxMGtfcGNpIDAwMDA6MDM6MDAuMDog
cWNhOTM3NyBodzEuMSB0YXJnZXQgMHgwNTAyMDAwMQpjaGlwX2lkIDB4MDAzODIxZmYgc3ViIDEw
NWI6ZTBhMQpbwqDCoMKgIDguNTg4Mzg2XSBhdGgxMGtfcGNpIDAwMDA6MDM6MDAuMDoga2NvbmZp
ZyBkZWJ1ZyAwIGRlYnVnZnMgMQp0cmFjaW5nIDAgZGZzIDAgdGVzdG1vZGUgMApbwqDCoMKgIDgu
NTg4ODQ4XSBhdGgxMGtfcGNpIDAwMDA6MDM6MDAuMDogZmlybXdhcmUgdmVyCldMQU4uVEYuMi4x
LTAwMDIxLVFDQVJNU1dQLTEgYXBpIDYgZmVhdHVyZXMgd293bGFuLGlnbm9yZS1vdHAgY3JjMzIK
NDJlNDE4NzcKW8KgwqDCoCA4LjY1Mjc4Ml0gYXRoMTBrX3BjaSAwMDAwOjAzOjAwLjA6IGJvYXJk
X2ZpbGUgYXBpIDIgYm1pX2lkIE4vQQpjcmMzMiA4YWVkZmE0YQpbwqDCoMKgIDguNzQ3NjQ4XSBh
dGgxMGtfcGNpIDAwMDA6MDM6MDAuMDogaHR0LXZlciAzLjU2IHdtaS1vcCA0IGh0dC1vcCAzCmNh
bCBvdHAgbWF4LXN0YSAzMiByYXcgMCBod2NyeXB0byAxClvCoMKgwqAgOC44MDY2OTFdIGF0aDog
RUVQUk9NIHJlZ2RvbWFpbjogMHg2OQpbwqDCoMKgIDguODA2NjkyXSBhdGg6IEVFUFJPTSBpbmRp
Y2F0ZXMgd2Ugc2hvdWxkIGV4cGVjdCBhIGRpcmVjdCByZWdwYWlyIG1hcApbwqDCoMKgIDguODA2
NjkzXSBhdGg6IENvdW50cnkgYWxwaGEyIGJlaW5nIHVzZWQ6IDAwClvCoMKgwqAgOC44MDY2OTNd
IGF0aDogUmVncGFpciB1c2VkOiAweDY5ClvCoMKgIDEwLjkxMjI1Ml0gYXRoMTBrX3BjaSAwMDAw
OjAzOjAwLjAgd2xwM3MwOiByZW5hbWVkIGZyb20gd2xhbjAKW8KgIDExMy4yNTc0MTldIGF0aDog
RUVQUk9NIHJlZ2RvbWFpbjogMHg4MzNhClvCoCAxMTMuMjU3NDE5XSBhdGg6IEVFUFJPTSBpbmRp
Y2F0ZXMgd2Ugc2hvdWxkIGV4cGVjdCBhIGNvdW50cnkgY29kZQpbwqAgMTEzLjI1NzQyMF0gYXRo
OiBkb2luZyBFRVBST00gY291bnRyeS0+cmVnZG1uIG1hcCBzZWFyY2gKW8KgIDExMy4yNTc0MjBd
IGF0aDogY291bnRyeSBtYXBzIHRvIHJlZ2RtbiBjb2RlOiAweDM3ClvCoCAxMTMuMjU3NDIxXSBh
dGg6IENvdW50cnkgYWxwaGEyIGJlaW5nIHVzZWQ6IEdCClvCoCAxMTMuMjU3NDIxXSBhdGg6IFJl
Z3BhaXIgdXNlZDogMHgzNwpbwqAgMTEzLjI1NzQyMl0gYXRoOiByZWdkb21haW4gMHg4MzNhIGR5
bmFtaWNhbGx5IHVwZGF0ZWQgYnkgY291bnRyeSBlbGVtZW50CgppdyByZWcgZ2V0Cmdsb2JhbApj
b3VudHJ5IEdCOiBERlMtRVRTSQogIMKgwqDCoCAoMjQwMiAtIDI0ODIgQCA0MCksIChOL0EsIDIw
KSwgKE4vQSkKICDCoMKgwqAgKDUxNzAgLSA1MjUwIEAgODApLCAoTi9BLCAyMCksIChOL0EpLCBB
VVRPLUJXCiAgwqDCoMKgICg1MjUwIC0gNTMzMCBAIDgwKSwgKE4vQSwgMjApLCAoMCBtcyksIERG
UywgQVVUTy1CVwogIMKgwqDCoCAoNTQ5MCAtIDU3MTAgQCAxNjApLCAoTi9BLCAyNyksICgwIG1z
KSwgREZTCiAgwqDCoMKgICg1NzAwMCAtIDY2MDAwIEAgMjE2MCksIChOL0EsIDQwKSwgKE4vQSkK
CmxzcGNpIC12CjM6MDAuMCBOZXR3b3JrIGNvbnRyb2xsZXI6IFF1YWxjb21tIEF0aGVyb3MgUUNB
OTM3NyA4MDIuMTFhYyBXaXJlbGVzcwpOZXR3b3JrIEFkYXB0ZXIgKHJldiAzMSkKICDCoMKgwqAg
U3Vic3lzdGVtOiBGb3hjb25uIEludGVybmF0aW9uYWwsIEluYy4gRGV2aWNlIGUwYTEKICDCoMKg
wqAgRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxMzQKICDC
oMKgwqAgTWVtb3J5IGF0IGI0MDAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXpl
PTJNXQogIMKgwqDCoCBDYXBhYmlsaXRpZXM6IFs0MF0gUG93ZXIgTWFuYWdlbWVudCB2ZXJzaW9u
IDMKICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbNTBdIE1TSTogRW5hYmxlKyBDb3VudD0xLzggTWFz
a2FibGUrIDY0Yml0LQogIMKgwqDCoCBDYXBhYmlsaXRpZXM6IFs3MF0gRXhwcmVzcyBFbmRwb2lu
dCwgTVNJIDAwCiAgwqDCoMKgIENhcGFiaWxpdGllczogWzEwMF0gQWR2YW5jZWQgRXJyb3IgUmVw
b3J0aW5nCiAgwqDCoMKgIENhcGFiaWxpdGllczogWzE0OF0gVmlydHVhbCBDaGFubmVsCiAgwqDC
oMKgIENhcGFiaWxpdGllczogWzE2OF0gRGV2aWNlIFNlcmlhbCBOdW1iZXIgMDAtMDAtMDAtMDAt
MDAtMDAtMDAtMDAKICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTc4XSBMYXRlbmN5IFRvbGVyYW5j
ZSBSZXBvcnRpbmcKICDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbMTgwXSBMMSBQTSBTdWJzdGF0ZXMK
ICDCoMKgwqAgS2VybmVsIGRyaXZlciBpbiB1c2U6IGF0aDEwa19wY2kKICDCoMKgwqAgS2VybmVs
IG1vZHVsZXM6IGF0aDEwa19wY2kKCktlcm5lbCBpczogIDUuNi43LTMwMC5mYzMyLng4Nl82NCAj
MSBTTVAgVGh1IEFwciAyMyAxNDoxMzo1MCBVVEMgMjAyMCB4ODZfNjQgeDg2XzY0IHg4Nl82NCBH
TlUvTGludXgKCkkndmUgc3R1ZGllZCByZWdkLmMgYW5kIGZvdW5kIHRoYXQgYXQgbGVhc3QgNzUl
IG9mIHRoZSBjb2RlIGlzIHVzZWxlc3MgYXMgaXQgaXMgZXhlY3V0ZWQKYWZ0ZXIgdGhlIGZyZXF1
ZW5jaWVzIGFyZSBhbHJlYWR5IHNldCBieSBhdGhfd29ybGRfcmVnZG9tYWluIGZ1bmN0aW9uLgoK
YXRoX3dvcmxkX3JlZ2RvbWFpbiBpcyBjYWxsZWQgYnkgYXRoX3JlZ2RfaW5pdF93aXBoeQphdGhf
cmVnZF9pbml0X3dpcGh5IGkgY2FsbGVkIGJ5IGF0aF9yZWdkX2luaXQKCgoKVGhhbmsgeW91IGFu
ZCBiZXN0IHJlZ2FyZHMsCklvbnV0IFJhZHUuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9h
dGgxMGsK
