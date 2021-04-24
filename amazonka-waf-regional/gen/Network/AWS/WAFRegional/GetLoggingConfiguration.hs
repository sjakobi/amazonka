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
-- Module      : Network.AWS.WAFRegional.GetLoggingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'LoggingConfiguration' for the specified web ACL.
module Network.AWS.WAFRegional.GetLoggingConfiguration
  ( -- * Creating a Request
    getLoggingConfiguration,
    GetLoggingConfiguration,

    -- * Request Lenses
    glcResourceARN,

    -- * Destructuring the Response
    getLoggingConfigurationResponse,
    GetLoggingConfigurationResponse,

    -- * Response Lenses
    glcrrsLoggingConfiguration,
    glcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'getLoggingConfiguration' smart constructor.
newtype GetLoggingConfiguration = GetLoggingConfiguration'
  { _glcResourceARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLoggingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glcResourceARN' - The Amazon Resource Name (ARN) of the web ACL for which you want to get the 'LoggingConfiguration' .
getLoggingConfiguration ::
  -- | 'glcResourceARN'
  Text ->
  GetLoggingConfiguration
getLoggingConfiguration pResourceARN_ =
  GetLoggingConfiguration'
    { _glcResourceARN =
        pResourceARN_
    }

-- | The Amazon Resource Name (ARN) of the web ACL for which you want to get the 'LoggingConfiguration' .
glcResourceARN :: Lens' GetLoggingConfiguration Text
glcResourceARN = lens _glcResourceARN (\s a -> s {_glcResourceARN = a})

instance AWSRequest GetLoggingConfiguration where
  type
    Rs GetLoggingConfiguration =
      GetLoggingConfigurationResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          GetLoggingConfigurationResponse'
            <$> (x .?> "LoggingConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLoggingConfiguration

instance NFData GetLoggingConfiguration

instance ToHeaders GetLoggingConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.GetLoggingConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLoggingConfiguration where
  toJSON GetLoggingConfiguration' {..} =
    object
      (catMaybes [Just ("ResourceArn" .= _glcResourceARN)])

instance ToPath GetLoggingConfiguration where
  toPath = const "/"

instance ToQuery GetLoggingConfiguration where
  toQuery = const mempty

-- | /See:/ 'getLoggingConfigurationResponse' smart constructor.
data GetLoggingConfigurationResponse = GetLoggingConfigurationResponse'
  { _glcrrsLoggingConfiguration ::
      !( Maybe
           LoggingConfiguration
       ),
    _glcrrsResponseStatus ::
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

-- | Creates a value of 'GetLoggingConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glcrrsLoggingConfiguration' - The 'LoggingConfiguration' for the specified web ACL.
--
-- * 'glcrrsResponseStatus' - -- | The response status code.
getLoggingConfigurationResponse ::
  -- | 'glcrrsResponseStatus'
  Int ->
  GetLoggingConfigurationResponse
getLoggingConfigurationResponse pResponseStatus_ =
  GetLoggingConfigurationResponse'
    { _glcrrsLoggingConfiguration =
        Nothing,
      _glcrrsResponseStatus = pResponseStatus_
    }

-- | The 'LoggingConfiguration' for the specified web ACL.
glcrrsLoggingConfiguration :: Lens' GetLoggingConfigurationResponse (Maybe LoggingConfiguration)
glcrrsLoggingConfiguration = lens _glcrrsLoggingConfiguration (\s a -> s {_glcrrsLoggingConfiguration = a})

-- | -- | The response status code.
glcrrsResponseStatus :: Lens' GetLoggingConfigurationResponse Int
glcrrsResponseStatus = lens _glcrrsResponseStatus (\s a -> s {_glcrrsResponseStatus = a})

instance NFData GetLoggingConfigurationResponse
