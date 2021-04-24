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
-- Module      : Network.AWS.SSM.DescribeActivations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeActivations
  ( -- * Creating a Request
    describeActivations,
    DescribeActivations,

    -- * Request Lenses
    daNextToken,
    daMaxResults,
    daFilters,

    -- * Destructuring the Response
    describeActivationsResponse,
    DescribeActivationsResponse,

    -- * Response Lenses
    dararsNextToken,
    dararsActivationList,
    dararsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeActivations' smart constructor.
data DescribeActivations = DescribeActivations'
  { _daNextToken ::
      !(Maybe Text),
    _daMaxResults :: !(Maybe Nat),
    _daFilters ::
      !( Maybe
           [DescribeActivationsFilter]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeActivations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'daMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'daFilters' - A filter to view information about your activations.
describeActivations ::
  DescribeActivations
describeActivations =
  DescribeActivations'
    { _daNextToken = Nothing,
      _daMaxResults = Nothing,
      _daFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
daNextToken :: Lens' DescribeActivations (Maybe Text)
daNextToken = lens _daNextToken (\s a -> s {_daNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
daMaxResults :: Lens' DescribeActivations (Maybe Natural)
daMaxResults = lens _daMaxResults (\s a -> s {_daMaxResults = a}) . mapping _Nat

-- | A filter to view information about your activations.
daFilters :: Lens' DescribeActivations [DescribeActivationsFilter]
daFilters = lens _daFilters (\s a -> s {_daFilters = a}) . _Default . _Coerce

instance AWSPager DescribeActivations where
  page rq rs
    | stop (rs ^. dararsNextToken) = Nothing
    | stop (rs ^. dararsActivationList) = Nothing
    | otherwise =
      Just $ rq & daNextToken .~ rs ^. dararsNextToken

instance AWSRequest DescribeActivations where
  type
    Rs DescribeActivations =
      DescribeActivationsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeActivationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ActivationList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeActivations

instance NFData DescribeActivations

instance ToHeaders DescribeActivations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribeActivations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeActivations where
  toJSON DescribeActivations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _daNextToken,
            ("MaxResults" .=) <$> _daMaxResults,
            ("Filters" .=) <$> _daFilters
          ]
      )

instance ToPath DescribeActivations where
  toPath = const "/"

instance ToQuery DescribeActivations where
  toQuery = const mempty

-- | /See:/ 'describeActivationsResponse' smart constructor.
data DescribeActivationsResponse = DescribeActivationsResponse'
  { _dararsNextToken ::
      !(Maybe Text),
    _dararsActivationList ::
      !( Maybe
           [Activation]
       ),
    _dararsResponseStatus ::
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

-- | Creates a value of 'DescribeActivationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dararsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'dararsActivationList' - A list of activations for your AWS account.
--
-- * 'dararsResponseStatus' - -- | The response status code.
describeActivationsResponse ::
  -- | 'dararsResponseStatus'
  Int ->
  DescribeActivationsResponse
describeActivationsResponse pResponseStatus_ =
  DescribeActivationsResponse'
    { _dararsNextToken =
        Nothing,
      _dararsActivationList = Nothing,
      _dararsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
dararsNextToken :: Lens' DescribeActivationsResponse (Maybe Text)
dararsNextToken = lens _dararsNextToken (\s a -> s {_dararsNextToken = a})

-- | A list of activations for your AWS account.
dararsActivationList :: Lens' DescribeActivationsResponse [Activation]
dararsActivationList = lens _dararsActivationList (\s a -> s {_dararsActivationList = a}) . _Default . _Coerce

-- | -- | The response status code.
dararsResponseStatus :: Lens' DescribeActivationsResponse Int
dararsResponseStatus = lens _dararsResponseStatus (\s a -> s {_dararsResponseStatus = a})

instance NFData DescribeActivationsResponse
