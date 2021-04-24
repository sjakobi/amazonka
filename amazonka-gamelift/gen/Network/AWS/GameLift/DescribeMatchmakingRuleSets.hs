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
-- Module      : Network.AWS.GameLift.DescribeMatchmakingRuleSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the Region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name.
--
--
-- __Learn more__
--
--     * <https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html Build a Rule Set>
--
--
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
module Network.AWS.GameLift.DescribeMatchmakingRuleSets
  ( -- * Creating a Request
    describeMatchmakingRuleSets,
    DescribeMatchmakingRuleSets,

    -- * Request Lenses
    dmrsNames,
    dmrsNextToken,
    dmrsLimit,

    -- * Destructuring the Response
    describeMatchmakingRuleSetsResponse,
    DescribeMatchmakingRuleSetsResponse,

    -- * Response Lenses
    dmrsrrsNextToken,
    dmrsrrsResponseStatus,
    dmrsrrsRuleSets,
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
-- /See:/ 'describeMatchmakingRuleSets' smart constructor.
data DescribeMatchmakingRuleSets = DescribeMatchmakingRuleSets'
  { _dmrsNames ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _dmrsNextToken ::
      !(Maybe Text),
    _dmrsLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMatchmakingRuleSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrsNames' - A list of one or more matchmaking rule set names to retrieve details for. (Note: The rule set name is different from the optional "name" field in the rule set body.) You can use either the rule set name or ARN value.
--
-- * 'dmrsNextToken' - A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dmrsLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
describeMatchmakingRuleSets ::
  DescribeMatchmakingRuleSets
describeMatchmakingRuleSets =
  DescribeMatchmakingRuleSets'
    { _dmrsNames = Nothing,
      _dmrsNextToken = Nothing,
      _dmrsLimit = Nothing
    }

-- | A list of one or more matchmaking rule set names to retrieve details for. (Note: The rule set name is different from the optional "name" field in the rule set body.) You can use either the rule set name or ARN value.
dmrsNames :: Lens' DescribeMatchmakingRuleSets (Maybe (NonEmpty Text))
dmrsNames = lens _dmrsNames (\s a -> s {_dmrsNames = a}) . mapping _List1

-- | A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dmrsNextToken :: Lens' DescribeMatchmakingRuleSets (Maybe Text)
dmrsNextToken = lens _dmrsNextToken (\s a -> s {_dmrsNextToken = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
dmrsLimit :: Lens' DescribeMatchmakingRuleSets (Maybe Natural)
dmrsLimit = lens _dmrsLimit (\s a -> s {_dmrsLimit = a}) . mapping _Nat

instance AWSPager DescribeMatchmakingRuleSets where
  page rq rs
    | stop (rs ^. dmrsrrsNextToken) = Nothing
    | stop (rs ^. dmrsrrsRuleSets) = Nothing
    | otherwise =
      Just $ rq & dmrsNextToken .~ rs ^. dmrsrrsNextToken

instance AWSRequest DescribeMatchmakingRuleSets where
  type
    Rs DescribeMatchmakingRuleSets =
      DescribeMatchmakingRuleSetsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeMatchmakingRuleSetsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "RuleSets" .!@ mempty)
      )

instance Hashable DescribeMatchmakingRuleSets

instance NFData DescribeMatchmakingRuleSets

instance ToHeaders DescribeMatchmakingRuleSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeMatchmakingRuleSets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMatchmakingRuleSets where
  toJSON DescribeMatchmakingRuleSets' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dmrsNames,
            ("NextToken" .=) <$> _dmrsNextToken,
            ("Limit" .=) <$> _dmrsLimit
          ]
      )

instance ToPath DescribeMatchmakingRuleSets where
  toPath = const "/"

instance ToQuery DescribeMatchmakingRuleSets where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeMatchmakingRuleSetsResponse' smart constructor.
data DescribeMatchmakingRuleSetsResponse = DescribeMatchmakingRuleSetsResponse'
  { _dmrsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmrsrrsResponseStatus ::
      !Int,
    _dmrsrrsRuleSets ::
      ![MatchmakingRuleSet]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMatchmakingRuleSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrsrrsNextToken' - A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dmrsrrsResponseStatus' - -- | The response status code.
--
-- * 'dmrsrrsRuleSets' - A collection of requested matchmaking rule set objects.
describeMatchmakingRuleSetsResponse ::
  -- | 'dmrsrrsResponseStatus'
  Int ->
  DescribeMatchmakingRuleSetsResponse
describeMatchmakingRuleSetsResponse pResponseStatus_ =
  DescribeMatchmakingRuleSetsResponse'
    { _dmrsrrsNextToken =
        Nothing,
      _dmrsrrsResponseStatus =
        pResponseStatus_,
      _dmrsrrsRuleSets = mempty
    }

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dmrsrrsNextToken :: Lens' DescribeMatchmakingRuleSetsResponse (Maybe Text)
dmrsrrsNextToken = lens _dmrsrrsNextToken (\s a -> s {_dmrsrrsNextToken = a})

-- | -- | The response status code.
dmrsrrsResponseStatus :: Lens' DescribeMatchmakingRuleSetsResponse Int
dmrsrrsResponseStatus = lens _dmrsrrsResponseStatus (\s a -> s {_dmrsrrsResponseStatus = a})

-- | A collection of requested matchmaking rule set objects.
dmrsrrsRuleSets :: Lens' DescribeMatchmakingRuleSetsResponse [MatchmakingRuleSet]
dmrsrrsRuleSets = lens _dmrsrrsRuleSets (\s a -> s {_dmrsrrsRuleSets = a}) . _Coerce

instance NFData DescribeMatchmakingRuleSetsResponse
