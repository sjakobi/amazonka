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
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateUserPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified user pool with the specified attributes. You can get a list of the current user pool settings using <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html DescribeUserPool> .
--
--
-- /Important:/ If you don't provide a value for an attribute, it will be set to the default value.
module Network.AWS.CognitoIdentityProvider.UpdateUserPool
  ( -- * Creating a Request
    updateUserPool,
    UpdateUserPool,

    -- * Request Lenses
    uupUserPoolTags,
    uupEmailVerificationSubject,
    uupAutoVerifiedAttributes,
    uupPolicies,
    uupAdminCreateUserConfig,
    uupDeviceConfiguration,
    uupSmsConfiguration,
    uupLambdaConfig,
    uupSmsVerificationMessage,
    uupAccountRecoverySetting,
    uupEmailConfiguration,
    uupEmailVerificationMessage,
    uupUserPoolAddOns,
    uupSmsAuthenticationMessage,
    uupMFAConfiguration,
    uupVerificationMessageTemplate,
    uupUserPoolId,

    -- * Destructuring the Response
    updateUserPoolResponse,
    UpdateUserPoolResponse,

    -- * Response Lenses
    uuprrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to update the user pool.
--
--
--
-- /See:/ 'updateUserPool' smart constructor.
data UpdateUserPool = UpdateUserPool'
  { _uupUserPoolTags ::
      !(Maybe (Map Text Text)),
    _uupEmailVerificationSubject ::
      !(Maybe Text),
    _uupAutoVerifiedAttributes ::
      !(Maybe [VerifiedAttributeType]),
    _uupPolicies ::
      !(Maybe UserPoolPolicyType),
    _uupAdminCreateUserConfig ::
      !(Maybe AdminCreateUserConfigType),
    _uupDeviceConfiguration ::
      !(Maybe DeviceConfigurationType),
    _uupSmsConfiguration ::
      !(Maybe SmsConfigurationType),
    _uupLambdaConfig ::
      !(Maybe LambdaConfigType),
    _uupSmsVerificationMessage ::
      !(Maybe Text),
    _uupAccountRecoverySetting ::
      !(Maybe AccountRecoverySettingType),
    _uupEmailConfiguration ::
      !(Maybe EmailConfigurationType),
    _uupEmailVerificationMessage ::
      !(Maybe Text),
    _uupUserPoolAddOns ::
      !(Maybe UserPoolAddOnsType),
    _uupSmsAuthenticationMessage ::
      !(Maybe Text),
    _uupMFAConfiguration ::
      !(Maybe UserPoolMFAType),
    _uupVerificationMessageTemplate ::
      !(Maybe VerificationMessageTemplateType),
    _uupUserPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUserPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uupUserPoolTags' - The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.
--
-- * 'uupEmailVerificationSubject' - The subject of the email verification message.
--
-- * 'uupAutoVerifiedAttributes' - The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.
--
-- * 'uupPolicies' - A container with the policies you wish to update in a user pool.
--
-- * 'uupAdminCreateUserConfig' - The configuration for @AdminCreateUser@ requests.
--
-- * 'uupDeviceConfiguration' - Device configuration.
--
-- * 'uupSmsConfiguration' - SMS configuration.
--
-- * 'uupLambdaConfig' - The AWS Lambda configuration information from the request to update the user pool.
--
-- * 'uupSmsVerificationMessage' - A container with information about the SMS verification message.
--
-- * 'uupAccountRecoverySetting' - Use this setting to define which verified available method a user can use to recover their password when they call @ForgotPassword@ . It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.
--
-- * 'uupEmailConfiguration' - Email configuration.
--
-- * 'uupEmailVerificationMessage' - The contents of the email verification message.
--
-- * 'uupUserPoolAddOns' - Used to enable advanced security risk detection. Set the key @AdvancedSecurityMode@ to the value "AUDIT".
--
-- * 'uupSmsAuthenticationMessage' - The contents of the SMS authentication message.
--
-- * 'uupMFAConfiguration' - Can be one of the following values:     * @OFF@ - MFA tokens are not required and cannot be specified during user registration.     * @ON@ - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.     * @OPTIONAL@ - Users have the option when registering to create an MFA token.
--
-- * 'uupVerificationMessageTemplate' - The template for verification messages.
--
-- * 'uupUserPoolId' - The user pool ID for the user pool you want to update.
updateUserPool ::
  -- | 'uupUserPoolId'
  Text ->
  UpdateUserPool
updateUserPool pUserPoolId_ =
  UpdateUserPool'
    { _uupUserPoolTags = Nothing,
      _uupEmailVerificationSubject = Nothing,
      _uupAutoVerifiedAttributes = Nothing,
      _uupPolicies = Nothing,
      _uupAdminCreateUserConfig = Nothing,
      _uupDeviceConfiguration = Nothing,
      _uupSmsConfiguration = Nothing,
      _uupLambdaConfig = Nothing,
      _uupSmsVerificationMessage = Nothing,
      _uupAccountRecoverySetting = Nothing,
      _uupEmailConfiguration = Nothing,
      _uupEmailVerificationMessage = Nothing,
      _uupUserPoolAddOns = Nothing,
      _uupSmsAuthenticationMessage = Nothing,
      _uupMFAConfiguration = Nothing,
      _uupVerificationMessageTemplate = Nothing,
      _uupUserPoolId = pUserPoolId_
    }

-- | The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.
uupUserPoolTags :: Lens' UpdateUserPool (HashMap Text Text)
uupUserPoolTags = lens _uupUserPoolTags (\s a -> s {_uupUserPoolTags = a}) . _Default . _Map

-- | The subject of the email verification message.
uupEmailVerificationSubject :: Lens' UpdateUserPool (Maybe Text)
uupEmailVerificationSubject = lens _uupEmailVerificationSubject (\s a -> s {_uupEmailVerificationSubject = a})

-- | The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.
uupAutoVerifiedAttributes :: Lens' UpdateUserPool [VerifiedAttributeType]
uupAutoVerifiedAttributes = lens _uupAutoVerifiedAttributes (\s a -> s {_uupAutoVerifiedAttributes = a}) . _Default . _Coerce

-- | A container with the policies you wish to update in a user pool.
uupPolicies :: Lens' UpdateUserPool (Maybe UserPoolPolicyType)
uupPolicies = lens _uupPolicies (\s a -> s {_uupPolicies = a})

-- | The configuration for @AdminCreateUser@ requests.
uupAdminCreateUserConfig :: Lens' UpdateUserPool (Maybe AdminCreateUserConfigType)
uupAdminCreateUserConfig = lens _uupAdminCreateUserConfig (\s a -> s {_uupAdminCreateUserConfig = a})

-- | Device configuration.
uupDeviceConfiguration :: Lens' UpdateUserPool (Maybe DeviceConfigurationType)
uupDeviceConfiguration = lens _uupDeviceConfiguration (\s a -> s {_uupDeviceConfiguration = a})

-- | SMS configuration.
uupSmsConfiguration :: Lens' UpdateUserPool (Maybe SmsConfigurationType)
uupSmsConfiguration = lens _uupSmsConfiguration (\s a -> s {_uupSmsConfiguration = a})

-- | The AWS Lambda configuration information from the request to update the user pool.
uupLambdaConfig :: Lens' UpdateUserPool (Maybe LambdaConfigType)
uupLambdaConfig = lens _uupLambdaConfig (\s a -> s {_uupLambdaConfig = a})

-- | A container with information about the SMS verification message.
uupSmsVerificationMessage :: Lens' UpdateUserPool (Maybe Text)
uupSmsVerificationMessage = lens _uupSmsVerificationMessage (\s a -> s {_uupSmsVerificationMessage = a})

-- | Use this setting to define which verified available method a user can use to recover their password when they call @ForgotPassword@ . It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.
uupAccountRecoverySetting :: Lens' UpdateUserPool (Maybe AccountRecoverySettingType)
uupAccountRecoverySetting = lens _uupAccountRecoverySetting (\s a -> s {_uupAccountRecoverySetting = a})

-- | Email configuration.
uupEmailConfiguration :: Lens' UpdateUserPool (Maybe EmailConfigurationType)
uupEmailConfiguration = lens _uupEmailConfiguration (\s a -> s {_uupEmailConfiguration = a})

-- | The contents of the email verification message.
uupEmailVerificationMessage :: Lens' UpdateUserPool (Maybe Text)
uupEmailVerificationMessage = lens _uupEmailVerificationMessage (\s a -> s {_uupEmailVerificationMessage = a})

-- | Used to enable advanced security risk detection. Set the key @AdvancedSecurityMode@ to the value "AUDIT".
uupUserPoolAddOns :: Lens' UpdateUserPool (Maybe UserPoolAddOnsType)
uupUserPoolAddOns = lens _uupUserPoolAddOns (\s a -> s {_uupUserPoolAddOns = a})

-- | The contents of the SMS authentication message.
uupSmsAuthenticationMessage :: Lens' UpdateUserPool (Maybe Text)
uupSmsAuthenticationMessage = lens _uupSmsAuthenticationMessage (\s a -> s {_uupSmsAuthenticationMessage = a})

-- | Can be one of the following values:     * @OFF@ - MFA tokens are not required and cannot be specified during user registration.     * @ON@ - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.     * @OPTIONAL@ - Users have the option when registering to create an MFA token.
uupMFAConfiguration :: Lens' UpdateUserPool (Maybe UserPoolMFAType)
uupMFAConfiguration = lens _uupMFAConfiguration (\s a -> s {_uupMFAConfiguration = a})

-- | The template for verification messages.
uupVerificationMessageTemplate :: Lens' UpdateUserPool (Maybe VerificationMessageTemplateType)
uupVerificationMessageTemplate = lens _uupVerificationMessageTemplate (\s a -> s {_uupVerificationMessageTemplate = a})

-- | The user pool ID for the user pool you want to update.
uupUserPoolId :: Lens' UpdateUserPool Text
uupUserPoolId = lens _uupUserPoolId (\s a -> s {_uupUserPoolId = a})

instance AWSRequest UpdateUserPool where
  type Rs UpdateUserPool = UpdateUserPoolResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveEmpty
      ( \s h x ->
          UpdateUserPoolResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateUserPool

instance NFData UpdateUserPool

instance ToHeaders UpdateUserPool where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.UpdateUserPool" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateUserPool where
  toJSON UpdateUserPool' {..} =
    object
      ( catMaybes
          [ ("UserPoolTags" .=) <$> _uupUserPoolTags,
            ("EmailVerificationSubject" .=)
              <$> _uupEmailVerificationSubject,
            ("AutoVerifiedAttributes" .=)
              <$> _uupAutoVerifiedAttributes,
            ("Policies" .=) <$> _uupPolicies,
            ("AdminCreateUserConfig" .=)
              <$> _uupAdminCreateUserConfig,
            ("DeviceConfiguration" .=)
              <$> _uupDeviceConfiguration,
            ("SmsConfiguration" .=) <$> _uupSmsConfiguration,
            ("LambdaConfig" .=) <$> _uupLambdaConfig,
            ("SmsVerificationMessage" .=)
              <$> _uupSmsVerificationMessage,
            ("AccountRecoverySetting" .=)
              <$> _uupAccountRecoverySetting,
            ("EmailConfiguration" .=) <$> _uupEmailConfiguration,
            ("EmailVerificationMessage" .=)
              <$> _uupEmailVerificationMessage,
            ("UserPoolAddOns" .=) <$> _uupUserPoolAddOns,
            ("SmsAuthenticationMessage" .=)
              <$> _uupSmsAuthenticationMessage,
            ("MfaConfiguration" .=) <$> _uupMFAConfiguration,
            ("VerificationMessageTemplate" .=)
              <$> _uupVerificationMessageTemplate,
            Just ("UserPoolId" .= _uupUserPoolId)
          ]
      )

instance ToPath UpdateUserPool where
  toPath = const "/"

instance ToQuery UpdateUserPool where
  toQuery = const mempty

-- | Represents the response from the server when you make a request to update the user pool.
--
--
--
-- /See:/ 'updateUserPoolResponse' smart constructor.
newtype UpdateUserPoolResponse = UpdateUserPoolResponse'
  { _uuprrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateUserPoolResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuprrsResponseStatus' - -- | The response status code.
updateUserPoolResponse ::
  -- | 'uuprrsResponseStatus'
  Int ->
  UpdateUserPoolResponse
updateUserPoolResponse pResponseStatus_ =
  UpdateUserPoolResponse'
    { _uuprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uuprrsResponseStatus :: Lens' UpdateUserPoolResponse Int
uuprrsResponseStatus = lens _uuprrsResponseStatus (\s a -> s {_uuprrsResponseStatus = a})

instance NFData UpdateUserPoolResponse
