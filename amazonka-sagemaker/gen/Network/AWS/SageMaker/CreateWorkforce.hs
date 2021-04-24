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
-- Module      : Network.AWS.SageMaker.CreateWorkforce
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this operation to create a workforce. This operation will return an error if a workforce already exists in the AWS Region that you specify. You can only create one workforce in each AWS Region per AWS account.
--
--
-- If you want to create a new workforce in an AWS Region where a workforce already exists, use the API operation to delete the existing workforce and then use @CreateWorkforce@ to create a new workforce.
--
-- To create a private workforce using Amazon Cognito, you must specify a Cognito user pool in @CognitoConfig@ . You can also create an Amazon Cognito workforce using the Amazon SageMaker console. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html Create a Private Workforce (Amazon Cognito)> .
--
-- To create a private workforce using your own OIDC Identity Provider (IdP), specify your IdP configuration in @OidcConfig@ . Your OIDC IdP must support /groups/ because groups are used by Ground Truth and Amazon A2I to create work teams. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html Create a Private Workforce (OIDC IdP)> .
module Network.AWS.SageMaker.CreateWorkforce
  ( -- * Creating a Request
    createWorkforce,
    CreateWorkforce,

    -- * Request Lenses
    cwTags,
    cwSourceIPConfig,
    cwOidcConfig,
    cwCognitoConfig,
    cwWorkforceName,

    -- * Destructuring the Response
    createWorkforceResponse,
    CreateWorkforceResponse,

    -- * Response Lenses
    cwrrsResponseStatus,
    cwrrsWorkforceARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createWorkforce' smart constructor.
data CreateWorkforce = CreateWorkforce'
  { _cwTags ::
      !(Maybe [Tag]),
    _cwSourceIPConfig ::
      !(Maybe SourceIPConfig),
    _cwOidcConfig :: !(Maybe OidcConfig),
    _cwCognitoConfig ::
      !(Maybe CognitoConfig),
    _cwWorkforceName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateWorkforce' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwTags' - An array of key-value pairs that contain metadata to help you categorize and organize our workforce. Each tag consists of a key and a value, both of which you define.
--
-- * 'cwSourceIPConfig' - Undocumented member.
--
-- * 'cwOidcConfig' - Use this parameter to configure a private workforce using your own OIDC Identity Provider. Do not use @CognitoConfig@ if you specify values for @OidcConfig@ .
--
-- * 'cwCognitoConfig' - Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool> . Do not use @OidcConfig@ if you specify values for @CognitoConfig@ .
--
-- * 'cwWorkforceName' - The name of the private workforce.
createWorkforce ::
  -- | 'cwWorkforceName'
  Text ->
  CreateWorkforce
createWorkforce pWorkforceName_ =
  CreateWorkforce'
    { _cwTags = Nothing,
      _cwSourceIPConfig = Nothing,
      _cwOidcConfig = Nothing,
      _cwCognitoConfig = Nothing,
      _cwWorkforceName = pWorkforceName_
    }

-- | An array of key-value pairs that contain metadata to help you categorize and organize our workforce. Each tag consists of a key and a value, both of which you define.
cwTags :: Lens' CreateWorkforce [Tag]
cwTags = lens _cwTags (\s a -> s {_cwTags = a}) . _Default . _Coerce

-- | Undocumented member.
cwSourceIPConfig :: Lens' CreateWorkforce (Maybe SourceIPConfig)
cwSourceIPConfig = lens _cwSourceIPConfig (\s a -> s {_cwSourceIPConfig = a})

-- | Use this parameter to configure a private workforce using your own OIDC Identity Provider. Do not use @CognitoConfig@ if you specify values for @OidcConfig@ .
cwOidcConfig :: Lens' CreateWorkforce (Maybe OidcConfig)
cwOidcConfig = lens _cwOidcConfig (\s a -> s {_cwOidcConfig = a})

-- | Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool> . Do not use @OidcConfig@ if you specify values for @CognitoConfig@ .
cwCognitoConfig :: Lens' CreateWorkforce (Maybe CognitoConfig)
cwCognitoConfig = lens _cwCognitoConfig (\s a -> s {_cwCognitoConfig = a})

-- | The name of the private workforce.
cwWorkforceName :: Lens' CreateWorkforce Text
cwWorkforceName = lens _cwWorkforceName (\s a -> s {_cwWorkforceName = a})

instance AWSRequest CreateWorkforce where
  type Rs CreateWorkforce = CreateWorkforceResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateWorkforceResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "WorkforceArn")
      )

instance Hashable CreateWorkforce

instance NFData CreateWorkforce

instance ToHeaders CreateWorkforce where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateWorkforce" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateWorkforce where
  toJSON CreateWorkforce' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cwTags,
            ("SourceIpConfig" .=) <$> _cwSourceIPConfig,
            ("OidcConfig" .=) <$> _cwOidcConfig,
            ("CognitoConfig" .=) <$> _cwCognitoConfig,
            Just ("WorkforceName" .= _cwWorkforceName)
          ]
      )

instance ToPath CreateWorkforce where
  toPath = const "/"

instance ToQuery CreateWorkforce where
  toQuery = const mempty

-- | /See:/ 'createWorkforceResponse' smart constructor.
data CreateWorkforceResponse = CreateWorkforceResponse'
  { _cwrrsResponseStatus ::
      !Int,
    _cwrrsWorkforceARN ::
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

-- | Creates a value of 'CreateWorkforceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwrrsResponseStatus' - -- | The response status code.
--
-- * 'cwrrsWorkforceARN' - The Amazon Resource Name (ARN) of the workforce.
createWorkforceResponse ::
  -- | 'cwrrsResponseStatus'
  Int ->
  -- | 'cwrrsWorkforceARN'
  Text ->
  CreateWorkforceResponse
createWorkforceResponse
  pResponseStatus_
  pWorkforceARN_ =
    CreateWorkforceResponse'
      { _cwrrsResponseStatus =
          pResponseStatus_,
        _cwrrsWorkforceARN = pWorkforceARN_
      }

-- | -- | The response status code.
cwrrsResponseStatus :: Lens' CreateWorkforceResponse Int
cwrrsResponseStatus = lens _cwrrsResponseStatus (\s a -> s {_cwrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the workforce.
cwrrsWorkforceARN :: Lens' CreateWorkforceResponse Text
cwrrsWorkforceARN = lens _cwrrsWorkforceARN (\s a -> s {_cwrrsWorkforceARN = a})

instance NFData CreateWorkforceResponse
