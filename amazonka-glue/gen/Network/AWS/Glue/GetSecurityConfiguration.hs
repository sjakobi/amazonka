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
-- Module      : Network.AWS.Glue.GetSecurityConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specified security configuration.
module Network.AWS.Glue.GetSecurityConfiguration
  ( -- * Creating a Request
    getSecurityConfiguration,
    GetSecurityConfiguration,

    -- * Request Lenses
    gscName,

    -- * Destructuring the Response
    getSecurityConfigurationResponse,
    GetSecurityConfigurationResponse,

    -- * Response Lenses
    gscrrsSecurityConfiguration,
    gscrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSecurityConfiguration' smart constructor.
newtype GetSecurityConfiguration = GetSecurityConfiguration'
  { _gscName ::
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

-- | Creates a value of 'GetSecurityConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscName' - The name of the security configuration to retrieve.
getSecurityConfiguration ::
  -- | 'gscName'
  Text ->
  GetSecurityConfiguration
getSecurityConfiguration pName_ =
  GetSecurityConfiguration' {_gscName = pName_}

-- | The name of the security configuration to retrieve.
gscName :: Lens' GetSecurityConfiguration Text
gscName = lens _gscName (\s a -> s {_gscName = a})

instance AWSRequest GetSecurityConfiguration where
  type
    Rs GetSecurityConfiguration =
      GetSecurityConfigurationResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetSecurityConfigurationResponse'
            <$> (x .?> "SecurityConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSecurityConfiguration

instance NFData GetSecurityConfiguration

instance ToHeaders GetSecurityConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetSecurityConfiguration" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSecurityConfiguration where
  toJSON GetSecurityConfiguration' {..} =
    object (catMaybes [Just ("Name" .= _gscName)])

instance ToPath GetSecurityConfiguration where
  toPath = const "/"

instance ToQuery GetSecurityConfiguration where
  toQuery = const mempty

-- | /See:/ 'getSecurityConfigurationResponse' smart constructor.
data GetSecurityConfigurationResponse = GetSecurityConfigurationResponse'
  { _gscrrsSecurityConfiguration ::
      !( Maybe
           SecurityConfiguration
       ),
    _gscrrsResponseStatus ::
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

-- | Creates a value of 'GetSecurityConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscrrsSecurityConfiguration' - The requested security configuration.
--
-- * 'gscrrsResponseStatus' - -- | The response status code.
getSecurityConfigurationResponse ::
  -- | 'gscrrsResponseStatus'
  Int ->
  GetSecurityConfigurationResponse
getSecurityConfigurationResponse pResponseStatus_ =
  GetSecurityConfigurationResponse'
    { _gscrrsSecurityConfiguration =
        Nothing,
      _gscrrsResponseStatus = pResponseStatus_
    }

-- | The requested security configuration.
gscrrsSecurityConfiguration :: Lens' GetSecurityConfigurationResponse (Maybe SecurityConfiguration)
gscrrsSecurityConfiguration = lens _gscrrsSecurityConfiguration (\s a -> s {_gscrrsSecurityConfiguration = a})

-- | -- | The response status code.
gscrrsResponseStatus :: Lens' GetSecurityConfigurationResponse Int
gscrrsResponseStatus = lens _gscrrsResponseStatus (\s a -> s {_gscrrsResponseStatus = a})

instance NFData GetSecurityConfigurationResponse
