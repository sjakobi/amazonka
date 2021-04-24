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
-- Module      : Network.AWS.Config.DescribeOrganizationConfigRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of organization config rules.
module Network.AWS.Config.DescribeOrganizationConfigRules
  ( -- * Creating a Request
    describeOrganizationConfigRules,
    DescribeOrganizationConfigRules,

    -- * Request Lenses
    docrNextToken,
    docrOrganizationConfigRuleNames,
    docrLimit,

    -- * Destructuring the Response
    describeOrganizationConfigRulesResponse,
    DescribeOrganizationConfigRulesResponse,

    -- * Response Lenses
    docrrrsNextToken,
    docrrrsOrganizationConfigRules,
    docrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeOrganizationConfigRules' smart constructor.
data DescribeOrganizationConfigRules = DescribeOrganizationConfigRules'
  { _docrNextToken ::
      !( Maybe
           Text
       ),
    _docrOrganizationConfigRuleNames ::
      !( Maybe
           [Text]
       ),
    _docrLimit ::
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

-- | Creates a value of 'DescribeOrganizationConfigRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docrOrganizationConfigRuleNames' - The names of organization config rules for which you want details. If you do not specify any names, AWS Config returns details for all your organization config rules.
--
-- * 'docrLimit' - The maximum number of organization config rules returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
describeOrganizationConfigRules ::
  DescribeOrganizationConfigRules
describeOrganizationConfigRules =
  DescribeOrganizationConfigRules'
    { _docrNextToken =
        Nothing,
      _docrOrganizationConfigRuleNames = Nothing,
      _docrLimit = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
docrNextToken :: Lens' DescribeOrganizationConfigRules (Maybe Text)
docrNextToken = lens _docrNextToken (\s a -> s {_docrNextToken = a})

-- | The names of organization config rules for which you want details. If you do not specify any names, AWS Config returns details for all your organization config rules.
docrOrganizationConfigRuleNames :: Lens' DescribeOrganizationConfigRules [Text]
docrOrganizationConfigRuleNames = lens _docrOrganizationConfigRuleNames (\s a -> s {_docrOrganizationConfigRuleNames = a}) . _Default . _Coerce

-- | The maximum number of organization config rules returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
docrLimit :: Lens' DescribeOrganizationConfigRules (Maybe Natural)
docrLimit = lens _docrLimit (\s a -> s {_docrLimit = a}) . mapping _Nat

instance AWSRequest DescribeOrganizationConfigRules where
  type
    Rs DescribeOrganizationConfigRules =
      DescribeOrganizationConfigRulesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeOrganizationConfigRulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "OrganizationConfigRules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOrganizationConfigRules

instance NFData DescribeOrganizationConfigRules

instance ToHeaders DescribeOrganizationConfigRules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeOrganizationConfigRules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeOrganizationConfigRules where
  toJSON DescribeOrganizationConfigRules' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _docrNextToken,
            ("OrganizationConfigRuleNames" .=)
              <$> _docrOrganizationConfigRuleNames,
            ("Limit" .=) <$> _docrLimit
          ]
      )

instance ToPath DescribeOrganizationConfigRules where
  toPath = const "/"

instance ToQuery DescribeOrganizationConfigRules where
  toQuery = const mempty

-- | /See:/ 'describeOrganizationConfigRulesResponse' smart constructor.
data DescribeOrganizationConfigRulesResponse = DescribeOrganizationConfigRulesResponse'
  { _docrrrsNextToken ::
      !( Maybe
           Text
       ),
    _docrrrsOrganizationConfigRules ::
      !( Maybe
           [OrganizationConfigRule]
       ),
    _docrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeOrganizationConfigRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docrrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docrrrsOrganizationConfigRules' - Returns a list of @OrganizationConfigRule@ objects.
--
-- * 'docrrrsResponseStatus' - -- | The response status code.
describeOrganizationConfigRulesResponse ::
  -- | 'docrrrsResponseStatus'
  Int ->
  DescribeOrganizationConfigRulesResponse
describeOrganizationConfigRulesResponse
  pResponseStatus_ =
    DescribeOrganizationConfigRulesResponse'
      { _docrrrsNextToken =
          Nothing,
        _docrrrsOrganizationConfigRules =
          Nothing,
        _docrrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
docrrrsNextToken :: Lens' DescribeOrganizationConfigRulesResponse (Maybe Text)
docrrrsNextToken = lens _docrrrsNextToken (\s a -> s {_docrrrsNextToken = a})

-- | Returns a list of @OrganizationConfigRule@ objects.
docrrrsOrganizationConfigRules :: Lens' DescribeOrganizationConfigRulesResponse [OrganizationConfigRule]
docrrrsOrganizationConfigRules = lens _docrrrsOrganizationConfigRules (\s a -> s {_docrrrsOrganizationConfigRules = a}) . _Default . _Coerce

-- | -- | The response status code.
docrrrsResponseStatus :: Lens' DescribeOrganizationConfigRulesResponse Int
docrrrsResponseStatus = lens _docrrrsResponseStatus (\s a -> s {_docrrrsResponseStatus = a})

instance
  NFData
    DescribeOrganizationConfigRulesResponse
