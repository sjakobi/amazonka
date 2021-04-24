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
-- Module      : Network.AWS.SageMaker.CreateWorkteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new work team for labeling your data. A work team is defined by one or more Amazon Cognito user pools. You must first create the user pools before you can create a work team.
--
--
-- You cannot create more than 25 work teams in an account and region.
module Network.AWS.SageMaker.CreateWorkteam
  ( -- * Creating a Request
    createWorkteam,
    CreateWorkteam,

    -- * Request Lenses
    cwwWorkforceName,
    cwwNotificationConfiguration,
    cwwTags,
    cwwWorkteamName,
    cwwMemberDefinitions,
    cwwDescription,

    -- * Destructuring the Response
    createWorkteamResponse,
    CreateWorkteamResponse,

    -- * Response Lenses
    cwrwrsWorkteamARN,
    cwrwrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createWorkteam' smart constructor.
data CreateWorkteam = CreateWorkteam'
  { _cwwWorkforceName ::
      !(Maybe Text),
    _cwwNotificationConfiguration ::
      !(Maybe NotificationConfiguration),
    _cwwTags :: !(Maybe [Tag]),
    _cwwWorkteamName :: !Text,
    _cwwMemberDefinitions ::
      !(List1 MemberDefinition),
    _cwwDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateWorkteam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwwWorkforceName' - The name of the workforce.
--
-- * 'cwwNotificationConfiguration' - Configures notification of workers regarding available or expiring work items.
--
-- * 'cwwTags' - An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html Resource Tag> and <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cwwWorkteamName' - The name of the work team. Use this name to identify the work team.
--
-- * 'cwwMemberDefinitions' - A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ . Do not provide input for both of these parameters in a single request. For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito /user groups/ within the user pool used to create a workforce. All of the @CognitoMemberDefinition@ objects that make up the member definition must have the same @ClientId@ and @UserPool@ values. To add a Amazon Cognito user group to an existing worker pool, see < Adding groups to a User Pool> . For more information about user pools, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools> . For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in @OidcMemberDefinition@ by listing those groups in @Groups@ .
--
-- * 'cwwDescription' - A description of the work team.
createWorkteam ::
  -- | 'cwwWorkteamName'
  Text ->
  -- | 'cwwMemberDefinitions'
  NonEmpty MemberDefinition ->
  -- | 'cwwDescription'
  Text ->
  CreateWorkteam
createWorkteam
  pWorkteamName_
  pMemberDefinitions_
  pDescription_ =
    CreateWorkteam'
      { _cwwWorkforceName = Nothing,
        _cwwNotificationConfiguration = Nothing,
        _cwwTags = Nothing,
        _cwwWorkteamName = pWorkteamName_,
        _cwwMemberDefinitions = _List1 # pMemberDefinitions_,
        _cwwDescription = pDescription_
      }

-- | The name of the workforce.
cwwWorkforceName :: Lens' CreateWorkteam (Maybe Text)
cwwWorkforceName = lens _cwwWorkforceName (\s a -> s {_cwwWorkforceName = a})

-- | Configures notification of workers regarding available or expiring work items.
cwwNotificationConfiguration :: Lens' CreateWorkteam (Maybe NotificationConfiguration)
cwwNotificationConfiguration = lens _cwwNotificationConfiguration (\s a -> s {_cwwNotificationConfiguration = a})

-- | An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html Resource Tag> and <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cwwTags :: Lens' CreateWorkteam [Tag]
cwwTags = lens _cwwTags (\s a -> s {_cwwTags = a}) . _Default . _Coerce

-- | The name of the work team. Use this name to identify the work team.
cwwWorkteamName :: Lens' CreateWorkteam Text
cwwWorkteamName = lens _cwwWorkteamName (\s a -> s {_cwwWorkteamName = a})

-- | A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ . Do not provide input for both of these parameters in a single request. For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito /user groups/ within the user pool used to create a workforce. All of the @CognitoMemberDefinition@ objects that make up the member definition must have the same @ClientId@ and @UserPool@ values. To add a Amazon Cognito user group to an existing worker pool, see < Adding groups to a User Pool> . For more information about user pools, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools> . For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in @OidcMemberDefinition@ by listing those groups in @Groups@ .
cwwMemberDefinitions :: Lens' CreateWorkteam (NonEmpty MemberDefinition)
cwwMemberDefinitions = lens _cwwMemberDefinitions (\s a -> s {_cwwMemberDefinitions = a}) . _List1

-- | A description of the work team.
cwwDescription :: Lens' CreateWorkteam Text
cwwDescription = lens _cwwDescription (\s a -> s {_cwwDescription = a})

instance AWSRequest CreateWorkteam where
  type Rs CreateWorkteam = CreateWorkteamResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateWorkteamResponse'
            <$> (x .?> "WorkteamArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateWorkteam

instance NFData CreateWorkteam

instance ToHeaders CreateWorkteam where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateWorkteam" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateWorkteam where
  toJSON CreateWorkteam' {..} =
    object
      ( catMaybes
          [ ("WorkforceName" .=) <$> _cwwWorkforceName,
            ("NotificationConfiguration" .=)
              <$> _cwwNotificationConfiguration,
            ("Tags" .=) <$> _cwwTags,
            Just ("WorkteamName" .= _cwwWorkteamName),
            Just ("MemberDefinitions" .= _cwwMemberDefinitions),
            Just ("Description" .= _cwwDescription)
          ]
      )

instance ToPath CreateWorkteam where
  toPath = const "/"

instance ToQuery CreateWorkteam where
  toQuery = const mempty

-- | /See:/ 'createWorkteamResponse' smart constructor.
data CreateWorkteamResponse = CreateWorkteamResponse'
  { _cwrwrsWorkteamARN ::
      !(Maybe Text),
    _cwrwrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateWorkteamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwrwrsWorkteamARN' - The Amazon Resource Name (ARN) of the work team. You can use this ARN to identify the work team.
--
-- * 'cwrwrsResponseStatus' - -- | The response status code.
createWorkteamResponse ::
  -- | 'cwrwrsResponseStatus'
  Int ->
  CreateWorkteamResponse
createWorkteamResponse pResponseStatus_ =
  CreateWorkteamResponse'
    { _cwrwrsWorkteamARN =
        Nothing,
      _cwrwrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the work team. You can use this ARN to identify the work team.
cwrwrsWorkteamARN :: Lens' CreateWorkteamResponse (Maybe Text)
cwrwrsWorkteamARN = lens _cwrwrsWorkteamARN (\s a -> s {_cwrwrsWorkteamARN = a})

-- | -- | The response status code.
cwrwrsResponseStatus :: Lens' CreateWorkteamResponse Int
cwrwrsResponseStatus = lens _cwrwrsResponseStatus (\s a -> s {_cwrwrsResponseStatus = a})

instance NFData CreateWorkteamResponse
