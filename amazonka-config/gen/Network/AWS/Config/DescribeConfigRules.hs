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
-- Module      : Network.AWS.Config.DescribeConfigRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about your AWS Config rules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeConfigRules
  ( -- * Creating a Request
    describeConfigRules,
    DescribeConfigRules,

    -- * Request Lenses
    dcrNextToken,
    dcrConfigRuleNames,

    -- * Destructuring the Response
    describeConfigRulesResponse,
    DescribeConfigRulesResponse,

    -- * Response Lenses
    drsNextToken,
    drsConfigRules,
    drsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeConfigRules' smart constructor.
data DescribeConfigRules = DescribeConfigRules'
  { _dcrNextToken ::
      !(Maybe Text),
    _dcrConfigRuleNames ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeConfigRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcrConfigRuleNames' - The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.
describeConfigRules ::
  DescribeConfigRules
describeConfigRules =
  DescribeConfigRules'
    { _dcrNextToken = Nothing,
      _dcrConfigRuleNames = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcrNextToken :: Lens' DescribeConfigRules (Maybe Text)
dcrNextToken = lens _dcrNextToken (\s a -> s {_dcrNextToken = a})

-- | The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.
dcrConfigRuleNames :: Lens' DescribeConfigRules [Text]
dcrConfigRuleNames = lens _dcrConfigRuleNames (\s a -> s {_dcrConfigRuleNames = a}) . _Default . _Coerce

instance AWSPager DescribeConfigRules where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsConfigRules) = Nothing
    | otherwise =
      Just $ rq & dcrNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeConfigRules where
  type
    Rs DescribeConfigRules =
      DescribeConfigRulesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigRulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConfigRules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigRules

instance NFData DescribeConfigRules

instance ToHeaders DescribeConfigRules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConfigRules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConfigRules where
  toJSON DescribeConfigRules' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcrNextToken,
            ("ConfigRuleNames" .=) <$> _dcrConfigRuleNames
          ]
      )

instance ToPath DescribeConfigRules where
  toPath = const "/"

instance ToQuery DescribeConfigRules where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeConfigRulesResponse' smart constructor.
data DescribeConfigRulesResponse = DescribeConfigRulesResponse'
  { _drsNextToken ::
      !(Maybe Text),
    _drsConfigRules ::
      !( Maybe
           [ConfigRule]
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

-- | Creates a value of 'DescribeConfigRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'drsConfigRules' - The details about your AWS Config rules.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeConfigRulesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeConfigRulesResponse
describeConfigRulesResponse pResponseStatus_ =
  DescribeConfigRulesResponse'
    { _drsNextToken =
        Nothing,
      _drsConfigRules = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
drsNextToken :: Lens' DescribeConfigRulesResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | The details about your AWS Config rules.
drsConfigRules :: Lens' DescribeConfigRulesResponse [ConfigRule]
drsConfigRules = lens _drsConfigRules (\s a -> s {_drsConfigRules = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeConfigRulesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeConfigRulesResponse
