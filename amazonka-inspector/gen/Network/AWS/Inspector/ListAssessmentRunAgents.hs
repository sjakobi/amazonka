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
-- Module      : Network.AWS.Inspector.ListAssessmentRunAgents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListAssessmentRunAgents
  ( -- * Creating a Request
    listAssessmentRunAgents,
    ListAssessmentRunAgents,

    -- * Request Lenses
    laraNextToken,
    laraMaxResults,
    laraFilter,
    laraAssessmentRunARN,

    -- * Destructuring the Response
    listAssessmentRunAgentsResponse,
    ListAssessmentRunAgentsResponse,

    -- * Response Lenses
    lararrsNextToken,
    lararrsResponseStatus,
    lararrsAssessmentRunAgents,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssessmentRunAgents' smart constructor.
data ListAssessmentRunAgents = ListAssessmentRunAgents'
  { _laraNextToken ::
      !(Maybe Text),
    _laraMaxResults ::
      !(Maybe Int),
    _laraFilter ::
      !(Maybe AgentFilter),
    _laraAssessmentRunARN ::
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

-- | Creates a value of 'ListAssessmentRunAgents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laraNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentRunAgents__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- * 'laraMaxResults' - You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
--
-- * 'laraFilter' - You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
--
-- * 'laraAssessmentRunARN' - The ARN that specifies the assessment run whose agents you want to list.
listAssessmentRunAgents ::
  -- | 'laraAssessmentRunARN'
  Text ->
  ListAssessmentRunAgents
listAssessmentRunAgents pAssessmentRunARN_ =
  ListAssessmentRunAgents'
    { _laraNextToken = Nothing,
      _laraMaxResults = Nothing,
      _laraFilter = Nothing,
      _laraAssessmentRunARN = pAssessmentRunARN_
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentRunAgents__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
laraNextToken :: Lens' ListAssessmentRunAgents (Maybe Text)
laraNextToken = lens _laraNextToken (\s a -> s {_laraNextToken = a})

-- | You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
laraMaxResults :: Lens' ListAssessmentRunAgents (Maybe Int)
laraMaxResults = lens _laraMaxResults (\s a -> s {_laraMaxResults = a})

-- | You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
laraFilter :: Lens' ListAssessmentRunAgents (Maybe AgentFilter)
laraFilter = lens _laraFilter (\s a -> s {_laraFilter = a})

-- | The ARN that specifies the assessment run whose agents you want to list.
laraAssessmentRunARN :: Lens' ListAssessmentRunAgents Text
laraAssessmentRunARN = lens _laraAssessmentRunARN (\s a -> s {_laraAssessmentRunARN = a})

instance AWSPager ListAssessmentRunAgents where
  page rq rs
    | stop (rs ^. lararrsNextToken) = Nothing
    | stop (rs ^. lararrsAssessmentRunAgents) = Nothing
    | otherwise =
      Just $ rq & laraNextToken .~ rs ^. lararrsNextToken

instance AWSRequest ListAssessmentRunAgents where
  type
    Rs ListAssessmentRunAgents =
      ListAssessmentRunAgentsResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          ListAssessmentRunAgentsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "assessmentRunAgents" .!@ mempty)
      )

instance Hashable ListAssessmentRunAgents

instance NFData ListAssessmentRunAgents

instance ToHeaders ListAssessmentRunAgents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.ListAssessmentRunAgents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssessmentRunAgents where
  toJSON ListAssessmentRunAgents' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _laraNextToken,
            ("maxResults" .=) <$> _laraMaxResults,
            ("filter" .=) <$> _laraFilter,
            Just ("assessmentRunArn" .= _laraAssessmentRunARN)
          ]
      )

instance ToPath ListAssessmentRunAgents where
  toPath = const "/"

instance ToQuery ListAssessmentRunAgents where
  toQuery = const mempty

-- | /See:/ 'listAssessmentRunAgentsResponse' smart constructor.
data ListAssessmentRunAgentsResponse = ListAssessmentRunAgentsResponse'
  { _lararrsNextToken ::
      !( Maybe
           Text
       ),
    _lararrsResponseStatus ::
      !Int,
    _lararrsAssessmentRunAgents ::
      ![AssessmentRunAgent]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAssessmentRunAgentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lararrsNextToken' - When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'lararrsResponseStatus' - -- | The response status code.
--
-- * 'lararrsAssessmentRunAgents' - A list of ARNs that specifies the agents returned by the action.
listAssessmentRunAgentsResponse ::
  -- | 'lararrsResponseStatus'
  Int ->
  ListAssessmentRunAgentsResponse
listAssessmentRunAgentsResponse pResponseStatus_ =
  ListAssessmentRunAgentsResponse'
    { _lararrsNextToken =
        Nothing,
      _lararrsResponseStatus = pResponseStatus_,
      _lararrsAssessmentRunAgents = mempty
    }

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
lararrsNextToken :: Lens' ListAssessmentRunAgentsResponse (Maybe Text)
lararrsNextToken = lens _lararrsNextToken (\s a -> s {_lararrsNextToken = a})

-- | -- | The response status code.
lararrsResponseStatus :: Lens' ListAssessmentRunAgentsResponse Int
lararrsResponseStatus = lens _lararrsResponseStatus (\s a -> s {_lararrsResponseStatus = a})

-- | A list of ARNs that specifies the agents returned by the action.
lararrsAssessmentRunAgents :: Lens' ListAssessmentRunAgentsResponse [AssessmentRunAgent]
lararrsAssessmentRunAgents = lens _lararrsAssessmentRunAgents (\s a -> s {_lararrsAssessmentRunAgents = a}) . _Coerce

instance NFData ListAssessmentRunAgentsResponse
