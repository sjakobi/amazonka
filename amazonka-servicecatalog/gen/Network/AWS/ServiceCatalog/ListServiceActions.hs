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
-- Module      : Network.AWS.ServiceCatalog.ListServiceActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all self-service actions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListServiceActions
  ( -- * Creating a Request
    listServiceActions,
    ListServiceActions,

    -- * Request Lenses
    lsaPageSize,
    lsaPageToken,
    lsaAcceptLanguage,

    -- * Destructuring the Response
    listServiceActionsResponse,
    ListServiceActionsResponse,

    -- * Response Lenses
    lsarrsNextPageToken,
    lsarrsServiceActionSummaries,
    lsarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listServiceActions' smart constructor.
data ListServiceActions = ListServiceActions'
  { _lsaPageSize ::
      !(Maybe Nat),
    _lsaPageToken :: !(Maybe Text),
    _lsaAcceptLanguage ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServiceActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsaPageSize' - The maximum number of items to return with this call.
--
-- * 'lsaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lsaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
listServiceActions ::
  ListServiceActions
listServiceActions =
  ListServiceActions'
    { _lsaPageSize = Nothing,
      _lsaPageToken = Nothing,
      _lsaAcceptLanguage = Nothing
    }

-- | The maximum number of items to return with this call.
lsaPageSize :: Lens' ListServiceActions (Maybe Natural)
lsaPageSize = lens _lsaPageSize (\s a -> s {_lsaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lsaPageToken :: Lens' ListServiceActions (Maybe Text)
lsaPageToken = lens _lsaPageToken (\s a -> s {_lsaPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lsaAcceptLanguage :: Lens' ListServiceActions (Maybe Text)
lsaAcceptLanguage = lens _lsaAcceptLanguage (\s a -> s {_lsaAcceptLanguage = a})

instance AWSPager ListServiceActions where
  page rq rs
    | stop (rs ^. lsarrsNextPageToken) = Nothing
    | stop (rs ^. lsarrsServiceActionSummaries) = Nothing
    | otherwise =
      Just $ rq & lsaPageToken .~ rs ^. lsarrsNextPageToken

instance AWSRequest ListServiceActions where
  type
    Rs ListServiceActions =
      ListServiceActionsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListServiceActionsResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ServiceActionSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListServiceActions

instance NFData ListServiceActions

instance ToHeaders ListServiceActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListServiceActions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListServiceActions where
  toJSON ListServiceActions' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lsaPageSize,
            ("PageToken" .=) <$> _lsaPageToken,
            ("AcceptLanguage" .=) <$> _lsaAcceptLanguage
          ]
      )

instance ToPath ListServiceActions where
  toPath = const "/"

instance ToQuery ListServiceActions where
  toQuery = const mempty

-- | /See:/ 'listServiceActionsResponse' smart constructor.
data ListServiceActionsResponse = ListServiceActionsResponse'
  { _lsarrsNextPageToken ::
      !(Maybe Text),
    _lsarrsServiceActionSummaries ::
      !( Maybe
           [ServiceActionSummary]
       ),
    _lsarrsResponseStatus ::
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

-- | Creates a value of 'ListServiceActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lsarrsServiceActionSummaries' - An object containing information about the service actions associated with the provisioning artifact.
--
-- * 'lsarrsResponseStatus' - -- | The response status code.
listServiceActionsResponse ::
  -- | 'lsarrsResponseStatus'
  Int ->
  ListServiceActionsResponse
listServiceActionsResponse pResponseStatus_ =
  ListServiceActionsResponse'
    { _lsarrsNextPageToken =
        Nothing,
      _lsarrsServiceActionSummaries = Nothing,
      _lsarrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lsarrsNextPageToken :: Lens' ListServiceActionsResponse (Maybe Text)
lsarrsNextPageToken = lens _lsarrsNextPageToken (\s a -> s {_lsarrsNextPageToken = a})

-- | An object containing information about the service actions associated with the provisioning artifact.
lsarrsServiceActionSummaries :: Lens' ListServiceActionsResponse [ServiceActionSummary]
lsarrsServiceActionSummaries = lens _lsarrsServiceActionSummaries (\s a -> s {_lsarrsServiceActionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lsarrsResponseStatus :: Lens' ListServiceActionsResponse Int
lsarrsResponseStatus = lens _lsarrsResponseStatus (\s a -> s {_lsarrsResponseStatus = a})

instance NFData ListServiceActionsResponse
