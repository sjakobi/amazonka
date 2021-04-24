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
-- Module      : Network.AWS.CloudWatch.DeleteInsightRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the specified Contributor Insights rules.
--
--
-- If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created might not be available.
module Network.AWS.CloudWatch.DeleteInsightRules
  ( -- * Creating a Request
    deleteInsightRules,
    DeleteInsightRules,

    -- * Request Lenses
    dirRuleNames,

    -- * Destructuring the Response
    deleteInsightRulesResponse,
    DeleteInsightRulesResponse,

    -- * Response Lenses
    dirrrsFailures,
    dirrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteInsightRules' smart constructor.
newtype DeleteInsightRules = DeleteInsightRules'
  { _dirRuleNames ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteInsightRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirRuleNames' - An array of the rule names to delete. If you need to find out the names of your rules, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules> .
deleteInsightRules ::
  DeleteInsightRules
deleteInsightRules =
  DeleteInsightRules' {_dirRuleNames = mempty}

-- | An array of the rule names to delete. If you need to find out the names of your rules, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules> .
dirRuleNames :: Lens' DeleteInsightRules [Text]
dirRuleNames = lens _dirRuleNames (\s a -> s {_dirRuleNames = a}) . _Coerce

instance AWSRequest DeleteInsightRules where
  type
    Rs DeleteInsightRules =
      DeleteInsightRulesResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DeleteInsightRulesResult"
      ( \s h x ->
          DeleteInsightRulesResponse'
            <$> ( x .@? "Failures" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteInsightRules

instance NFData DeleteInsightRules

instance ToHeaders DeleteInsightRules where
  toHeaders = const mempty

instance ToPath DeleteInsightRules where
  toPath = const "/"

instance ToQuery DeleteInsightRules where
  toQuery DeleteInsightRules' {..} =
    mconcat
      [ "Action" =: ("DeleteInsightRules" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "RuleNames" =: toQueryList "member" _dirRuleNames
      ]

-- | /See:/ 'deleteInsightRulesResponse' smart constructor.
data DeleteInsightRulesResponse = DeleteInsightRulesResponse'
  { _dirrrsFailures ::
      !( Maybe
           [PartialFailure]
       ),
    _dirrrsResponseStatus ::
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

-- | Creates a value of 'DeleteInsightRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrrsFailures' - An array listing the rules that could not be deleted. You cannot delete built-in rules.
--
-- * 'dirrrsResponseStatus' - -- | The response status code.
deleteInsightRulesResponse ::
  -- | 'dirrrsResponseStatus'
  Int ->
  DeleteInsightRulesResponse
deleteInsightRulesResponse pResponseStatus_ =
  DeleteInsightRulesResponse'
    { _dirrrsFailures =
        Nothing,
      _dirrrsResponseStatus = pResponseStatus_
    }

-- | An array listing the rules that could not be deleted. You cannot delete built-in rules.
dirrrsFailures :: Lens' DeleteInsightRulesResponse [PartialFailure]
dirrrsFailures = lens _dirrrsFailures (\s a -> s {_dirrrsFailures = a}) . _Default . _Coerce

-- | -- | The response status code.
dirrrsResponseStatus :: Lens' DeleteInsightRulesResponse Int
dirrrsResponseStatus = lens _dirrrsResponseStatus (\s a -> s {_dirrrsResponseStatus = a})

instance NFData DeleteInsightRulesResponse
