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
-- Module      : Network.AWS.AppStream.DescribeSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeSessions
  ( -- * Creating a Request
    describeSessions,
    DescribeSessions,

    -- * Request Lenses
    dsNextToken,
    dsUserId,
    dsAuthenticationType,
    dsLimit,
    dsStackName,
    dsFleetName,

    -- * Destructuring the Response
    describeSessionsResponse,
    DescribeSessionsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsSessions,
    desrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSessions' smart constructor.
data DescribeSessions = DescribeSessions'
  { _dsNextToken ::
      !(Maybe Text),
    _dsUserId :: !(Maybe Text),
    _dsAuthenticationType ::
      !(Maybe AuthenticationType),
    _dsLimit :: !(Maybe Int),
    _dsStackName :: !Text,
    _dsFleetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'dsUserId' - The user identifier (ID). If you specify a user ID, you must also specify the authentication type.
--
-- * 'dsAuthenticationType' - The authentication method. Specify @API@ for a user authenticated using a streaming URL or @SAML@ for a SAML federated user. The default is to authenticate users using a streaming URL.
--
-- * 'dsLimit' - The size of each page of results. The default value is 20 and the maximum value is 50.
--
-- * 'dsStackName' - The name of the stack. This value is case-sensitive.
--
-- * 'dsFleetName' - The name of the fleet. This value is case-sensitive.
describeSessions ::
  -- | 'dsStackName'
  Text ->
  -- | 'dsFleetName'
  Text ->
  DescribeSessions
describeSessions pStackName_ pFleetName_ =
  DescribeSessions'
    { _dsNextToken = Nothing,
      _dsUserId = Nothing,
      _dsAuthenticationType = Nothing,
      _dsLimit = Nothing,
      _dsStackName = pStackName_,
      _dsFleetName = pFleetName_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dsNextToken :: Lens' DescribeSessions (Maybe Text)
dsNextToken = lens _dsNextToken (\s a -> s {_dsNextToken = a})

-- | The user identifier (ID). If you specify a user ID, you must also specify the authentication type.
dsUserId :: Lens' DescribeSessions (Maybe Text)
dsUserId = lens _dsUserId (\s a -> s {_dsUserId = a})

-- | The authentication method. Specify @API@ for a user authenticated using a streaming URL or @SAML@ for a SAML federated user. The default is to authenticate users using a streaming URL.
dsAuthenticationType :: Lens' DescribeSessions (Maybe AuthenticationType)
dsAuthenticationType = lens _dsAuthenticationType (\s a -> s {_dsAuthenticationType = a})

-- | The size of each page of results. The default value is 20 and the maximum value is 50.
dsLimit :: Lens' DescribeSessions (Maybe Int)
dsLimit = lens _dsLimit (\s a -> s {_dsLimit = a})

-- | The name of the stack. This value is case-sensitive.
dsStackName :: Lens' DescribeSessions Text
dsStackName = lens _dsStackName (\s a -> s {_dsStackName = a})

-- | The name of the fleet. This value is case-sensitive.
dsFleetName :: Lens' DescribeSessions Text
dsFleetName = lens _dsFleetName (\s a -> s {_dsFleetName = a})

instance AWSPager DescribeSessions where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsSessions) = Nothing
    | otherwise =
      Just $ rq & dsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeSessions where
  type Rs DescribeSessions = DescribeSessionsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeSessionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Sessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSessions

instance NFData DescribeSessions

instance ToHeaders DescribeSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeSessions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSessions where
  toJSON DescribeSessions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dsNextToken,
            ("UserId" .=) <$> _dsUserId,
            ("AuthenticationType" .=) <$> _dsAuthenticationType,
            ("Limit" .=) <$> _dsLimit,
            Just ("StackName" .= _dsStackName),
            Just ("FleetName" .= _dsFleetName)
          ]
      )

instance ToPath DescribeSessions where
  toPath = const "/"

instance ToQuery DescribeSessions where
  toQuery = const mempty

-- | /See:/ 'describeSessionsResponse' smart constructor.
data DescribeSessionsResponse = DescribeSessionsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsSessions ::
      !(Maybe [Session]),
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

-- | Creates a value of 'DescribeSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'desrsSessions' - Information about the streaming sessions.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeSessionsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeSessionsResponse
describeSessionsResponse pResponseStatus_ =
  DescribeSessionsResponse'
    { _desrsNextToken =
        Nothing,
      _desrsSessions = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
desrsNextToken :: Lens' DescribeSessionsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Information about the streaming sessions.
desrsSessions :: Lens' DescribeSessionsResponse [Session]
desrsSessions = lens _desrsSessions (\s a -> s {_desrsSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeSessionsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeSessionsResponse
