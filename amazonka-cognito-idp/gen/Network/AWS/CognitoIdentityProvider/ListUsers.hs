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
-- Module      : Network.AWS.CognitoIdentityProvider.ListUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the users in the Amazon Cognito user pool.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.ListUsers
  ( -- * Creating a Request
    listUsers,
    ListUsers,

    -- * Request Lenses
    luPaginationToken,
    luFilter,
    luLimit,
    luAttributesToGet,
    luUserPoolId,

    -- * Destructuring the Response
    listUsersResponse,
    ListUsersResponse,

    -- * Response Lenses
    lurrsPaginationToken,
    lurrsUsers,
    lurrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list users.
--
--
--
-- /See:/ 'listUsers' smart constructor.
data ListUsers = ListUsers'
  { _luPaginationToken ::
      !(Maybe Text),
    _luFilter :: !(Maybe Text),
    _luLimit :: !(Maybe Nat),
    _luAttributesToGet :: !(Maybe [Text]),
    _luUserPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luPaginationToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'luFilter' - A filter string of the form "/AttributeName/ /Filter-Type/ "/AttributeValue/ "". Quotation marks within the filter string must be escaped using the backslash (\) character. For example, "@family_name@ = \"Reddy\"".     * /AttributeName/ : The name of the attribute to search for. You can only search for one attribute at a time.     * /Filter-Type/ : For an exact match, use =, for example, "@given_name@ = \"Jon\"". For a prefix ("starts with") match, use ^=, for example, "@given_name@ ^= \"Jon\"".      * /AttributeValue/ : The attribute value that must be matched for each user. If the filter string is empty, @ListUsers@ returns all users in the user pool. You can only search for the following standard attributes:     * @username@ (case-sensitive)     * @email@      * @phone_number@      * @name@      * @given_name@      * @family_name@      * @preferred_username@      * @cognito:user_status@ (called __Status__ in the Console) (case-insensitive)     * @status (called __Enabled__ in the Console) (case-sensitive)@      * @sub@  Custom attributes are not searchable. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api Searching for Users Using the ListUsers API> and <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples Examples of Using the ListUsers API> in the /Amazon Cognito Developer Guide/ .
--
-- * 'luLimit' - Maximum number of users to be returned.
--
-- * 'luAttributesToGet' - An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.
--
-- * 'luUserPoolId' - The user pool ID for the user pool on which the search should be performed.
listUsers ::
  -- | 'luUserPoolId'
  Text ->
  ListUsers
listUsers pUserPoolId_ =
  ListUsers'
    { _luPaginationToken = Nothing,
      _luFilter = Nothing,
      _luLimit = Nothing,
      _luAttributesToGet = Nothing,
      _luUserPoolId = pUserPoolId_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
luPaginationToken :: Lens' ListUsers (Maybe Text)
luPaginationToken = lens _luPaginationToken (\s a -> s {_luPaginationToken = a})

-- | A filter string of the form "/AttributeName/ /Filter-Type/ "/AttributeValue/ "". Quotation marks within the filter string must be escaped using the backslash (\) character. For example, "@family_name@ = \"Reddy\"".     * /AttributeName/ : The name of the attribute to search for. You can only search for one attribute at a time.     * /Filter-Type/ : For an exact match, use =, for example, "@given_name@ = \"Jon\"". For a prefix ("starts with") match, use ^=, for example, "@given_name@ ^= \"Jon\"".      * /AttributeValue/ : The attribute value that must be matched for each user. If the filter string is empty, @ListUsers@ returns all users in the user pool. You can only search for the following standard attributes:     * @username@ (case-sensitive)     * @email@      * @phone_number@      * @name@      * @given_name@      * @family_name@      * @preferred_username@      * @cognito:user_status@ (called __Status__ in the Console) (case-insensitive)     * @status (called __Enabled__ in the Console) (case-sensitive)@      * @sub@  Custom attributes are not searchable. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api Searching for Users Using the ListUsers API> and <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples Examples of Using the ListUsers API> in the /Amazon Cognito Developer Guide/ .
luFilter :: Lens' ListUsers (Maybe Text)
luFilter = lens _luFilter (\s a -> s {_luFilter = a})

-- | Maximum number of users to be returned.
luLimit :: Lens' ListUsers (Maybe Natural)
luLimit = lens _luLimit (\s a -> s {_luLimit = a}) . mapping _Nat

-- | An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.
luAttributesToGet :: Lens' ListUsers [Text]
luAttributesToGet = lens _luAttributesToGet (\s a -> s {_luAttributesToGet = a}) . _Default . _Coerce

-- | The user pool ID for the user pool on which the search should be performed.
luUserPoolId :: Lens' ListUsers Text
luUserPoolId = lens _luUserPoolId (\s a -> s {_luUserPoolId = a})

instance AWSPager ListUsers where
  page rq rs
    | stop (rs ^. lurrsPaginationToken) = Nothing
    | stop (rs ^. lurrsUsers) = Nothing
    | otherwise =
      Just $
        rq
          & luPaginationToken .~ rs ^. lurrsPaginationToken

instance AWSRequest ListUsers where
  type Rs ListUsers = ListUsersResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListUsersResponse'
            <$> (x .?> "PaginationToken")
            <*> (x .?> "Users" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListUsers

instance NFData ListUsers

instance ToHeaders ListUsers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListUsers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListUsers where
  toJSON ListUsers' {..} =
    object
      ( catMaybes
          [ ("PaginationToken" .=) <$> _luPaginationToken,
            ("Filter" .=) <$> _luFilter,
            ("Limit" .=) <$> _luLimit,
            ("AttributesToGet" .=) <$> _luAttributesToGet,
            Just ("UserPoolId" .= _luUserPoolId)
          ]
      )

instance ToPath ListUsers where
  toPath = const "/"

instance ToQuery ListUsers where
  toQuery = const mempty

-- | The response from the request to list users.
--
--
--
-- /See:/ 'listUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { _lurrsPaginationToken ::
      !(Maybe Text),
    _lurrsUsers :: !(Maybe [UserType]),
    _lurrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lurrsPaginationToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lurrsUsers' - The users returned in the request to list users.
--
-- * 'lurrsResponseStatus' - -- | The response status code.
listUsersResponse ::
  -- | 'lurrsResponseStatus'
  Int ->
  ListUsersResponse
listUsersResponse pResponseStatus_ =
  ListUsersResponse'
    { _lurrsPaginationToken = Nothing,
      _lurrsUsers = Nothing,
      _lurrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lurrsPaginationToken :: Lens' ListUsersResponse (Maybe Text)
lurrsPaginationToken = lens _lurrsPaginationToken (\s a -> s {_lurrsPaginationToken = a})

-- | The users returned in the request to list users.
lurrsUsers :: Lens' ListUsersResponse [UserType]
lurrsUsers = lens _lurrsUsers (\s a -> s {_lurrsUsers = a}) . _Default . _Coerce

-- | -- | The response status code.
lurrsResponseStatus :: Lens' ListUsersResponse Int
lurrsResponseStatus = lens _lurrsResponseStatus (\s a -> s {_lurrsResponseStatus = a})

instance NFData ListUsersResponse
