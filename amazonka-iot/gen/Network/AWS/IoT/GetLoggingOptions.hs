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
-- Module      : Network.AWS.IoT.GetLoggingOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the logging options.
--
--
-- NOTE: use of this command is not recommended. Use @GetV2LoggingOptions@ instead.
module Network.AWS.IoT.GetLoggingOptions
  ( -- * Creating a Request
    getLoggingOptions,
    GetLoggingOptions,

    -- * Destructuring the Response
    getLoggingOptionsResponse,
    GetLoggingOptionsResponse,

    -- * Response Lenses
    glorrsRoleARN,
    glorrsLogLevel,
    glorrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetLoggingOptions operation.
--
--
--
-- /See:/ 'getLoggingOptions' smart constructor.
data GetLoggingOptions = GetLoggingOptions'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLoggingOptions' with the minimum fields required to make a request.
getLoggingOptions ::
  GetLoggingOptions
getLoggingOptions = GetLoggingOptions'

instance AWSRequest GetLoggingOptions where
  type Rs GetLoggingOptions = GetLoggingOptionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetLoggingOptionsResponse'
            <$> (x .?> "roleArn")
            <*> (x .?> "logLevel")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLoggingOptions

instance NFData GetLoggingOptions

instance ToHeaders GetLoggingOptions where
  toHeaders = const mempty

instance ToPath GetLoggingOptions where
  toPath = const "/loggingOptions"

instance ToQuery GetLoggingOptions where
  toQuery = const mempty

-- | The output from the GetLoggingOptions operation.
--
--
--
-- /See:/ 'getLoggingOptionsResponse' smart constructor.
data GetLoggingOptionsResponse = GetLoggingOptionsResponse'
  { _glorrsRoleARN ::
      !(Maybe Text),
    _glorrsLogLevel ::
      !(Maybe LogLevel),
    _glorrsResponseStatus ::
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

-- | Creates a value of 'GetLoggingOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorrsRoleARN' - The ARN of the IAM role that grants access.
--
-- * 'glorrsLogLevel' - The logging level.
--
-- * 'glorrsResponseStatus' - -- | The response status code.
getLoggingOptionsResponse ::
  -- | 'glorrsResponseStatus'
  Int ->
  GetLoggingOptionsResponse
getLoggingOptionsResponse pResponseStatus_ =
  GetLoggingOptionsResponse'
    { _glorrsRoleARN =
        Nothing,
      _glorrsLogLevel = Nothing,
      _glorrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the IAM role that grants access.
glorrsRoleARN :: Lens' GetLoggingOptionsResponse (Maybe Text)
glorrsRoleARN = lens _glorrsRoleARN (\s a -> s {_glorrsRoleARN = a})

-- | The logging level.
glorrsLogLevel :: Lens' GetLoggingOptionsResponse (Maybe LogLevel)
glorrsLogLevel = lens _glorrsLogLevel (\s a -> s {_glorrsLogLevel = a})

-- | -- | The response status code.
glorrsResponseStatus :: Lens' GetLoggingOptionsResponse Int
glorrsResponseStatus = lens _glorrsResponseStatus (\s a -> s {_glorrsResponseStatus = a})

instance NFData GetLoggingOptionsResponse
