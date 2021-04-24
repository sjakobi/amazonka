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
-- Module      : Network.AWS.EC2.DescribeIAMInstanceProfileAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your IAM instance profile associations.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeIAMInstanceProfileAssociations
  ( -- * Creating a Request
    describeIAMInstanceProfileAssociations,
    DescribeIAMInstanceProfileAssociations,

    -- * Request Lenses
    diapaNextToken,
    diapaMaxResults,
    diapaAssociationIds,
    diapaFilters,

    -- * Destructuring the Response
    describeIAMInstanceProfileAssociationsResponse,
    DescribeIAMInstanceProfileAssociationsResponse,

    -- * Response Lenses
    diaparrsNextToken,
    diaparrsIAMInstanceProfileAssociations,
    diaparrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeIAMInstanceProfileAssociations' smart constructor.
data DescribeIAMInstanceProfileAssociations = DescribeIAMInstanceProfileAssociations'
  { _diapaNextToken ::
      !( Maybe
           Text
       ),
    _diapaMaxResults ::
      !( Maybe
           Nat
       ),
    _diapaAssociationIds ::
      !( Maybe
           [Text]
       ),
    _diapaFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeIAMInstanceProfileAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diapaNextToken' - The token to request the next page of results.
--
-- * 'diapaMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'diapaAssociationIds' - The IAM instance profile associations.
--
-- * 'diapaFilters' - The filters.     * @instance-id@ - The ID of the instance.     * @state@ - The state of the association (@associating@ | @associated@ | @disassociating@ ).
describeIAMInstanceProfileAssociations ::
  DescribeIAMInstanceProfileAssociations
describeIAMInstanceProfileAssociations =
  DescribeIAMInstanceProfileAssociations'
    { _diapaNextToken =
        Nothing,
      _diapaMaxResults = Nothing,
      _diapaAssociationIds = Nothing,
      _diapaFilters = Nothing
    }

-- | The token to request the next page of results.
diapaNextToken :: Lens' DescribeIAMInstanceProfileAssociations (Maybe Text)
diapaNextToken = lens _diapaNextToken (\s a -> s {_diapaNextToken = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
diapaMaxResults :: Lens' DescribeIAMInstanceProfileAssociations (Maybe Natural)
diapaMaxResults = lens _diapaMaxResults (\s a -> s {_diapaMaxResults = a}) . mapping _Nat

-- | The IAM instance profile associations.
diapaAssociationIds :: Lens' DescribeIAMInstanceProfileAssociations [Text]
diapaAssociationIds = lens _diapaAssociationIds (\s a -> s {_diapaAssociationIds = a}) . _Default . _Coerce

-- | The filters.     * @instance-id@ - The ID of the instance.     * @state@ - The state of the association (@associating@ | @associated@ | @disassociating@ ).
diapaFilters :: Lens' DescribeIAMInstanceProfileAssociations [Filter]
diapaFilters = lens _diapaFilters (\s a -> s {_diapaFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeIAMInstanceProfileAssociations
  where
  page rq rs
    | stop (rs ^. diaparrsNextToken) = Nothing
    | stop (rs ^. diaparrsIAMInstanceProfileAssociations) =
      Nothing
    | otherwise =
      Just $ rq & diapaNextToken .~ rs ^. diaparrsNextToken

instance
  AWSRequest
    DescribeIAMInstanceProfileAssociations
  where
  type
    Rs DescribeIAMInstanceProfileAssociations =
      DescribeIAMInstanceProfileAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeIAMInstanceProfileAssociationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "iamInstanceProfileAssociationSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeIAMInstanceProfileAssociations

instance
  NFData
    DescribeIAMInstanceProfileAssociations

instance
  ToHeaders
    DescribeIAMInstanceProfileAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeIAMInstanceProfileAssociations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeIAMInstanceProfileAssociations
  where
  toQuery DescribeIAMInstanceProfileAssociations' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeIamInstanceProfileAssociations" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _diapaNextToken,
        "MaxResults" =: _diapaMaxResults,
        toQuery
          ( toQueryList "AssociationId"
              <$> _diapaAssociationIds
          ),
        toQuery (toQueryList "Filter" <$> _diapaFilters)
      ]

-- | /See:/ 'describeIAMInstanceProfileAssociationsResponse' smart constructor.
data DescribeIAMInstanceProfileAssociationsResponse = DescribeIAMInstanceProfileAssociationsResponse'
  { _diaparrsNextToken ::
      !( Maybe
           Text
       ),
    _diaparrsIAMInstanceProfileAssociations ::
      !( Maybe
           [IAMInstanceProfileAssociation]
       ),
    _diaparrsResponseStatus ::
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

-- | Creates a value of 'DescribeIAMInstanceProfileAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaparrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'diaparrsIAMInstanceProfileAssociations' - Information about the IAM instance profile associations.
--
-- * 'diaparrsResponseStatus' - -- | The response status code.
describeIAMInstanceProfileAssociationsResponse ::
  -- | 'diaparrsResponseStatus'
  Int ->
  DescribeIAMInstanceProfileAssociationsResponse
describeIAMInstanceProfileAssociationsResponse
  pResponseStatus_ =
    DescribeIAMInstanceProfileAssociationsResponse'
      { _diaparrsNextToken =
          Nothing,
        _diaparrsIAMInstanceProfileAssociations =
          Nothing,
        _diaparrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
diaparrsNextToken :: Lens' DescribeIAMInstanceProfileAssociationsResponse (Maybe Text)
diaparrsNextToken = lens _diaparrsNextToken (\s a -> s {_diaparrsNextToken = a})

-- | Information about the IAM instance profile associations.
diaparrsIAMInstanceProfileAssociations :: Lens' DescribeIAMInstanceProfileAssociationsResponse [IAMInstanceProfileAssociation]
diaparrsIAMInstanceProfileAssociations = lens _diaparrsIAMInstanceProfileAssociations (\s a -> s {_diaparrsIAMInstanceProfileAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
diaparrsResponseStatus :: Lens' DescribeIAMInstanceProfileAssociationsResponse Int
diaparrsResponseStatus = lens _diaparrsResponseStatus (\s a -> s {_diaparrsResponseStatus = a})

instance
  NFData
    DescribeIAMInstanceProfileAssociationsResponse
