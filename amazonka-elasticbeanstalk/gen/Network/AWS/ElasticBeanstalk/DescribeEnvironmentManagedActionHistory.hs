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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActionHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists an environment's completed and failed managed actions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticBeanstalk.DescribeEnvironmentManagedActionHistory
  ( -- * Creating a Request
    describeEnvironmentManagedActionHistory,
    DescribeEnvironmentManagedActionHistory,

    -- * Request Lenses
    demahNextToken,
    demahEnvironmentId,
    demahEnvironmentName,
    demahMaxItems,

    -- * Destructuring the Response
    describeEnvironmentManagedActionHistoryResponse,
    DescribeEnvironmentManagedActionHistoryResponse,

    -- * Response Lenses
    demahrrsNextToken,
    demahrrsManagedActionHistoryItems,
    demahrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to list completed and failed managed actions.
--
--
--
-- /See:/ 'describeEnvironmentManagedActionHistory' smart constructor.
data DescribeEnvironmentManagedActionHistory = DescribeEnvironmentManagedActionHistory'
  { _demahNextToken ::
      !( Maybe
           Text
       ),
    _demahEnvironmentId ::
      !( Maybe
           Text
       ),
    _demahEnvironmentName ::
      !( Maybe
           Text
       ),
    _demahMaxItems ::
      !( Maybe
           Nat
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

-- | Creates a value of 'DescribeEnvironmentManagedActionHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'demahNextToken' - The pagination token returned by a previous request.
--
-- * 'demahEnvironmentId' - The environment ID of the target environment.
--
-- * 'demahEnvironmentName' - The name of the target environment.
--
-- * 'demahMaxItems' - The maximum number of items to return for a single request.
describeEnvironmentManagedActionHistory ::
  DescribeEnvironmentManagedActionHistory
describeEnvironmentManagedActionHistory =
  DescribeEnvironmentManagedActionHistory'
    { _demahNextToken =
        Nothing,
      _demahEnvironmentId = Nothing,
      _demahEnvironmentName = Nothing,
      _demahMaxItems = Nothing
    }

-- | The pagination token returned by a previous request.
demahNextToken :: Lens' DescribeEnvironmentManagedActionHistory (Maybe Text)
demahNextToken = lens _demahNextToken (\s a -> s {_demahNextToken = a})

-- | The environment ID of the target environment.
demahEnvironmentId :: Lens' DescribeEnvironmentManagedActionHistory (Maybe Text)
demahEnvironmentId = lens _demahEnvironmentId (\s a -> s {_demahEnvironmentId = a})

-- | The name of the target environment.
demahEnvironmentName :: Lens' DescribeEnvironmentManagedActionHistory (Maybe Text)
demahEnvironmentName = lens _demahEnvironmentName (\s a -> s {_demahEnvironmentName = a})

-- | The maximum number of items to return for a single request.
demahMaxItems :: Lens' DescribeEnvironmentManagedActionHistory (Maybe Natural)
demahMaxItems = lens _demahMaxItems (\s a -> s {_demahMaxItems = a}) . mapping _Nat

instance
  AWSPager
    DescribeEnvironmentManagedActionHistory
  where
  page rq rs
    | stop (rs ^. demahrrsNextToken) = Nothing
    | stop (rs ^. demahrrsManagedActionHistoryItems) =
      Nothing
    | otherwise =
      Just $ rq & demahNextToken .~ rs ^. demahrrsNextToken

instance
  AWSRequest
    DescribeEnvironmentManagedActionHistory
  where
  type
    Rs DescribeEnvironmentManagedActionHistory =
      DescribeEnvironmentManagedActionHistoryResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeEnvironmentManagedActionHistoryResult"
      ( \s h x ->
          DescribeEnvironmentManagedActionHistoryResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "ManagedActionHistoryItems" .!@ mempty
                    >>= may (parseXMLList1 "member")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeEnvironmentManagedActionHistory

instance
  NFData
    DescribeEnvironmentManagedActionHistory

instance
  ToHeaders
    DescribeEnvironmentManagedActionHistory
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeEnvironmentManagedActionHistory
  where
  toPath = const "/"

instance
  ToQuery
    DescribeEnvironmentManagedActionHistory
  where
  toQuery DescribeEnvironmentManagedActionHistory' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeEnvironmentManagedActionHistory" ::
                 ByteString
             ),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _demahNextToken,
        "EnvironmentId" =: _demahEnvironmentId,
        "EnvironmentName" =: _demahEnvironmentName,
        "MaxItems" =: _demahMaxItems
      ]

-- | A result message containing a list of completed and failed managed actions.
--
--
--
-- /See:/ 'describeEnvironmentManagedActionHistoryResponse' smart constructor.
data DescribeEnvironmentManagedActionHistoryResponse = DescribeEnvironmentManagedActionHistoryResponse'
  { _demahrrsNextToken ::
      !( Maybe
           Text
       ),
    _demahrrsManagedActionHistoryItems ::
      !( Maybe
           ( List1
               ManagedActionHistoryItem
           )
       ),
    _demahrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEnvironmentManagedActionHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'demahrrsNextToken' - A pagination token that you pass to 'DescribeEnvironmentManagedActionHistory' to get the next page of results.
--
-- * 'demahrrsManagedActionHistoryItems' - A list of completed and failed managed actions.
--
-- * 'demahrrsResponseStatus' - -- | The response status code.
describeEnvironmentManagedActionHistoryResponse ::
  -- | 'demahrrsResponseStatus'
  Int ->
  DescribeEnvironmentManagedActionHistoryResponse
describeEnvironmentManagedActionHistoryResponse
  pResponseStatus_ =
    DescribeEnvironmentManagedActionHistoryResponse'
      { _demahrrsNextToken =
          Nothing,
        _demahrrsManagedActionHistoryItems =
          Nothing,
        _demahrrsResponseStatus =
          pResponseStatus_
      }

-- | A pagination token that you pass to 'DescribeEnvironmentManagedActionHistory' to get the next page of results.
demahrrsNextToken :: Lens' DescribeEnvironmentManagedActionHistoryResponse (Maybe Text)
demahrrsNextToken = lens _demahrrsNextToken (\s a -> s {_demahrrsNextToken = a})

-- | A list of completed and failed managed actions.
demahrrsManagedActionHistoryItems :: Lens' DescribeEnvironmentManagedActionHistoryResponse (Maybe (NonEmpty ManagedActionHistoryItem))
demahrrsManagedActionHistoryItems = lens _demahrrsManagedActionHistoryItems (\s a -> s {_demahrrsManagedActionHistoryItems = a}) . mapping _List1

-- | -- | The response status code.
demahrrsResponseStatus :: Lens' DescribeEnvironmentManagedActionHistoryResponse Int
demahrrsResponseStatus = lens _demahrrsResponseStatus (\s a -> s {_demahrrsResponseStatus = a})

instance
  NFData
    DescribeEnvironmentManagedActionHistoryResponse
