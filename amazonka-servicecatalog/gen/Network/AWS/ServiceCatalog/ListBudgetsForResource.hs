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
-- Module      : Network.AWS.ServiceCatalog.ListBudgetsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the budgets associated to the specified resource.
module Network.AWS.ServiceCatalog.ListBudgetsForResource
  ( -- * Creating a Request
    listBudgetsForResource,
    ListBudgetsForResource,

    -- * Request Lenses
    lbfrPageSize,
    lbfrPageToken,
    lbfrAcceptLanguage,
    lbfrResourceId,

    -- * Destructuring the Response
    listBudgetsForResourceResponse,
    ListBudgetsForResourceResponse,

    -- * Response Lenses
    lbfrrrsNextPageToken,
    lbfrrrsBudgets,
    lbfrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listBudgetsForResource' smart constructor.
data ListBudgetsForResource = ListBudgetsForResource'
  { _lbfrPageSize ::
      !(Maybe Nat),
    _lbfrPageToken ::
      !(Maybe Text),
    _lbfrAcceptLanguage ::
      !(Maybe Text),
    _lbfrResourceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListBudgetsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbfrPageSize' - The maximum number of items to return with this call.
--
-- * 'lbfrPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lbfrAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lbfrResourceId' - The resource identifier.
listBudgetsForResource ::
  -- | 'lbfrResourceId'
  Text ->
  ListBudgetsForResource
listBudgetsForResource pResourceId_ =
  ListBudgetsForResource'
    { _lbfrPageSize = Nothing,
      _lbfrPageToken = Nothing,
      _lbfrAcceptLanguage = Nothing,
      _lbfrResourceId = pResourceId_
    }

-- | The maximum number of items to return with this call.
lbfrPageSize :: Lens' ListBudgetsForResource (Maybe Natural)
lbfrPageSize = lens _lbfrPageSize (\s a -> s {_lbfrPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lbfrPageToken :: Lens' ListBudgetsForResource (Maybe Text)
lbfrPageToken = lens _lbfrPageToken (\s a -> s {_lbfrPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lbfrAcceptLanguage :: Lens' ListBudgetsForResource (Maybe Text)
lbfrAcceptLanguage = lens _lbfrAcceptLanguage (\s a -> s {_lbfrAcceptLanguage = a})

-- | The resource identifier.
lbfrResourceId :: Lens' ListBudgetsForResource Text
lbfrResourceId = lens _lbfrResourceId (\s a -> s {_lbfrResourceId = a})

instance AWSRequest ListBudgetsForResource where
  type
    Rs ListBudgetsForResource =
      ListBudgetsForResourceResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListBudgetsForResourceResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "Budgets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBudgetsForResource

instance NFData ListBudgetsForResource

instance ToHeaders ListBudgetsForResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListBudgetsForResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBudgetsForResource where
  toJSON ListBudgetsForResource' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lbfrPageSize,
            ("PageToken" .=) <$> _lbfrPageToken,
            ("AcceptLanguage" .=) <$> _lbfrAcceptLanguage,
            Just ("ResourceId" .= _lbfrResourceId)
          ]
      )

instance ToPath ListBudgetsForResource where
  toPath = const "/"

instance ToQuery ListBudgetsForResource where
  toQuery = const mempty

-- | /See:/ 'listBudgetsForResourceResponse' smart constructor.
data ListBudgetsForResourceResponse = ListBudgetsForResourceResponse'
  { _lbfrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lbfrrrsBudgets ::
      !( Maybe
           [BudgetDetail]
       ),
    _lbfrrrsResponseStatus ::
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

-- | Creates a value of 'ListBudgetsForResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbfrrrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lbfrrrsBudgets' - Information about the associated budgets.
--
-- * 'lbfrrrsResponseStatus' - -- | The response status code.
listBudgetsForResourceResponse ::
  -- | 'lbfrrrsResponseStatus'
  Int ->
  ListBudgetsForResourceResponse
listBudgetsForResourceResponse pResponseStatus_ =
  ListBudgetsForResourceResponse'
    { _lbfrrrsNextPageToken =
        Nothing,
      _lbfrrrsBudgets = Nothing,
      _lbfrrrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lbfrrrsNextPageToken :: Lens' ListBudgetsForResourceResponse (Maybe Text)
lbfrrrsNextPageToken = lens _lbfrrrsNextPageToken (\s a -> s {_lbfrrrsNextPageToken = a})

-- | Information about the associated budgets.
lbfrrrsBudgets :: Lens' ListBudgetsForResourceResponse [BudgetDetail]
lbfrrrsBudgets = lens _lbfrrrsBudgets (\s a -> s {_lbfrrrsBudgets = a}) . _Default . _Coerce

-- | -- | The response status code.
lbfrrrsResponseStatus :: Lens' ListBudgetsForResourceResponse Int
lbfrrrsResponseStatus = lens _lbfrrrsResponseStatus (\s a -> s {_lbfrrrsResponseStatus = a})

instance NFData ListBudgetsForResourceResponse
