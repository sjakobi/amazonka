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
-- Module      : Network.AWS.Lambda.ListFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call.
--
--
-- Set @FunctionVersion@ to @ALL@ to include all published versions of each function in addition to the unpublished version. To get more information about a function or version, use 'GetFunction' .
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListFunctions
  ( -- * Creating a Request
    listFunctions,
    ListFunctions,

    -- * Request Lenses
    lfMasterRegion,
    lfFunctionVersion,
    lfMaxItems,
    lfMarker,

    -- * Destructuring the Response
    listFunctionsResponse,
    ListFunctionsResponse,

    -- * Response Lenses
    lfrrsFunctions,
    lfrrsNextMarker,
    lfrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFunctions' smart constructor.
data ListFunctions = ListFunctions'
  { _lfMasterRegion ::
      !(Maybe Text),
    _lfFunctionVersion ::
      !(Maybe FunctionVersion),
    _lfMaxItems :: !(Maybe Nat),
    _lfMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFunctions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfMasterRegion' - For Lambda@Edge functions, the AWS Region of the master function. For example, @us-east-1@ filters the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N. Virginia). If specified, you must set @FunctionVersion@ to @ALL@ .
--
-- * 'lfFunctionVersion' - Set to @ALL@ to include entries for all published versions of each function.
--
-- * 'lfMaxItems' - The maximum number of functions to return.
--
-- * 'lfMarker' - Specify the pagination token that's returned by a previous request to retrieve the next page of results.
listFunctions ::
  ListFunctions
listFunctions =
  ListFunctions'
    { _lfMasterRegion = Nothing,
      _lfFunctionVersion = Nothing,
      _lfMaxItems = Nothing,
      _lfMarker = Nothing
    }

-- | For Lambda@Edge functions, the AWS Region of the master function. For example, @us-east-1@ filters the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N. Virginia). If specified, you must set @FunctionVersion@ to @ALL@ .
lfMasterRegion :: Lens' ListFunctions (Maybe Text)
lfMasterRegion = lens _lfMasterRegion (\s a -> s {_lfMasterRegion = a})

-- | Set to @ALL@ to include entries for all published versions of each function.
lfFunctionVersion :: Lens' ListFunctions (Maybe FunctionVersion)
lfFunctionVersion = lens _lfFunctionVersion (\s a -> s {_lfFunctionVersion = a})

-- | The maximum number of functions to return.
lfMaxItems :: Lens' ListFunctions (Maybe Natural)
lfMaxItems = lens _lfMaxItems (\s a -> s {_lfMaxItems = a}) . mapping _Nat

-- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
lfMarker :: Lens' ListFunctions (Maybe Text)
lfMarker = lens _lfMarker (\s a -> s {_lfMarker = a})

instance AWSPager ListFunctions where
  page rq rs
    | stop (rs ^. lfrrsNextMarker) = Nothing
    | stop (rs ^. lfrrsFunctions) = Nothing
    | otherwise =
      Just $ rq & lfMarker .~ rs ^. lfrrsNextMarker

instance AWSRequest ListFunctions where
  type Rs ListFunctions = ListFunctionsResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListFunctionsResponse'
            <$> (x .?> "Functions" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListFunctions

instance NFData ListFunctions

instance ToHeaders ListFunctions where
  toHeaders = const mempty

instance ToPath ListFunctions where
  toPath = const "/2015-03-31/functions/"

instance ToQuery ListFunctions where
  toQuery ListFunctions' {..} =
    mconcat
      [ "MasterRegion" =: _lfMasterRegion,
        "FunctionVersion" =: _lfFunctionVersion,
        "MaxItems" =: _lfMaxItems,
        "Marker" =: _lfMarker
      ]

-- | A list of Lambda functions.
--
--
--
-- /See:/ 'listFunctionsResponse' smart constructor.
data ListFunctionsResponse = ListFunctionsResponse'
  { _lfrrsFunctions ::
      !( Maybe
           [FunctionConfiguration]
       ),
    _lfrrsNextMarker ::
      !(Maybe Text),
    _lfrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFunctionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrrsFunctions' - A list of Lambda functions.
--
-- * 'lfrrsNextMarker' - The pagination token that's included if more results are available.
--
-- * 'lfrrsResponseStatus' - -- | The response status code.
listFunctionsResponse ::
  -- | 'lfrrsResponseStatus'
  Int ->
  ListFunctionsResponse
listFunctionsResponse pResponseStatus_ =
  ListFunctionsResponse'
    { _lfrrsFunctions = Nothing,
      _lfrrsNextMarker = Nothing,
      _lfrrsResponseStatus = pResponseStatus_
    }

-- | A list of Lambda functions.
lfrrsFunctions :: Lens' ListFunctionsResponse [FunctionConfiguration]
lfrrsFunctions = lens _lfrrsFunctions (\s a -> s {_lfrrsFunctions = a}) . _Default . _Coerce

-- | The pagination token that's included if more results are available.
lfrrsNextMarker :: Lens' ListFunctionsResponse (Maybe Text)
lfrrsNextMarker = lens _lfrrsNextMarker (\s a -> s {_lfrrsNextMarker = a})

-- | -- | The response status code.
lfrrsResponseStatus :: Lens' ListFunctionsResponse Int
lfrrsResponseStatus = lens _lfrrsResponseStatus (\s a -> s {_lfrrsResponseStatus = a})

instance NFData ListFunctionsResponse
