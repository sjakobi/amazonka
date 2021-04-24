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
-- Module      : Network.AWS.Greengrass.ListDeviceDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of device definitions.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListDeviceDefinitions
  ( -- * Creating a Request
    listDeviceDefinitions,
    ListDeviceDefinitions,

    -- * Request Lenses
    lddNextToken,
    lddMaxResults,

    -- * Destructuring the Response
    listDeviceDefinitionsResponse,
    ListDeviceDefinitionsResponse,

    -- * Response Lenses
    lddrrsNextToken,
    lddrrsDefinitions,
    lddrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeviceDefinitions' smart constructor.
data ListDeviceDefinitions = ListDeviceDefinitions'
  { _lddNextToken ::
      !(Maybe Text),
    _lddMaxResults ::
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

-- | Creates a value of 'ListDeviceDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lddNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lddMaxResults' - The maximum number of results to be returned per request.
listDeviceDefinitions ::
  ListDeviceDefinitions
listDeviceDefinitions =
  ListDeviceDefinitions'
    { _lddNextToken = Nothing,
      _lddMaxResults = Nothing
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lddNextToken :: Lens' ListDeviceDefinitions (Maybe Text)
lddNextToken = lens _lddNextToken (\s a -> s {_lddNextToken = a})

-- | The maximum number of results to be returned per request.
lddMaxResults :: Lens' ListDeviceDefinitions (Maybe Text)
lddMaxResults = lens _lddMaxResults (\s a -> s {_lddMaxResults = a})

instance AWSPager ListDeviceDefinitions where
  page rq rs
    | stop (rs ^. lddrrsNextToken) = Nothing
    | stop (rs ^. lddrrsDefinitions) = Nothing
    | otherwise =
      Just $ rq & lddNextToken .~ rs ^. lddrrsNextToken

instance AWSRequest ListDeviceDefinitions where
  type
    Rs ListDeviceDefinitions =
      ListDeviceDefinitionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListDeviceDefinitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Definitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeviceDefinitions

instance NFData ListDeviceDefinitions

instance ToHeaders ListDeviceDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListDeviceDefinitions where
  toPath = const "/greengrass/definition/devices"

instance ToQuery ListDeviceDefinitions where
  toQuery ListDeviceDefinitions' {..} =
    mconcat
      [ "NextToken" =: _lddNextToken,
        "MaxResults" =: _lddMaxResults
      ]

-- | /See:/ 'listDeviceDefinitionsResponse' smart constructor.
data ListDeviceDefinitionsResponse = ListDeviceDefinitionsResponse'
  { _lddrrsNextToken ::
      !( Maybe
           Text
       ),
    _lddrrsDefinitions ::
      !( Maybe
           [DefinitionInformation]
       ),
    _lddrrsResponseStatus ::
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

-- | Creates a value of 'ListDeviceDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lddrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lddrrsDefinitions' - Information about a definition.
--
-- * 'lddrrsResponseStatus' - -- | The response status code.
listDeviceDefinitionsResponse ::
  -- | 'lddrrsResponseStatus'
  Int ->
  ListDeviceDefinitionsResponse
listDeviceDefinitionsResponse pResponseStatus_ =
  ListDeviceDefinitionsResponse'
    { _lddrrsNextToken =
        Nothing,
      _lddrrsDefinitions = Nothing,
      _lddrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lddrrsNextToken :: Lens' ListDeviceDefinitionsResponse (Maybe Text)
lddrrsNextToken = lens _lddrrsNextToken (\s a -> s {_lddrrsNextToken = a})

-- | Information about a definition.
lddrrsDefinitions :: Lens' ListDeviceDefinitionsResponse [DefinitionInformation]
lddrrsDefinitions = lens _lddrrsDefinitions (\s a -> s {_lddrrsDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
lddrrsResponseStatus :: Lens' ListDeviceDefinitionsResponse Int
lddrrsResponseStatus = lens _lddrrsResponseStatus (\s a -> s {_lddrrsResponseStatus = a})

instance NFData ListDeviceDefinitionsResponse
