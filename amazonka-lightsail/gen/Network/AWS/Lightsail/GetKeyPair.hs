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
-- Module      : Network.AWS.Lightsail.GetKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific key pair.
module Network.AWS.Lightsail.GetKeyPair
  ( -- * Creating a Request
    getKeyPair,
    GetKeyPair,

    -- * Request Lenses
    gkpKeyPairName,

    -- * Destructuring the Response
    getKeyPairResponse,
    GetKeyPairResponse,

    -- * Response Lenses
    gkprkrsKeyPair,
    gkprkrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getKeyPair' smart constructor.
newtype GetKeyPair = GetKeyPair'
  { _gkpKeyPairName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gkpKeyPairName' - The name of the key pair for which you are requesting information.
getKeyPair ::
  -- | 'gkpKeyPairName'
  Text ->
  GetKeyPair
getKeyPair pKeyPairName_ =
  GetKeyPair' {_gkpKeyPairName = pKeyPairName_}

-- | The name of the key pair for which you are requesting information.
gkpKeyPairName :: Lens' GetKeyPair Text
gkpKeyPairName = lens _gkpKeyPairName (\s a -> s {_gkpKeyPairName = a})

instance AWSRequest GetKeyPair where
  type Rs GetKeyPair = GetKeyPairResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetKeyPairResponse'
            <$> (x .?> "keyPair") <*> (pure (fromEnum s))
      )

instance Hashable GetKeyPair

instance NFData GetKeyPair

instance ToHeaders GetKeyPair where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetKeyPair" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetKeyPair where
  toJSON GetKeyPair' {..} =
    object
      (catMaybes [Just ("keyPairName" .= _gkpKeyPairName)])

instance ToPath GetKeyPair where
  toPath = const "/"

instance ToQuery GetKeyPair where
  toQuery = const mempty

-- | /See:/ 'getKeyPairResponse' smart constructor.
data GetKeyPairResponse = GetKeyPairResponse'
  { _gkprkrsKeyPair ::
      !(Maybe KeyPair),
    _gkprkrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gkprkrsKeyPair' - An array of key-value pairs containing information about the key pair.
--
-- * 'gkprkrsResponseStatus' - -- | The response status code.
getKeyPairResponse ::
  -- | 'gkprkrsResponseStatus'
  Int ->
  GetKeyPairResponse
getKeyPairResponse pResponseStatus_ =
  GetKeyPairResponse'
    { _gkprkrsKeyPair = Nothing,
      _gkprkrsResponseStatus = pResponseStatus_
    }

-- | An array of key-value pairs containing information about the key pair.
gkprkrsKeyPair :: Lens' GetKeyPairResponse (Maybe KeyPair)
gkprkrsKeyPair = lens _gkprkrsKeyPair (\s a -> s {_gkprkrsKeyPair = a})

-- | -- | The response status code.
gkprkrsResponseStatus :: Lens' GetKeyPairResponse Int
gkprkrsResponseStatus = lens _gkprkrsResponseStatus (\s a -> s {_gkprkrsResponseStatus = a})

instance NFData GetKeyPairResponse
