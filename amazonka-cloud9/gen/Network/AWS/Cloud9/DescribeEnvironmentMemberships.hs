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
-- Module      : Network.AWS.Cloud9.DescribeEnvironmentMemberships
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about environment members for an AWS Cloud9 development environment.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Cloud9.DescribeEnvironmentMemberships
  ( -- * Creating a Request
    describeEnvironmentMemberships,
    DescribeEnvironmentMemberships,

    -- * Request Lenses
    demNextToken,
    demUserARN,
    demMaxResults,
    demPermissions,
    demEnvironmentId,

    -- * Destructuring the Response
    describeEnvironmentMembershipsResponse,
    DescribeEnvironmentMembershipsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsMemberships,
    desrsResponseStatus,
  )
where

import Network.AWS.Cloud9.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEnvironmentMemberships' smart constructor.
data DescribeEnvironmentMemberships = DescribeEnvironmentMemberships'
  { _demNextToken ::
      !( Maybe
           Text
       ),
    _demUserARN ::
      !( Maybe
           Text
       ),
    _demMaxResults ::
      !( Maybe
           Nat
       ),
    _demPermissions ::
      !( Maybe
           [Permissions]
       ),
    _demEnvironmentId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEnvironmentMemberships' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'demNextToken' - During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a /next token/ . To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- * 'demUserARN' - The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
--
-- * 'demMaxResults' - The maximum number of environment members to get information about.
--
-- * 'demPermissions' - The type of environment member permissions to get information about. Available values include:     * @owner@ : Owns the environment.     * @read-only@ : Has read-only access to the environment.     * @read-write@ : Has read-write access to the environment. If no value is specified, information about all environment members are returned.
--
-- * 'demEnvironmentId' - The ID of the environment to get environment member information about.
describeEnvironmentMemberships ::
  DescribeEnvironmentMemberships
describeEnvironmentMemberships =
  DescribeEnvironmentMemberships'
    { _demNextToken =
        Nothing,
      _demUserARN = Nothing,
      _demMaxResults = Nothing,
      _demPermissions = Nothing,
      _demEnvironmentId = Nothing
    }

-- | During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a /next token/ . To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
demNextToken :: Lens' DescribeEnvironmentMemberships (Maybe Text)
demNextToken = lens _demNextToken (\s a -> s {_demNextToken = a})

-- | The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
demUserARN :: Lens' DescribeEnvironmentMemberships (Maybe Text)
demUserARN = lens _demUserARN (\s a -> s {_demUserARN = a})

-- | The maximum number of environment members to get information about.
demMaxResults :: Lens' DescribeEnvironmentMemberships (Maybe Natural)
demMaxResults = lens _demMaxResults (\s a -> s {_demMaxResults = a}) . mapping _Nat

-- | The type of environment member permissions to get information about. Available values include:     * @owner@ : Owns the environment.     * @read-only@ : Has read-only access to the environment.     * @read-write@ : Has read-write access to the environment. If no value is specified, information about all environment members are returned.
demPermissions :: Lens' DescribeEnvironmentMemberships [Permissions]
demPermissions = lens _demPermissions (\s a -> s {_demPermissions = a}) . _Default . _Coerce

-- | The ID of the environment to get environment member information about.
demEnvironmentId :: Lens' DescribeEnvironmentMemberships (Maybe Text)
demEnvironmentId = lens _demEnvironmentId (\s a -> s {_demEnvironmentId = a})

instance AWSPager DescribeEnvironmentMemberships where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsMemberships) = Nothing
    | otherwise =
      Just $ rq & demNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeEnvironmentMemberships where
  type
    Rs DescribeEnvironmentMemberships =
      DescribeEnvironmentMembershipsResponse
  request = postJSON cloud9
  response =
    receiveJSON
      ( \s h x ->
          DescribeEnvironmentMembershipsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "memberships" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEnvironmentMemberships

instance NFData DescribeEnvironmentMemberships

instance ToHeaders DescribeEnvironmentMemberships where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCloud9WorkspaceManagementService.DescribeEnvironmentMemberships" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEnvironmentMemberships where
  toJSON DescribeEnvironmentMemberships' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _demNextToken,
            ("userArn" .=) <$> _demUserARN,
            ("maxResults" .=) <$> _demMaxResults,
            ("permissions" .=) <$> _demPermissions,
            ("environmentId" .=) <$> _demEnvironmentId
          ]
      )

instance ToPath DescribeEnvironmentMemberships where
  toPath = const "/"

instance ToQuery DescribeEnvironmentMemberships where
  toQuery = const mempty

-- | /See:/ 'describeEnvironmentMembershipsResponse' smart constructor.
data DescribeEnvironmentMembershipsResponse = DescribeEnvironmentMembershipsResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsMemberships ::
      !( Maybe
           [EnvironmentMember]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeEnvironmentMembershipsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a /next token/ . To get the next batch of items in the list, call this operation again, adding the next token to the call.
--
-- * 'desrsMemberships' - Information about the environment members for the environment.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeEnvironmentMembershipsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeEnvironmentMembershipsResponse
describeEnvironmentMembershipsResponse
  pResponseStatus_ =
    DescribeEnvironmentMembershipsResponse'
      { _desrsNextToken =
          Nothing,
        _desrsMemberships = Nothing,
        _desrsResponseStatus =
          pResponseStatus_
      }

-- | If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a /next token/ . To get the next batch of items in the list, call this operation again, adding the next token to the call.
desrsNextToken :: Lens' DescribeEnvironmentMembershipsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Information about the environment members for the environment.
desrsMemberships :: Lens' DescribeEnvironmentMembershipsResponse [EnvironmentMember]
desrsMemberships = lens _desrsMemberships (\s a -> s {_desrsMemberships = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeEnvironmentMembershipsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance
  NFData
    DescribeEnvironmentMembershipsResponse
