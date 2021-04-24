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
-- Module      : Network.AWS.Support.DescribeCases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of cases that you specify by passing one or more case IDs. You can use the @afterTime@ and @beforeTime@ parameters to filter the cases by date. You can set values for the @includeResolvedCases@ and @includeCommunications@ parameters to specify how much information to return.
--
--
-- The response returns the following in JSON format:
--
--     * One or more <https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html CaseDetails> data types.
--
--     * One or more @nextToken@ values, which specify where to paginate the returned records represented by the @CaseDetails@ objects.
--
--
--
-- Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.
--
--
-- This operation returns paginated results.
module Network.AWS.Support.DescribeCases
  ( -- * Creating a Request
    describeCases,
    DescribeCases,

    -- * Request Lenses
    dDisplayId,
    dIncludeCommunications,
    dNextToken,
    dMaxResults,
    dCaseIdList,
    dIncludeResolvedCases,
    dBeforeTime,
    dAfterTime,
    dLanguage,

    -- * Destructuring the Response
    describeCasesResponse,
    DescribeCasesResponse,

    -- * Response Lenses
    dcrrsNextToken,
    dcrrsCases,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'describeCases' smart constructor.
data DescribeCases = DescribeCases'
  { _dDisplayId ::
      !(Maybe Text),
    _dIncludeCommunications :: !(Maybe Bool),
    _dNextToken :: !(Maybe Text),
    _dMaxResults :: !(Maybe Nat),
    _dCaseIdList :: !(Maybe [Text]),
    _dIncludeResolvedCases :: !(Maybe Bool),
    _dBeforeTime :: !(Maybe Text),
    _dAfterTime :: !(Maybe Text),
    _dLanguage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDisplayId' - The ID displayed for a case in the AWS Support Center user interface.
--
-- * 'dIncludeCommunications' - Specifies whether to include communications in the @DescribeCases@ response. By default, communications are incuded.
--
-- * 'dNextToken' - A resumption point for pagination.
--
-- * 'dMaxResults' - The maximum number of results to return before paginating.
--
-- * 'dCaseIdList' - A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.
--
-- * 'dIncludeResolvedCases' - Specifies whether to include resolved support cases in the @DescribeCases@ response. By default, resolved cases aren't included.
--
-- * 'dBeforeTime' - The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
--
-- * 'dAfterTime' - The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
--
-- * 'dLanguage' - The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
describeCases ::
  DescribeCases
describeCases =
  DescribeCases'
    { _dDisplayId = Nothing,
      _dIncludeCommunications = Nothing,
      _dNextToken = Nothing,
      _dMaxResults = Nothing,
      _dCaseIdList = Nothing,
      _dIncludeResolvedCases = Nothing,
      _dBeforeTime = Nothing,
      _dAfterTime = Nothing,
      _dLanguage = Nothing
    }

-- | The ID displayed for a case in the AWS Support Center user interface.
dDisplayId :: Lens' DescribeCases (Maybe Text)
dDisplayId = lens _dDisplayId (\s a -> s {_dDisplayId = a})

-- | Specifies whether to include communications in the @DescribeCases@ response. By default, communications are incuded.
dIncludeCommunications :: Lens' DescribeCases (Maybe Bool)
dIncludeCommunications = lens _dIncludeCommunications (\s a -> s {_dIncludeCommunications = a})

-- | A resumption point for pagination.
dNextToken :: Lens' DescribeCases (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | The maximum number of results to return before paginating.
dMaxResults :: Lens' DescribeCases (Maybe Natural)
dMaxResults = lens _dMaxResults (\s a -> s {_dMaxResults = a}) . mapping _Nat

-- | A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.
dCaseIdList :: Lens' DescribeCases [Text]
dCaseIdList = lens _dCaseIdList (\s a -> s {_dCaseIdList = a}) . _Default . _Coerce

-- | Specifies whether to include resolved support cases in the @DescribeCases@ response. By default, resolved cases aren't included.
dIncludeResolvedCases :: Lens' DescribeCases (Maybe Bool)
dIncludeResolvedCases = lens _dIncludeResolvedCases (\s a -> s {_dIncludeResolvedCases = a})

-- | The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
dBeforeTime :: Lens' DescribeCases (Maybe Text)
dBeforeTime = lens _dBeforeTime (\s a -> s {_dBeforeTime = a})

-- | The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
dAfterTime :: Lens' DescribeCases (Maybe Text)
dAfterTime = lens _dAfterTime (\s a -> s {_dAfterTime = a})

-- | The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
dLanguage :: Lens' DescribeCases (Maybe Text)
dLanguage = lens _dLanguage (\s a -> s {_dLanguage = a})

instance AWSPager DescribeCases where
  page rq rs
    | stop (rs ^. dcrrsNextToken) = Nothing
    | stop (rs ^. dcrrsCases) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. dcrrsNextToken

instance AWSRequest DescribeCases where
  type Rs DescribeCases = DescribeCasesResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          DescribeCasesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "cases" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCases

instance NFData DescribeCases

instance ToHeaders DescribeCases where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSSupport_20130415.DescribeCases" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCases where
  toJSON DescribeCases' {..} =
    object
      ( catMaybes
          [ ("displayId" .=) <$> _dDisplayId,
            ("includeCommunications" .=)
              <$> _dIncludeCommunications,
            ("nextToken" .=) <$> _dNextToken,
            ("maxResults" .=) <$> _dMaxResults,
            ("caseIdList" .=) <$> _dCaseIdList,
            ("includeResolvedCases" .=)
              <$> _dIncludeResolvedCases,
            ("beforeTime" .=) <$> _dBeforeTime,
            ("afterTime" .=) <$> _dAfterTime,
            ("language" .=) <$> _dLanguage
          ]
      )

instance ToPath DescribeCases where
  toPath = const "/"

instance ToQuery DescribeCases where
  toQuery = const mempty

-- | Returns an array of <https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html CaseDetails> objects and a @nextToken@ that defines a point for pagination in the result set.
--
--
--
-- /See:/ 'describeCasesResponse' smart constructor.
data DescribeCasesResponse = DescribeCasesResponse'
  { _dcrrsNextToken ::
      !(Maybe Text),
    _dcrrsCases ::
      !(Maybe [CaseDetails]),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsNextToken' - A resumption point for pagination.
--
-- * 'dcrrsCases' - The details for the cases that match the request.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeCasesResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeCasesResponse
describeCasesResponse pResponseStatus_ =
  DescribeCasesResponse'
    { _dcrrsNextToken = Nothing,
      _dcrrsCases = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | A resumption point for pagination.
dcrrsNextToken :: Lens' DescribeCasesResponse (Maybe Text)
dcrrsNextToken = lens _dcrrsNextToken (\s a -> s {_dcrrsNextToken = a})

-- | The details for the cases that match the request.
dcrrsCases :: Lens' DescribeCasesResponse [CaseDetails]
dcrrsCases = lens _dcrrsCases (\s a -> s {_dcrrsCases = a}) . _Default . _Coerce

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeCasesResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeCasesResponse
