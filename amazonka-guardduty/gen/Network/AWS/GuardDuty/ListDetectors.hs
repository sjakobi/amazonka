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
-- Module      : Network.AWS.GuardDuty.ListDetectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists detectorIds of all the existing Amazon GuardDuty detector resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.GuardDuty.ListDetectors
  ( -- * Creating a Request
    listDetectors,
    ListDetectors,

    -- * Request Lenses
    ldNextToken,
    ldMaxResults,

    -- * Destructuring the Response
    listDetectorsResponse,
    ListDetectorsResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsResponseStatus,
    ldrrsDetectorIds,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDetectors' smart constructor.
data ListDetectors = ListDetectors'
  { _ldNextToken ::
      !(Maybe Text),
    _ldMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDetectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
--
-- * 'ldMaxResults' - You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.
listDetectors ::
  ListDetectors
listDetectors =
  ListDetectors'
    { _ldNextToken = Nothing,
      _ldMaxResults = Nothing
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
ldNextToken :: Lens' ListDetectors (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.
ldMaxResults :: Lens' ListDetectors (Maybe Natural)
ldMaxResults = lens _ldMaxResults (\s a -> s {_ldMaxResults = a}) . mapping _Nat

instance AWSPager ListDetectors where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDetectorIds) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDetectors where
  type Rs ListDetectors = ListDetectorsResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          ListDetectorsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "detectorIds" .!@ mempty)
      )

instance Hashable ListDetectors

instance NFData ListDetectors

instance ToHeaders ListDetectors where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListDetectors where
  toPath = const "/detector"

instance ToQuery ListDetectors where
  toQuery ListDetectors' {..} =
    mconcat
      [ "nextToken" =: _ldNextToken,
        "maxResults" =: _ldMaxResults
      ]

-- | /See:/ 'listDetectorsResponse' smart constructor.
data ListDetectorsResponse = ListDetectorsResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsResponseStatus ::
      !Int,
    _ldrrsDetectorIds ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDetectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - The pagination parameter to be used on the next list operation to retrieve more items.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
--
-- * 'ldrrsDetectorIds' - A list of detector IDs.
listDetectorsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDetectorsResponse
listDetectorsResponse pResponseStatus_ =
  ListDetectorsResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsResponseStatus = pResponseStatus_,
      _ldrrsDetectorIds = mempty
    }

-- | The pagination parameter to be used on the next list operation to retrieve more items.
ldrrsNextToken :: Lens' ListDetectorsResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDetectorsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

-- | A list of detector IDs.
ldrrsDetectorIds :: Lens' ListDetectorsResponse [Text]
ldrrsDetectorIds = lens _ldrrsDetectorIds (\s a -> s {_ldrrsDetectorIds = a}) . _Coerce

instance NFData ListDetectorsResponse
