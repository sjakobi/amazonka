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
-- Module      : Network.AWS.Lightsail.ImportKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a public SSH key from a specific key pair.
module Network.AWS.Lightsail.ImportKeyPair
  ( -- * Creating a Request
    importKeyPair,
    ImportKeyPair,

    -- * Request Lenses
    ikpKeyPairName,
    ikpPublicKeyBase64,

    -- * Destructuring the Response
    importKeyPairResponse,
    ImportKeyPairResponse,

    -- * Response Lenses
    ikprrsOperation,
    ikprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'importKeyPair' smart constructor.
data ImportKeyPair = ImportKeyPair'
  { _ikpKeyPairName ::
      !Text,
    _ikpPublicKeyBase64 :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ikpKeyPairName' - The name of the key pair for which you want to import the public key.
--
-- * 'ikpPublicKeyBase64' - A base64-encoded public key of the @ssh-rsa@ type.
importKeyPair ::
  -- | 'ikpKeyPairName'
  Text ->
  -- | 'ikpPublicKeyBase64'
  Text ->
  ImportKeyPair
importKeyPair pKeyPairName_ pPublicKeyBase64_ =
  ImportKeyPair'
    { _ikpKeyPairName = pKeyPairName_,
      _ikpPublicKeyBase64 = pPublicKeyBase64_
    }

-- | The name of the key pair for which you want to import the public key.
ikpKeyPairName :: Lens' ImportKeyPair Text
ikpKeyPairName = lens _ikpKeyPairName (\s a -> s {_ikpKeyPairName = a})

-- | A base64-encoded public key of the @ssh-rsa@ type.
ikpPublicKeyBase64 :: Lens' ImportKeyPair Text
ikpPublicKeyBase64 = lens _ikpPublicKeyBase64 (\s a -> s {_ikpPublicKeyBase64 = a})

instance AWSRequest ImportKeyPair where
  type Rs ImportKeyPair = ImportKeyPairResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          ImportKeyPairResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable ImportKeyPair

instance NFData ImportKeyPair

instance ToHeaders ImportKeyPair where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.ImportKeyPair" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ImportKeyPair where
  toJSON ImportKeyPair' {..} =
    object
      ( catMaybes
          [ Just ("keyPairName" .= _ikpKeyPairName),
            Just ("publicKeyBase64" .= _ikpPublicKeyBase64)
          ]
      )

instance ToPath ImportKeyPair where
  toPath = const "/"

instance ToQuery ImportKeyPair where
  toQuery = const mempty

-- | /See:/ 'importKeyPairResponse' smart constructor.
data ImportKeyPairResponse = ImportKeyPairResponse'
  { _ikprrsOperation ::
      !(Maybe Operation),
    _ikprrsResponseStatus ::
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

-- | Creates a value of 'ImportKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ikprrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'ikprrsResponseStatus' - -- | The response status code.
importKeyPairResponse ::
  -- | 'ikprrsResponseStatus'
  Int ->
  ImportKeyPairResponse
importKeyPairResponse pResponseStatus_ =
  ImportKeyPairResponse'
    { _ikprrsOperation = Nothing,
      _ikprrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
ikprrsOperation :: Lens' ImportKeyPairResponse (Maybe Operation)
ikprrsOperation = lens _ikprrsOperation (\s a -> s {_ikprrsOperation = a})

-- | -- | The response status code.
ikprrsResponseStatus :: Lens' ImportKeyPairResponse Int
ikprrsResponseStatus = lens _ikprrsResponseStatus (\s a -> s {_ikprrsResponseStatus = a})

instance NFData ImportKeyPairResponse
