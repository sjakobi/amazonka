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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the groups that the user belongs to.
--
--
-- Calling this action requires developer credentials.
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser
  ( -- * Creating a Request
    adminListGroupsForUser,
    AdminListGroupsForUser,

    -- * Request Lenses
    algfuNextToken,
    algfuLimit,
    algfuUsername,
    algfuUserPoolId,

    -- * Destructuring the Response
    adminListGroupsForUserResponse,
    AdminListGroupsForUserResponse,

    -- * Response Lenses
    algfurrsGroups,
    algfurrsNextToken,
    algfurrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'adminListGroupsForUser' smart constructor.
data AdminListGroupsForUser = AdminListGroupsForUser'
  { _algfuNextToken ::
      !(Maybe Text),
    _algfuLimit ::
      !(Maybe Nat),
    _algfuUsername ::
      !(Sensitive Text),
    _algfuUserPoolId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminListGroupsForUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'algfuNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'algfuLimit' - The limit of the request to list groups.
--
-- * 'algfuUsername' - The username for the user.
--
-- * 'algfuUserPoolId' - The user pool ID for the user pool.
adminListGroupsForUser ::
  -- | 'algfuUsername'
  Text ->
  -- | 'algfuUserPoolId'
  Text ->
  AdminListGroupsForUser
adminListGroupsForUser pUsername_ pUserPoolId_ =
  AdminListGroupsForUser'
    { _algfuNextToken = Nothing,
      _algfuLimit = Nothing,
      _algfuUsername = _Sensitive # pUsername_,
      _algfuUserPoolId = pUserPoolId_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
algfuNextToken :: Lens' AdminListGroupsForUser (Maybe Text)
algfuNextToken = lens _algfuNextToken (\s a -> s {_algfuNextToken = a})

-- | The limit of the request to list groups.
algfuLimit :: Lens' AdminListGroupsForUser (Maybe Natural)
algfuLimit = lens _algfuLimit (\s a -> s {_algfuLimit = a}) . mapping _Nat

-- | The username for the user.
algfuUsername :: Lens' AdminListGroupsForUser Text
algfuUsername = lens _algfuUsername (\s a -> s {_algfuUsername = a}) . _Sensitive

-- | The user pool ID for the user pool.
algfuUserPoolId :: Lens' AdminListGroupsForUser Text
algfuUserPoolId = lens _algfuUserPoolId (\s a -> s {_algfuUserPoolId = a})

instance AWSPager AdminListGroupsForUser where
  page rq rs
    | stop (rs ^. algfurrsNextToken) = Nothing
    | stop (rs ^. algfurrsGroups) = Nothing
    | otherwise =
      Just $ rq & algfuNextToken .~ rs ^. algfurrsNextToken

instance AWSRequest AdminListGroupsForUser where
  type
    Rs AdminListGroupsForUser =
      AdminListGroupsForUserResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          AdminListGroupsForUserResponse'
            <$> (x .?> "Groups" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable AdminListGroupsForUser

instance NFData AdminListGroupsForUser

instance ToHeaders AdminListGroupsForUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminListGroupsForUser" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminListGroupsForUser where
  toJSON AdminListGroupsForUser' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _algfuNextToken,
            ("Limit" .=) <$> _algfuLimit,
            Just ("Username" .= _algfuUsername),
            Just ("UserPoolId" .= _algfuUserPoolId)
          ]
      )

instance ToPath AdminListGroupsForUser where
  toPath = const "/"

instance ToQuery AdminListGroupsForUser where
  toQuery = const mempty

-- | /See:/ 'adminListGroupsForUserResponse' smart constructor.
data AdminListGroupsForUserResponse = AdminListGroupsForUserResponse'
  { _algfurrsGroups ::
      !( Maybe
           [GroupType]
       ),
    _algfurrsNextToken ::
      !( Maybe
           Text
       ),
    _algfurrsResponseStatus ::
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

-- | Creates a value of 'AdminListGroupsForUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'algfurrsGroups' - The groups that the user belongs to.
--
-- * 'algfurrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'algfurrsResponseStatus' - -- | The response status code.
adminListGroupsForUserResponse ::
  -- | 'algfurrsResponseStatus'
  Int ->
  AdminListGroupsForUserResponse
adminListGroupsForUserResponse pResponseStatus_ =
  AdminListGroupsForUserResponse'
    { _algfurrsGroups =
        Nothing,
      _algfurrsNextToken = Nothing,
      _algfurrsResponseStatus = pResponseStatus_
    }

-- | The groups that the user belongs to.
algfurrsGroups :: Lens' AdminListGroupsForUserResponse [GroupType]
algfurrsGroups = lens _algfurrsGroups (\s a -> s {_algfurrsGroups = a}) . _Default . _Coerce

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
algfurrsNextToken :: Lens' AdminListGroupsForUserResponse (Maybe Text)
algfurrsNextToken = lens _algfurrsNextToken (\s a -> s {_algfurrsNextToken = a})

-- | -- | The response status code.
algfurrsResponseStatus :: Lens' AdminListGroupsForUserResponse Int
algfurrsResponseStatus = lens _algfurrsResponseStatus (\s a -> s {_algfurrsResponseStatus = a})

instance NFData AdminListGroupsForUserResponse
