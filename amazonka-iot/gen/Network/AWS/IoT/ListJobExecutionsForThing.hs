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
-- Module      : Network.AWS.IoT.ListJobExecutionsForThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the job executions for the specified thing.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListJobExecutionsForThing
  ( -- * Creating a Request
    listJobExecutionsForThing,
    ListJobExecutionsForThing,

    -- * Request Lenses
    ljeftNextToken,
    ljeftStatus,
    ljeftMaxResults,
    ljeftNamespaceId,
    ljeftThingName,

    -- * Destructuring the Response
    listJobExecutionsForThingResponse,
    ListJobExecutionsForThingResponse,

    -- * Response Lenses
    ljeftrrsNextToken,
    ljeftrrsExecutionSummaries,
    ljeftrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJobExecutionsForThing' smart constructor.
data ListJobExecutionsForThing = ListJobExecutionsForThing'
  { _ljeftNextToken ::
      !(Maybe Text),
    _ljeftStatus ::
      !( Maybe
           JobExecutionStatus
       ),
    _ljeftMaxResults ::
      !(Maybe Nat),
    _ljeftNamespaceId ::
      !(Maybe Text),
    _ljeftThingName ::
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

-- | Creates a value of 'ListJobExecutionsForThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljeftNextToken' - The token to retrieve the next set of results.
--
-- * 'ljeftStatus' - An optional filter that lets you search for jobs that have the specified status.
--
-- * 'ljeftMaxResults' - The maximum number of results to be returned per request.
--
-- * 'ljeftNamespaceId' - The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- * 'ljeftThingName' - The thing name.
listJobExecutionsForThing ::
  -- | 'ljeftThingName'
  Text ->
  ListJobExecutionsForThing
listJobExecutionsForThing pThingName_ =
  ListJobExecutionsForThing'
    { _ljeftNextToken =
        Nothing,
      _ljeftStatus = Nothing,
      _ljeftMaxResults = Nothing,
      _ljeftNamespaceId = Nothing,
      _ljeftThingName = pThingName_
    }

-- | The token to retrieve the next set of results.
ljeftNextToken :: Lens' ListJobExecutionsForThing (Maybe Text)
ljeftNextToken = lens _ljeftNextToken (\s a -> s {_ljeftNextToken = a})

-- | An optional filter that lets you search for jobs that have the specified status.
ljeftStatus :: Lens' ListJobExecutionsForThing (Maybe JobExecutionStatus)
ljeftStatus = lens _ljeftStatus (\s a -> s {_ljeftStatus = a})

-- | The maximum number of results to be returned per request.
ljeftMaxResults :: Lens' ListJobExecutionsForThing (Maybe Natural)
ljeftMaxResults = lens _ljeftMaxResults (\s a -> s {_ljeftMaxResults = a}) . mapping _Nat

-- | The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
ljeftNamespaceId :: Lens' ListJobExecutionsForThing (Maybe Text)
ljeftNamespaceId = lens _ljeftNamespaceId (\s a -> s {_ljeftNamespaceId = a})

-- | The thing name.
ljeftThingName :: Lens' ListJobExecutionsForThing Text
ljeftThingName = lens _ljeftThingName (\s a -> s {_ljeftThingName = a})

instance AWSPager ListJobExecutionsForThing where
  page rq rs
    | stop (rs ^. ljeftrrsNextToken) = Nothing
    | stop (rs ^. ljeftrrsExecutionSummaries) = Nothing
    | otherwise =
      Just $ rq & ljeftNextToken .~ rs ^. ljeftrrsNextToken

instance AWSRequest ListJobExecutionsForThing where
  type
    Rs ListJobExecutionsForThing =
      ListJobExecutionsForThingResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListJobExecutionsForThingResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "executionSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobExecutionsForThing

instance NFData ListJobExecutionsForThing

instance ToHeaders ListJobExecutionsForThing where
  toHeaders = const mempty

instance ToPath ListJobExecutionsForThing where
  toPath ListJobExecutionsForThing' {..} =
    mconcat ["/things/", toBS _ljeftThingName, "/jobs"]

instance ToQuery ListJobExecutionsForThing where
  toQuery ListJobExecutionsForThing' {..} =
    mconcat
      [ "nextToken" =: _ljeftNextToken,
        "status" =: _ljeftStatus,
        "maxResults" =: _ljeftMaxResults,
        "namespaceId" =: _ljeftNamespaceId
      ]

-- | /See:/ 'listJobExecutionsForThingResponse' smart constructor.
data ListJobExecutionsForThingResponse = ListJobExecutionsForThingResponse'
  { _ljeftrrsNextToken ::
      !( Maybe
           Text
       ),
    _ljeftrrsExecutionSummaries ::
      !( Maybe
           [JobExecutionSummaryForThing]
       ),
    _ljeftrrsResponseStatus ::
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

-- | Creates a value of 'ListJobExecutionsForThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljeftrrsNextToken' - The token for the next set of results, or __null__ if there are no additional results.
--
-- * 'ljeftrrsExecutionSummaries' - A list of job execution summaries.
--
-- * 'ljeftrrsResponseStatus' - -- | The response status code.
listJobExecutionsForThingResponse ::
  -- | 'ljeftrrsResponseStatus'
  Int ->
  ListJobExecutionsForThingResponse
listJobExecutionsForThingResponse pResponseStatus_ =
  ListJobExecutionsForThingResponse'
    { _ljeftrrsNextToken =
        Nothing,
      _ljeftrrsExecutionSummaries = Nothing,
      _ljeftrrsResponseStatus =
        pResponseStatus_
    }

-- | The token for the next set of results, or __null__ if there are no additional results.
ljeftrrsNextToken :: Lens' ListJobExecutionsForThingResponse (Maybe Text)
ljeftrrsNextToken = lens _ljeftrrsNextToken (\s a -> s {_ljeftrrsNextToken = a})

-- | A list of job execution summaries.
ljeftrrsExecutionSummaries :: Lens' ListJobExecutionsForThingResponse [JobExecutionSummaryForThing]
ljeftrrsExecutionSummaries = lens _ljeftrrsExecutionSummaries (\s a -> s {_ljeftrrsExecutionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ljeftrrsResponseStatus :: Lens' ListJobExecutionsForThingResponse Int
ljeftrrsResponseStatus = lens _ljeftrrsResponseStatus (\s a -> s {_ljeftrrsResponseStatus = a})

instance NFData ListJobExecutionsForThingResponse
