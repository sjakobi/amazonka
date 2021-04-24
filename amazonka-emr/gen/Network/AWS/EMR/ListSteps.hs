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
-- Module      : Network.AWS.EMR.ListSteps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of steps for the cluster in reverse order unless you specify @stepIds@ with the request of filter by @StepStates@ . You can specify a maximum of 10 @stepIDs@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListSteps
  ( -- * Creating a Request
    listSteps,
    ListSteps,

    -- * Request Lenses
    lStepIds,
    lStepStates,
    lMarker,
    lClusterId,

    -- * Destructuring the Response
    listStepsResponse,
    ListStepsResponse,

    -- * Response Lenses
    lsrrsSteps,
    lsrrsMarker,
    lsrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which steps to list.
--
--
--
-- /See:/ 'listSteps' smart constructor.
data ListSteps = ListSteps'
  { _lStepIds ::
      !(Maybe [Text]),
    _lStepStates :: !(Maybe [StepState]),
    _lMarker :: !(Maybe Text),
    _lClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSteps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lStepIds' - The filter to limit the step list based on the identifier of the steps. You can specify a maximum of ten Step IDs. The character constraint applies to the overall length of the array.
--
-- * 'lStepStates' - The filter to limit the step list based on certain states.
--
-- * 'lMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lClusterId' - The identifier of the cluster for which to list the steps.
listSteps ::
  -- | 'lClusterId'
  Text ->
  ListSteps
listSteps pClusterId_ =
  ListSteps'
    { _lStepIds = Nothing,
      _lStepStates = Nothing,
      _lMarker = Nothing,
      _lClusterId = pClusterId_
    }

-- | The filter to limit the step list based on the identifier of the steps. You can specify a maximum of ten Step IDs. The character constraint applies to the overall length of the array.
lStepIds :: Lens' ListSteps [Text]
lStepIds = lens _lStepIds (\s a -> s {_lStepIds = a}) . _Default . _Coerce

-- | The filter to limit the step list based on certain states.
lStepStates :: Lens' ListSteps [StepState]
lStepStates = lens _lStepStates (\s a -> s {_lStepStates = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lMarker :: Lens' ListSteps (Maybe Text)
lMarker = lens _lMarker (\s a -> s {_lMarker = a})

-- | The identifier of the cluster for which to list the steps.
lClusterId :: Lens' ListSteps Text
lClusterId = lens _lClusterId (\s a -> s {_lClusterId = a})

instance AWSPager ListSteps where
  page rq rs
    | stop (rs ^. lsrrsMarker) = Nothing
    | stop (rs ^. lsrrsSteps) = Nothing
    | otherwise =
      Just $ rq & lMarker .~ rs ^. lsrrsMarker

instance AWSRequest ListSteps where
  type Rs ListSteps = ListStepsResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListStepsResponse'
            <$> (x .?> "Steps" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListSteps

instance NFData ListSteps

instance ToHeaders ListSteps where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.ListSteps" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSteps where
  toJSON ListSteps' {..} =
    object
      ( catMaybes
          [ ("StepIds" .=) <$> _lStepIds,
            ("StepStates" .=) <$> _lStepStates,
            ("Marker" .=) <$> _lMarker,
            Just ("ClusterId" .= _lClusterId)
          ]
      )

instance ToPath ListSteps where
  toPath = const "/"

instance ToQuery ListSteps where
  toQuery = const mempty

-- | This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.
--
--
--
-- /See:/ 'listStepsResponse' smart constructor.
data ListStepsResponse = ListStepsResponse'
  { _lsrrsSteps ::
      !(Maybe [StepSummary]),
    _lsrrsMarker :: !(Maybe Text),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStepsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsSteps' - The filtered list of steps for the cluster.
--
-- * 'lsrrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listStepsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListStepsResponse
listStepsResponse pResponseStatus_ =
  ListStepsResponse'
    { _lsrrsSteps = Nothing,
      _lsrrsMarker = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | The filtered list of steps for the cluster.
lsrrsSteps :: Lens' ListStepsResponse [StepSummary]
lsrrsSteps = lens _lsrrsSteps (\s a -> s {_lsrrsSteps = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lsrrsMarker :: Lens' ListStepsResponse (Maybe Text)
lsrrsMarker = lens _lsrrsMarker (\s a -> s {_lsrrsMarker = a})

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListStepsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListStepsResponse
