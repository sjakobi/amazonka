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
-- Module      : Network.AWS.EC2.ImportKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with 'CreateKeyPair' , in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.
--
--
-- For more information about key pairs, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Key Pairs> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.ImportKeyPair
  ( -- * Creating a Request
    importKeyPair,
    ImportKeyPair,

    -- * Request Lenses
    ikpTagSpecifications,
    ikpDryRun,
    ikpKeyName,
    ikpPublicKeyMaterial,

    -- * Destructuring the Response
    importKeyPairResponse,
    ImportKeyPairResponse,

    -- * Response Lenses
    ikprrsKeyFingerprint,
    ikprrsKeyPairId,
    ikprrsTags,
    ikprrsKeyName,
    ikprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'importKeyPair' smart constructor.
data ImportKeyPair = ImportKeyPair'
  { _ikpTagSpecifications ::
      !(Maybe [TagSpecification]),
    _ikpDryRun :: !(Maybe Bool),
    _ikpKeyName :: !Text,
    _ikpPublicKeyMaterial :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ikpTagSpecifications' - The tags to apply to the imported key pair.
--
-- * 'ikpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ikpKeyName' - A unique name for the key pair.
--
-- * 'ikpPublicKeyMaterial' - The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
importKeyPair ::
  -- | 'ikpKeyName'
  Text ->
  -- | 'ikpPublicKeyMaterial'
  ByteString ->
  ImportKeyPair
importKeyPair pKeyName_ pPublicKeyMaterial_ =
  ImportKeyPair'
    { _ikpTagSpecifications = Nothing,
      _ikpDryRun = Nothing,
      _ikpKeyName = pKeyName_,
      _ikpPublicKeyMaterial =
        _Base64 # pPublicKeyMaterial_
    }

-- | The tags to apply to the imported key pair.
ikpTagSpecifications :: Lens' ImportKeyPair [TagSpecification]
ikpTagSpecifications = lens _ikpTagSpecifications (\s a -> s {_ikpTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ikpDryRun :: Lens' ImportKeyPair (Maybe Bool)
ikpDryRun = lens _ikpDryRun (\s a -> s {_ikpDryRun = a})

-- | A unique name for the key pair.
ikpKeyName :: Lens' ImportKeyPair Text
ikpKeyName = lens _ikpKeyName (\s a -> s {_ikpKeyName = a})

-- | The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
ikpPublicKeyMaterial :: Lens' ImportKeyPair ByteString
ikpPublicKeyMaterial = lens _ikpPublicKeyMaterial (\s a -> s {_ikpPublicKeyMaterial = a}) . _Base64

instance AWSRequest ImportKeyPair where
  type Rs ImportKeyPair = ImportKeyPairResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ImportKeyPairResponse'
            <$> (x .@? "keyFingerprint")
            <*> (x .@? "keyPairId")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "keyName")
            <*> (pure (fromEnum s))
      )

instance Hashable ImportKeyPair

instance NFData ImportKeyPair

instance ToHeaders ImportKeyPair where
  toHeaders = const mempty

instance ToPath ImportKeyPair where
  toPath = const "/"

instance ToQuery ImportKeyPair where
  toQuery ImportKeyPair' {..} =
    mconcat
      [ "Action" =: ("ImportKeyPair" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ikpTagSpecifications
          ),
        "DryRun" =: _ikpDryRun,
        "KeyName" =: _ikpKeyName,
        "PublicKeyMaterial" =: _ikpPublicKeyMaterial
      ]

-- | /See:/ 'importKeyPairResponse' smart constructor.
data ImportKeyPairResponse = ImportKeyPairResponse'
  { _ikprrsKeyFingerprint ::
      !(Maybe Text),
    _ikprrsKeyPairId ::
      !(Maybe Text),
    _ikprrsTags ::
      !(Maybe [Tag]),
    _ikprrsKeyName ::
      !(Maybe Text),
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
-- * 'ikprrsKeyFingerprint' - The MD5 public key fingerprint as specified in section 4 of RFC 4716.
--
-- * 'ikprrsKeyPairId' - The ID of the resulting key pair.
--
-- * 'ikprrsTags' - The tags applied to the imported key pair.
--
-- * 'ikprrsKeyName' - The key pair name you provided.
--
-- * 'ikprrsResponseStatus' - -- | The response status code.
importKeyPairResponse ::
  -- | 'ikprrsResponseStatus'
  Int ->
  ImportKeyPairResponse
importKeyPairResponse pResponseStatus_ =
  ImportKeyPairResponse'
    { _ikprrsKeyFingerprint =
        Nothing,
      _ikprrsKeyPairId = Nothing,
      _ikprrsTags = Nothing,
      _ikprrsKeyName = Nothing,
      _ikprrsResponseStatus = pResponseStatus_
    }

-- | The MD5 public key fingerprint as specified in section 4 of RFC 4716.
ikprrsKeyFingerprint :: Lens' ImportKeyPairResponse (Maybe Text)
ikprrsKeyFingerprint = lens _ikprrsKeyFingerprint (\s a -> s {_ikprrsKeyFingerprint = a})

-- | The ID of the resulting key pair.
ikprrsKeyPairId :: Lens' ImportKeyPairResponse (Maybe Text)
ikprrsKeyPairId = lens _ikprrsKeyPairId (\s a -> s {_ikprrsKeyPairId = a})

-- | The tags applied to the imported key pair.
ikprrsTags :: Lens' ImportKeyPairResponse [Tag]
ikprrsTags = lens _ikprrsTags (\s a -> s {_ikprrsTags = a}) . _Default . _Coerce

-- | The key pair name you provided.
ikprrsKeyName :: Lens' ImportKeyPairResponse (Maybe Text)
ikprrsKeyName = lens _ikprrsKeyName (\s a -> s {_ikprrsKeyName = a})

-- | -- | The response status code.
ikprrsResponseStatus :: Lens' ImportKeyPairResponse Int
ikprrsResponseStatus = lens _ikprrsResponseStatus (\s a -> s {_ikprrsResponseStatus = a})

instance NFData ImportKeyPairResponse
