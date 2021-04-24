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
-- Module      : Network.AWS.Lightsail.CreateKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an SSH key pair.
--
--
-- The @create key pair@ operation supports tag-based access control via request tags. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateKeyPair
  ( -- * Creating a Request
    createKeyPair,
    CreateKeyPair,

    -- * Request Lenses
    ckpTags,
    ckpKeyPairName,

    -- * Destructuring the Response
    createKeyPairResponse,
    CreateKeyPairResponse,

    -- * Response Lenses
    ckprrsPrivateKeyBase64,
    ckprrsOperation,
    ckprrsKeyPair,
    ckprrsPublicKeyBase64,
    ckprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createKeyPair' smart constructor.
data CreateKeyPair = CreateKeyPair'
  { _ckpTags ::
      !(Maybe [Tag]),
    _ckpKeyPairName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckpTags' - The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'ckpKeyPairName' - The name for your new key pair.
createKeyPair ::
  -- | 'ckpKeyPairName'
  Text ->
  CreateKeyPair
createKeyPair pKeyPairName_ =
  CreateKeyPair'
    { _ckpTags = Nothing,
      _ckpKeyPairName = pKeyPairName_
    }

-- | The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
ckpTags :: Lens' CreateKeyPair [Tag]
ckpTags = lens _ckpTags (\s a -> s {_ckpTags = a}) . _Default . _Coerce

-- | The name for your new key pair.
ckpKeyPairName :: Lens' CreateKeyPair Text
ckpKeyPairName = lens _ckpKeyPairName (\s a -> s {_ckpKeyPairName = a})

instance AWSRequest CreateKeyPair where
  type Rs CreateKeyPair = CreateKeyPairResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateKeyPairResponse'
            <$> (x .?> "privateKeyBase64")
            <*> (x .?> "operation")
            <*> (x .?> "keyPair")
            <*> (x .?> "publicKeyBase64")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateKeyPair

instance NFData CreateKeyPair

instance ToHeaders CreateKeyPair where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.CreateKeyPair" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateKeyPair where
  toJSON CreateKeyPair' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _ckpTags,
            Just ("keyPairName" .= _ckpKeyPairName)
          ]
      )

instance ToPath CreateKeyPair where
  toPath = const "/"

instance ToQuery CreateKeyPair where
  toQuery = const mempty

-- | /See:/ 'createKeyPairResponse' smart constructor.
data CreateKeyPairResponse = CreateKeyPairResponse'
  { _ckprrsPrivateKeyBase64 ::
      !(Maybe Text),
    _ckprrsOperation ::
      !(Maybe Operation),
    _ckprrsKeyPair ::
      !(Maybe KeyPair),
    _ckprrsPublicKeyBase64 ::
      !(Maybe Text),
    _ckprrsResponseStatus ::
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

-- | Creates a value of 'CreateKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckprrsPrivateKeyBase64' - A base64-encoded RSA private key.
--
-- * 'ckprrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'ckprrsKeyPair' - An array of key-value pairs containing information about the new key pair you just created.
--
-- * 'ckprrsPublicKeyBase64' - A base64-encoded public key of the @ssh-rsa@ type.
--
-- * 'ckprrsResponseStatus' - -- | The response status code.
createKeyPairResponse ::
  -- | 'ckprrsResponseStatus'
  Int ->
  CreateKeyPairResponse
createKeyPairResponse pResponseStatus_ =
  CreateKeyPairResponse'
    { _ckprrsPrivateKeyBase64 =
        Nothing,
      _ckprrsOperation = Nothing,
      _ckprrsKeyPair = Nothing,
      _ckprrsPublicKeyBase64 = Nothing,
      _ckprrsResponseStatus = pResponseStatus_
    }

-- | A base64-encoded RSA private key.
ckprrsPrivateKeyBase64 :: Lens' CreateKeyPairResponse (Maybe Text)
ckprrsPrivateKeyBase64 = lens _ckprrsPrivateKeyBase64 (\s a -> s {_ckprrsPrivateKeyBase64 = a})

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
ckprrsOperation :: Lens' CreateKeyPairResponse (Maybe Operation)
ckprrsOperation = lens _ckprrsOperation (\s a -> s {_ckprrsOperation = a})

-- | An array of key-value pairs containing information about the new key pair you just created.
ckprrsKeyPair :: Lens' CreateKeyPairResponse (Maybe KeyPair)
ckprrsKeyPair = lens _ckprrsKeyPair (\s a -> s {_ckprrsKeyPair = a})

-- | A base64-encoded public key of the @ssh-rsa@ type.
ckprrsPublicKeyBase64 :: Lens' CreateKeyPairResponse (Maybe Text)
ckprrsPublicKeyBase64 = lens _ckprrsPublicKeyBase64 (\s a -> s {_ckprrsPublicKeyBase64 = a})

-- | -- | The response status code.
ckprrsResponseStatus :: Lens' CreateKeyPairResponse Int
ckprrsResponseStatus = lens _ckprrsResponseStatus (\s a -> s {_ckprrsResponseStatus = a})

instance NFData CreateKeyPairResponse
