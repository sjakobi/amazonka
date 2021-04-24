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
-- Module      : Network.AWS.CloudFront.GetPublicKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a public key.
module Network.AWS.CloudFront.GetPublicKey
  ( -- * Creating a Request
    getPublicKey,
    GetPublicKey,

    -- * Request Lenses
    gpkId,

    -- * Destructuring the Response
    getPublicKeyResponse,
    GetPublicKeyResponse,

    -- * Response Lenses
    gpkrrsETag,
    gpkrrsPublicKey,
    gpkrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPublicKey' smart constructor.
newtype GetPublicKey = GetPublicKey' {_gpkId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpkId' - The identifier of the public key you are getting.
getPublicKey ::
  -- | 'gpkId'
  Text ->
  GetPublicKey
getPublicKey pId_ = GetPublicKey' {_gpkId = pId_}

-- | The identifier of the public key you are getting.
gpkId :: Lens' GetPublicKey Text
gpkId = lens _gpkId (\s a -> s {_gpkId = a})

instance AWSRequest GetPublicKey where
  type Rs GetPublicKey = GetPublicKeyResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetPublicKeyResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetPublicKey

instance NFData GetPublicKey

instance ToHeaders GetPublicKey where
  toHeaders = const mempty

instance ToPath GetPublicKey where
  toPath GetPublicKey' {..} =
    mconcat ["/2020-05-31/public-key/", toBS _gpkId]

instance ToQuery GetPublicKey where
  toQuery = const mempty

-- | /See:/ 'getPublicKeyResponse' smart constructor.
data GetPublicKeyResponse = GetPublicKeyResponse'
  { _gpkrrsETag ::
      !(Maybe Text),
    _gpkrrsPublicKey ::
      !(Maybe PublicKey),
    _gpkrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPublicKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpkrrsETag' - The identifier for this version of the public key.
--
-- * 'gpkrrsPublicKey' - The public key.
--
-- * 'gpkrrsResponseStatus' - -- | The response status code.
getPublicKeyResponse ::
  -- | 'gpkrrsResponseStatus'
  Int ->
  GetPublicKeyResponse
getPublicKeyResponse pResponseStatus_ =
  GetPublicKeyResponse'
    { _gpkrrsETag = Nothing,
      _gpkrrsPublicKey = Nothing,
      _gpkrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for this version of the public key.
gpkrrsETag :: Lens' GetPublicKeyResponse (Maybe Text)
gpkrrsETag = lens _gpkrrsETag (\s a -> s {_gpkrrsETag = a})

-- | The public key.
gpkrrsPublicKey :: Lens' GetPublicKeyResponse (Maybe PublicKey)
gpkrrsPublicKey = lens _gpkrrsPublicKey (\s a -> s {_gpkrrsPublicKey = a})

-- | -- | The response status code.
gpkrrsResponseStatus :: Lens' GetPublicKeyResponse Int
gpkrrsResponseStatus = lens _gpkrrsResponseStatus (\s a -> s {_gpkrrsResponseStatus = a})

instance NFData GetPublicKeyResponse
