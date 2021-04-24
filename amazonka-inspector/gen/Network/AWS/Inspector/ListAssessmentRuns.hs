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
-- Module      : Network.AWS.Inspector.ListAssessmentRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListAssessmentRuns
  ( -- * Creating a Request
    listAssessmentRuns,
    ListAssessmentRuns,

    -- * Request Lenses
    larNextToken,
    larMaxResults,
    larFilter,
    larAssessmentTemplateARNs,

    -- * Destructuring the Response
    listAssessmentRunsResponse,
    ListAssessmentRunsResponse,

    -- * Response Lenses
    larrrsNextToken,
    larrrsResponseStatus,
    larrrsAssessmentRunARNs,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssessmentRuns' smart constructor.
data ListAssessmentRuns = ListAssessmentRuns'
  { _larNextToken ::
      !(Maybe Text),
    _larMaxResults :: !(Maybe Int),
    _larFilter ::
      !(Maybe AssessmentRunFilter),
    _larAssessmentTemplateARNs ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAssessmentRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentRuns__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- * 'larMaxResults' - You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
--
-- * 'larFilter' - You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
--
-- * 'larAssessmentTemplateARNs' - The ARNs that specify the assessment templates whose assessment runs you want to list.
listAssessmentRuns ::
  ListAssessmentRuns
listAssessmentRuns =
  ListAssessmentRuns'
    { _larNextToken = Nothing,
      _larMaxResults = Nothing,
      _larFilter = Nothing,
      _larAssessmentTemplateARNs = Nothing
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentRuns__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
larNextToken :: Lens' ListAssessmentRuns (Maybe Text)
larNextToken = lens _larNextToken (\s a -> s {_larNextToken = a})

-- | You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
larMaxResults :: Lens' ListAssessmentRuns (Maybe Int)
larMaxResults = lens _larMaxResults (\s a -> s {_larMaxResults = a})

-- | You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
larFilter :: Lens' ListAssessmentRuns (Maybe AssessmentRunFilter)
larFilter = lens _larFilter (\s a -> s {_larFilter = a})

-- | The ARNs that specify the assessment templates whose assessment runs you want to list.
larAssessmentTemplateARNs :: Lens' ListAssessmentRuns [Text]
larAssessmentTemplateARNs = lens _larAssessmentTemplateARNs (\s a -> s {_larAssessmentTemplateARNs = a}) . _Default . _Coerce

instance AWSPager ListAssessmentRuns where
  page rq rs
    | stop (rs ^. larrrsNextToken) = Nothing
    | stop (rs ^. larrrsAssessmentRunARNs) = Nothing
    | otherwise =
      Just $ rq & larNextToken .~ rs ^. larrrsNextToken

instance AWSRequest ListAssessmentRuns where
  type
    Rs ListAssessmentRuns =
      ListAssessmentRunsResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          ListAssessmentRunsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "assessmentRunArns" .!@ mempty)
      )

instance Hashable ListAssessmentRuns

instance NFData ListAssessmentRuns

instance ToHeaders ListAssessmentRuns where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.ListAssessmentRuns" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssessmentRuns where
  toJSON ListAssessmentRuns' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _larNextToken,
            ("maxResults" .=) <$> _larMaxResults,
            ("filter" .=) <$> _larFilter,
            ("assessmentTemplateArns" .=)
              <$> _larAssessmentTemplateARNs
          ]
      )

instance ToPath ListAssessmentRuns where
  toPath = const "/"

instance ToQuery ListAssessmentRuns where
  toQuery = const mempty

-- | /See:/ 'listAssessmentRunsResponse' smart constructor.
data ListAssessmentRunsResponse = ListAssessmentRunsResponse'
  { _larrrsNextToken ::
      !(Maybe Text),
    _larrrsResponseStatus ::
      !Int,
    _larrrsAssessmentRunARNs ::
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

-- | Creates a value of 'ListAssessmentRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrrsNextToken' - When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'larrrsResponseStatus' - -- | The response status code.
--
-- * 'larrrsAssessmentRunARNs' - A list of ARNs that specifies the assessment runs that are returned by the action.
listAssessmentRunsResponse ::
  -- | 'larrrsResponseStatus'
  Int ->
  ListAssessmentRunsResponse
listAssessmentRunsResponse pResponseStatus_ =
  ListAssessmentRunsResponse'
    { _larrrsNextToken =
        Nothing,
      _larrrsResponseStatus = pResponseStatus_,
      _larrrsAssessmentRunARNs = mempty
    }

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
larrrsNextToken :: Lens' ListAssessmentRunsResponse (Maybe Text)
larrrsNextToken = lens _larrrsNextToken (\s a -> s {_larrrsNextToken = a})

-- | -- | The response status code.
larrrsResponseStatus :: Lens' ListAssessmentRunsResponse Int
larrrsResponseStatus = lens _larrrsResponseStatus (\s a -> s {_larrrsResponseStatus = a})

-- | A list of ARNs that specifies the assessment runs that are returned by the action.
larrrsAssessmentRunARNs :: Lens' ListAssessmentRunsResponse [Text]
larrrsAssessmentRunARNs = lens _larrrsAssessmentRunARNs (\s a -> s {_larrrsAssessmentRunARNs = a}) . _Coerce

instance NFData ListAssessmentRunsResponse
