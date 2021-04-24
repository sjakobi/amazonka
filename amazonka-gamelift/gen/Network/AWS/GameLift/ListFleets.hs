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
-- Module      : Network.AWS.GameLift.ListFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a collection of fleet resources for this AWS account. You can filter the result set to find only those fleets that are deployed with a specific build or script. Use the pagination parameters to retrieve results in sequential pages.
--
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
--
-- __Related operations__
--
--     * 'CreateFleet'
--
--     * 'ListFleets'
--
--     * 'DeleteFleet'
--
--     * 'DescribeFleetAttributes'
--
--     * 'UpdateFleetAttributes'
--
--     * 'StartFleetActions' or 'StopFleetActions'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.ListFleets
  ( -- * Creating a Request
    listFleets,
    ListFleets,

    -- * Request Lenses
    lfNextToken,
    lfBuildId,
    lfLimit,
    lfScriptId,

    -- * Destructuring the Response
    listFleetsResponse,
    ListFleetsResponse,

    -- * Response Lenses
    lfrrsNextToken,
    lfrrsFleetIds,
    lfrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'listFleets' smart constructor.
data ListFleets = ListFleets'
  { _lfNextToken ::
      !(Maybe Text),
    _lfBuildId :: !(Maybe Text),
    _lfLimit :: !(Maybe Nat),
    _lfScriptId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFleets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'lfBuildId' - A unique identifier for a build to return fleets for. Use this parameter to return only fleets using a specified build. Use either the build ID or ARN value. To retrieve all fleets, do not include either a BuildId and ScriptID parameter.
--
-- * 'lfLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
--
-- * 'lfScriptId' - A unique identifier for a Realtime script to return fleets for. Use this parameter to return only fleets using a specified script. Use either the script ID or ARN value. To retrieve all fleets, leave this parameter empty.
listFleets ::
  ListFleets
listFleets =
  ListFleets'
    { _lfNextToken = Nothing,
      _lfBuildId = Nothing,
      _lfLimit = Nothing,
      _lfScriptId = Nothing
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
lfNextToken :: Lens' ListFleets (Maybe Text)
lfNextToken = lens _lfNextToken (\s a -> s {_lfNextToken = a})

-- | A unique identifier for a build to return fleets for. Use this parameter to return only fleets using a specified build. Use either the build ID or ARN value. To retrieve all fleets, do not include either a BuildId and ScriptID parameter.
lfBuildId :: Lens' ListFleets (Maybe Text)
lfBuildId = lens _lfBuildId (\s a -> s {_lfBuildId = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
lfLimit :: Lens' ListFleets (Maybe Natural)
lfLimit = lens _lfLimit (\s a -> s {_lfLimit = a}) . mapping _Nat

-- | A unique identifier for a Realtime script to return fleets for. Use this parameter to return only fleets using a specified script. Use either the script ID or ARN value. To retrieve all fleets, leave this parameter empty.
lfScriptId :: Lens' ListFleets (Maybe Text)
lfScriptId = lens _lfScriptId (\s a -> s {_lfScriptId = a})

instance AWSPager ListFleets where
  page rq rs
    | stop (rs ^. lfrrsNextToken) = Nothing
    | stop (rs ^. lfrrsFleetIds) = Nothing
    | otherwise =
      Just $ rq & lfNextToken .~ rs ^. lfrrsNextToken

instance AWSRequest ListFleets where
  type Rs ListFleets = ListFleetsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          ListFleetsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "FleetIds")
            <*> (pure (fromEnum s))
      )

instance Hashable ListFleets

instance NFData ListFleets

instance ToHeaders ListFleets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.ListFleets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListFleets where
  toJSON ListFleets' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lfNextToken,
            ("BuildId" .=) <$> _lfBuildId,
            ("Limit" .=) <$> _lfLimit,
            ("ScriptId" .=) <$> _lfScriptId
          ]
      )

instance ToPath ListFleets where
  toPath = const "/"

instance ToQuery ListFleets where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'listFleetsResponse' smart constructor.
data ListFleetsResponse = ListFleetsResponse'
  { _lfrrsNextToken ::
      !(Maybe Text),
    _lfrrsFleetIds ::
      !(Maybe (List1 Text)),
    _lfrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFleetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrrsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'lfrrsFleetIds' - Set of fleet IDs matching the list request. You can retrieve additional information about all returned fleets by passing this result set to a call to 'DescribeFleetAttributes' , 'DescribeFleetCapacity' , or 'DescribeFleetUtilization' .
--
-- * 'lfrrsResponseStatus' - -- | The response status code.
listFleetsResponse ::
  -- | 'lfrrsResponseStatus'
  Int ->
  ListFleetsResponse
listFleetsResponse pResponseStatus_ =
  ListFleetsResponse'
    { _lfrrsNextToken = Nothing,
      _lfrrsFleetIds = Nothing,
      _lfrrsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
lfrrsNextToken :: Lens' ListFleetsResponse (Maybe Text)
lfrrsNextToken = lens _lfrrsNextToken (\s a -> s {_lfrrsNextToken = a})

-- | Set of fleet IDs matching the list request. You can retrieve additional information about all returned fleets by passing this result set to a call to 'DescribeFleetAttributes' , 'DescribeFleetCapacity' , or 'DescribeFleetUtilization' .
lfrrsFleetIds :: Lens' ListFleetsResponse (Maybe (NonEmpty Text))
lfrrsFleetIds = lens _lfrrsFleetIds (\s a -> s {_lfrrsFleetIds = a}) . mapping _List1

-- | -- | The response status code.
lfrrsResponseStatus :: Lens' ListFleetsResponse Int
lfrrsResponseStatus = lens _lfrrsResponseStatus (\s a -> s {_lfrrsResponseStatus = a})

instance NFData ListFleetsResponse
