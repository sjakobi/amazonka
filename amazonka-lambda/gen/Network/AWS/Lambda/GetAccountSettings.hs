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
-- Module      : Network.AWS.Lambda.GetAccountSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about your account's <https://docs.aws.amazon.com/lambda/latest/dg/limits.html limits> and usage in an AWS Region.
module Network.AWS.Lambda.GetAccountSettings
  ( -- * Creating a Request
    getAccountSettings,
    GetAccountSettings,

    -- * Destructuring the Response
    getAccountSettingsResponse,
    GetAccountSettingsResponse,

    -- * Response Lenses
    gasrrsAccountLimit,
    gasrrsAccountUsage,
    gasrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountSettings' smart constructor.
data GetAccountSettings = GetAccountSettings'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAccountSettings' with the minimum fields required to make a request.
getAccountSettings ::
  GetAccountSettings
getAccountSettings = GetAccountSettings'

instance AWSRequest GetAccountSettings where
  type
    Rs GetAccountSettings =
      GetAccountSettingsResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          GetAccountSettingsResponse'
            <$> (x .?> "AccountLimit")
            <*> (x .?> "AccountUsage")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAccountSettings

instance NFData GetAccountSettings

instance ToHeaders GetAccountSettings where
  toHeaders = const mempty

instance ToPath GetAccountSettings where
  toPath = const "/2016-08-19/account-settings/"

instance ToQuery GetAccountSettings where
  toQuery = const mempty

-- | /See:/ 'getAccountSettingsResponse' smart constructor.
data GetAccountSettingsResponse = GetAccountSettingsResponse'
  { _gasrrsAccountLimit ::
      !( Maybe
           AccountLimit
       ),
    _gasrrsAccountUsage ::
      !( Maybe
           AccountUsage
       ),
    _gasrrsResponseStatus ::
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

-- | Creates a value of 'GetAccountSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrrsAccountLimit' - Limits that are related to concurrency and code storage.
--
-- * 'gasrrsAccountUsage' - The number of functions and amount of storage in use.
--
-- * 'gasrrsResponseStatus' - -- | The response status code.
getAccountSettingsResponse ::
  -- | 'gasrrsResponseStatus'
  Int ->
  GetAccountSettingsResponse
getAccountSettingsResponse pResponseStatus_ =
  GetAccountSettingsResponse'
    { _gasrrsAccountLimit =
        Nothing,
      _gasrrsAccountUsage = Nothing,
      _gasrrsResponseStatus = pResponseStatus_
    }

-- | Limits that are related to concurrency and code storage.
gasrrsAccountLimit :: Lens' GetAccountSettingsResponse (Maybe AccountLimit)
gasrrsAccountLimit = lens _gasrrsAccountLimit (\s a -> s {_gasrrsAccountLimit = a})

-- | The number of functions and amount of storage in use.
gasrrsAccountUsage :: Lens' GetAccountSettingsResponse (Maybe AccountUsage)
gasrrsAccountUsage = lens _gasrrsAccountUsage (\s a -> s {_gasrrsAccountUsage = a})

-- | -- | The response status code.
gasrrsResponseStatus :: Lens' GetAccountSettingsResponse Int
gasrrsResponseStatus = lens _gasrrsResponseStatus (\s a -> s {_gasrrsResponseStatus = a})

instance NFData GetAccountSettingsResponse
