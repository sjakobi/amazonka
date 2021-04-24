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
-- Module      : Network.AWS.GameLift.DescribeMatchmakingConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of FlexMatch matchmaking configurations.
--
--
-- This operation offers the following options: (1) retrieve all matchmaking configurations, (2) retrieve configurations for a specified list, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages.
--
-- If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html Setting Up FlexMatch Matchmakers>
--
-- __Related operations__
--
--     * 'CreateMatchmakingConfiguration'
--
--     * 'DescribeMatchmakingConfigurations'
--
--     * 'UpdateMatchmakingConfiguration'
--
--     * 'DeleteMatchmakingConfiguration'
--
--     * 'CreateMatchmakingRuleSet'
--
--     * 'DescribeMatchmakingRuleSets'
--
--     * 'ValidateMatchmakingRuleSet'
--
--     * 'DeleteMatchmakingRuleSet'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeMatchmakingConfigurations
  ( -- * Creating a Request
    describeMatchmakingConfigurations,
    DescribeMatchmakingConfigurations,

    -- * Request Lenses
    dmcNames,
    dmcNextToken,
    dmcRuleSetName,
    dmcLimit,

    -- * Destructuring the Response
    describeMatchmakingConfigurationsResponse,
    DescribeMatchmakingConfigurationsResponse,

    -- * Response Lenses
    dmcrrsNextToken,
    dmcrrsConfigurations,
    dmcrrsResponseStatus,
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
-- /See:/ 'describeMatchmakingConfigurations' smart constructor.
data DescribeMatchmakingConfigurations = DescribeMatchmakingConfigurations'
  { _dmcNames ::
      !( Maybe
           [Text]
       ),
    _dmcNextToken ::
      !( Maybe
           Text
       ),
    _dmcRuleSetName ::
      !( Maybe
           Text
       ),
    _dmcLimit ::
      !( Maybe
           Nat
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

-- | Creates a value of 'DescribeMatchmakingConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmcNames' - A unique identifier for a matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To request all existing configurations, leave this parameter empty.
--
-- * 'dmcNextToken' - A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dmcRuleSetName' - A unique identifier for a matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to retrieve all matchmaking configurations that use this rule set.
--
-- * 'dmcLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. This parameter is limited to 10.
describeMatchmakingConfigurations ::
  DescribeMatchmakingConfigurations
describeMatchmakingConfigurations =
  DescribeMatchmakingConfigurations'
    { _dmcNames =
        Nothing,
      _dmcNextToken = Nothing,
      _dmcRuleSetName = Nothing,
      _dmcLimit = Nothing
    }

-- | A unique identifier for a matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To request all existing configurations, leave this parameter empty.
dmcNames :: Lens' DescribeMatchmakingConfigurations [Text]
dmcNames = lens _dmcNames (\s a -> s {_dmcNames = a}) . _Default . _Coerce

-- | A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dmcNextToken :: Lens' DescribeMatchmakingConfigurations (Maybe Text)
dmcNextToken = lens _dmcNextToken (\s a -> s {_dmcNextToken = a})

-- | A unique identifier for a matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to retrieve all matchmaking configurations that use this rule set.
dmcRuleSetName :: Lens' DescribeMatchmakingConfigurations (Maybe Text)
dmcRuleSetName = lens _dmcRuleSetName (\s a -> s {_dmcRuleSetName = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages. This parameter is limited to 10.
dmcLimit :: Lens' DescribeMatchmakingConfigurations (Maybe Natural)
dmcLimit = lens _dmcLimit (\s a -> s {_dmcLimit = a}) . mapping _Nat

instance AWSPager DescribeMatchmakingConfigurations where
  page rq rs
    | stop (rs ^. dmcrrsNextToken) = Nothing
    | stop (rs ^. dmcrrsConfigurations) = Nothing
    | otherwise =
      Just $ rq & dmcNextToken .~ rs ^. dmcrrsNextToken

instance AWSRequest DescribeMatchmakingConfigurations where
  type
    Rs DescribeMatchmakingConfigurations =
      DescribeMatchmakingConfigurationsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeMatchmakingConfigurationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Configurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMatchmakingConfigurations

instance NFData DescribeMatchmakingConfigurations

instance ToHeaders DescribeMatchmakingConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeMatchmakingConfigurations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMatchmakingConfigurations where
  toJSON DescribeMatchmakingConfigurations' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dmcNames,
            ("NextToken" .=) <$> _dmcNextToken,
            ("RuleSetName" .=) <$> _dmcRuleSetName,
            ("Limit" .=) <$> _dmcLimit
          ]
      )

instance ToPath DescribeMatchmakingConfigurations where
  toPath = const "/"

instance ToQuery DescribeMatchmakingConfigurations where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeMatchmakingConfigurationsResponse' smart constructor.
data DescribeMatchmakingConfigurationsResponse = DescribeMatchmakingConfigurationsResponse'
  { _dmcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmcrrsConfigurations ::
      !( Maybe
           [MatchmakingConfiguration]
       ),
    _dmcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMatchmakingConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmcrrsNextToken' - A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dmcrrsConfigurations' - A collection of requested matchmaking configurations.
--
-- * 'dmcrrsResponseStatus' - -- | The response status code.
describeMatchmakingConfigurationsResponse ::
  -- | 'dmcrrsResponseStatus'
  Int ->
  DescribeMatchmakingConfigurationsResponse
describeMatchmakingConfigurationsResponse
  pResponseStatus_ =
    DescribeMatchmakingConfigurationsResponse'
      { _dmcrrsNextToken =
          Nothing,
        _dmcrrsConfigurations = Nothing,
        _dmcrrsResponseStatus =
          pResponseStatus_
      }

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dmcrrsNextToken :: Lens' DescribeMatchmakingConfigurationsResponse (Maybe Text)
dmcrrsNextToken = lens _dmcrrsNextToken (\s a -> s {_dmcrrsNextToken = a})

-- | A collection of requested matchmaking configurations.
dmcrrsConfigurations :: Lens' DescribeMatchmakingConfigurationsResponse [MatchmakingConfiguration]
dmcrrsConfigurations = lens _dmcrrsConfigurations (\s a -> s {_dmcrrsConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
dmcrrsResponseStatus :: Lens' DescribeMatchmakingConfigurationsResponse Int
dmcrrsResponseStatus = lens _dmcrrsResponseStatus (\s a -> s {_dmcrrsResponseStatus = a})

instance
  NFData
    DescribeMatchmakingConfigurationsResponse
