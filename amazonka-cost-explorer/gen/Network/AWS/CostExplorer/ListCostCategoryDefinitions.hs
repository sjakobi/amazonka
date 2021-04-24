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
-- Module      : Network.AWS.CostExplorer.ListCostCategoryDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name, ARN, @NumberOfRules@ and effective dates of all Cost Categories defined in the account. You have the option to use @EffectiveOn@ to return a list of Cost Categories that were active on a specific date. If there is no @EffectiveOn@ specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, @EffectiveEnd@ is omitted in the response. @ListCostCategoryDefinitions@ supports pagination. The request can have a @MaxResults@ range up to 100.
module Network.AWS.CostExplorer.ListCostCategoryDefinitions
  ( -- * Creating a Request
    listCostCategoryDefinitions,
    ListCostCategoryDefinitions,

    -- * Request Lenses
    lccdNextToken,
    lccdMaxResults,
    lccdEffectiveOn,

    -- * Destructuring the Response
    listCostCategoryDefinitionsResponse,
    ListCostCategoryDefinitionsResponse,

    -- * Response Lenses
    lccdrrsNextToken,
    lccdrrsCostCategoryReferences,
    lccdrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCostCategoryDefinitions' smart constructor.
data ListCostCategoryDefinitions = ListCostCategoryDefinitions'
  { _lccdNextToken ::
      !(Maybe Text),
    _lccdMaxResults ::
      !(Maybe Nat),
    _lccdEffectiveOn ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCostCategoryDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lccdNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'lccdMaxResults' - The number of entries a paginated response contains.
--
-- * 'lccdEffectiveOn' - The date when the Cost Category was effective.
listCostCategoryDefinitions ::
  ListCostCategoryDefinitions
listCostCategoryDefinitions =
  ListCostCategoryDefinitions'
    { _lccdNextToken =
        Nothing,
      _lccdMaxResults = Nothing,
      _lccdEffectiveOn = Nothing
    }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
lccdNextToken :: Lens' ListCostCategoryDefinitions (Maybe Text)
lccdNextToken = lens _lccdNextToken (\s a -> s {_lccdNextToken = a})

-- | The number of entries a paginated response contains.
lccdMaxResults :: Lens' ListCostCategoryDefinitions (Maybe Natural)
lccdMaxResults = lens _lccdMaxResults (\s a -> s {_lccdMaxResults = a}) . mapping _Nat

-- | The date when the Cost Category was effective.
lccdEffectiveOn :: Lens' ListCostCategoryDefinitions (Maybe Text)
lccdEffectiveOn = lens _lccdEffectiveOn (\s a -> s {_lccdEffectiveOn = a})

instance AWSRequest ListCostCategoryDefinitions where
  type
    Rs ListCostCategoryDefinitions =
      ListCostCategoryDefinitionsResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          ListCostCategoryDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CostCategoryReferences" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCostCategoryDefinitions

instance NFData ListCostCategoryDefinitions

instance ToHeaders ListCostCategoryDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.ListCostCategoryDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCostCategoryDefinitions where
  toJSON ListCostCategoryDefinitions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lccdNextToken,
            ("MaxResults" .=) <$> _lccdMaxResults,
            ("EffectiveOn" .=) <$> _lccdEffectiveOn
          ]
      )

instance ToPath ListCostCategoryDefinitions where
  toPath = const "/"

instance ToQuery ListCostCategoryDefinitions where
  toQuery = const mempty

-- | /See:/ 'listCostCategoryDefinitionsResponse' smart constructor.
data ListCostCategoryDefinitionsResponse = ListCostCategoryDefinitionsResponse'
  { _lccdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lccdrrsCostCategoryReferences ::
      !( Maybe
           [CostCategoryReference]
       ),
    _lccdrrsResponseStatus ::
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

-- | Creates a value of 'ListCostCategoryDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lccdrrsNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'lccdrrsCostCategoryReferences' - A reference to a Cost Category containing enough information to identify the Cost Category.
--
-- * 'lccdrrsResponseStatus' - -- | The response status code.
listCostCategoryDefinitionsResponse ::
  -- | 'lccdrrsResponseStatus'
  Int ->
  ListCostCategoryDefinitionsResponse
listCostCategoryDefinitionsResponse pResponseStatus_ =
  ListCostCategoryDefinitionsResponse'
    { _lccdrrsNextToken =
        Nothing,
      _lccdrrsCostCategoryReferences =
        Nothing,
      _lccdrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
lccdrrsNextToken :: Lens' ListCostCategoryDefinitionsResponse (Maybe Text)
lccdrrsNextToken = lens _lccdrrsNextToken (\s a -> s {_lccdrrsNextToken = a})

-- | A reference to a Cost Category containing enough information to identify the Cost Category.
lccdrrsCostCategoryReferences :: Lens' ListCostCategoryDefinitionsResponse [CostCategoryReference]
lccdrrsCostCategoryReferences = lens _lccdrrsCostCategoryReferences (\s a -> s {_lccdrrsCostCategoryReferences = a}) . _Default . _Coerce

-- | -- | The response status code.
lccdrrsResponseStatus :: Lens' ListCostCategoryDefinitionsResponse Int
lccdrrsResponseStatus = lens _lccdrrsResponseStatus (\s a -> s {_lccdrrsResponseStatus = a})

instance NFData ListCostCategoryDefinitionsResponse
