{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.Action where

import Network.AWS.ELBv2.Types.ActionTypeEnum
import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConfig
import Network.AWS.ELBv2.Types.AuthenticateOidcActionConfig
import Network.AWS.ELBv2.Types.FixedResponseActionConfig
import Network.AWS.ELBv2.Types.ForwardActionConfig
import Network.AWS.ELBv2.Types.RedirectActionConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an action.
--
--
-- Each rule must include exactly one of the following types of actions: @forward@ , @fixed-response@ , or @redirect@ , and it must be the last action to be performed.
--
--
-- /See:/ 'action' smart constructor.
data Action = Action'
  { _aAuthenticateOidcConfig ::
      !(Maybe AuthenticateOidcActionConfig),
    _aTargetGroupARN :: !(Maybe Text),
    _aAuthenticateCognitoConfig ::
      !(Maybe AuthenticateCognitoActionConfig),
    _aFixedResponseConfig ::
      !(Maybe FixedResponseActionConfig),
    _aForwardConfig :: !(Maybe ForwardActionConfig),
    _aOrder :: !(Maybe Nat),
    _aRedirectConfig :: !(Maybe RedirectActionConfig),
    _aType :: !ActionTypeEnum
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAuthenticateOidcConfig' - [HTTPS listeners] Information about an identity provider that is compliant with OpenID Connect (OIDC). Specify only when @Type@ is @authenticate-oidc@ .
--
-- * 'aTargetGroupARN' - The Amazon Resource Name (ARN) of the target group. Specify only when @Type@ is @forward@ and you want to route to a single target group. To route to one or more target groups, use @ForwardConfig@ instead.
--
-- * 'aAuthenticateCognitoConfig' - [HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only when @Type@ is @authenticate-cognito@ .
--
-- * 'aFixedResponseConfig' - [Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when @Type@ is @fixed-response@ .
--
-- * 'aForwardConfig' - Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when @Type@ is @forward@ . If you specify both @ForwardConfig@ and @TargetGroupArn@ , you can specify only one target group using @ForwardConfig@ and it must be the same target group specified in @TargetGroupArn@ .
--
-- * 'aOrder' - The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first.
--
-- * 'aRedirectConfig' - [Application Load Balancer] Information for creating a redirect action. Specify only when @Type@ is @redirect@ .
--
-- * 'aType' - The type of action.
action ::
  -- | 'aType'
  ActionTypeEnum ->
  Action
action pType_ =
  Action'
    { _aAuthenticateOidcConfig = Nothing,
      _aTargetGroupARN = Nothing,
      _aAuthenticateCognitoConfig = Nothing,
      _aFixedResponseConfig = Nothing,
      _aForwardConfig = Nothing,
      _aOrder = Nothing,
      _aRedirectConfig = Nothing,
      _aType = pType_
    }

-- | [HTTPS listeners] Information about an identity provider that is compliant with OpenID Connect (OIDC). Specify only when @Type@ is @authenticate-oidc@ .
aAuthenticateOidcConfig :: Lens' Action (Maybe AuthenticateOidcActionConfig)
aAuthenticateOidcConfig = lens _aAuthenticateOidcConfig (\s a -> s {_aAuthenticateOidcConfig = a})

-- | The Amazon Resource Name (ARN) of the target group. Specify only when @Type@ is @forward@ and you want to route to a single target group. To route to one or more target groups, use @ForwardConfig@ instead.
aTargetGroupARN :: Lens' Action (Maybe Text)
aTargetGroupARN = lens _aTargetGroupARN (\s a -> s {_aTargetGroupARN = a})

-- | [HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only when @Type@ is @authenticate-cognito@ .
aAuthenticateCognitoConfig :: Lens' Action (Maybe AuthenticateCognitoActionConfig)
aAuthenticateCognitoConfig = lens _aAuthenticateCognitoConfig (\s a -> s {_aAuthenticateCognitoConfig = a})

-- | [Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when @Type@ is @fixed-response@ .
aFixedResponseConfig :: Lens' Action (Maybe FixedResponseActionConfig)
aFixedResponseConfig = lens _aFixedResponseConfig (\s a -> s {_aFixedResponseConfig = a})

-- | Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when @Type@ is @forward@ . If you specify both @ForwardConfig@ and @TargetGroupArn@ , you can specify only one target group using @ForwardConfig@ and it must be the same target group specified in @TargetGroupArn@ .
aForwardConfig :: Lens' Action (Maybe ForwardActionConfig)
aForwardConfig = lens _aForwardConfig (\s a -> s {_aForwardConfig = a})

-- | The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first.
aOrder :: Lens' Action (Maybe Natural)
aOrder = lens _aOrder (\s a -> s {_aOrder = a}) . mapping _Nat

-- | [Application Load Balancer] Information for creating a redirect action. Specify only when @Type@ is @redirect@ .
aRedirectConfig :: Lens' Action (Maybe RedirectActionConfig)
aRedirectConfig = lens _aRedirectConfig (\s a -> s {_aRedirectConfig = a})

-- | The type of action.
aType :: Lens' Action ActionTypeEnum
aType = lens _aType (\s a -> s {_aType = a})

instance FromXML Action where
  parseXML x =
    Action'
      <$> (x .@? "AuthenticateOidcConfig")
      <*> (x .@? "TargetGroupArn")
      <*> (x .@? "AuthenticateCognitoConfig")
      <*> (x .@? "FixedResponseConfig")
      <*> (x .@? "ForwardConfig")
      <*> (x .@? "Order")
      <*> (x .@? "RedirectConfig")
      <*> (x .@ "Type")

instance Hashable Action

instance NFData Action

instance ToQuery Action where
  toQuery Action' {..} =
    mconcat
      [ "AuthenticateOidcConfig"
          =: _aAuthenticateOidcConfig,
        "TargetGroupArn" =: _aTargetGroupARN,
        "AuthenticateCognitoConfig"
          =: _aAuthenticateCognitoConfig,
        "FixedResponseConfig" =: _aFixedResponseConfig,
        "ForwardConfig" =: _aForwardConfig,
        "Order" =: _aOrder,
        "RedirectConfig" =: _aRedirectConfig,
        "Type" =: _aType
      ]
