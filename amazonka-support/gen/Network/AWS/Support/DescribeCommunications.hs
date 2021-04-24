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
-- Module      : Network.AWS.Support.DescribeCommunications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns communications and attachments for one or more support cases. Use the @afterTime@ and @beforeTime@ parameters to filter by date. You can use the @caseId@ parameter to restrict the results to a specific case.
--
--
-- Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.
--
-- You can use the @maxResults@ and @nextToken@ parameters to control the pagination of the results. Set @maxResults@ to the number of cases that you want to display on each page, and use @nextToken@ to specify the resumption of pagination.
--
--
-- This operation returns paginated results.
module Network.AWS.Support.DescribeCommunications
  ( -- * Creating a Request
    describeCommunications,
    DescribeCommunications,

    -- * Request Lenses
    dcNextToken,
    dcMaxResults,
    dcBeforeTime,
    dcAfterTime,
    dcCaseId,

    -- * Destructuring the Response
    describeCommunicationsResponse,
    DescribeCommunicationsResponse,

    -- * Response Lenses
    drsNextToken,
    drsCommunications,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'describeCommunications' smart constructor.
data DescribeCommunications = DescribeCommunications'
  { _dcNextToken ::
      !(Maybe Text),
    _dcMaxResults ::
      !(Maybe Nat),
    _dcBeforeTime ::
      !(Maybe Text),
    _dcAfterTime ::
      !(Maybe Text),
    _dcCaseId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCommunications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcNextToken' - A resumption point for pagination.
--
-- * 'dcMaxResults' - The maximum number of results to return before paginating.
--
-- * 'dcBeforeTime' - The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
--
-- * 'dcAfterTime' - The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
--
-- * 'dcCaseId' - The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
describeCommunications ::
  -- | 'dcCaseId'
  Text ->
  DescribeCommunications
describeCommunications pCaseId_ =
  DescribeCommunications'
    { _dcNextToken = Nothing,
      _dcMaxResults = Nothing,
      _dcBeforeTime = Nothing,
      _dcAfterTime = Nothing,
      _dcCaseId = pCaseId_
    }

-- | A resumption point for pagination.
dcNextToken :: Lens' DescribeCommunications (Maybe Text)
dcNextToken = lens _dcNextToken (\s a -> s {_dcNextToken = a})

-- | The maximum number of results to return before paginating.
dcMaxResults :: Lens' DescribeCommunications (Maybe Natural)
dcMaxResults = lens _dcMaxResults (\s a -> s {_dcMaxResults = a}) . mapping _Nat

-- | The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
dcBeforeTime :: Lens' DescribeCommunications (Maybe Text)
dcBeforeTime = lens _dcBeforeTime (\s a -> s {_dcBeforeTime = a})

-- | The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
dcAfterTime :: Lens' DescribeCommunications (Maybe Text)
dcAfterTime = lens _dcAfterTime (\s a -> s {_dcAfterTime = a})

-- | The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
dcCaseId :: Lens' DescribeCommunications Text
dcCaseId = lens _dcCaseId (\s a -> s {_dcCaseId = a})

instance AWSPager DescribeCommunications where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsCommunications) = Nothing
    | otherwise =
      Just $ rq & dcNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeCommunications where
  type
    Rs DescribeCommunications =
      DescribeCommunicationsResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          DescribeCommunicationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "communications" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCommunications

instance NFData DescribeCommunications

instance ToHeaders DescribeCommunications where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSSupport_20130415.DescribeCommunications" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCommunications where
  toJSON DescribeCommunications' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dcNextToken,
            ("maxResults" .=) <$> _dcMaxResults,
            ("beforeTime" .=) <$> _dcBeforeTime,
            ("afterTime" .=) <$> _dcAfterTime,
            Just ("caseId" .= _dcCaseId)
          ]
      )

instance ToPath DescribeCommunications where
  toPath = const "/"

instance ToQuery DescribeCommunications where
  toQuery = const mempty

-- | The communications returned by the 'DescribeCommunications' operation.
--
--
--
-- /See:/ 'describeCommunicationsResponse' smart constructor.
data DescribeCommunicationsResponse = DescribeCommunicationsResponse'
  { _drsNextToken ::
      !( Maybe
           Text
       ),
    _drsCommunications ::
      !( Maybe
           [Communication]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeCommunicationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - A resumption point for pagination.
--
-- * 'drsCommunications' - The communications for the case.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeCommunicationsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeCommunicationsResponse
describeCommunicationsResponse pResponseStatus_ =
  DescribeCommunicationsResponse'
    { _drsNextToken =
        Nothing,
      _drsCommunications = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | A resumption point for pagination.
drsNextToken :: Lens' DescribeCommunicationsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | The communications for the case.
drsCommunications :: Lens' DescribeCommunicationsResponse [Communication]
drsCommunications = lens _drsCommunications (\s a -> s {_drsCommunications = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeCommunicationsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeCommunicationsResponse
