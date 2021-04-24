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
-- Module      : Network.AWS.Greengrass.ListLoggerDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of logger definitions.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListLoggerDefinitions
  ( -- * Creating a Request
    listLoggerDefinitions,
    ListLoggerDefinitions,

    -- * Request Lenses
    lldNextToken,
    lldMaxResults,

    -- * Destructuring the Response
    listLoggerDefinitionsResponse,
    ListLoggerDefinitionsResponse,

    -- * Response Lenses
    lldrrsNextToken,
    lldrrsDefinitions,
    lldrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLoggerDefinitions' smart constructor.
data ListLoggerDefinitions = ListLoggerDefinitions'
  { _lldNextToken ::
      !(Maybe Text),
    _lldMaxResults ::
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

-- | Creates a value of 'ListLoggerDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lldMaxResults' - The maximum number of results to be returned per request.
listLoggerDefinitions ::
  ListLoggerDefinitions
listLoggerDefinitions =
  ListLoggerDefinitions'
    { _lldNextToken = Nothing,
      _lldMaxResults = Nothing
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lldNextToken :: Lens' ListLoggerDefinitions (Maybe Text)
lldNextToken = lens _lldNextToken (\s a -> s {_lldNextToken = a})

-- | The maximum number of results to be returned per request.
lldMaxResults :: Lens' ListLoggerDefinitions (Maybe Text)
lldMaxResults = lens _lldMaxResults (\s a -> s {_lldMaxResults = a})

instance AWSPager ListLoggerDefinitions where
  page rq rs
    | stop (rs ^. lldrrsNextToken) = Nothing
    | stop (rs ^. lldrrsDefinitions) = Nothing
    | otherwise =
      Just $ rq & lldNextToken .~ rs ^. lldrrsNextToken

instance AWSRequest ListLoggerDefinitions where
  type
    Rs ListLoggerDefinitions =
      ListLoggerDefinitionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListLoggerDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Definitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLoggerDefinitions

instance NFData ListLoggerDefinitions

instance ToHeaders ListLoggerDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListLoggerDefinitions where
  toPath = const "/greengrass/definition/loggers"

instance ToQuery ListLoggerDefinitions where
  toQuery ListLoggerDefinitions' {..} =
    mconcat
      [ "NextToken" =: _lldNextToken,
        "MaxResults" =: _lldMaxResults
      ]

-- | /See:/ 'listLoggerDefinitionsResponse' smart constructor.
data ListLoggerDefinitionsResponse = ListLoggerDefinitionsResponse'
  { _lldrrsNextToken ::
      !( Maybe
           Text
       ),
    _lldrrsDefinitions ::
      !( Maybe
           [DefinitionInformation]
       ),
    _lldrrsResponseStatus ::
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

-- | Creates a value of 'ListLoggerDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lldrrsDefinitions' - Information about a definition.
--
-- * 'lldrrsResponseStatus' - -- | The response status code.
listLoggerDefinitionsResponse ::
  -- | 'lldrrsResponseStatus'
  Int ->
  ListLoggerDefinitionsResponse
listLoggerDefinitionsResponse pResponseStatus_ =
  ListLoggerDefinitionsResponse'
    { _lldrrsNextToken =
        Nothing,
      _lldrrsDefinitions = Nothing,
      _lldrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lldrrsNextToken :: Lens' ListLoggerDefinitionsResponse (Maybe Text)
lldrrsNextToken = lens _lldrrsNextToken (\s a -> s {_lldrrsNextToken = a})

-- | Information about a definition.
lldrrsDefinitions :: Lens' ListLoggerDefinitionsResponse [DefinitionInformation]
lldrrsDefinitions = lens _lldrrsDefinitions (\s a -> s {_lldrrsDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
lldrrsResponseStatus :: Lens' ListLoggerDefinitionsResponse Int
lldrrsResponseStatus = lens _lldrrsResponseStatus (\s a -> s {_lldrrsResponseStatus = a})

instance NFData ListLoggerDefinitionsResponse
