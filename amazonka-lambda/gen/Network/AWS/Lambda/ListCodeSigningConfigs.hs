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
-- Module      : Network.AWS.Lambda.ListCodeSigningConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of <https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html code signing configurations> . A request returns up to 10,000 configurations per call. You can use the @MaxItems@ parameter to return fewer configurations per call.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListCodeSigningConfigs
  ( -- * Creating a Request
    listCodeSigningConfigs,
    ListCodeSigningConfigs,

    -- * Request Lenses
    lcscMaxItems,
    lcscMarker,

    -- * Destructuring the Response
    listCodeSigningConfigsResponse,
    ListCodeSigningConfigsResponse,

    -- * Response Lenses
    lcscrrsNextMarker,
    lcscrrsCodeSigningConfigs,
    lcscrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCodeSigningConfigs' smart constructor.
data ListCodeSigningConfigs = ListCodeSigningConfigs'
  { _lcscMaxItems ::
      !(Maybe Nat),
    _lcscMarker ::
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

-- | Creates a value of 'ListCodeSigningConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcscMaxItems' - Maximum number of items to return.
--
-- * 'lcscMarker' - Specify the pagination token that's returned by a previous request to retrieve the next page of results.
listCodeSigningConfigs ::
  ListCodeSigningConfigs
listCodeSigningConfigs =
  ListCodeSigningConfigs'
    { _lcscMaxItems = Nothing,
      _lcscMarker = Nothing
    }

-- | Maximum number of items to return.
lcscMaxItems :: Lens' ListCodeSigningConfigs (Maybe Natural)
lcscMaxItems = lens _lcscMaxItems (\s a -> s {_lcscMaxItems = a}) . mapping _Nat

-- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
lcscMarker :: Lens' ListCodeSigningConfigs (Maybe Text)
lcscMarker = lens _lcscMarker (\s a -> s {_lcscMarker = a})

instance AWSPager ListCodeSigningConfigs where
  page rq rs
    | stop (rs ^. lcscrrsNextMarker) = Nothing
    | stop (rs ^. lcscrrsCodeSigningConfigs) = Nothing
    | otherwise =
      Just $ rq & lcscMarker .~ rs ^. lcscrrsNextMarker

instance AWSRequest ListCodeSigningConfigs where
  type
    Rs ListCodeSigningConfigs =
      ListCodeSigningConfigsResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListCodeSigningConfigsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "CodeSigningConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCodeSigningConfigs

instance NFData ListCodeSigningConfigs

instance ToHeaders ListCodeSigningConfigs where
  toHeaders = const mempty

instance ToPath ListCodeSigningConfigs where
  toPath = const "/2020-04-22/code-signing-configs/"

instance ToQuery ListCodeSigningConfigs where
  toQuery ListCodeSigningConfigs' {..} =
    mconcat
      [ "MaxItems" =: _lcscMaxItems,
        "Marker" =: _lcscMarker
      ]

-- | /See:/ 'listCodeSigningConfigsResponse' smart constructor.
data ListCodeSigningConfigsResponse = ListCodeSigningConfigsResponse'
  { _lcscrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lcscrrsCodeSigningConfigs ::
      !( Maybe
           [CodeSigningConfig]
       ),
    _lcscrrsResponseStatus ::
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

-- | Creates a value of 'ListCodeSigningConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcscrrsNextMarker' - The pagination token that's included if more results are available.
--
-- * 'lcscrrsCodeSigningConfigs' - The code signing configurations
--
-- * 'lcscrrsResponseStatus' - -- | The response status code.
listCodeSigningConfigsResponse ::
  -- | 'lcscrrsResponseStatus'
  Int ->
  ListCodeSigningConfigsResponse
listCodeSigningConfigsResponse pResponseStatus_ =
  ListCodeSigningConfigsResponse'
    { _lcscrrsNextMarker =
        Nothing,
      _lcscrrsCodeSigningConfigs = Nothing,
      _lcscrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token that's included if more results are available.
lcscrrsNextMarker :: Lens' ListCodeSigningConfigsResponse (Maybe Text)
lcscrrsNextMarker = lens _lcscrrsNextMarker (\s a -> s {_lcscrrsNextMarker = a})

-- | The code signing configurations
lcscrrsCodeSigningConfigs :: Lens' ListCodeSigningConfigsResponse [CodeSigningConfig]
lcscrrsCodeSigningConfigs = lens _lcscrrsCodeSigningConfigs (\s a -> s {_lcscrrsCodeSigningConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
lcscrrsResponseStatus :: Lens' ListCodeSigningConfigsResponse Int
lcscrrsResponseStatus = lens _lcscrrsResponseStatus (\s a -> s {_lcscrrsResponseStatus = a})

instance NFData ListCodeSigningConfigsResponse
