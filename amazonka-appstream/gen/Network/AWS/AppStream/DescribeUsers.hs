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
-- Module      : Network.AWS.AppStream.DescribeUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified users in the user pool.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeUsers
  ( -- * Creating a Request
    describeUsers,
    DescribeUsers,

    -- * Request Lenses
    duNextToken,
    duMaxResults,
    duAuthenticationType,

    -- * Destructuring the Response
    describeUsersResponse,
    DescribeUsersResponse,

    -- * Response Lenses
    durursNextToken,
    durursUsers,
    durursResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUsers' smart constructor.
data DescribeUsers = DescribeUsers'
  { _duNextToken ::
      !(Maybe Text),
    _duMaxResults :: !(Maybe Int),
    _duAuthenticationType ::
      !AuthenticationType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'duMaxResults' - The maximum size of each page of results.
--
-- * 'duAuthenticationType' - The authentication type for the users in the user pool to describe. You must specify USERPOOL.
describeUsers ::
  -- | 'duAuthenticationType'
  AuthenticationType ->
  DescribeUsers
describeUsers pAuthenticationType_ =
  DescribeUsers'
    { _duNextToken = Nothing,
      _duMaxResults = Nothing,
      _duAuthenticationType = pAuthenticationType_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
duNextToken :: Lens' DescribeUsers (Maybe Text)
duNextToken = lens _duNextToken (\s a -> s {_duNextToken = a})

-- | The maximum size of each page of results.
duMaxResults :: Lens' DescribeUsers (Maybe Int)
duMaxResults = lens _duMaxResults (\s a -> s {_duMaxResults = a})

-- | The authentication type for the users in the user pool to describe. You must specify USERPOOL.
duAuthenticationType :: Lens' DescribeUsers AuthenticationType
duAuthenticationType = lens _duAuthenticationType (\s a -> s {_duAuthenticationType = a})

instance AWSPager DescribeUsers where
  page rq rs
    | stop (rs ^. durursNextToken) = Nothing
    | stop (rs ^. durursUsers) = Nothing
    | otherwise =
      Just $ rq & duNextToken .~ rs ^. durursNextToken

instance AWSRequest DescribeUsers where
  type Rs DescribeUsers = DescribeUsersResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeUsersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Users" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUsers

instance NFData DescribeUsers

instance ToHeaders DescribeUsers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeUsers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUsers where
  toJSON DescribeUsers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _duNextToken,
            ("MaxResults" .=) <$> _duMaxResults,
            Just
              ("AuthenticationType" .= _duAuthenticationType)
          ]
      )

instance ToPath DescribeUsers where
  toPath = const "/"

instance ToQuery DescribeUsers where
  toQuery = const mempty

-- | /See:/ 'describeUsersResponse' smart constructor.
data DescribeUsersResponse = DescribeUsersResponse'
  { _durursNextToken ::
      !(Maybe Text),
    _durursUsers ::
      !(Maybe [User]),
    _durursResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'durursNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'durursUsers' - Information about users in the user pool.
--
-- * 'durursResponseStatus' - -- | The response status code.
describeUsersResponse ::
  -- | 'durursResponseStatus'
  Int ->
  DescribeUsersResponse
describeUsersResponse pResponseStatus_ =
  DescribeUsersResponse'
    { _durursNextToken = Nothing,
      _durursUsers = Nothing,
      _durursResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
durursNextToken :: Lens' DescribeUsersResponse (Maybe Text)
durursNextToken = lens _durursNextToken (\s a -> s {_durursNextToken = a})

-- | Information about users in the user pool.
durursUsers :: Lens' DescribeUsersResponse [User]
durursUsers = lens _durursUsers (\s a -> s {_durursUsers = a}) . _Default . _Coerce

-- | -- | The response status code.
durursResponseStatus :: Lens' DescribeUsersResponse Int
durursResponseStatus = lens _durursResponseStatus (\s a -> s {_durursResponseStatus = a})

instance NFData DescribeUsersResponse
