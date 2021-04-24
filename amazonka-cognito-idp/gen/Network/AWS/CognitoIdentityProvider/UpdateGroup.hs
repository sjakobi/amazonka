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
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified group with the specified attributes.
--
--
-- Calling this action requires developer credentials.
--
-- /Important:/ If you don't provide a value for an attribute, it will be set to the default value.
module Network.AWS.CognitoIdentityProvider.UpdateGroup
  ( -- * Creating a Request
    updateGroup,
    UpdateGroup,

    -- * Request Lenses
    ugRoleARN,
    ugDescription,
    ugPrecedence,
    ugGroupName,
    ugUserPoolId,

    -- * Destructuring the Response
    updateGroupResponse,
    UpdateGroupResponse,

    -- * Response Lenses
    ugrrsGroup,
    ugrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateGroup' smart constructor.
data UpdateGroup = UpdateGroup'
  { _ugRoleARN ::
      !(Maybe Text),
    _ugDescription :: !(Maybe Text),
    _ugPrecedence :: !(Maybe Nat),
    _ugGroupName :: !Text,
    _ugUserPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugRoleARN' - The new role ARN for the group. This is used for setting the @cognito:roles@ and @cognito:preferred_role@ claims in the token.
--
-- * 'ugDescription' - A string containing the new description of the group.
--
-- * 'ugPrecedence' - The new precedence value for the group. For more information about this parameter, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html CreateGroup> .
--
-- * 'ugGroupName' - The name of the group.
--
-- * 'ugUserPoolId' - The user pool ID for the user pool.
updateGroup ::
  -- | 'ugGroupName'
  Text ->
  -- | 'ugUserPoolId'
  Text ->
  UpdateGroup
updateGroup pGroupName_ pUserPoolId_ =
  UpdateGroup'
    { _ugRoleARN = Nothing,
      _ugDescription = Nothing,
      _ugPrecedence = Nothing,
      _ugGroupName = pGroupName_,
      _ugUserPoolId = pUserPoolId_
    }

-- | The new role ARN for the group. This is used for setting the @cognito:roles@ and @cognito:preferred_role@ claims in the token.
ugRoleARN :: Lens' UpdateGroup (Maybe Text)
ugRoleARN = lens _ugRoleARN (\s a -> s {_ugRoleARN = a})

-- | A string containing the new description of the group.
ugDescription :: Lens' UpdateGroup (Maybe Text)
ugDescription = lens _ugDescription (\s a -> s {_ugDescription = a})

-- | The new precedence value for the group. For more information about this parameter, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html CreateGroup> .
ugPrecedence :: Lens' UpdateGroup (Maybe Natural)
ugPrecedence = lens _ugPrecedence (\s a -> s {_ugPrecedence = a}) . mapping _Nat

-- | The name of the group.
ugGroupName :: Lens' UpdateGroup Text
ugGroupName = lens _ugGroupName (\s a -> s {_ugGroupName = a})

-- | The user pool ID for the user pool.
ugUserPoolId :: Lens' UpdateGroup Text
ugUserPoolId = lens _ugUserPoolId (\s a -> s {_ugUserPoolId = a})

instance AWSRequest UpdateGroup where
  type Rs UpdateGroup = UpdateGroupResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          UpdateGroupResponse'
            <$> (x .?> "Group") <*> (pure (fromEnum s))
      )

instance Hashable UpdateGroup

instance NFData UpdateGroup

instance ToHeaders UpdateGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.UpdateGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateGroup where
  toJSON UpdateGroup' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _ugRoleARN,
            ("Description" .=) <$> _ugDescription,
            ("Precedence" .=) <$> _ugPrecedence,
            Just ("GroupName" .= _ugGroupName),
            Just ("UserPoolId" .= _ugUserPoolId)
          ]
      )

instance ToPath UpdateGroup where
  toPath = const "/"

instance ToQuery UpdateGroup where
  toQuery = const mempty

-- | /See:/ 'updateGroupResponse' smart constructor.
data UpdateGroupResponse = UpdateGroupResponse'
  { _ugrrsGroup ::
      !(Maybe GroupType),
    _ugrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrrsGroup' - The group object for the group.
--
-- * 'ugrrsResponseStatus' - -- | The response status code.
updateGroupResponse ::
  -- | 'ugrrsResponseStatus'
  Int ->
  UpdateGroupResponse
updateGroupResponse pResponseStatus_ =
  UpdateGroupResponse'
    { _ugrrsGroup = Nothing,
      _ugrrsResponseStatus = pResponseStatus_
    }

-- | The group object for the group.
ugrrsGroup :: Lens' UpdateGroupResponse (Maybe GroupType)
ugrrsGroup = lens _ugrrsGroup (\s a -> s {_ugrrsGroup = a})

-- | -- | The response status code.
ugrrsResponseStatus :: Lens' UpdateGroupResponse Int
ugrrsResponseStatus = lens _ugrrsResponseStatus (\s a -> s {_ugrrsResponseStatus = a})

instance NFData UpdateGroupResponse
