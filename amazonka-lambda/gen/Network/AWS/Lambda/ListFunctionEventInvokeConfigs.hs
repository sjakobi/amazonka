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
-- Module      : Network.AWS.Lambda.ListFunctionEventInvokeConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of configurations for asynchronous invocation for a function.
--
--
-- To configure options for asynchronous invocation, use 'PutFunctionEventInvokeConfig' .
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListFunctionEventInvokeConfigs
  ( -- * Creating a Request
    listFunctionEventInvokeConfigs,
    ListFunctionEventInvokeConfigs,

    -- * Request Lenses
    lfeicMaxItems,
    lfeicMarker,
    lfeicFunctionName,

    -- * Destructuring the Response
    listFunctionEventInvokeConfigsResponse,
    ListFunctionEventInvokeConfigsResponse,

    -- * Response Lenses
    lfeicrrsNextMarker,
    lfeicrrsFunctionEventInvokeConfigs,
    lfeicrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFunctionEventInvokeConfigs' smart constructor.
data ListFunctionEventInvokeConfigs = ListFunctionEventInvokeConfigs'
  { _lfeicMaxItems ::
      !( Maybe
           Nat
       ),
    _lfeicMarker ::
      !( Maybe
           Text
       ),
    _lfeicFunctionName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListFunctionEventInvokeConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfeicMaxItems' - The maximum number of configurations to return.
--
-- * 'lfeicMarker' - Specify the pagination token that's returned by a previous request to retrieve the next page of results.
--
-- * 'lfeicFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
listFunctionEventInvokeConfigs ::
  -- | 'lfeicFunctionName'
  Text ->
  ListFunctionEventInvokeConfigs
listFunctionEventInvokeConfigs pFunctionName_ =
  ListFunctionEventInvokeConfigs'
    { _lfeicMaxItems =
        Nothing,
      _lfeicMarker = Nothing,
      _lfeicFunctionName = pFunctionName_
    }

-- | The maximum number of configurations to return.
lfeicMaxItems :: Lens' ListFunctionEventInvokeConfigs (Maybe Natural)
lfeicMaxItems = lens _lfeicMaxItems (\s a -> s {_lfeicMaxItems = a}) . mapping _Nat

-- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
lfeicMarker :: Lens' ListFunctionEventInvokeConfigs (Maybe Text)
lfeicMarker = lens _lfeicMarker (\s a -> s {_lfeicMarker = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
lfeicFunctionName :: Lens' ListFunctionEventInvokeConfigs Text
lfeicFunctionName = lens _lfeicFunctionName (\s a -> s {_lfeicFunctionName = a})

instance AWSPager ListFunctionEventInvokeConfigs where
  page rq rs
    | stop (rs ^. lfeicrrsNextMarker) = Nothing
    | stop (rs ^. lfeicrrsFunctionEventInvokeConfigs) =
      Nothing
    | otherwise =
      Just $ rq & lfeicMarker .~ rs ^. lfeicrrsNextMarker

instance AWSRequest ListFunctionEventInvokeConfigs where
  type
    Rs ListFunctionEventInvokeConfigs =
      ListFunctionEventInvokeConfigsResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListFunctionEventInvokeConfigsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "FunctionEventInvokeConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFunctionEventInvokeConfigs

instance NFData ListFunctionEventInvokeConfigs

instance ToHeaders ListFunctionEventInvokeConfigs where
  toHeaders = const mempty

instance ToPath ListFunctionEventInvokeConfigs where
  toPath ListFunctionEventInvokeConfigs' {..} =
    mconcat
      [ "/2019-09-25/functions/",
        toBS _lfeicFunctionName,
        "/event-invoke-config/list"
      ]

instance ToQuery ListFunctionEventInvokeConfigs where
  toQuery ListFunctionEventInvokeConfigs' {..} =
    mconcat
      [ "MaxItems" =: _lfeicMaxItems,
        "Marker" =: _lfeicMarker
      ]

-- | /See:/ 'listFunctionEventInvokeConfigsResponse' smart constructor.
data ListFunctionEventInvokeConfigsResponse = ListFunctionEventInvokeConfigsResponse'
  { _lfeicrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lfeicrrsFunctionEventInvokeConfigs ::
      !( Maybe
           [FunctionEventInvokeConfig]
       ),
    _lfeicrrsResponseStatus ::
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

-- | Creates a value of 'ListFunctionEventInvokeConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfeicrrsNextMarker' - The pagination token that's included if more results are available.
--
-- * 'lfeicrrsFunctionEventInvokeConfigs' - A list of configurations.
--
-- * 'lfeicrrsResponseStatus' - -- | The response status code.
listFunctionEventInvokeConfigsResponse ::
  -- | 'lfeicrrsResponseStatus'
  Int ->
  ListFunctionEventInvokeConfigsResponse
listFunctionEventInvokeConfigsResponse
  pResponseStatus_ =
    ListFunctionEventInvokeConfigsResponse'
      { _lfeicrrsNextMarker =
          Nothing,
        _lfeicrrsFunctionEventInvokeConfigs =
          Nothing,
        _lfeicrrsResponseStatus =
          pResponseStatus_
      }

-- | The pagination token that's included if more results are available.
lfeicrrsNextMarker :: Lens' ListFunctionEventInvokeConfigsResponse (Maybe Text)
lfeicrrsNextMarker = lens _lfeicrrsNextMarker (\s a -> s {_lfeicrrsNextMarker = a})

-- | A list of configurations.
lfeicrrsFunctionEventInvokeConfigs :: Lens' ListFunctionEventInvokeConfigsResponse [FunctionEventInvokeConfig]
lfeicrrsFunctionEventInvokeConfigs = lens _lfeicrrsFunctionEventInvokeConfigs (\s a -> s {_lfeicrrsFunctionEventInvokeConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
lfeicrrsResponseStatus :: Lens' ListFunctionEventInvokeConfigsResponse Int
lfeicrrsResponseStatus = lens _lfeicrrsResponseStatus (\s a -> s {_lfeicrrsResponseStatus = a})

instance
  NFData
    ListFunctionEventInvokeConfigsResponse
