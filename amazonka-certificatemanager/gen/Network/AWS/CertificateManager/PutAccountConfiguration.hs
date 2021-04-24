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
-- Module      : Network.AWS.CertificateManager.PutAccountConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or modifies account-level configurations in ACM.
--
--
-- The supported configuration option is @DaysBeforeExpiry@ . This option specifies the number of days prior to certificate expiration when ACM starts generating @EventBridge@ events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.
module Network.AWS.CertificateManager.PutAccountConfiguration
  ( -- * Creating a Request
    putAccountConfiguration,
    PutAccountConfiguration,

    -- * Request Lenses
    pacExpiryEvents,
    pacIdempotencyToken,

    -- * Destructuring the Response
    putAccountConfigurationResponse,
    PutAccountConfigurationResponse,
  )
where

import Network.AWS.CertificateManager.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putAccountConfiguration' smart constructor.
data PutAccountConfiguration = PutAccountConfiguration'
  { _pacExpiryEvents ::
      !( Maybe
           ExpiryEventsConfiguration
       ),
    _pacIdempotencyToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAccountConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pacExpiryEvents' - Specifies expiration events associated with an account.
--
-- * 'pacIdempotencyToken' - Customer-chosen string used to distinguish between calls to @PutAccountConfiguration@ . Idempotency tokens time out after one hour. If you call @PutAccountConfiguration@ multiple times with the same unexpired idempotency token, ACM treats it as the same request and returns the original result. If you change the idempotency token for each call, ACM treats each call as a new request.
putAccountConfiguration ::
  -- | 'pacIdempotencyToken'
  Text ->
  PutAccountConfiguration
putAccountConfiguration pIdempotencyToken_ =
  PutAccountConfiguration'
    { _pacExpiryEvents =
        Nothing,
      _pacIdempotencyToken = pIdempotencyToken_
    }

-- | Specifies expiration events associated with an account.
pacExpiryEvents :: Lens' PutAccountConfiguration (Maybe ExpiryEventsConfiguration)
pacExpiryEvents = lens _pacExpiryEvents (\s a -> s {_pacExpiryEvents = a})

-- | Customer-chosen string used to distinguish between calls to @PutAccountConfiguration@ . Idempotency tokens time out after one hour. If you call @PutAccountConfiguration@ multiple times with the same unexpired idempotency token, ACM treats it as the same request and returns the original result. If you change the idempotency token for each call, ACM treats each call as a new request.
pacIdempotencyToken :: Lens' PutAccountConfiguration Text
pacIdempotencyToken = lens _pacIdempotencyToken (\s a -> s {_pacIdempotencyToken = a})

instance AWSRequest PutAccountConfiguration where
  type
    Rs PutAccountConfiguration =
      PutAccountConfigurationResponse
  request = postJSON certificateManager
  response =
    receiveNull PutAccountConfigurationResponse'

instance Hashable PutAccountConfiguration

instance NFData PutAccountConfiguration

instance ToHeaders PutAccountConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CertificateManager.PutAccountConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAccountConfiguration where
  toJSON PutAccountConfiguration' {..} =
    object
      ( catMaybes
          [ ("ExpiryEvents" .=) <$> _pacExpiryEvents,
            Just ("IdempotencyToken" .= _pacIdempotencyToken)
          ]
      )

instance ToPath PutAccountConfiguration where
  toPath = const "/"

instance ToQuery PutAccountConfiguration where
  toQuery = const mempty

-- | /See:/ 'putAccountConfigurationResponse' smart constructor.
data PutAccountConfigurationResponse = PutAccountConfigurationResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAccountConfigurationResponse' with the minimum fields required to make a request.
putAccountConfigurationResponse ::
  PutAccountConfigurationResponse
putAccountConfigurationResponse =
  PutAccountConfigurationResponse'

instance NFData PutAccountConfigurationResponse
