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
-- Module      : Network.AWS.MQ.ListConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all configurations.
module Network.AWS.MQ.ListConfigurations
  ( -- * Creating a Request
    listConfigurations,
    ListConfigurations,

    -- * Request Lenses
    lcNextToken,
    lcMaxResults,

    -- * Destructuring the Response
    listConfigurationsResponse,
    ListConfigurationsResponse,

    -- * Response Lenses
    lcrrsNextToken,
    lcrrsMaxResults,
    lcrrsConfigurations,
    lcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listConfigurations' smart constructor.
data ListConfigurations = ListConfigurations'
  { _lcNextToken ::
      !(Maybe Text),
    _lcMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lcMaxResults' - The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
listConfigurations ::
  ListConfigurations
listConfigurations =
  ListConfigurations'
    { _lcNextToken = Nothing,
      _lcMaxResults = Nothing
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lcNextToken :: Lens' ListConfigurations (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
lcMaxResults :: Lens' ListConfigurations (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

instance AWSRequest ListConfigurations where
  type
    Rs ListConfigurations =
      ListConfigurationsResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          ListConfigurationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "maxResults")
            <*> (x .?> "configurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListConfigurations

instance NFData ListConfigurations

instance ToHeaders ListConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListConfigurations where
  toPath = const "/v1/configurations"

instance ToQuery ListConfigurations where
  toQuery ListConfigurations' {..} =
    mconcat
      [ "nextToken" =: _lcNextToken,
        "maxResults" =: _lcMaxResults
      ]

-- | /See:/ 'listConfigurationsResponse' smart constructor.
data ListConfigurationsResponse = ListConfigurationsResponse'
  { _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsMaxResults ::
      !(Maybe Int),
    _lcrrsConfigurations ::
      !( Maybe
           [Configuration]
       ),
    _lcrrsResponseStatus ::
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

-- | Creates a value of 'ListConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lcrrsMaxResults' - The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'lcrrsConfigurations' - The list of all revisions for the specified configuration.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listConfigurationsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListConfigurationsResponse
listConfigurationsResponse pResponseStatus_ =
  ListConfigurationsResponse'
    { _lcrrsNextToken =
        Nothing,
      _lcrrsMaxResults = Nothing,
      _lcrrsConfigurations = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lcrrsNextToken :: Lens' ListConfigurationsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
lcrrsMaxResults :: Lens' ListConfigurationsResponse (Maybe Int)
lcrrsMaxResults = lens _lcrrsMaxResults (\s a -> s {_lcrrsMaxResults = a})

-- | The list of all revisions for the specified configuration.
lcrrsConfigurations :: Lens' ListConfigurationsResponse [Configuration]
lcrrsConfigurations = lens _lcrrsConfigurations (\s a -> s {_lcrrsConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListConfigurationsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListConfigurationsResponse
