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
-- Module      : Network.AWS.Lightsail.DownloadDefaultKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads the default SSH key pair from the user's account.
module Network.AWS.Lightsail.DownloadDefaultKeyPair
  ( -- * Creating a Request
    downloadDefaultKeyPair,
    DownloadDefaultKeyPair,

    -- * Destructuring the Response
    downloadDefaultKeyPairResponse,
    DownloadDefaultKeyPairResponse,

    -- * Response Lenses
    ddkprrsPrivateKeyBase64,
    ddkprrsPublicKeyBase64,
    ddkprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'downloadDefaultKeyPair' smart constructor.
data DownloadDefaultKeyPair = DownloadDefaultKeyPair'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DownloadDefaultKeyPair' with the minimum fields required to make a request.
downloadDefaultKeyPair ::
  DownloadDefaultKeyPair
downloadDefaultKeyPair = DownloadDefaultKeyPair'

instance AWSRequest DownloadDefaultKeyPair where
  type
    Rs DownloadDefaultKeyPair =
      DownloadDefaultKeyPairResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DownloadDefaultKeyPairResponse'
            <$> (x .?> "privateKeyBase64")
            <*> (x .?> "publicKeyBase64")
            <*> (pure (fromEnum s))
      )

instance Hashable DownloadDefaultKeyPair

instance NFData DownloadDefaultKeyPair

instance ToHeaders DownloadDefaultKeyPair where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DownloadDefaultKeyPair" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DownloadDefaultKeyPair where
  toJSON = const (Object mempty)

instance ToPath DownloadDefaultKeyPair where
  toPath = const "/"

instance ToQuery DownloadDefaultKeyPair where
  toQuery = const mempty

-- | /See:/ 'downloadDefaultKeyPairResponse' smart constructor.
data DownloadDefaultKeyPairResponse = DownloadDefaultKeyPairResponse'
  { _ddkprrsPrivateKeyBase64 ::
      !( Maybe
           Text
       ),
    _ddkprrsPublicKeyBase64 ::
      !( Maybe
           Text
       ),
    _ddkprrsResponseStatus ::
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

-- | Creates a value of 'DownloadDefaultKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddkprrsPrivateKeyBase64' - A base64-encoded RSA private key.
--
-- * 'ddkprrsPublicKeyBase64' - A base64-encoded public key of the @ssh-rsa@ type.
--
-- * 'ddkprrsResponseStatus' - -- | The response status code.
downloadDefaultKeyPairResponse ::
  -- | 'ddkprrsResponseStatus'
  Int ->
  DownloadDefaultKeyPairResponse
downloadDefaultKeyPairResponse pResponseStatus_ =
  DownloadDefaultKeyPairResponse'
    { _ddkprrsPrivateKeyBase64 =
        Nothing,
      _ddkprrsPublicKeyBase64 = Nothing,
      _ddkprrsResponseStatus = pResponseStatus_
    }

-- | A base64-encoded RSA private key.
ddkprrsPrivateKeyBase64 :: Lens' DownloadDefaultKeyPairResponse (Maybe Text)
ddkprrsPrivateKeyBase64 = lens _ddkprrsPrivateKeyBase64 (\s a -> s {_ddkprrsPrivateKeyBase64 = a})

-- | A base64-encoded public key of the @ssh-rsa@ type.
ddkprrsPublicKeyBase64 :: Lens' DownloadDefaultKeyPairResponse (Maybe Text)
ddkprrsPublicKeyBase64 = lens _ddkprrsPublicKeyBase64 (\s a -> s {_ddkprrsPublicKeyBase64 = a})

-- | -- | The response status code.
ddkprrsResponseStatus :: Lens' DownloadDefaultKeyPairResponse Int
ddkprrsResponseStatus = lens _ddkprrsResponseStatus (\s a -> s {_ddkprrsResponseStatus = a})

instance NFData DownloadDefaultKeyPairResponse
