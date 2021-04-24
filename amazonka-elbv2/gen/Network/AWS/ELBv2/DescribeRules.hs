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
-- Module      : Network.AWS.ELBv2.DescribeRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeRules
  ( -- * Creating a Request
    describeRules,
    DescribeRules,

    -- * Request Lenses
    drPageSize,
    drListenerARN,
    drRuleARNs,
    drMarker,

    -- * Destructuring the Response
    describeRulesResponse,
    DescribeRulesResponse,

    -- * Response Lenses
    drrrrsNextMarker,
    drrrrsRules,
    drrrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRules' smart constructor.
data DescribeRules = DescribeRules'
  { _drPageSize ::
      !(Maybe Nat),
    _drListenerARN :: !(Maybe Text),
    _drRuleARNs :: !(Maybe [Text]),
    _drMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drPageSize' - The maximum number of results to return with this call.
--
-- * 'drListenerARN' - The Amazon Resource Name (ARN) of the listener.
--
-- * 'drRuleARNs' - The Amazon Resource Names (ARN) of the rules.
--
-- * 'drMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeRules ::
  DescribeRules
describeRules =
  DescribeRules'
    { _drPageSize = Nothing,
      _drListenerARN = Nothing,
      _drRuleARNs = Nothing,
      _drMarker = Nothing
    }

-- | The maximum number of results to return with this call.
drPageSize :: Lens' DescribeRules (Maybe Natural)
drPageSize = lens _drPageSize (\s a -> s {_drPageSize = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the listener.
drListenerARN :: Lens' DescribeRules (Maybe Text)
drListenerARN = lens _drListenerARN (\s a -> s {_drListenerARN = a})

-- | The Amazon Resource Names (ARN) of the rules.
drRuleARNs :: Lens' DescribeRules [Text]
drRuleARNs = lens _drRuleARNs (\s a -> s {_drRuleARNs = a}) . _Default . _Coerce

-- | The marker for the next set of results. (You received this marker from a previous call.)
drMarker :: Lens' DescribeRules (Maybe Text)
drMarker = lens _drMarker (\s a -> s {_drMarker = a})

instance AWSPager DescribeRules where
  page rq rs
    | stop (rs ^. drrrrsNextMarker) = Nothing
    | stop (rs ^. drrrrsRules) = Nothing
    | otherwise =
      Just $ rq & drMarker .~ rs ^. drrrrsNextMarker

instance AWSRequest DescribeRules where
  type Rs DescribeRules = DescribeRulesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeRulesResult"
      ( \s h x ->
          DescribeRulesResponse'
            <$> (x .@? "NextMarker")
            <*> ( x .@? "Rules" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRules

instance NFData DescribeRules

instance ToHeaders DescribeRules where
  toHeaders = const mempty

instance ToPath DescribeRules where
  toPath = const "/"

instance ToQuery DescribeRules where
  toQuery DescribeRules' {..} =
    mconcat
      [ "Action" =: ("DescribeRules" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "PageSize" =: _drPageSize,
        "ListenerArn" =: _drListenerARN,
        "RuleArns"
          =: toQuery (toQueryList "member" <$> _drRuleARNs),
        "Marker" =: _drMarker
      ]

-- | /See:/ 'describeRulesResponse' smart constructor.
data DescribeRulesResponse = DescribeRulesResponse'
  { _drrrrsNextMarker ::
      !(Maybe Text),
    _drrrrsRules ::
      !(Maybe [Rule]),
    _drrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'drrrrsRules' - Information about the rules.
--
-- * 'drrrrsResponseStatus' - -- | The response status code.
describeRulesResponse ::
  -- | 'drrrrsResponseStatus'
  Int ->
  DescribeRulesResponse
describeRulesResponse pResponseStatus_ =
  DescribeRulesResponse'
    { _drrrrsNextMarker = Nothing,
      _drrrrsRules = Nothing,
      _drrrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
drrrrsNextMarker :: Lens' DescribeRulesResponse (Maybe Text)
drrrrsNextMarker = lens _drrrrsNextMarker (\s a -> s {_drrrrsNextMarker = a})

-- | Information about the rules.
drrrrsRules :: Lens' DescribeRulesResponse [Rule]
drrrrsRules = lens _drrrrsRules (\s a -> s {_drrrrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
drrrrsResponseStatus :: Lens' DescribeRulesResponse Int
drrrrsResponseStatus = lens _drrrrsResponseStatus (\s a -> s {_drrrrsResponseStatus = a})

instance NFData DescribeRulesResponse
