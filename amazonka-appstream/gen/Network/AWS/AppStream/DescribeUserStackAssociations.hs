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
-- Module      : Network.AWS.AppStream.DescribeUserStackAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:
--
--
--     * The stack name
--
--     * The user name (email address of the user associated with the stack) and the authentication type for the user
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeUserStackAssociations
  ( -- * Creating a Request
    describeUserStackAssociations,
    DescribeUserStackAssociations,

    -- * Request Lenses
    dusaNextToken,
    dusaStackName,
    dusaMaxResults,
    dusaUserName,
    dusaAuthenticationType,

    -- * Destructuring the Response
    describeUserStackAssociationsResponse,
    DescribeUserStackAssociationsResponse,

    -- * Response Lenses
    dusarrsNextToken,
    dusarrsUserStackAssociations,
    dusarrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUserStackAssociations' smart constructor.
data DescribeUserStackAssociations = DescribeUserStackAssociations'
  { _dusaNextToken ::
      !( Maybe
           Text
       ),
    _dusaStackName ::
      !( Maybe
           Text
       ),
    _dusaMaxResults ::
      !( Maybe
           Nat
       ),
    _dusaUserName ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _dusaAuthenticationType ::
      !( Maybe
           AuthenticationType
       )
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeUserStackAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dusaNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'dusaStackName' - The name of the stack that is associated with the user.
--
-- * 'dusaMaxResults' - The maximum size of each page of results.
--
-- * 'dusaUserName' - The email address of the user who is associated with the stack.
--
-- * 'dusaAuthenticationType' - The authentication type for the user who is associated with the stack. You must specify USERPOOL.
describeUserStackAssociations ::
  DescribeUserStackAssociations
describeUserStackAssociations =
  DescribeUserStackAssociations'
    { _dusaNextToken =
        Nothing,
      _dusaStackName = Nothing,
      _dusaMaxResults = Nothing,
      _dusaUserName = Nothing,
      _dusaAuthenticationType = Nothing
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dusaNextToken :: Lens' DescribeUserStackAssociations (Maybe Text)
dusaNextToken = lens _dusaNextToken (\s a -> s {_dusaNextToken = a})

-- | The name of the stack that is associated with the user.
dusaStackName :: Lens' DescribeUserStackAssociations (Maybe Text)
dusaStackName = lens _dusaStackName (\s a -> s {_dusaStackName = a})

-- | The maximum size of each page of results.
dusaMaxResults :: Lens' DescribeUserStackAssociations (Maybe Natural)
dusaMaxResults = lens _dusaMaxResults (\s a -> s {_dusaMaxResults = a}) . mapping _Nat

-- | The email address of the user who is associated with the stack.
dusaUserName :: Lens' DescribeUserStackAssociations (Maybe Text)
dusaUserName = lens _dusaUserName (\s a -> s {_dusaUserName = a}) . mapping _Sensitive

-- | The authentication type for the user who is associated with the stack. You must specify USERPOOL.
dusaAuthenticationType :: Lens' DescribeUserStackAssociations (Maybe AuthenticationType)
dusaAuthenticationType = lens _dusaAuthenticationType (\s a -> s {_dusaAuthenticationType = a})

instance AWSPager DescribeUserStackAssociations where
  page rq rs
    | stop (rs ^. dusarrsNextToken) = Nothing
    | stop (rs ^. dusarrsUserStackAssociations) = Nothing
    | otherwise =
      Just $ rq & dusaNextToken .~ rs ^. dusarrsNextToken

instance AWSRequest DescribeUserStackAssociations where
  type
    Rs DescribeUserStackAssociations =
      DescribeUserStackAssociationsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserStackAssociationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UserStackAssociations")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUserStackAssociations

instance NFData DescribeUserStackAssociations

instance ToHeaders DescribeUserStackAssociations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeUserStackAssociations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUserStackAssociations where
  toJSON DescribeUserStackAssociations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dusaNextToken,
            ("StackName" .=) <$> _dusaStackName,
            ("MaxResults" .=) <$> _dusaMaxResults,
            ("UserName" .=) <$> _dusaUserName,
            ("AuthenticationType" .=)
              <$> _dusaAuthenticationType
          ]
      )

instance ToPath DescribeUserStackAssociations where
  toPath = const "/"

instance ToQuery DescribeUserStackAssociations where
  toQuery = const mempty

-- | /See:/ 'describeUserStackAssociationsResponse' smart constructor.
data DescribeUserStackAssociationsResponse = DescribeUserStackAssociationsResponse'
  { _dusarrsNextToken ::
      !( Maybe
           Text
       ),
    _dusarrsUserStackAssociations ::
      !( Maybe
           ( List1
               UserStackAssociation
           )
       ),
    _dusarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeUserStackAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dusarrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dusarrsUserStackAssociations' - The UserStackAssociation objects.
--
-- * 'dusarrsResponseStatus' - -- | The response status code.
describeUserStackAssociationsResponse ::
  -- | 'dusarrsResponseStatus'
  Int ->
  DescribeUserStackAssociationsResponse
describeUserStackAssociationsResponse
  pResponseStatus_ =
    DescribeUserStackAssociationsResponse'
      { _dusarrsNextToken =
          Nothing,
        _dusarrsUserStackAssociations =
          Nothing,
        _dusarrsResponseStatus =
          pResponseStatus_
      }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dusarrsNextToken :: Lens' DescribeUserStackAssociationsResponse (Maybe Text)
dusarrsNextToken = lens _dusarrsNextToken (\s a -> s {_dusarrsNextToken = a})

-- | The UserStackAssociation objects.
dusarrsUserStackAssociations :: Lens' DescribeUserStackAssociationsResponse (Maybe (NonEmpty UserStackAssociation))
dusarrsUserStackAssociations = lens _dusarrsUserStackAssociations (\s a -> s {_dusarrsUserStackAssociations = a}) . mapping _List1

-- | -- | The response status code.
dusarrsResponseStatus :: Lens' DescribeUserStackAssociationsResponse Int
dusarrsResponseStatus = lens _dusarrsResponseStatus (\s a -> s {_dusarrsResponseStatus = a})

instance NFData DescribeUserStackAssociationsResponse
