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
-- Module      : Network.AWS.SSM.DescribeEffectiveInstanceAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- All associations for the instance(s).
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeEffectiveInstanceAssociations
  ( -- * Creating a Request
    describeEffectiveInstanceAssociations,
    DescribeEffectiveInstanceAssociations,

    -- * Request Lenses
    deiaNextToken,
    deiaMaxResults,
    deiaInstanceId,

    -- * Destructuring the Response
    describeEffectiveInstanceAssociationsResponse,
    DescribeEffectiveInstanceAssociationsResponse,

    -- * Response Lenses
    deiarrsNextToken,
    deiarrsAssociations,
    deiarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeEffectiveInstanceAssociations' smart constructor.
data DescribeEffectiveInstanceAssociations = DescribeEffectiveInstanceAssociations'
  { _deiaNextToken ::
      !( Maybe
           Text
       ),
    _deiaMaxResults ::
      !( Maybe
           Nat
       ),
    _deiaInstanceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEffectiveInstanceAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deiaNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'deiaMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'deiaInstanceId' - The instance ID for which you want to view all associations.
describeEffectiveInstanceAssociations ::
  -- | 'deiaInstanceId'
  Text ->
  DescribeEffectiveInstanceAssociations
describeEffectiveInstanceAssociations pInstanceId_ =
  DescribeEffectiveInstanceAssociations'
    { _deiaNextToken =
        Nothing,
      _deiaMaxResults = Nothing,
      _deiaInstanceId = pInstanceId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
deiaNextToken :: Lens' DescribeEffectiveInstanceAssociations (Maybe Text)
deiaNextToken = lens _deiaNextToken (\s a -> s {_deiaNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
deiaMaxResults :: Lens' DescribeEffectiveInstanceAssociations (Maybe Natural)
deiaMaxResults = lens _deiaMaxResults (\s a -> s {_deiaMaxResults = a}) . mapping _Nat

-- | The instance ID for which you want to view all associations.
deiaInstanceId :: Lens' DescribeEffectiveInstanceAssociations Text
deiaInstanceId = lens _deiaInstanceId (\s a -> s {_deiaInstanceId = a})

instance
  AWSPager
    DescribeEffectiveInstanceAssociations
  where
  page rq rs
    | stop (rs ^. deiarrsNextToken) = Nothing
    | stop (rs ^. deiarrsAssociations) = Nothing
    | otherwise =
      Just $ rq & deiaNextToken .~ rs ^. deiarrsNextToken

instance
  AWSRequest
    DescribeEffectiveInstanceAssociations
  where
  type
    Rs DescribeEffectiveInstanceAssociations =
      DescribeEffectiveInstanceAssociationsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeEffectiveInstanceAssociationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Associations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeEffectiveInstanceAssociations

instance NFData DescribeEffectiveInstanceAssociations

instance
  ToHeaders
    DescribeEffectiveInstanceAssociations
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeEffectiveInstanceAssociations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEffectiveInstanceAssociations where
  toJSON DescribeEffectiveInstanceAssociations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _deiaNextToken,
            ("MaxResults" .=) <$> _deiaMaxResults,
            Just ("InstanceId" .= _deiaInstanceId)
          ]
      )

instance ToPath DescribeEffectiveInstanceAssociations where
  toPath = const "/"

instance
  ToQuery
    DescribeEffectiveInstanceAssociations
  where
  toQuery = const mempty

-- | /See:/ 'describeEffectiveInstanceAssociationsResponse' smart constructor.
data DescribeEffectiveInstanceAssociationsResponse = DescribeEffectiveInstanceAssociationsResponse'
  { _deiarrsNextToken ::
      !( Maybe
           Text
       ),
    _deiarrsAssociations ::
      !( Maybe
           [InstanceAssociation]
       ),
    _deiarrsResponseStatus ::
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

-- | Creates a value of 'DescribeEffectiveInstanceAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deiarrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'deiarrsAssociations' - The associations for the requested instance.
--
-- * 'deiarrsResponseStatus' - -- | The response status code.
describeEffectiveInstanceAssociationsResponse ::
  -- | 'deiarrsResponseStatus'
  Int ->
  DescribeEffectiveInstanceAssociationsResponse
describeEffectiveInstanceAssociationsResponse
  pResponseStatus_ =
    DescribeEffectiveInstanceAssociationsResponse'
      { _deiarrsNextToken =
          Nothing,
        _deiarrsAssociations =
          Nothing,
        _deiarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
deiarrsNextToken :: Lens' DescribeEffectiveInstanceAssociationsResponse (Maybe Text)
deiarrsNextToken = lens _deiarrsNextToken (\s a -> s {_deiarrsNextToken = a})

-- | The associations for the requested instance.
deiarrsAssociations :: Lens' DescribeEffectiveInstanceAssociationsResponse [InstanceAssociation]
deiarrsAssociations = lens _deiarrsAssociations (\s a -> s {_deiarrsAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
deiarrsResponseStatus :: Lens' DescribeEffectiveInstanceAssociationsResponse Int
deiarrsResponseStatus = lens _deiarrsResponseStatus (\s a -> s {_deiarrsResponseStatus = a})

instance
  NFData
    DescribeEffectiveInstanceAssociationsResponse
