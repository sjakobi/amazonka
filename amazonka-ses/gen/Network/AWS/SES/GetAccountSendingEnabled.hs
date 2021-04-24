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
-- Module      : Network.AWS.SES.GetAccountSendingEnabled
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the email sending status of the Amazon SES account for the current region.
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.GetAccountSendingEnabled
  ( -- * Creating a Request
    getAccountSendingEnabled,
    GetAccountSendingEnabled,

    -- * Destructuring the Response
    getAccountSendingEnabledResponse,
    GetAccountSendingEnabledResponse,

    -- * Response Lenses
    gaserrsEnabled,
    gaserrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'getAccountSendingEnabled' smart constructor.
data GetAccountSendingEnabled = GetAccountSendingEnabled'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountSendingEnabled' with the minimum fields required to make a request.
getAccountSendingEnabled ::
  GetAccountSendingEnabled
getAccountSendingEnabled = GetAccountSendingEnabled'

instance AWSRequest GetAccountSendingEnabled where
  type
    Rs GetAccountSendingEnabled =
      GetAccountSendingEnabledResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetAccountSendingEnabledResult"
      ( \s h x ->
          GetAccountSendingEnabledResponse'
            <$> (x .@? "Enabled") <*> (pure (fromEnum s))
      )

instance Hashable GetAccountSendingEnabled

instance NFData GetAccountSendingEnabled

instance ToHeaders GetAccountSendingEnabled where
  toHeaders = const mempty

instance ToPath GetAccountSendingEnabled where
  toPath = const "/"

instance ToQuery GetAccountSendingEnabled where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("GetAccountSendingEnabled" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | Represents a request to return the email sending status for your Amazon SES account in the current AWS Region.
--
--
--
-- /See:/ 'getAccountSendingEnabledResponse' smart constructor.
data GetAccountSendingEnabledResponse = GetAccountSendingEnabledResponse'
  { _gaserrsEnabled ::
      !( Maybe
           Bool
       ),
    _gaserrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountSendingEnabledResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaserrsEnabled' - Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.
--
-- * 'gaserrsResponseStatus' - -- | The response status code.
getAccountSendingEnabledResponse ::
  -- | 'gaserrsResponseStatus'
  Int ->
  GetAccountSendingEnabledResponse
getAccountSendingEnabledResponse pResponseStatus_ =
  GetAccountSendingEnabledResponse'
    { _gaserrsEnabled =
        Nothing,
      _gaserrsResponseStatus = pResponseStatus_
    }

-- | Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.
gaserrsEnabled :: Lens' GetAccountSendingEnabledResponse (Maybe Bool)
gaserrsEnabled = lens _gaserrsEnabled (\s a -> s {_gaserrsEnabled = a})

-- | -- | The response status code.
gaserrsResponseStatus :: Lens' GetAccountSendingEnabledResponse Int
gaserrsResponseStatus = lens _gaserrsResponseStatus (\s a -> s {_gaserrsResponseStatus = a})

instance NFData GetAccountSendingEnabledResponse
