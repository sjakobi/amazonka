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
-- Module      : Network.AWS.Translate.ListParallelData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of your parallel data resources in Amazon Translate.
module Network.AWS.Translate.ListParallelData
  ( -- * Creating a Request
    listParallelData,
    ListParallelData,

    -- * Request Lenses
    lpdNextToken,
    lpdMaxResults,

    -- * Destructuring the Response
    listParallelDataResponse,
    ListParallelDataResponse,

    -- * Response Lenses
    lpdrrsNextToken,
    lpdrrsParallelDataPropertiesList,
    lpdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'listParallelData' smart constructor.
data ListParallelData = ListParallelData'
  { _lpdNextToken ::
      !(Maybe Text),
    _lpdMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListParallelData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdNextToken' - A string that specifies the next page of results to return in a paginated response.
--
-- * 'lpdMaxResults' - The maximum number of parallel data resources returned for each request.
listParallelData ::
  ListParallelData
listParallelData =
  ListParallelData'
    { _lpdNextToken = Nothing,
      _lpdMaxResults = Nothing
    }

-- | A string that specifies the next page of results to return in a paginated response.
lpdNextToken :: Lens' ListParallelData (Maybe Text)
lpdNextToken = lens _lpdNextToken (\s a -> s {_lpdNextToken = a})

-- | The maximum number of parallel data resources returned for each request.
lpdMaxResults :: Lens' ListParallelData (Maybe Natural)
lpdMaxResults = lens _lpdMaxResults (\s a -> s {_lpdMaxResults = a}) . mapping _Nat

instance AWSRequest ListParallelData where
  type Rs ListParallelData = ListParallelDataResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          ListParallelDataResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ParallelDataPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListParallelData

instance NFData ListParallelData

instance ToHeaders ListParallelData where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.ListParallelData" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListParallelData where
  toJSON ListParallelData' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpdNextToken,
            ("MaxResults" .=) <$> _lpdMaxResults
          ]
      )

instance ToPath ListParallelData where
  toPath = const "/"

instance ToQuery ListParallelData where
  toQuery = const mempty

-- | /See:/ 'listParallelDataResponse' smart constructor.
data ListParallelDataResponse = ListParallelDataResponse'
  { _lpdrrsNextToken ::
      !(Maybe Text),
    _lpdrrsParallelDataPropertiesList ::
      !( Maybe
           [ParallelDataProperties]
       ),
    _lpdrrsResponseStatus ::
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

-- | Creates a value of 'ListParallelDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdrrsNextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
--
-- * 'lpdrrsParallelDataPropertiesList' - The properties of the parallel data resources returned by this request.
--
-- * 'lpdrrsResponseStatus' - -- | The response status code.
listParallelDataResponse ::
  -- | 'lpdrrsResponseStatus'
  Int ->
  ListParallelDataResponse
listParallelDataResponse pResponseStatus_ =
  ListParallelDataResponse'
    { _lpdrrsNextToken =
        Nothing,
      _lpdrrsParallelDataPropertiesList = Nothing,
      _lpdrrsResponseStatus = pResponseStatus_
    }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
lpdrrsNextToken :: Lens' ListParallelDataResponse (Maybe Text)
lpdrrsNextToken = lens _lpdrrsNextToken (\s a -> s {_lpdrrsNextToken = a})

-- | The properties of the parallel data resources returned by this request.
lpdrrsParallelDataPropertiesList :: Lens' ListParallelDataResponse [ParallelDataProperties]
lpdrrsParallelDataPropertiesList = lens _lpdrrsParallelDataPropertiesList (\s a -> s {_lpdrrsParallelDataPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpdrrsResponseStatus :: Lens' ListParallelDataResponse Int
lpdrrsResponseStatus = lens _lpdrrsResponseStatus (\s a -> s {_lpdrrsResponseStatus = a})

instance NFData ListParallelDataResponse
