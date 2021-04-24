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
-- Module      : Network.AWS.CloudFront.CreatePublicKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a public key to CloudFront that you can use with <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html signed URLs and signed cookies> , or with <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html field-level encryption> .
module Network.AWS.CloudFront.CreatePublicKey
  ( -- * Creating a Request
    createPublicKey,
    CreatePublicKey,

    -- * Request Lenses
    cpkPublicKeyConfig,

    -- * Destructuring the Response
    createPublicKeyResponse,
    CreatePublicKeyResponse,

    -- * Response Lenses
    cpkrrsETag,
    cpkrrsPublicKey,
    cpkrrsLocation,
    cpkrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPublicKey' smart constructor.
newtype CreatePublicKey = CreatePublicKey'
  { _cpkPublicKeyConfig ::
      PublicKeyConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpkPublicKeyConfig' - A CloudFront public key configuration.
createPublicKey ::
  -- | 'cpkPublicKeyConfig'
  PublicKeyConfig ->
  CreatePublicKey
createPublicKey pPublicKeyConfig_ =
  CreatePublicKey'
    { _cpkPublicKeyConfig =
        pPublicKeyConfig_
    }

-- | A CloudFront public key configuration.
cpkPublicKeyConfig :: Lens' CreatePublicKey PublicKeyConfig
cpkPublicKeyConfig = lens _cpkPublicKeyConfig (\s a -> s {_cpkPublicKeyConfig = a})

instance AWSRequest CreatePublicKey where
  type Rs CreatePublicKey = CreatePublicKeyResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreatePublicKeyResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePublicKey

instance NFData CreatePublicKey

instance ToElement CreatePublicKey where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}PublicKeyConfig"
      . _cpkPublicKeyConfig

instance ToHeaders CreatePublicKey where
  toHeaders = const mempty

instance ToPath CreatePublicKey where
  toPath = const "/2020-05-31/public-key"

instance ToQuery CreatePublicKey where
  toQuery = const mempty

-- | /See:/ 'createPublicKeyResponse' smart constructor.
data CreatePublicKeyResponse = CreatePublicKeyResponse'
  { _cpkrrsETag ::
      !(Maybe Text),
    _cpkrrsPublicKey ::
      !(Maybe PublicKey),
    _cpkrrsLocation ::
      !(Maybe Text),
    _cpkrrsResponseStatus ::
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

-- | Creates a value of 'CreatePublicKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpkrrsETag' - The identifier for this version of the public key.
--
-- * 'cpkrrsPublicKey' - The public key.
--
-- * 'cpkrrsLocation' - The URL of the public key.
--
-- * 'cpkrrsResponseStatus' - -- | The response status code.
createPublicKeyResponse ::
  -- | 'cpkrrsResponseStatus'
  Int ->
  CreatePublicKeyResponse
createPublicKeyResponse pResponseStatus_ =
  CreatePublicKeyResponse'
    { _cpkrrsETag = Nothing,
      _cpkrrsPublicKey = Nothing,
      _cpkrrsLocation = Nothing,
      _cpkrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for this version of the public key.
cpkrrsETag :: Lens' CreatePublicKeyResponse (Maybe Text)
cpkrrsETag = lens _cpkrrsETag (\s a -> s {_cpkrrsETag = a})

-- | The public key.
cpkrrsPublicKey :: Lens' CreatePublicKeyResponse (Maybe PublicKey)
cpkrrsPublicKey = lens _cpkrrsPublicKey (\s a -> s {_cpkrrsPublicKey = a})

-- | The URL of the public key.
cpkrrsLocation :: Lens' CreatePublicKeyResponse (Maybe Text)
cpkrrsLocation = lens _cpkrrsLocation (\s a -> s {_cpkrrsLocation = a})

-- | -- | The response status code.
cpkrrsResponseStatus :: Lens' CreatePublicKeyResponse Int
cpkrrsResponseStatus = lens _cpkrrsResponseStatus (\s a -> s {_cpkrrsResponseStatus = a})

instance NFData CreatePublicKeyResponse
