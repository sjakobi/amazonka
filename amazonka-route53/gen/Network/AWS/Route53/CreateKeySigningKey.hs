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
-- Module      : Network.AWS.Route53.CreateKeySigningKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new key-signing key (KSK) associated with a hosted zone. You can only have two KSKs per hosted zone.
module Network.AWS.Route53.CreateKeySigningKey
  ( -- * Creating a Request
    createKeySigningKey,
    CreateKeySigningKey,

    -- * Request Lenses
    ckskCallerReference,
    ckskHostedZoneId,
    ckskKeyManagementServiceARN,
    ckskName,
    ckskStatus,

    -- * Destructuring the Response
    createKeySigningKeyResponse,
    CreateKeySigningKeyResponse,

    -- * Response Lenses
    ckskrrsResponseStatus,
    ckskrrsChangeInfo,
    ckskrrsKeySigningKey,
    ckskrrsLocation,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'createKeySigningKey' smart constructor.
data CreateKeySigningKey = CreateKeySigningKey'
  { _ckskCallerReference ::
      !Text,
    _ckskHostedZoneId ::
      !ResourceId,
    _ckskKeyManagementServiceARN ::
      !Text,
    _ckskName :: !Text,
    _ckskStatus :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeySigningKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckskCallerReference' - A unique string that identifies the request.
--
-- * 'ckskHostedZoneId' - The unique string (ID) used to identify a hosted zone.
--
-- * 'ckskKeyManagementServiceARN' - The Amazon resource name (ARN) for a customer managed customer master key (CMK) in AWS Key Management Service (AWS KMS). The @KeyManagementServiceArn@ must be unique for each key-signing key (KSK) in a single hosted zone. To see an example of @KeyManagementServiceArn@ that grants the correct permissions for DNSSEC, scroll down to __Example__ .  You must configure the customer managed CMK as follows:     * Status    * Enabled     * Key spec    * ECC_NIST_P256     * Key usage    * Sign and verify     * Key policy    * The key policy must give permission for the following actions:     * DescribeKey     * GetPublicKey     * Sign The key policy must also include the Amazon Route 53 service in the principal for your account. Specify the following:     * @"Service": "api-service.dnssec.route53.aws.internal"@  For more information about working with a customer managed CMK in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html AWS Key Management Service concepts> .
--
-- * 'ckskName' - A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
--
-- * 'ckskStatus' - A string specifying the initial status of the key-signing key (KSK). You can set the value to @ACTIVE@ or @INACTIVE@ .
createKeySigningKey ::
  -- | 'ckskCallerReference'
  Text ->
  -- | 'ckskHostedZoneId'
  ResourceId ->
  -- | 'ckskKeyManagementServiceARN'
  Text ->
  -- | 'ckskName'
  Text ->
  -- | 'ckskStatus'
  Text ->
  CreateKeySigningKey
createKeySigningKey
  pCallerReference_
  pHostedZoneId_
  pKeyManagementServiceARN_
  pName_
  pStatus_ =
    CreateKeySigningKey'
      { _ckskCallerReference =
          pCallerReference_,
        _ckskHostedZoneId = pHostedZoneId_,
        _ckskKeyManagementServiceARN =
          pKeyManagementServiceARN_,
        _ckskName = pName_,
        _ckskStatus = pStatus_
      }

-- | A unique string that identifies the request.
ckskCallerReference :: Lens' CreateKeySigningKey Text
ckskCallerReference = lens _ckskCallerReference (\s a -> s {_ckskCallerReference = a})

-- | The unique string (ID) used to identify a hosted zone.
ckskHostedZoneId :: Lens' CreateKeySigningKey ResourceId
ckskHostedZoneId = lens _ckskHostedZoneId (\s a -> s {_ckskHostedZoneId = a})

-- | The Amazon resource name (ARN) for a customer managed customer master key (CMK) in AWS Key Management Service (AWS KMS). The @KeyManagementServiceArn@ must be unique for each key-signing key (KSK) in a single hosted zone. To see an example of @KeyManagementServiceArn@ that grants the correct permissions for DNSSEC, scroll down to __Example__ .  You must configure the customer managed CMK as follows:     * Status    * Enabled     * Key spec    * ECC_NIST_P256     * Key usage    * Sign and verify     * Key policy    * The key policy must give permission for the following actions:     * DescribeKey     * GetPublicKey     * Sign The key policy must also include the Amazon Route 53 service in the principal for your account. Specify the following:     * @"Service": "api-service.dnssec.route53.aws.internal"@  For more information about working with a customer managed CMK in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html AWS Key Management Service concepts> .
ckskKeyManagementServiceARN :: Lens' CreateKeySigningKey Text
ckskKeyManagementServiceARN = lens _ckskKeyManagementServiceARN (\s a -> s {_ckskKeyManagementServiceARN = a})

-- | A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
ckskName :: Lens' CreateKeySigningKey Text
ckskName = lens _ckskName (\s a -> s {_ckskName = a})

-- | A string specifying the initial status of the key-signing key (KSK). You can set the value to @ACTIVE@ or @INACTIVE@ .
ckskStatus :: Lens' CreateKeySigningKey Text
ckskStatus = lens _ckskStatus (\s a -> s {_ckskStatus = a})

instance AWSRequest CreateKeySigningKey where
  type
    Rs CreateKeySigningKey =
      CreateKeySigningKeyResponse
  request = postXML route53
  response =
    receiveXML
      ( \s h x ->
          CreateKeySigningKeyResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "ChangeInfo")
            <*> (x .@ "KeySigningKey")
            <*> (h .# "Location")
      )

instance Hashable CreateKeySigningKey

instance NFData CreateKeySigningKey

instance ToElement CreateKeySigningKey where
  toElement =
    mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateKeySigningKeyRequest"

instance ToHeaders CreateKeySigningKey where
  toHeaders = const mempty

instance ToPath CreateKeySigningKey where
  toPath = const "/2013-04-01/keysigningkey"

instance ToQuery CreateKeySigningKey where
  toQuery = const mempty

instance ToXML CreateKeySigningKey where
  toXML CreateKeySigningKey' {..} =
    mconcat
      [ "CallerReference" @= _ckskCallerReference,
        "HostedZoneId" @= _ckskHostedZoneId,
        "KeyManagementServiceArn"
          @= _ckskKeyManagementServiceARN,
        "Name" @= _ckskName,
        "Status" @= _ckskStatus
      ]

-- | /See:/ 'createKeySigningKeyResponse' smart constructor.
data CreateKeySigningKeyResponse = CreateKeySigningKeyResponse'
  { _ckskrrsResponseStatus ::
      !Int,
    _ckskrrsChangeInfo ::
      !ChangeInfo,
    _ckskrrsKeySigningKey ::
      !KeySigningKey,
    _ckskrrsLocation ::
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

-- | Creates a value of 'CreateKeySigningKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckskrrsResponseStatus' - -- | The response status code.
--
-- * 'ckskrrsChangeInfo' - Undocumented member.
--
-- * 'ckskrrsKeySigningKey' - The key-signing key (KSK) that the request creates.
--
-- * 'ckskrrsLocation' - The unique URL representing the new key-signing key (KSK).
createKeySigningKeyResponse ::
  -- | 'ckskrrsResponseStatus'
  Int ->
  -- | 'ckskrrsChangeInfo'
  ChangeInfo ->
  -- | 'ckskrrsKeySigningKey'
  KeySigningKey ->
  -- | 'ckskrrsLocation'
  Text ->
  CreateKeySigningKeyResponse
createKeySigningKeyResponse
  pResponseStatus_
  pChangeInfo_
  pKeySigningKey_
  pLocation_ =
    CreateKeySigningKeyResponse'
      { _ckskrrsResponseStatus =
          pResponseStatus_,
        _ckskrrsChangeInfo = pChangeInfo_,
        _ckskrrsKeySigningKey = pKeySigningKey_,
        _ckskrrsLocation = pLocation_
      }

-- | -- | The response status code.
ckskrrsResponseStatus :: Lens' CreateKeySigningKeyResponse Int
ckskrrsResponseStatus = lens _ckskrrsResponseStatus (\s a -> s {_ckskrrsResponseStatus = a})

-- | Undocumented member.
ckskrrsChangeInfo :: Lens' CreateKeySigningKeyResponse ChangeInfo
ckskrrsChangeInfo = lens _ckskrrsChangeInfo (\s a -> s {_ckskrrsChangeInfo = a})

-- | The key-signing key (KSK) that the request creates.
ckskrrsKeySigningKey :: Lens' CreateKeySigningKeyResponse KeySigningKey
ckskrrsKeySigningKey = lens _ckskrrsKeySigningKey (\s a -> s {_ckskrrsKeySigningKey = a})

-- | The unique URL representing the new key-signing key (KSK).
ckskrrsLocation :: Lens' CreateKeySigningKeyResponse Text
ckskrrsLocation = lens _ckskrrsLocation (\s a -> s {_ckskrrsLocation = a})

instance NFData CreateKeySigningKeyResponse
