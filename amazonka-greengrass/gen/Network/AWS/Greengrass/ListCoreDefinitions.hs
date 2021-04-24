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
-- Module      : Network.AWS.Greengrass.ListCoreDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of core definitions.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListCoreDefinitions
  ( -- * Creating a Request
    listCoreDefinitions,
    ListCoreDefinitions,

    -- * Request Lenses
    lcdNextToken,
    lcdMaxResults,

    -- * Destructuring the Response
    listCoreDefinitionsResponse,
    ListCoreDefinitionsResponse,

    -- * Response Lenses
    lcdrrsNextToken,
    lcdrrsDefinitions,
    lcdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCoreDefinitions' smart constructor.
data ListCoreDefinitions = ListCoreDefinitions'
  { _lcdNextToken ::
      !(Maybe Text),
    _lcdMaxResults :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCoreDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lcdMaxResults' - The maximum number of results to be returned per request.
listCoreDefinitions ::
  ListCoreDefinitions
listCoreDefinitions =
  ListCoreDefinitions'
    { _lcdNextToken = Nothing,
      _lcdMaxResults = Nothing
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lcdNextToken :: Lens' ListCoreDefinitions (Maybe Text)
lcdNextToken = lens _lcdNextToken (\s a -> s {_lcdNextToken = a})

-- | The maximum number of results to be returned per request.
lcdMaxResults :: Lens' ListCoreDefinitions (Maybe Text)
lcdMaxResults = lens _lcdMaxResults (\s a -> s {_lcdMaxResults = a})

instance AWSPager ListCoreDefinitions where
  page rq rs
    | stop (rs ^. lcdrrsNextToken) = Nothing
    | stop (rs ^. lcdrrsDefinitions) = Nothing
    | otherwise =
      Just $ rq & lcdNextToken .~ rs ^. lcdrrsNextToken

instance AWSRequest ListCoreDefinitions where
  type
    Rs ListCoreDefinitions =
      ListCoreDefinitionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListCoreDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Definitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCoreDefinitions

instance NFData ListCoreDefinitions

instance ToHeaders ListCoreDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListCoreDefinitions where
  toPath = const "/greengrass/definition/cores"

instance ToQuery ListCoreDefinitions where
  toQuery ListCoreDefinitions' {..} =
    mconcat
      [ "NextToken" =: _lcdNextToken,
        "MaxResults" =: _lcdMaxResults
      ]

-- | /See:/ 'listCoreDefinitionsResponse' smart constructor.
data ListCoreDefinitionsResponse = ListCoreDefinitionsResponse'
  { _lcdrrsNextToken ::
      !(Maybe Text),
    _lcdrrsDefinitions ::
      !( Maybe
           [DefinitionInformation]
       ),
    _lcdrrsResponseStatus ::
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

-- | Creates a value of 'ListCoreDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lcdrrsDefinitions' - Information about a definition.
--
-- * 'lcdrrsResponseStatus' - -- | The response status code.
listCoreDefinitionsResponse ::
  -- | 'lcdrrsResponseStatus'
  Int ->
  ListCoreDefinitionsResponse
listCoreDefinitionsResponse pResponseStatus_ =
  ListCoreDefinitionsResponse'
    { _lcdrrsNextToken =
        Nothing,
      _lcdrrsDefinitions = Nothing,
      _lcdrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lcdrrsNextToken :: Lens' ListCoreDefinitionsResponse (Maybe Text)
lcdrrsNextToken = lens _lcdrrsNextToken (\s a -> s {_lcdrrsNextToken = a})

-- | Information about a definition.
lcdrrsDefinitions :: Lens' ListCoreDefinitionsResponse [DefinitionInformation]
lcdrrsDefinitions = lens _lcdrrsDefinitions (\s a -> s {_lcdrrsDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
lcdrrsResponseStatus :: Lens' ListCoreDefinitionsResponse Int
lcdrrsResponseStatus = lens _lcdrrsResponseStatus (\s a -> s {_lcdrrsResponseStatus = a})

instance NFData ListCoreDefinitionsResponse
