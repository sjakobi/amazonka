{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AdminCreateUserConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AdminCreateUserConfigType where

import Network.AWS.CognitoIdentityProvider.Types.MessageTemplateType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration for creating a new user profile.
--
--
--
-- /See:/ 'adminCreateUserConfigType' smart constructor.
data AdminCreateUserConfigType = AdminCreateUserConfigType'
  { _acuctAllowAdminCreateUserOnly ::
      !(Maybe Bool),
    _acuctInviteMessageTemplate ::
      !( Maybe
           MessageTemplateType
       ),
    _acuctUnusedAccountValidityDays ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdminCreateUserConfigType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuctAllowAdminCreateUserOnly' - Set to @True@ if only the administrator is allowed to create user profiles. Set to @False@ if users can sign themselves up via an app.
--
-- * 'acuctInviteMessageTemplate' - The message template to be used for the welcome message to new users. See also <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization Customizing User Invitation Messages> .
--
-- * 'acuctUnusedAccountValidityDays' - The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call @AdminCreateUser@ again, specifying @"RESEND"@ for the @MessageAction@ parameter. The default value for this parameter is 7.
adminCreateUserConfigType ::
  AdminCreateUserConfigType
adminCreateUserConfigType =
  AdminCreateUserConfigType'
    { _acuctAllowAdminCreateUserOnly =
        Nothing,
      _acuctInviteMessageTemplate = Nothing,
      _acuctUnusedAccountValidityDays = Nothing
    }

-- | Set to @True@ if only the administrator is allowed to create user profiles. Set to @False@ if users can sign themselves up via an app.
acuctAllowAdminCreateUserOnly :: Lens' AdminCreateUserConfigType (Maybe Bool)
acuctAllowAdminCreateUserOnly = lens _acuctAllowAdminCreateUserOnly (\s a -> s {_acuctAllowAdminCreateUserOnly = a})

-- | The message template to be used for the welcome message to new users. See also <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization Customizing User Invitation Messages> .
acuctInviteMessageTemplate :: Lens' AdminCreateUserConfigType (Maybe MessageTemplateType)
acuctInviteMessageTemplate = lens _acuctInviteMessageTemplate (\s a -> s {_acuctInviteMessageTemplate = a})

-- | The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call @AdminCreateUser@ again, specifying @"RESEND"@ for the @MessageAction@ parameter. The default value for this parameter is 7.
acuctUnusedAccountValidityDays :: Lens' AdminCreateUserConfigType (Maybe Natural)
acuctUnusedAccountValidityDays = lens _acuctUnusedAccountValidityDays (\s a -> s {_acuctUnusedAccountValidityDays = a}) . mapping _Nat

instance FromJSON AdminCreateUserConfigType where
  parseJSON =
    withObject
      "AdminCreateUserConfigType"
      ( \x ->
          AdminCreateUserConfigType'
            <$> (x .:? "AllowAdminCreateUserOnly")
            <*> (x .:? "InviteMessageTemplate")
            <*> (x .:? "UnusedAccountValidityDays")
      )

instance Hashable AdminCreateUserConfigType

instance NFData AdminCreateUserConfigType

instance ToJSON AdminCreateUserConfigType where
  toJSON AdminCreateUserConfigType' {..} =
    object
      ( catMaybes
          [ ("AllowAdminCreateUserOnly" .=)
              <$> _acuctAllowAdminCreateUserOnly,
            ("InviteMessageTemplate" .=)
              <$> _acuctInviteMessageTemplate,
            ("UnusedAccountValidityDays" .=)
              <$> _acuctUnusedAccountValidityDays
          ]
      )
