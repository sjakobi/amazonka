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
-- Module      : Network.AWS.ServiceCatalog.ListLaunchPaths
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListLaunchPaths
  ( -- * Creating a Request
    listLaunchPaths,
    ListLaunchPaths,

    -- * Request Lenses
    llpPageSize,
    llpPageToken,
    llpAcceptLanguage,
    llpProductId,

    -- * Destructuring the Response
    listLaunchPathsResponse,
    ListLaunchPathsResponse,

    -- * Response Lenses
    llprrsLaunchPathSummaries,
    llprrsNextPageToken,
    llprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listLaunchPaths' smart constructor.
data ListLaunchPaths = ListLaunchPaths'
  { _llpPageSize ::
      !(Maybe Nat),
    _llpPageToken :: !(Maybe Text),
    _llpAcceptLanguage :: !(Maybe Text),
    _llpProductId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLaunchPaths' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llpPageSize' - The maximum number of items to return with this call.
--
-- * 'llpPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'llpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'llpProductId' - The product identifier.
listLaunchPaths ::
  -- | 'llpProductId'
  Text ->
  ListLaunchPaths
listLaunchPaths pProductId_ =
  ListLaunchPaths'
    { _llpPageSize = Nothing,
      _llpPageToken = Nothing,
      _llpAcceptLanguage = Nothing,
      _llpProductId = pProductId_
    }

-- | The maximum number of items to return with this call.
llpPageSize :: Lens' ListLaunchPaths (Maybe Natural)
llpPageSize = lens _llpPageSize (\s a -> s {_llpPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
llpPageToken :: Lens' ListLaunchPaths (Maybe Text)
llpPageToken = lens _llpPageToken (\s a -> s {_llpPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
llpAcceptLanguage :: Lens' ListLaunchPaths (Maybe Text)
llpAcceptLanguage = lens _llpAcceptLanguage (\s a -> s {_llpAcceptLanguage = a})

-- | The product identifier.
llpProductId :: Lens' ListLaunchPaths Text
llpProductId = lens _llpProductId (\s a -> s {_llpProductId = a})

instance AWSPager ListLaunchPaths where
  page rq rs
    | stop (rs ^. llprrsNextPageToken) = Nothing
    | stop (rs ^. llprrsLaunchPathSummaries) = Nothing
    | otherwise =
      Just $ rq & llpPageToken .~ rs ^. llprrsNextPageToken

instance AWSRequest ListLaunchPaths where
  type Rs ListLaunchPaths = ListLaunchPathsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListLaunchPathsResponse'
            <$> (x .?> "LaunchPathSummaries" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListLaunchPaths

instance NFData ListLaunchPaths

instance ToHeaders ListLaunchPaths where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListLaunchPaths" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLaunchPaths where
  toJSON ListLaunchPaths' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _llpPageSize,
            ("PageToken" .=) <$> _llpPageToken,
            ("AcceptLanguage" .=) <$> _llpAcceptLanguage,
            Just ("ProductId" .= _llpProductId)
          ]
      )

instance ToPath ListLaunchPaths where
  toPath = const "/"

instance ToQuery ListLaunchPaths where
  toQuery = const mempty

-- | /See:/ 'listLaunchPathsResponse' smart constructor.
data ListLaunchPathsResponse = ListLaunchPathsResponse'
  { _llprrsLaunchPathSummaries ::
      !( Maybe
           [LaunchPathSummary]
       ),
    _llprrsNextPageToken ::
      !(Maybe Text),
    _llprrsResponseStatus ::
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

-- | Creates a value of 'ListLaunchPathsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llprrsLaunchPathSummaries' - Information about the launch path.
--
-- * 'llprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'llprrsResponseStatus' - -- | The response status code.
listLaunchPathsResponse ::
  -- | 'llprrsResponseStatus'
  Int ->
  ListLaunchPathsResponse
listLaunchPathsResponse pResponseStatus_ =
  ListLaunchPathsResponse'
    { _llprrsLaunchPathSummaries =
        Nothing,
      _llprrsNextPageToken = Nothing,
      _llprrsResponseStatus = pResponseStatus_
    }

-- | Information about the launch path.
llprrsLaunchPathSummaries :: Lens' ListLaunchPathsResponse [LaunchPathSummary]
llprrsLaunchPathSummaries = lens _llprrsLaunchPathSummaries (\s a -> s {_llprrsLaunchPathSummaries = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
llprrsNextPageToken :: Lens' ListLaunchPathsResponse (Maybe Text)
llprrsNextPageToken = lens _llprrsNextPageToken (\s a -> s {_llprrsNextPageToken = a})

-- | -- | The response status code.
llprrsResponseStatus :: Lens' ListLaunchPathsResponse Int
llprrsResponseStatus = lens _llprrsResponseStatus (\s a -> s {_llprrsResponseStatus = a})

instance NFData ListLaunchPathsResponse
