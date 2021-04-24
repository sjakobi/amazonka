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
-- Module      : Network.AWS.IoT.GetV2LoggingOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the fine grained logging options.
module Network.AWS.IoT.GetV2LoggingOptions
  ( -- * Creating a Request
    getV2LoggingOptions,
    GetV2LoggingOptions,

    -- * Destructuring the Response
    getV2LoggingOptionsResponse,
    GetV2LoggingOptionsResponse,

    -- * Response Lenses
    gvlorrsRoleARN,
    gvlorrsDisableAllLogs,
    gvlorrsDefaultLogLevel,
    gvlorrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getV2LoggingOptions' smart constructor.
data GetV2LoggingOptions = GetV2LoggingOptions'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetV2LoggingOptions' with the minimum fields required to make a request.
getV2LoggingOptions ::
  GetV2LoggingOptions
getV2LoggingOptions = GetV2LoggingOptions'

instance AWSRequest GetV2LoggingOptions where
  type
    Rs GetV2LoggingOptions =
      GetV2LoggingOptionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetV2LoggingOptionsResponse'
            <$> (x .?> "roleArn")
            <*> (x .?> "disableAllLogs")
            <*> (x .?> "defaultLogLevel")
            <*> (pure (fromEnum s))
      )

instance Hashable GetV2LoggingOptions

instance NFData GetV2LoggingOptions

instance ToHeaders GetV2LoggingOptions where
  toHeaders = const mempty

instance ToPath GetV2LoggingOptions where
  toPath = const "/v2LoggingOptions"

instance ToQuery GetV2LoggingOptions where
  toQuery = const mempty

-- | /See:/ 'getV2LoggingOptionsResponse' smart constructor.
data GetV2LoggingOptionsResponse = GetV2LoggingOptionsResponse'
  { _gvlorrsRoleARN ::
      !(Maybe Text),
    _gvlorrsDisableAllLogs ::
      !(Maybe Bool),
    _gvlorrsDefaultLogLevel ::
      !( Maybe
           LogLevel
       ),
    _gvlorrsResponseStatus ::
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

-- | Creates a value of 'GetV2LoggingOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvlorrsRoleARN' - The IAM role ARN AWS IoT uses to write to your CloudWatch logs.
--
-- * 'gvlorrsDisableAllLogs' - Disables all logs.
--
-- * 'gvlorrsDefaultLogLevel' - The default log level.
--
-- * 'gvlorrsResponseStatus' - -- | The response status code.
getV2LoggingOptionsResponse ::
  -- | 'gvlorrsResponseStatus'
  Int ->
  GetV2LoggingOptionsResponse
getV2LoggingOptionsResponse pResponseStatus_ =
  GetV2LoggingOptionsResponse'
    { _gvlorrsRoleARN =
        Nothing,
      _gvlorrsDisableAllLogs = Nothing,
      _gvlorrsDefaultLogLevel = Nothing,
      _gvlorrsResponseStatus = pResponseStatus_
    }

-- | The IAM role ARN AWS IoT uses to write to your CloudWatch logs.
gvlorrsRoleARN :: Lens' GetV2LoggingOptionsResponse (Maybe Text)
gvlorrsRoleARN = lens _gvlorrsRoleARN (\s a -> s {_gvlorrsRoleARN = a})

-- | Disables all logs.
gvlorrsDisableAllLogs :: Lens' GetV2LoggingOptionsResponse (Maybe Bool)
gvlorrsDisableAllLogs = lens _gvlorrsDisableAllLogs (\s a -> s {_gvlorrsDisableAllLogs = a})

-- | The default log level.
gvlorrsDefaultLogLevel :: Lens' GetV2LoggingOptionsResponse (Maybe LogLevel)
gvlorrsDefaultLogLevel = lens _gvlorrsDefaultLogLevel (\s a -> s {_gvlorrsDefaultLogLevel = a})

-- | -- | The response status code.
gvlorrsResponseStatus :: Lens' GetV2LoggingOptionsResponse Int
gvlorrsResponseStatus = lens _gvlorrsResponseStatus (\s a -> s {_gvlorrsResponseStatus = a})

instance NFData GetV2LoggingOptionsResponse
