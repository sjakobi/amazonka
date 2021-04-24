{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.GetSendQuota
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the sending limits for the Amazon SES account.
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.GetSendQuota
  ( -- * Creating a Request
    getSendQuota,
    GetSendQuota,

    -- * Destructuring the Response
    getSendQuotaResponse,
    GetSendQuotaResponse,

    -- * Response Lenses
    gsqrrsMax24HourSend,
    gsqrrsSentLast24Hours,
    gsqrrsMaxSendRate,
    gsqrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'getSendQuota' smart constructor.
data GetSendQuota = GetSendQuota'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSendQuota' with the minimum fields required to make a request.
getSendQuota ::
  GetSendQuota
getSendQuota = GetSendQuota'

instance AWSRequest GetSendQuota where
  type Rs GetSendQuota = GetSendQuotaResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetSendQuotaResult"
      ( \s h x ->
          GetSendQuotaResponse'
            <$> (x .@? "Max24HourSend")
            <*> (x .@? "SentLast24Hours")
            <*> (x .@? "MaxSendRate")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSendQuota

instance NFData GetSendQuota

instance ToHeaders GetSendQuota where
  toHeaders = const mempty

instance ToPath GetSendQuota where
  toPath = const "/"

instance ToQuery GetSendQuota where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("GetSendQuota" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.
--
--
--
-- /See:/ 'getSendQuotaResponse' smart constructor.
data GetSendQuotaResponse = GetSendQuotaResponse'
  { _gsqrrsMax24HourSend ::
      !(Maybe Double),
    _gsqrrsSentLast24Hours ::
      !(Maybe Double),
    _gsqrrsMaxSendRate ::
      !(Maybe Double),
    _gsqrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSendQuotaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsqrrsMax24HourSend' - The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.
--
-- * 'gsqrrsSentLast24Hours' - The number of emails sent during the previous 24 hours.
--
-- * 'gsqrrsMaxSendRate' - The maximum number of emails that Amazon SES can accept from the user's account per second.
--
-- * 'gsqrrsResponseStatus' - -- | The response status code.
getSendQuotaResponse ::
  -- | 'gsqrrsResponseStatus'
  Int ->
  GetSendQuotaResponse
getSendQuotaResponse pResponseStatus_ =
  GetSendQuotaResponse'
    { _gsqrrsMax24HourSend =
        Nothing,
      _gsqrrsSentLast24Hours = Nothing,
      _gsqrrsMaxSendRate = Nothing,
      _gsqrrsResponseStatus = pResponseStatus_
    }

-- | The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.
gsqrrsMax24HourSend :: Lens' GetSendQuotaResponse (Maybe Double)
gsqrrsMax24HourSend = lens _gsqrrsMax24HourSend (\s a -> s {_gsqrrsMax24HourSend = a})

-- | The number of emails sent during the previous 24 hours.
gsqrrsSentLast24Hours :: Lens' GetSendQuotaResponse (Maybe Double)
gsqrrsSentLast24Hours = lens _gsqrrsSentLast24Hours (\s a -> s {_gsqrrsSentLast24Hours = a})

-- | The maximum number of emails that Amazon SES can accept from the user's account per second.
gsqrrsMaxSendRate :: Lens' GetSendQuotaResponse (Maybe Double)
gsqrrsMaxSendRate = lens _gsqrrsMaxSendRate (\s a -> s {_gsqrrsMaxSendRate = a})

-- | -- | The response status code.
gsqrrsResponseStatus :: Lens' GetSendQuotaResponse Int
gsqrrsResponseStatus = lens _gsqrrsResponseStatus (\s a -> s {_gsqrrsResponseStatus = a})

instance NFData GetSendQuotaResponse
