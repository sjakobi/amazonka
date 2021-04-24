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
-- Module      : Network.AWS.CertificateManager.GetAccountConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the account configuration options associated with an AWS account.
module Network.AWS.CertificateManager.GetAccountConfiguration
  ( -- * Creating a Request
    getAccountConfiguration,
    GetAccountConfiguration,

    -- * Destructuring the Response
    getAccountConfigurationResponse,
    GetAccountConfigurationResponse,

    -- * Response Lenses
    gacrrsExpiryEvents,
    gacrrsResponseStatus,
  )
where

import Network.AWS.CertificateManager.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountConfiguration' smart constructor.
data GetAccountConfiguration = GetAccountConfiguration'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountConfiguration' with the minimum fields required to make a request.
getAccountConfiguration ::
  GetAccountConfiguration
getAccountConfiguration = GetAccountConfiguration'

instance AWSRequest GetAccountConfiguration where
  type
    Rs GetAccountConfiguration =
      GetAccountConfigurationResponse
  request = postJSON certificateManager
  response =
    receiveJSON
      ( \s h x ->
          GetAccountConfigurationResponse'
            <$> (x .?> "ExpiryEvents") <*> (pure (fromEnum s))
      )

instance Hashable GetAccountConfiguration

instance NFData GetAccountConfiguration

instance ToHeaders GetAccountConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CertificateManager.GetAccountConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAccountConfiguration where
  toJSON = const (Object mempty)

instance ToPath GetAccountConfiguration where
  toPath = const "/"

instance ToQuery GetAccountConfiguration where
  toQuery = const mempty

-- | /See:/ 'getAccountConfigurationResponse' smart constructor.
data GetAccountConfigurationResponse = GetAccountConfigurationResponse'
  { _gacrrsExpiryEvents ::
      !( Maybe
           ExpiryEventsConfiguration
       ),
    _gacrrsResponseStatus ::
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

-- | Creates a value of 'GetAccountConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacrrsExpiryEvents' - Expiration events configuration options associated with the AWS account.
--
-- * 'gacrrsResponseStatus' - -- | The response status code.
getAccountConfigurationResponse ::
  -- | 'gacrrsResponseStatus'
  Int ->
  GetAccountConfigurationResponse
getAccountConfigurationResponse pResponseStatus_ =
  GetAccountConfigurationResponse'
    { _gacrrsExpiryEvents =
        Nothing,
      _gacrrsResponseStatus = pResponseStatus_
    }

-- | Expiration events configuration options associated with the AWS account.
gacrrsExpiryEvents :: Lens' GetAccountConfigurationResponse (Maybe ExpiryEventsConfiguration)
gacrrsExpiryEvents = lens _gacrrsExpiryEvents (\s a -> s {_gacrrsExpiryEvents = a})

-- | -- | The response status code.
gacrrsResponseStatus :: Lens' GetAccountConfigurationResponse Int
gacrrsResponseStatus = lens _gacrrsResponseStatus (\s a -> s {_gacrrsResponseStatus = a})

instance NFData GetAccountConfigurationResponse
