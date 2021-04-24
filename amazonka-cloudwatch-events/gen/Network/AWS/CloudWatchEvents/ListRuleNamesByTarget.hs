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
-- Module      : Network.AWS.CloudWatchEvents.ListRuleNamesByTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the rules for the specified target. You can see which of the rules in Amazon EventBridge can invoke a specific target in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchEvents.ListRuleNamesByTarget
  ( -- * Creating a Request
    listRuleNamesByTarget,
    ListRuleNamesByTarget,

    -- * Request Lenses
    lrnbtNextToken,
    lrnbtEventBusName,
    lrnbtLimit,
    lrnbtTargetARN,

    -- * Destructuring the Response
    listRuleNamesByTargetResponse,
    ListRuleNamesByTargetResponse,

    -- * Response Lenses
    lrnbtrrsNextToken,
    lrnbtrrsRuleNames,
    lrnbtrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRuleNamesByTarget' smart constructor.
data ListRuleNamesByTarget = ListRuleNamesByTarget'
  { _lrnbtNextToken ::
      !(Maybe Text),
    _lrnbtEventBusName ::
      !(Maybe Text),
    _lrnbtLimit :: !(Maybe Nat),
    _lrnbtTargetARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListRuleNamesByTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrnbtNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'lrnbtEventBusName' - The name or ARN of the event bus to list rules for. If you omit this, the default event bus is used.
--
-- * 'lrnbtLimit' - The maximum number of results to return.
--
-- * 'lrnbtTargetARN' - The Amazon Resource Name (ARN) of the target resource.
listRuleNamesByTarget ::
  -- | 'lrnbtTargetARN'
  Text ->
  ListRuleNamesByTarget
listRuleNamesByTarget pTargetARN_ =
  ListRuleNamesByTarget'
    { _lrnbtNextToken = Nothing,
      _lrnbtEventBusName = Nothing,
      _lrnbtLimit = Nothing,
      _lrnbtTargetARN = pTargetARN_
    }

-- | The token returned by a previous call to retrieve the next set of results.
lrnbtNextToken :: Lens' ListRuleNamesByTarget (Maybe Text)
lrnbtNextToken = lens _lrnbtNextToken (\s a -> s {_lrnbtNextToken = a})

-- | The name or ARN of the event bus to list rules for. If you omit this, the default event bus is used.
lrnbtEventBusName :: Lens' ListRuleNamesByTarget (Maybe Text)
lrnbtEventBusName = lens _lrnbtEventBusName (\s a -> s {_lrnbtEventBusName = a})

-- | The maximum number of results to return.
lrnbtLimit :: Lens' ListRuleNamesByTarget (Maybe Natural)
lrnbtLimit = lens _lrnbtLimit (\s a -> s {_lrnbtLimit = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the target resource.
lrnbtTargetARN :: Lens' ListRuleNamesByTarget Text
lrnbtTargetARN = lens _lrnbtTargetARN (\s a -> s {_lrnbtTargetARN = a})

instance AWSPager ListRuleNamesByTarget where
  page rq rs
    | stop (rs ^. lrnbtrrsNextToken) = Nothing
    | stop (rs ^. lrnbtrrsRuleNames) = Nothing
    | otherwise =
      Just $ rq & lrnbtNextToken .~ rs ^. lrnbtrrsNextToken

instance AWSRequest ListRuleNamesByTarget where
  type
    Rs ListRuleNamesByTarget =
      ListRuleNamesByTargetResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListRuleNamesByTargetResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "RuleNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRuleNamesByTarget

instance NFData ListRuleNamesByTarget

instance ToHeaders ListRuleNamesByTarget where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListRuleNamesByTarget" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRuleNamesByTarget where
  toJSON ListRuleNamesByTarget' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lrnbtNextToken,
            ("EventBusName" .=) <$> _lrnbtEventBusName,
            ("Limit" .=) <$> _lrnbtLimit,
            Just ("TargetArn" .= _lrnbtTargetARN)
          ]
      )

instance ToPath ListRuleNamesByTarget where
  toPath = const "/"

instance ToQuery ListRuleNamesByTarget where
  toQuery = const mempty

-- | /See:/ 'listRuleNamesByTargetResponse' smart constructor.
data ListRuleNamesByTargetResponse = ListRuleNamesByTargetResponse'
  { _lrnbtrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrnbtrrsRuleNames ::
      !( Maybe
           [Text]
       ),
    _lrnbtrrsResponseStatus ::
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

-- | Creates a value of 'ListRuleNamesByTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrnbtrrsNextToken' - Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
--
-- * 'lrnbtrrsRuleNames' - The names of the rules that can invoke the given target.
--
-- * 'lrnbtrrsResponseStatus' - -- | The response status code.
listRuleNamesByTargetResponse ::
  -- | 'lrnbtrrsResponseStatus'
  Int ->
  ListRuleNamesByTargetResponse
listRuleNamesByTargetResponse pResponseStatus_ =
  ListRuleNamesByTargetResponse'
    { _lrnbtrrsNextToken =
        Nothing,
      _lrnbtrrsRuleNames = Nothing,
      _lrnbtrrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
lrnbtrrsNextToken :: Lens' ListRuleNamesByTargetResponse (Maybe Text)
lrnbtrrsNextToken = lens _lrnbtrrsNextToken (\s a -> s {_lrnbtrrsNextToken = a})

-- | The names of the rules that can invoke the given target.
lrnbtrrsRuleNames :: Lens' ListRuleNamesByTargetResponse [Text]
lrnbtrrsRuleNames = lens _lrnbtrrsRuleNames (\s a -> s {_lrnbtrrsRuleNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lrnbtrrsResponseStatus :: Lens' ListRuleNamesByTargetResponse Int
lrnbtrrsResponseStatus = lens _lrnbtrrsResponseStatus (\s a -> s {_lrnbtrrsResponseStatus = a})

instance NFData ListRuleNamesByTargetResponse
