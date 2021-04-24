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
-- Module      : Network.AWS.SageMaker.ListFlowDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the flow definitions in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListFlowDefinitions
  ( -- * Creating a Request
    listFlowDefinitions,
    ListFlowDefinitions,

    -- * Request Lenses
    lfdSortOrder,
    lfdNextToken,
    lfdMaxResults,
    lfdCreationTimeBefore,
    lfdCreationTimeAfter,

    -- * Destructuring the Response
    listFlowDefinitionsResponse,
    ListFlowDefinitionsResponse,

    -- * Response Lenses
    lfdrrsNextToken,
    lfdrrsResponseStatus,
    lfdrrsFlowDefinitionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listFlowDefinitions' smart constructor.
data ListFlowDefinitions = ListFlowDefinitions'
  { _lfdSortOrder ::
      !(Maybe SortOrder),
    _lfdNextToken :: !(Maybe Text),
    _lfdMaxResults :: !(Maybe Nat),
    _lfdCreationTimeBefore ::
      !(Maybe POSIX),
    _lfdCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFlowDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfdSortOrder' - An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
--
-- * 'lfdNextToken' - A token to resume pagination.
--
-- * 'lfdMaxResults' - The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
--
-- * 'lfdCreationTimeBefore' - A filter that returns only flow definitions that were created before the specified timestamp.
--
-- * 'lfdCreationTimeAfter' - A filter that returns only flow definitions with a creation time greater than or equal to the specified timestamp.
listFlowDefinitions ::
  ListFlowDefinitions
listFlowDefinitions =
  ListFlowDefinitions'
    { _lfdSortOrder = Nothing,
      _lfdNextToken = Nothing,
      _lfdMaxResults = Nothing,
      _lfdCreationTimeBefore = Nothing,
      _lfdCreationTimeAfter = Nothing
    }

-- | An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
lfdSortOrder :: Lens' ListFlowDefinitions (Maybe SortOrder)
lfdSortOrder = lens _lfdSortOrder (\s a -> s {_lfdSortOrder = a})

-- | A token to resume pagination.
lfdNextToken :: Lens' ListFlowDefinitions (Maybe Text)
lfdNextToken = lens _lfdNextToken (\s a -> s {_lfdNextToken = a})

-- | The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
lfdMaxResults :: Lens' ListFlowDefinitions (Maybe Natural)
lfdMaxResults = lens _lfdMaxResults (\s a -> s {_lfdMaxResults = a}) . mapping _Nat

-- | A filter that returns only flow definitions that were created before the specified timestamp.
lfdCreationTimeBefore :: Lens' ListFlowDefinitions (Maybe UTCTime)
lfdCreationTimeBefore = lens _lfdCreationTimeBefore (\s a -> s {_lfdCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only flow definitions with a creation time greater than or equal to the specified timestamp.
lfdCreationTimeAfter :: Lens' ListFlowDefinitions (Maybe UTCTime)
lfdCreationTimeAfter = lens _lfdCreationTimeAfter (\s a -> s {_lfdCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListFlowDefinitions where
  page rq rs
    | stop (rs ^. lfdrrsNextToken) = Nothing
    | stop (rs ^. lfdrrsFlowDefinitionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lfdNextToken .~ rs ^. lfdrrsNextToken

instance AWSRequest ListFlowDefinitions where
  type
    Rs ListFlowDefinitions =
      ListFlowDefinitionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListFlowDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "FlowDefinitionSummaries" .!@ mempty)
      )

instance Hashable ListFlowDefinitions

instance NFData ListFlowDefinitions

instance ToHeaders ListFlowDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListFlowDefinitions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListFlowDefinitions where
  toJSON ListFlowDefinitions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lfdSortOrder,
            ("NextToken" .=) <$> _lfdNextToken,
            ("MaxResults" .=) <$> _lfdMaxResults,
            ("CreationTimeBefore" .=) <$> _lfdCreationTimeBefore,
            ("CreationTimeAfter" .=) <$> _lfdCreationTimeAfter
          ]
      )

instance ToPath ListFlowDefinitions where
  toPath = const "/"

instance ToQuery ListFlowDefinitions where
  toQuery = const mempty

-- | /See:/ 'listFlowDefinitionsResponse' smart constructor.
data ListFlowDefinitionsResponse = ListFlowDefinitionsResponse'
  { _lfdrrsNextToken ::
      !(Maybe Text),
    _lfdrrsResponseStatus ::
      !Int,
    _lfdrrsFlowDefinitionSummaries ::
      ![FlowDefinitionSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListFlowDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfdrrsNextToken' - A token to resume pagination.
--
-- * 'lfdrrsResponseStatus' - -- | The response status code.
--
-- * 'lfdrrsFlowDefinitionSummaries' - An array of objects describing the flow definitions.
listFlowDefinitionsResponse ::
  -- | 'lfdrrsResponseStatus'
  Int ->
  ListFlowDefinitionsResponse
listFlowDefinitionsResponse pResponseStatus_ =
  ListFlowDefinitionsResponse'
    { _lfdrrsNextToken =
        Nothing,
      _lfdrrsResponseStatus = pResponseStatus_,
      _lfdrrsFlowDefinitionSummaries = mempty
    }

-- | A token to resume pagination.
lfdrrsNextToken :: Lens' ListFlowDefinitionsResponse (Maybe Text)
lfdrrsNextToken = lens _lfdrrsNextToken (\s a -> s {_lfdrrsNextToken = a})

-- | -- | The response status code.
lfdrrsResponseStatus :: Lens' ListFlowDefinitionsResponse Int
lfdrrsResponseStatus = lens _lfdrrsResponseStatus (\s a -> s {_lfdrrsResponseStatus = a})

-- | An array of objects describing the flow definitions.
lfdrrsFlowDefinitionSummaries :: Lens' ListFlowDefinitionsResponse [FlowDefinitionSummary]
lfdrrsFlowDefinitionSummaries = lens _lfdrrsFlowDefinitionSummaries (\s a -> s {_lfdrrsFlowDefinitionSummaries = a}) . _Coerce

instance NFData ListFlowDefinitionsResponse
