{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.RiskConfigurationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.RiskConfigurationType where

import Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverRiskConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsRiskConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.RiskExceptionConfigurationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The risk configuration type.
--
--
--
-- /See:/ 'riskConfigurationType' smart constructor.
data RiskConfigurationType = RiskConfigurationType'
  { _rctAccountTakeoverRiskConfiguration ::
      !( Maybe
           AccountTakeoverRiskConfigurationType
       ),
    _rctLastModifiedDate ::
      !(Maybe POSIX),
    _rctClientId ::
      !(Maybe (Sensitive Text)),
    _rctRiskExceptionConfiguration ::
      !( Maybe
           RiskExceptionConfigurationType
       ),
    _rctUserPoolId ::
      !(Maybe Text),
    _rctCompromisedCredentialsRiskConfiguration ::
      !( Maybe
           CompromisedCredentialsRiskConfigurationType
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RiskConfigurationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rctAccountTakeoverRiskConfiguration' - The account takeover risk configuration object including the @NotifyConfiguration@ object and @Actions@ to take in the case of an account takeover.
--
-- * 'rctLastModifiedDate' - The last modified date.
--
-- * 'rctClientId' - The app client ID.
--
-- * 'rctRiskExceptionConfiguration' - The configuration to override the risk decision.
--
-- * 'rctUserPoolId' - The user pool ID.
--
-- * 'rctCompromisedCredentialsRiskConfiguration' - The compromised credentials risk configuration object including the @EventFilter@ and the @EventAction@
riskConfigurationType ::
  RiskConfigurationType
riskConfigurationType =
  RiskConfigurationType'
    { _rctAccountTakeoverRiskConfiguration =
        Nothing,
      _rctLastModifiedDate = Nothing,
      _rctClientId = Nothing,
      _rctRiskExceptionConfiguration = Nothing,
      _rctUserPoolId = Nothing,
      _rctCompromisedCredentialsRiskConfiguration =
        Nothing
    }

-- | The account takeover risk configuration object including the @NotifyConfiguration@ object and @Actions@ to take in the case of an account takeover.
rctAccountTakeoverRiskConfiguration :: Lens' RiskConfigurationType (Maybe AccountTakeoverRiskConfigurationType)
rctAccountTakeoverRiskConfiguration = lens _rctAccountTakeoverRiskConfiguration (\s a -> s {_rctAccountTakeoverRiskConfiguration = a})

-- | The last modified date.
rctLastModifiedDate :: Lens' RiskConfigurationType (Maybe UTCTime)
rctLastModifiedDate = lens _rctLastModifiedDate (\s a -> s {_rctLastModifiedDate = a}) . mapping _Time

-- | The app client ID.
rctClientId :: Lens' RiskConfigurationType (Maybe Text)
rctClientId = lens _rctClientId (\s a -> s {_rctClientId = a}) . mapping _Sensitive

-- | The configuration to override the risk decision.
rctRiskExceptionConfiguration :: Lens' RiskConfigurationType (Maybe RiskExceptionConfigurationType)
rctRiskExceptionConfiguration = lens _rctRiskExceptionConfiguration (\s a -> s {_rctRiskExceptionConfiguration = a})

-- | The user pool ID.
rctUserPoolId :: Lens' RiskConfigurationType (Maybe Text)
rctUserPoolId = lens _rctUserPoolId (\s a -> s {_rctUserPoolId = a})

-- | The compromised credentials risk configuration object including the @EventFilter@ and the @EventAction@
rctCompromisedCredentialsRiskConfiguration :: Lens' RiskConfigurationType (Maybe CompromisedCredentialsRiskConfigurationType)
rctCompromisedCredentialsRiskConfiguration = lens _rctCompromisedCredentialsRiskConfiguration (\s a -> s {_rctCompromisedCredentialsRiskConfiguration = a})

instance FromJSON RiskConfigurationType where
  parseJSON =
    withObject
      "RiskConfigurationType"
      ( \x ->
          RiskConfigurationType'
            <$> (x .:? "AccountTakeoverRiskConfiguration")
            <*> (x .:? "LastModifiedDate")
            <*> (x .:? "ClientId")
            <*> (x .:? "RiskExceptionConfiguration")
            <*> (x .:? "UserPoolId")
            <*> (x .:? "CompromisedCredentialsRiskConfiguration")
      )

instance Hashable RiskConfigurationType

instance NFData RiskConfigurationType
