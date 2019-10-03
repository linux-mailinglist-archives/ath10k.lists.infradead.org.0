Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47897C9F02
	for <lists+ath10k@lfdr.de>; Thu,  3 Oct 2019 15:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EU3i9M0lAOZCAFQ+F08i107NGG7mbmxAXrsm/Es/DoQ=; b=NPCdKaXrkncU64
	qFiNY8Vbble8tFuSdju4/iu0a1ZlCAhk28+92JlFDC//YV+alLSrb/KHAYR7ndsRg7E5ryw/GKDYE
	5PJiByJ7jk87/CK0uexrEL21dj8W5MGAYWpKT7saYGXQVOQvzo0zw+6m5RAA36QazOLKVYgsFKqDz
	NxOH2od8UdFGu9dPpw8HaJ4s5HCWFdxzLoZ9yEHkGWCqCuxvH2y/4iwmQ/rJV9bF4Xe898T72FJ9j
	+R92hxTbo3ov1uyy6wzHQbrh52ES6iUGtQvjN1xE1upQPQ/lGPRp00DkIbVkuP8HLe6rqLGHsDogW
	DEJDjf9y2sx7/2NonWrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0lk-0000Jm-6V; Thu, 03 Oct 2019 13:03:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0lg-0000JN-Ig
 for ath10k@lists.infradead.org; Thu, 03 Oct 2019 13:03:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C3DF560ADE; Thu,  3 Oct 2019 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570107818;
 bh=Lx9BrOJJ6VK6C6KTF5WnbI/0E1bm8YGL2YkTTHwg8wM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=NsG0wxGPTBk4roraRLgfmhCuwK1qI1h9stKu5DbmEzJm/UdJTFygZUuREFzWfhda3
 PBedeAJ8EToLROfv5NRGhGLa3dCykmOdcrQwd2ChzhizNEMtd1p7x/6li4jzwuVDoq
 ryNMFjsAWzjmJv3zWbzgIUnf/q0a5j6vIUNkEF3I=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C754560E73;
 Thu,  3 Oct 2019 13:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570107818;
 bh=Lx9BrOJJ6VK6C6KTF5WnbI/0E1bm8YGL2YkTTHwg8wM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=NsG0wxGPTBk4roraRLgfmhCuwK1qI1h9stKu5DbmEzJm/UdJTFygZUuREFzWfhda3
 PBedeAJ8EToLROfv5NRGhGLa3dCykmOdcrQwd2ChzhizNEMtd1p7x/6li4jzwuVDoq
 ryNMFjsAWzjmJv3zWbzgIUnf/q0a5j6vIUNkEF3I=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C754560E73
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Peter Oh <peter.oh@bowerswilkins.com>
Subject: Re: [PATCH v2] ath10k: Report low ack rssi based on the reason code
References: <1554276181-7879-1-git-send-email-pillair@codeaurora.org>
 <5f25f471-5753-7d4a-91f8-9a3986117580@bowerswilkins.com>
Date: Thu, 03 Oct 2019 16:03:33 +0300
In-Reply-To: <5f25f471-5753-7d4a-91f8-9a3986117580@bowerswilkins.com> (Peter
 Oh's message of "Wed, 3 Apr 2019 16:58:51 +0000")
Message-ID: <878sq20ymy.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_060340_656980_B5D211A5 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Rakesh Pillai <pillair@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Peter Oh <peter.oh@bowerswilkins.com> writes:

> On 04/03/2019 12:23 AM, Rakesh Pillai wrote:
>> Firmware sends peer sta kickout event to the driver
>> along with the reason code for a particular peer.
>>
>> Currently the sta kickout event is delivered to the
>> upper layer without checking if the reason code is
>> valid or not. This causes frequent disconnection of
>> the STA.
>>
>> Report low ack rssi event to mac80211 only if the reason
>> code is valid.
>>
>> Tested HW: WCN3990
>> Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1
>>
>> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

[...]

>> @@ -3440,6 +3437,12 @@ void ath10k_wmi_event_peer_sta_kickout(struct ath10k *ar, struct sk_buff *skb)
>>   		goto exit;
>>   	}
>>   
>> +	if (arg.reason_code_valid &&
>> +	    arg.reason == WMI_PEER_STA_KICKOUT_REASON_UNSPECIFIED)
>> +		goto exit;
>> +
>
> Why do we want this event not to be delivered to user space?

Yeah, I'm curious about that as well. If I'm guessing right,
WMI_PEER_STA_KICKOUT_REASON_UNSPECIFIED is supposed to mean that the
firmware does not support providing the reason code. Usually, but not
always, in the firmware interface value zero means unsupported. So why
would we want to ignore a kickout event which has a valid mac address
for the peer?

In what kind of cases is the firmware emitting these events? Is this
really the correct thing to do?

>> +	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi event peer sta kickout %pM reason code %d\n",
>> +		   arg.mac_addr, arg.reason);
>>   	ieee80211_report_low_ack(sta, 10);
>>   
>>   exit:
>> diff --git a/drivers/net/wireless/ath/ath10k/wmi.h b/drivers/net/wireless/ath/ath10k/wmi.h
>> index e1c40bb..3ccd79e 100644
>> --- a/drivers/net/wireless/ath/ath10k/wmi.h
>> +++ b/drivers/net/wireless/ath/ath10k/wmi.h
>> @@ -6797,6 +6797,8 @@ struct wmi_vdev_start_ev_arg {
>>   
>>   struct wmi_peer_kick_ev_arg {
>>   	const u8 *mac_addr;
>> +	u32 reason;
>> +	bool reason_code_valid;
>>   };
>
> Adding extra members to this structure breaks structure consistency 
> between FW and host driver since FW doesn't have such members.

Yeah, this reason_code_valid boolean is set if WMI-TLV is used, but it
does not still mean that the reason code is valid. (There might be
WMI-TLV firmwares which do not provide the reason code.)

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
