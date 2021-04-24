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
-- Module      : Network.AWS.CloudWatchEvents.ListPartnerEventSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An SaaS partner can use this operation to list all the partner event source names that they have created. This operation is not used by AWS customers.
module Network.AWS.CloudWatchEvents.ListPartnerEventSources
  ( -- * Creating a Request
    listPartnerEventSources,
    ListPartnerEventSources,

    -- * Request Lenses
    lpesNextToken,
    lpesLimit,
    lpesNamePrefix,

    -- * Destructuring the Response
    listPartnerEventSourcesResponse,
    ListPartnerEventSourcesResponse,

    -- * Response Lenses
    lpesrrsNextToken,
    lpesrrsPartnerEventSources,
    lpesrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPartnerEventSources' smart constructor.
data ListPartnerEventSources = ListPartnerEventSources'
  { _lpesNextToken ::
      !(Maybe Text),
    _lpesLimit ::
      !(Maybe Nat),
    _lpesNamePrefix ::
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

-- | Creates a value of 'ListPartnerEventSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpesNextToken' - The token returned by a previous call to this operation. Specifying this retrieves the next set of results.
--
-- * 'lpesLimit' - pecifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
--
-- * 'lpesNamePrefix' - If you specify this, the results are limited to only those partner event sources that start with the string you specify.
listPartnerEventSources ::
  -- | 'lpesNamePrefix'
  Text ->
  ListPartnerEventSources
listPartnerEventSources pNamePrefix_ =
  ListPartnerEventSources'
    { _lpesNextToken = Nothing,
      _lpesLimit = Nothing,
      _lpesNamePrefix = pNamePrefix_
    }

-- | The token returned by a previous call to this operation. Specifying this retrieves the next set of results.
lpesNextToken :: Lens' ListPartnerEventSources (Maybe Text)
lpesNextToken = lens _lpesNextToken (\s a -> s {_lpesNextToken = a})

-- | pecifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
lpesLimit :: Lens' ListPartnerEventSources (Maybe Natural)
lpesLimit = lens _lpesLimit (\s a -> s {_lpesLimit = a}) . mapping _Nat

-- | If you specify this, the results are limited to only those partner event sources that start with the string you specify.
lpesNamePrefix :: Lens' ListPartnerEventSources Text
lpesNamePrefix = lens _lpesNamePrefix (\s a -> s {_lpesNamePrefix = a})

instance AWSRequest ListPartnerEventSources where
  type
    Rs ListPartnerEventSources =
      ListPartnerEventSourcesResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListPartnerEventSourcesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PartnerEventSources" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPartnerEventSources

instance NFData ListPartnerEventSources

instance ToHeaders ListPartnerEventSources where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListPartnerEventSources" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPartnerEventSources where
  toJSON ListPartnerEventSources' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpesNextToken,
            ("Limit" .=) <$> _lpesLimit,
            Just ("NamePrefix" .= _lpesNamePrefix)
          ]
      )

instance ToPath ListPartnerEventSources where
  toPath = const "/"

instance ToQuery ListPartnerEventSources where
  toQuery = const mempty

-- | /See:/ 'listPartnerEventSourcesResponse' smart constructor.
data ListPartnerEventSourcesResponse = ListPartnerEventSourcesResponse'
  { _lpesrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpesrrsPartnerEventSources ::
      !( Maybe
           [PartnerEventSource]
       ),
    _lpesrrsResponseStatus ::
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

-- | Creates a value of 'ListPartnerEventSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpesrrsNextToken' - A token you can use in a subsequent operation to retrieve the next set of results.
--
-- * 'lpesrrsPartnerEventSources' - The list of partner event sources returned by the operation.
--
-- * 'lpesrrsResponseStatus' - -- | The response status code.
listPartnerEventSourcesResponse ::
  -- | 'lpesrrsResponseStatus'
  Int ->
  ListPartnerEventSourcesResponse
listPartnerEventSourcesResponse pResponseStatus_ =
  ListPartnerEventSourcesResponse'
    { _lpesrrsNextToken =
        Nothing,
      _lpesrrsPartnerEventSources = Nothing,
      _lpesrrsResponseStatus = pResponseStatus_
    }

-- | A token you can use in a subsequent operation to retrieve the next set of results.
lpesrrsNextToken :: Lens' ListPartnerEventSourcesResponse (Maybe Text)
lpesrrsNextToken = lens _lpesrrsNextToken (\s a -> s {_lpesrrsNextToken = a})

-- | The list of partner event sources returned by the operation.
lpesrrsPartnerEventSources :: Lens' ListPartnerEventSourcesResponse [PartnerEventSource]
lpesrrsPartnerEventSources = lens _lpesrrsPartnerEventSources (\s a -> s {_lpesrrsPartnerEventSources = a}) . _Default . _Coerce

-- | -- | The response status code.
lpesrrsResponseStatus :: Lens' ListPartnerEventSourcesResponse Int
lpesrrsResponseStatus = lens _lpesrrsResponseStatus (\s a -> s {_lpesrrsResponseStatus = a})

instance NFData ListPartnerEventSourcesResponse
