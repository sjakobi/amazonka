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
-- Module      : Network.AWS.IoT.ListThingTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing thing types.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingTypes
  ( -- * Creating a Request
    listThingTypes,
    ListThingTypes,

    -- * Request Lenses
    lttNextToken,
    lttMaxResults,
    lttThingTypeName,

    -- * Destructuring the Response
    listThingTypesResponse,
    ListThingTypesResponse,

    -- * Response Lenses
    lttrrsThingTypes,
    lttrrsNextToken,
    lttrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListThingTypes operation.
--
--
--
-- /See:/ 'listThingTypes' smart constructor.
data ListThingTypes = ListThingTypes'
  { _lttNextToken ::
      !(Maybe Text),
    _lttMaxResults :: !(Maybe Nat),
    _lttThingTypeName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThingTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lttNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'lttMaxResults' - The maximum number of results to return in this operation.
--
-- * 'lttThingTypeName' - The name of the thing type.
listThingTypes ::
  ListThingTypes
listThingTypes =
  ListThingTypes'
    { _lttNextToken = Nothing,
      _lttMaxResults = Nothing,
      _lttThingTypeName = Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
lttNextToken :: Lens' ListThingTypes (Maybe Text)
lttNextToken = lens _lttNextToken (\s a -> s {_lttNextToken = a})

-- | The maximum number of results to return in this operation.
lttMaxResults :: Lens' ListThingTypes (Maybe Natural)
lttMaxResults = lens _lttMaxResults (\s a -> s {_lttMaxResults = a}) . mapping _Nat

-- | The name of the thing type.
lttThingTypeName :: Lens' ListThingTypes (Maybe Text)
lttThingTypeName = lens _lttThingTypeName (\s a -> s {_lttThingTypeName = a})

instance AWSPager ListThingTypes where
  page rq rs
    | stop (rs ^. lttrrsNextToken) = Nothing
    | stop (rs ^. lttrrsThingTypes) = Nothing
    | otherwise =
      Just $ rq & lttNextToken .~ rs ^. lttrrsNextToken

instance AWSRequest ListThingTypes where
  type Rs ListThingTypes = ListThingTypesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingTypesResponse'
            <$> (x .?> "thingTypes" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingTypes

instance NFData ListThingTypes

instance ToHeaders ListThingTypes where
  toHeaders = const mempty

instance ToPath ListThingTypes where
  toPath = const "/thing-types"

instance ToQuery ListThingTypes where
  toQuery ListThingTypes' {..} =
    mconcat
      [ "nextToken" =: _lttNextToken,
        "maxResults" =: _lttMaxResults,
        "thingTypeName" =: _lttThingTypeName
      ]

-- | The output for the ListThingTypes operation.
--
--
--
-- /See:/ 'listThingTypesResponse' smart constructor.
data ListThingTypesResponse = ListThingTypesResponse'
  { _lttrrsThingTypes ::
      !( Maybe
           [ThingTypeDefinition]
       ),
    _lttrrsNextToken ::
      !(Maybe Text),
    _lttrrsResponseStatus ::
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

-- | Creates a value of 'ListThingTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lttrrsThingTypes' - The thing types.
--
-- * 'lttrrsNextToken' - The token for the next set of results. Will not be returned if operation has returned all results.
--
-- * 'lttrrsResponseStatus' - -- | The response status code.
listThingTypesResponse ::
  -- | 'lttrrsResponseStatus'
  Int ->
  ListThingTypesResponse
listThingTypesResponse pResponseStatus_ =
  ListThingTypesResponse'
    { _lttrrsThingTypes =
        Nothing,
      _lttrrsNextToken = Nothing,
      _lttrrsResponseStatus = pResponseStatus_
    }

-- | The thing types.
lttrrsThingTypes :: Lens' ListThingTypesResponse [ThingTypeDefinition]
lttrrsThingTypes = lens _lttrrsThingTypes (\s a -> s {_lttrrsThingTypes = a}) . _Default . _Coerce

-- | The token for the next set of results. Will not be returned if operation has returned all results.
lttrrsNextToken :: Lens' ListThingTypesResponse (Maybe Text)
lttrrsNextToken = lens _lttrrsNextToken (\s a -> s {_lttrrsNextToken = a})

-- | -- | The response status code.
lttrrsResponseStatus :: Lens' ListThingTypesResponse Int
lttrrsResponseStatus = lens _lttrrsResponseStatus (\s a -> s {_lttrrsResponseStatus = a})

instance NFData ListThingTypesResponse
