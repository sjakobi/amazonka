{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Workforce
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Workforce where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CognitoConfig
import Network.AWS.SageMaker.Types.OidcConfigForResponse
import Network.AWS.SageMaker.Types.SourceIPConfig

-- | A single private workforce, which is automatically created when you create your first private work team. You can create one private work force in each AWS Region. By default, any workforce-related API operation used in a specific region will apply to the workforce created in that region. To learn how to create a private workforce, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html Create a Private Workforce> .
--
--
--
-- /See:/ 'workforce' smart constructor.
data Workforce = Workforce'
  { _worLastUpdatedDate ::
      !(Maybe POSIX),
    _worCreateDate :: !(Maybe POSIX),
    _worSubDomain :: !(Maybe Text),
    _worSourceIPConfig :: !(Maybe SourceIPConfig),
    _worOidcConfig :: !(Maybe OidcConfigForResponse),
    _worCognitoConfig :: !(Maybe CognitoConfig),
    _worWorkforceName :: !Text,
    _worWorkforceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Workforce' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'worLastUpdatedDate' - The most recent date that was used to successfully add one or more IP address ranges (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs> ) to a private workforce's allow list.
--
-- * 'worCreateDate' - The date that the workforce is created.
--
-- * 'worSubDomain' - The subdomain for your OIDC Identity Provider.
--
-- * 'worSourceIPConfig' - A list of one to ten IP address ranges (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs> ) to be added to the workforce allow list. By default, a workforce isn't restricted to specific IP addresses.
--
-- * 'worOidcConfig' - The configuration of an OIDC Identity Provider (IdP) private workforce.
--
-- * 'worCognitoConfig' - The configuration of an Amazon Cognito workforce. A single Cognito workforce is created using and corresponds to a single <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool> .
--
-- * 'worWorkforceName' - The name of the private workforce.
--
-- * 'worWorkforceARN' - The Amazon Resource Name (ARN) of the private workforce.
workforce ::
  -- | 'worWorkforceName'
  Text ->
  -- | 'worWorkforceARN'
  Text ->
  Workforce
workforce pWorkforceName_ pWorkforceARN_ =
  Workforce'
    { _worLastUpdatedDate = Nothing,
      _worCreateDate = Nothing,
      _worSubDomain = Nothing,
      _worSourceIPConfig = Nothing,
      _worOidcConfig = Nothing,
      _worCognitoConfig = Nothing,
      _worWorkforceName = pWorkforceName_,
      _worWorkforceARN = pWorkforceARN_
    }

-- | The most recent date that was used to successfully add one or more IP address ranges (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs> ) to a private workforce's allow list.
worLastUpdatedDate :: Lens' Workforce (Maybe UTCTime)
worLastUpdatedDate = lens _worLastUpdatedDate (\s a -> s {_worLastUpdatedDate = a}) . mapping _Time

-- | The date that the workforce is created.
worCreateDate :: Lens' Workforce (Maybe UTCTime)
worCreateDate = lens _worCreateDate (\s a -> s {_worCreateDate = a}) . mapping _Time

-- | The subdomain for your OIDC Identity Provider.
worSubDomain :: Lens' Workforce (Maybe Text)
worSubDomain = lens _worSubDomain (\s a -> s {_worSubDomain = a})

-- | A list of one to ten IP address ranges (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs> ) to be added to the workforce allow list. By default, a workforce isn't restricted to specific IP addresses.
worSourceIPConfig :: Lens' Workforce (Maybe SourceIPConfig)
worSourceIPConfig = lens _worSourceIPConfig (\s a -> s {_worSourceIPConfig = a})

-- | The configuration of an OIDC Identity Provider (IdP) private workforce.
worOidcConfig :: Lens' Workforce (Maybe OidcConfigForResponse)
worOidcConfig = lens _worOidcConfig (\s a -> s {_worOidcConfig = a})

-- | The configuration of an Amazon Cognito workforce. A single Cognito workforce is created using and corresponds to a single <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool> .
worCognitoConfig :: Lens' Workforce (Maybe CognitoConfig)
worCognitoConfig = lens _worCognitoConfig (\s a -> s {_worCognitoConfig = a})

-- | The name of the private workforce.
worWorkforceName :: Lens' Workforce Text
worWorkforceName = lens _worWorkforceName (\s a -> s {_worWorkforceName = a})

-- | The Amazon Resource Name (ARN) of the private workforce.
worWorkforceARN :: Lens' Workforce Text
worWorkforceARN = lens _worWorkforceARN (\s a -> s {_worWorkforceARN = a})

instance FromJSON Workforce where
  parseJSON =
    withObject
      "Workforce"
      ( \x ->
          Workforce'
            <$> (x .:? "LastUpdatedDate")
            <*> (x .:? "CreateDate")
            <*> (x .:? "SubDomain")
            <*> (x .:? "SourceIpConfig")
            <*> (x .:? "OidcConfig")
            <*> (x .:? "CognitoConfig")
            <*> (x .: "WorkforceName")
            <*> (x .: "WorkforceArn")
      )

instance Hashable Workforce

instance NFData Workforce
