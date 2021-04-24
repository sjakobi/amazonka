{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ResourceIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ResourceIdentifier where

import Network.AWS.IoT.Types.PolicyVersionIdentifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information that identifies the noncompliant resource.
--
--
--
-- /See:/ 'resourceIdentifier' smart constructor.
data ResourceIdentifier = ResourceIdentifier'
  { _riRoleAliasARN ::
      !(Maybe Text),
    _riClientId :: !(Maybe Text),
    _riIamRoleARN :: !(Maybe Text),
    _riCognitoIdentityPoolId ::
      !(Maybe Text),
    _riAccount :: !(Maybe Text),
    _riPolicyVersionIdentifier ::
      !(Maybe PolicyVersionIdentifier),
    _riDeviceCertificateId ::
      !(Maybe Text),
    _riCaCertificateId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riRoleAliasARN' - The ARN of the role alias that has overly permissive actions.
--
-- * 'riClientId' - The client ID.
--
-- * 'riIamRoleARN' - The ARN of the IAM role that has overly permissive actions.
--
-- * 'riCognitoIdentityPoolId' - The ID of the Amazon Cognito identity pool.
--
-- * 'riAccount' - The account with which the resource is associated.
--
-- * 'riPolicyVersionIdentifier' - The version of the policy associated with the resource.
--
-- * 'riDeviceCertificateId' - The ID of the certificate attached to the resource.
--
-- * 'riCaCertificateId' - The ID of the CA certificate used to authorize the certificate.
resourceIdentifier ::
  ResourceIdentifier
resourceIdentifier =
  ResourceIdentifier'
    { _riRoleAliasARN = Nothing,
      _riClientId = Nothing,
      _riIamRoleARN = Nothing,
      _riCognitoIdentityPoolId = Nothing,
      _riAccount = Nothing,
      _riPolicyVersionIdentifier = Nothing,
      _riDeviceCertificateId = Nothing,
      _riCaCertificateId = Nothing
    }

-- | The ARN of the role alias that has overly permissive actions.
riRoleAliasARN :: Lens' ResourceIdentifier (Maybe Text)
riRoleAliasARN = lens _riRoleAliasARN (\s a -> s {_riRoleAliasARN = a})

-- | The client ID.
riClientId :: Lens' ResourceIdentifier (Maybe Text)
riClientId = lens _riClientId (\s a -> s {_riClientId = a})

-- | The ARN of the IAM role that has overly permissive actions.
riIamRoleARN :: Lens' ResourceIdentifier (Maybe Text)
riIamRoleARN = lens _riIamRoleARN (\s a -> s {_riIamRoleARN = a})

-- | The ID of the Amazon Cognito identity pool.
riCognitoIdentityPoolId :: Lens' ResourceIdentifier (Maybe Text)
riCognitoIdentityPoolId = lens _riCognitoIdentityPoolId (\s a -> s {_riCognitoIdentityPoolId = a})

-- | The account with which the resource is associated.
riAccount :: Lens' ResourceIdentifier (Maybe Text)
riAccount = lens _riAccount (\s a -> s {_riAccount = a})

-- | The version of the policy associated with the resource.
riPolicyVersionIdentifier :: Lens' ResourceIdentifier (Maybe PolicyVersionIdentifier)
riPolicyVersionIdentifier = lens _riPolicyVersionIdentifier (\s a -> s {_riPolicyVersionIdentifier = a})

-- | The ID of the certificate attached to the resource.
riDeviceCertificateId :: Lens' ResourceIdentifier (Maybe Text)
riDeviceCertificateId = lens _riDeviceCertificateId (\s a -> s {_riDeviceCertificateId = a})

-- | The ID of the CA certificate used to authorize the certificate.
riCaCertificateId :: Lens' ResourceIdentifier (Maybe Text)
riCaCertificateId = lens _riCaCertificateId (\s a -> s {_riCaCertificateId = a})

instance FromJSON ResourceIdentifier where
  parseJSON =
    withObject
      "ResourceIdentifier"
      ( \x ->
          ResourceIdentifier'
            <$> (x .:? "roleAliasArn")
            <*> (x .:? "clientId")
            <*> (x .:? "iamRoleArn")
            <*> (x .:? "cognitoIdentityPoolId")
            <*> (x .:? "account")
            <*> (x .:? "policyVersionIdentifier")
            <*> (x .:? "deviceCertificateId")
            <*> (x .:? "caCertificateId")
      )

instance Hashable ResourceIdentifier

instance NFData ResourceIdentifier

instance ToJSON ResourceIdentifier where
  toJSON ResourceIdentifier' {..} =
    object
      ( catMaybes
          [ ("roleAliasArn" .=) <$> _riRoleAliasARN,
            ("clientId" .=) <$> _riClientId,
            ("iamRoleArn" .=) <$> _riIamRoleARN,
            ("cognitoIdentityPoolId" .=)
              <$> _riCognitoIdentityPoolId,
            ("account" .=) <$> _riAccount,
            ("policyVersionIdentifier" .=)
              <$> _riPolicyVersionIdentifier,
            ("deviceCertificateId" .=)
              <$> _riDeviceCertificateId,
            ("caCertificateId" .=) <$> _riCaCertificateId
          ]
      )
