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
-- Module      : Network.AWS.EC2.CreateKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.
--
--
-- You can have up to five thousand key pairs per Region.
--
-- The key pair returned to you is available only in the Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using 'ImportKeyPair' .
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Key Pairs> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateKeyPair
  ( -- * Creating a Request
    createKeyPair,
    CreateKeyPair,

    -- * Request Lenses
    ckpTagSpecifications,
    ckpDryRun,
    ckpKeyName,

    -- * Destructuring the Response
    createKeyPairResponse,
    CreateKeyPairResponse,

    -- * Response Lenses
    ckprrsKeyPairId,
    ckprrsTags,
    ckprrsResponseStatus,
    ckprrsKeyName,
    ckprrsKeyFingerprint,
    ckprrsKeyMaterial,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createKeyPair' smart constructor.
data CreateKeyPair = CreateKeyPair'
  { _ckpTagSpecifications ::
      !(Maybe [TagSpecification]),
    _ckpDryRun :: !(Maybe Bool),
    _ckpKeyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckpTagSpecifications' - The tags to apply to the new key pair.
--
-- * 'ckpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ckpKeyName' - A unique name for the key pair. Constraints: Up to 255 ASCII characters
createKeyPair ::
  -- | 'ckpKeyName'
  Text ->
  CreateKeyPair
createKeyPair pKeyName_ =
  CreateKeyPair'
    { _ckpTagSpecifications = Nothing,
      _ckpDryRun = Nothing,
      _ckpKeyName = pKeyName_
    }

-- | The tags to apply to the new key pair.
ckpTagSpecifications :: Lens' CreateKeyPair [TagSpecification]
ckpTagSpecifications = lens _ckpTagSpecifications (\s a -> s {_ckpTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ckpDryRun :: Lens' CreateKeyPair (Maybe Bool)
ckpDryRun = lens _ckpDryRun (\s a -> s {_ckpDryRun = a})

-- | A unique name for the key pair. Constraints: Up to 255 ASCII characters
ckpKeyName :: Lens' CreateKeyPair Text
ckpKeyName = lens _ckpKeyName (\s a -> s {_ckpKeyName = a})

instance AWSRequest CreateKeyPair where
  type Rs CreateKeyPair = CreateKeyPairResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateKeyPairResponse'
            <$> (x .@? "keyPairId")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
            <*> (x .@ "keyName")
            <*> (x .@ "keyFingerprint")
            <*> (x .@ "keyMaterial")
      )

instance Hashable CreateKeyPair

instance NFData CreateKeyPair

instance ToHeaders CreateKeyPair where
  toHeaders = const mempty

instance ToPath CreateKeyPair where
  toPath = const "/"

instance ToQuery CreateKeyPair where
  toQuery CreateKeyPair' {..} =
    mconcat
      [ "Action" =: ("CreateKeyPair" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ckpTagSpecifications
          ),
        "DryRun" =: _ckpDryRun,
        "KeyName" =: _ckpKeyName
      ]

-- | Describes a key pair.
--
--
--
-- /See:/ 'createKeyPairResponse' smart constructor.
data CreateKeyPairResponse = CreateKeyPairResponse'
  { _ckprrsKeyPairId ::
      !(Maybe Text),
    _ckprrsTags ::
      !(Maybe [Tag]),
    _ckprrsResponseStatus ::
      !Int,
    _ckprrsKeyName :: !Text,
    _ckprrsKeyFingerprint ::
      !Text,
    _ckprrsKeyMaterial ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeyPairResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckprrsKeyPairId' - The ID of the key pair.
--
-- * 'ckprrsTags' - Any tags applied to the key pair.
--
-- * 'ckprrsResponseStatus' - -- | The response status code.
--
-- * 'ckprrsKeyName' - The name of the key pair.
--
-- * 'ckprrsKeyFingerprint' - The SHA-1 digest of the DER encoded private key.
--
-- * 'ckprrsKeyMaterial' - An unencrypted PEM encoded RSA private key.
createKeyPairResponse ::
  -- | 'ckprrsResponseStatus'
  Int ->
  -- | 'ckprrsKeyName'
  Text ->
  -- | 'ckprrsKeyFingerprint'
  Text ->
  -- | 'ckprrsKeyMaterial'
  Text ->
  CreateKeyPairResponse
createKeyPairResponse
  pResponseStatus_
  pKeyName_
  pKeyFingerprint_
  pKeyMaterial_ =
    CreateKeyPairResponse'
      { _ckprrsKeyPairId = Nothing,
        _ckprrsTags = Nothing,
        _ckprrsResponseStatus = pResponseStatus_,
        _ckprrsKeyName = pKeyName_,
        _ckprrsKeyFingerprint = pKeyFingerprint_,
        _ckprrsKeyMaterial = _Sensitive # pKeyMaterial_
      }

-- | The ID of the key pair.
ckprrsKeyPairId :: Lens' CreateKeyPairResponse (Maybe Text)
ckprrsKeyPairId = lens _ckprrsKeyPairId (\s a -> s {_ckprrsKeyPairId = a})

-- | Any tags applied to the key pair.
ckprrsTags :: Lens' CreateKeyPairResponse [Tag]
ckprrsTags = lens _ckprrsTags (\s a -> s {_ckprrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ckprrsResponseStatus :: Lens' CreateKeyPairResponse Int
ckprrsResponseStatus = lens _ckprrsResponseStatus (\s a -> s {_ckprrsResponseStatus = a})

-- | The name of the key pair.
ckprrsKeyName :: Lens' CreateKeyPairResponse Text
ckprrsKeyName = lens _ckprrsKeyName (\s a -> s {_ckprrsKeyName = a})

-- | The SHA-1 digest of the DER encoded private key.
ckprrsKeyFingerprint :: Lens' CreateKeyPairResponse Text
ckprrsKeyFingerprint = lens _ckprrsKeyFingerprint (\s a -> s {_ckprrsKeyFingerprint = a})

-- | An unencrypted PEM encoded RSA private key.
ckprrsKeyMaterial :: Lens' CreateKeyPairResponse Text
ckprrsKeyMaterial = lens _ckprrsKeyMaterial (\s a -> s {_ckprrsKeyMaterial = a}) . _Sensitive

instance NFData CreateKeyPairResponse
