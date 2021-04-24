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
-- Module      : Network.AWS.Greengrass.ListSubscriptionDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of subscription definitions.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListSubscriptionDefinitions
  ( -- * Creating a Request
    listSubscriptionDefinitions,
    ListSubscriptionDefinitions,

    -- * Request Lenses
    lsdNextToken,
    lsdMaxResults,

    -- * Destructuring the Response
    listSubscriptionDefinitionsResponse,
    ListSubscriptionDefinitionsResponse,

    -- * Response Lenses
    lsdrrsNextToken,
    lsdrrsDefinitions,
    lsdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSubscriptionDefinitions' smart constructor.
data ListSubscriptionDefinitions = ListSubscriptionDefinitions'
  { _lsdNextToken ::
      !(Maybe Text),
    _lsdMaxResults ::
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

-- | Creates a value of 'ListSubscriptionDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lsdMaxResults' - The maximum number of results to be returned per request.
listSubscriptionDefinitions ::
  ListSubscriptionDefinitions
listSubscriptionDefinitions =
  ListSubscriptionDefinitions'
    { _lsdNextToken =
        Nothing,
      _lsdMaxResults = Nothing
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lsdNextToken :: Lens' ListSubscriptionDefinitions (Maybe Text)
lsdNextToken = lens _lsdNextToken (\s a -> s {_lsdNextToken = a})

-- | The maximum number of results to be returned per request.
lsdMaxResults :: Lens' ListSubscriptionDefinitions (Maybe Text)
lsdMaxResults = lens _lsdMaxResults (\s a -> s {_lsdMaxResults = a})

instance AWSPager ListSubscriptionDefinitions where
  page rq rs
    | stop (rs ^. lsdrrsNextToken) = Nothing
    | stop (rs ^. lsdrrsDefinitions) = Nothing
    | otherwise =
      Just $ rq & lsdNextToken .~ rs ^. lsdrrsNextToken

instance AWSRequest ListSubscriptionDefinitions where
  type
    Rs ListSubscriptionDefinitions =
      ListSubscriptionDefinitionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListSubscriptionDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Definitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSubscriptionDefinitions

instance NFData ListSubscriptionDefinitions

instance ToHeaders ListSubscriptionDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListSubscriptionDefinitions where
  toPath = const "/greengrass/definition/subscriptions"

instance ToQuery ListSubscriptionDefinitions where
  toQuery ListSubscriptionDefinitions' {..} =
    mconcat
      [ "NextToken" =: _lsdNextToken,
        "MaxResults" =: _lsdMaxResults
      ]

-- | /See:/ 'listSubscriptionDefinitionsResponse' smart constructor.
data ListSubscriptionDefinitionsResponse = ListSubscriptionDefinitionsResponse'
  { _lsdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lsdrrsDefinitions ::
      !( Maybe
           [DefinitionInformation]
       ),
    _lsdrrsResponseStatus ::
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

-- | Creates a value of 'ListSubscriptionDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lsdrrsDefinitions' - Information about a definition.
--
-- * 'lsdrrsResponseStatus' - -- | The response status code.
listSubscriptionDefinitionsResponse ::
  -- | 'lsdrrsResponseStatus'
  Int ->
  ListSubscriptionDefinitionsResponse
listSubscriptionDefinitionsResponse pResponseStatus_ =
  ListSubscriptionDefinitionsResponse'
    { _lsdrrsNextToken =
        Nothing,
      _lsdrrsDefinitions = Nothing,
      _lsdrrsResponseStatus =
        pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lsdrrsNextToken :: Lens' ListSubscriptionDefinitionsResponse (Maybe Text)
lsdrrsNextToken = lens _lsdrrsNextToken (\s a -> s {_lsdrrsNextToken = a})

-- | Information about a definition.
lsdrrsDefinitions :: Lens' ListSubscriptionDefinitionsResponse [DefinitionInformation]
lsdrrsDefinitions = lens _lsdrrsDefinitions (\s a -> s {_lsdrrsDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
lsdrrsResponseStatus :: Lens' ListSubscriptionDefinitionsResponse Int
lsdrrsResponseStatus = lens _lsdrrsResponseStatus (\s a -> s {_lsdrrsResponseStatus = a})

instance NFData ListSubscriptionDefinitionsResponse
