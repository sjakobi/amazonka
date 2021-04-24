{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.CognitoOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.CognitoOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
--
--
--
-- /See:/ 'cognitoOptions' smart constructor.
data CognitoOptions = CognitoOptions'
  { _coIdentityPoolId ::
      !(Maybe Text),
    _coRoleARN :: !(Maybe Text),
    _coUserPoolId :: !(Maybe Text),
    _coEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CognitoOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coIdentityPoolId' - Specifies the Cognito identity pool ID for Kibana authentication.
--
-- * 'coRoleARN' - Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.
--
-- * 'coUserPoolId' - Specifies the Cognito user pool ID for Kibana authentication.
--
-- * 'coEnabled' - Specifies the option to enable Cognito for Kibana authentication.
cognitoOptions ::
  CognitoOptions
cognitoOptions =
  CognitoOptions'
    { _coIdentityPoolId = Nothing,
      _coRoleARN = Nothing,
      _coUserPoolId = Nothing,
      _coEnabled = Nothing
    }

-- | Specifies the Cognito identity pool ID for Kibana authentication.
coIdentityPoolId :: Lens' CognitoOptions (Maybe Text)
coIdentityPoolId = lens _coIdentityPoolId (\s a -> s {_coIdentityPoolId = a})

-- | Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.
coRoleARN :: Lens' CognitoOptions (Maybe Text)
coRoleARN = lens _coRoleARN (\s a -> s {_coRoleARN = a})

-- | Specifies the Cognito user pool ID for Kibana authentication.
coUserPoolId :: Lens' CognitoOptions (Maybe Text)
coUserPoolId = lens _coUserPoolId (\s a -> s {_coUserPoolId = a})

-- | Specifies the option to enable Cognito for Kibana authentication.
coEnabled :: Lens' CognitoOptions (Maybe Bool)
coEnabled = lens _coEnabled (\s a -> s {_coEnabled = a})

instance FromJSON CognitoOptions where
  parseJSON =
    withObject
      "CognitoOptions"
      ( \x ->
          CognitoOptions'
            <$> (x .:? "IdentityPoolId")
            <*> (x .:? "RoleArn")
            <*> (x .:? "UserPoolId")
            <*> (x .:? "Enabled")
      )

instance Hashable CognitoOptions

instance NFData CognitoOptions

instance ToJSON CognitoOptions where
  toJSON CognitoOptions' {..} =
    object
      ( catMaybes
          [ ("IdentityPoolId" .=) <$> _coIdentityPoolId,
            ("RoleArn" .=) <$> _coRoleARN,
            ("UserPoolId" .=) <$> _coUserPoolId,
            ("Enabled" .=) <$> _coEnabled
          ]
      )
