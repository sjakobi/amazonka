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
-- Module      : Network.AWS.CognitoIdentityProvider.SetRiskConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures actions on detected risks. To delete the risk configuration for @UserPoolId@ or @ClientId@ , pass null values for all four configuration types.
--
--
-- To enable Amazon Cognito advanced security features, update the user pool to include the @UserPoolAddOns@ key@AdvancedSecurityMode@ .
module Network.AWS.CognitoIdentityProvider.SetRiskConfiguration
  ( -- * Creating a Request
    setRiskConfiguration,
    SetRiskConfiguration,

    -- * Request Lenses
    srcAccountTakeoverRiskConfiguration,
    srcClientId,
    srcRiskExceptionConfiguration,
    srcCompromisedCredentialsRiskConfiguration,
    srcUserPoolId,

    -- * Destructuring the Response
    setRiskConfigurationResponse,
    SetRiskConfigurationResponse,

    -- * Response Lenses
    srcrrsResponseStatus,
    srcrrsRiskConfiguration,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setRiskConfiguration' smart constructor.
data SetRiskConfiguration = SetRiskConfiguration'
  { _srcAccountTakeoverRiskConfiguration ::
      !( Maybe
           AccountTakeoverRiskConfigurationType
       ),
    _srcClientId ::
      !(Maybe (Sensitive Text)),
    _srcRiskExceptionConfiguration ::
      !( Maybe
           RiskExceptionConfigurationType
       ),
    _srcCompromisedCredentialsRiskConfiguration ::
      !( Maybe
           CompromisedCredentialsRiskConfigurationType
       ),
    _srcUserPoolId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetRiskConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcAccountTakeoverRiskConfiguration' - The account takeover risk configuration.
--
-- * 'srcClientId' - The app client ID. If @ClientId@ is null, then the risk configuration is mapped to @userPoolId@ . When the client ID is null, the same risk configuration is applied to all the clients in the userPool. Otherwise, @ClientId@ is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.
--
-- * 'srcRiskExceptionConfiguration' - The configuration to override the risk decision.
--
-- * 'srcCompromisedCredentialsRiskConfiguration' - The compromised credentials risk configuration.
--
-- * 'srcUserPoolId' - The user pool ID.
setRiskConfiguration ::
  -- | 'srcUserPoolId'
  Text ->
  SetRiskConfiguration
setRiskConfiguration pUserPoolId_ =
  SetRiskConfiguration'
    { _srcAccountTakeoverRiskConfiguration =
        Nothing,
      _srcClientId = Nothing,
      _srcRiskExceptionConfiguration = Nothing,
      _srcCompromisedCredentialsRiskConfiguration =
        Nothing,
      _srcUserPoolId = pUserPoolId_
    }

-- | The account takeover risk configuration.
srcAccountTakeoverRiskConfiguration :: Lens' SetRiskConfiguration (Maybe AccountTakeoverRiskConfigurationType)
srcAccountTakeoverRiskConfiguration = lens _srcAccountTakeoverRiskConfiguration (\s a -> s {_srcAccountTakeoverRiskConfiguration = a})

-- | The app client ID. If @ClientId@ is null, then the risk configuration is mapped to @userPoolId@ . When the client ID is null, the same risk configuration is applied to all the clients in the userPool. Otherwise, @ClientId@ is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.
srcClientId :: Lens' SetRiskConfiguration (Maybe Text)
srcClientId = lens _srcClientId (\s a -> s {_srcClientId = a}) . mapping _Sensitive

-- | The configuration to override the risk decision.
srcRiskExceptionConfiguration :: Lens' SetRiskConfiguration (Maybe RiskExceptionConfigurationType)
srcRiskExceptionConfiguration = lens _srcRiskExceptionConfiguration (\s a -> s {_srcRiskExceptionConfiguration = a})

-- | The compromised credentials risk configuration.
srcCompromisedCredentialsRiskConfiguration :: Lens' SetRiskConfiguration (Maybe CompromisedCredentialsRiskConfigurationType)
srcCompromisedCredentialsRiskConfiguration = lens _srcCompromisedCredentialsRiskConfiguration (\s a -> s {_srcCompromisedCredentialsRiskConfiguration = a})

-- | The user pool ID.
srcUserPoolId :: Lens' SetRiskConfiguration Text
srcUserPoolId = lens _srcUserPoolId (\s a -> s {_srcUserPoolId = a})

instance AWSRequest SetRiskConfiguration where
  type
    Rs SetRiskConfiguration =
      SetRiskConfigurationResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          SetRiskConfigurationResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "RiskConfiguration")
      )

instance Hashable SetRiskConfiguration

instance NFData SetRiskConfiguration

instance ToHeaders SetRiskConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SetRiskConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetRiskConfiguration where
  toJSON SetRiskConfiguration' {..} =
    object
      ( catMaybes
          [ ("AccountTakeoverRiskConfiguration" .=)
              <$> _srcAccountTakeoverRiskConfiguration,
            ("ClientId" .=) <$> _srcClientId,
            ("RiskExceptionConfiguration" .=)
              <$> _srcRiskExceptionConfiguration,
            ("CompromisedCredentialsRiskConfiguration" .=)
              <$> _srcCompromisedCredentialsRiskConfiguration,
            Just ("UserPoolId" .= _srcUserPoolId)
          ]
      )

instance ToPath SetRiskConfiguration where
  toPath = const "/"

instance ToQuery SetRiskConfiguration where
  toQuery = const mempty

-- | /See:/ 'setRiskConfigurationResponse' smart constructor.
data SetRiskConfigurationResponse = SetRiskConfigurationResponse'
  { _srcrrsResponseStatus ::
      !Int,
    _srcrrsRiskConfiguration ::
      !RiskConfigurationType
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SetRiskConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcrrsResponseStatus' - -- | The response status code.
--
-- * 'srcrrsRiskConfiguration' - The risk configuration.
setRiskConfigurationResponse ::
  -- | 'srcrrsResponseStatus'
  Int ->
  -- | 'srcrrsRiskConfiguration'
  RiskConfigurationType ->
  SetRiskConfigurationResponse
setRiskConfigurationResponse
  pResponseStatus_
  pRiskConfiguration_ =
    SetRiskConfigurationResponse'
      { _srcrrsResponseStatus =
          pResponseStatus_,
        _srcrrsRiskConfiguration =
          pRiskConfiguration_
      }

-- | -- | The response status code.
srcrrsResponseStatus :: Lens' SetRiskConfigurationResponse Int
srcrrsResponseStatus = lens _srcrrsResponseStatus (\s a -> s {_srcrrsResponseStatus = a})

-- | The risk configuration.
srcrrsRiskConfiguration :: Lens' SetRiskConfigurationResponse RiskConfigurationType
srcrrsRiskConfiguration = lens _srcrrsRiskConfiguration (\s a -> s {_srcrrsRiskConfiguration = a})

instance NFData SetRiskConfigurationResponse
