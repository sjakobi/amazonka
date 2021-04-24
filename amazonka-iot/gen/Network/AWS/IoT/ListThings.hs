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
-- Module      : Network.AWS.IoT.ListThings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your things. Use the __attributeName__ and __attributeValue__ parameters to filter your things. For example, calling @ListThings@ with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute __Color__ with the value __Red__ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThings
  ( -- * Creating a Request
    listThings,
    ListThings,

    -- * Request Lenses
    ltAttributeValue,
    ltNextToken,
    ltMaxResults,
    ltAttributeName,
    ltThingTypeName,

    -- * Destructuring the Response
    listThingsResponse,
    ListThingsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsThings,
    ltrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListThings operation.
--
--
--
-- /See:/ 'listThings' smart constructor.
data ListThings = ListThings'
  { _ltAttributeValue ::
      !(Maybe Text),
    _ltNextToken :: !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat),
    _ltAttributeName :: !(Maybe Text),
    _ltThingTypeName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltAttributeValue' - The attribute value used to search for things.
--
-- * 'ltNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltMaxResults' - The maximum number of results to return in this operation.
--
-- * 'ltAttributeName' - The attribute name used to search for things.
--
-- * 'ltThingTypeName' - The name of the thing type used to search for things.
listThings ::
  ListThings
listThings =
  ListThings'
    { _ltAttributeValue = Nothing,
      _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltAttributeName = Nothing,
      _ltThingTypeName = Nothing
    }

-- | The attribute value used to search for things.
ltAttributeValue :: Lens' ListThings (Maybe Text)
ltAttributeValue = lens _ltAttributeValue (\s a -> s {_ltAttributeValue = a})

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltNextToken :: Lens' ListThings (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of results to return in this operation.
ltMaxResults :: Lens' ListThings (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The attribute name used to search for things.
ltAttributeName :: Lens' ListThings (Maybe Text)
ltAttributeName = lens _ltAttributeName (\s a -> s {_ltAttributeName = a})

-- | The name of the thing type used to search for things.
ltThingTypeName :: Lens' ListThings (Maybe Text)
ltThingTypeName = lens _ltThingTypeName (\s a -> s {_ltThingTypeName = a})

instance AWSPager ListThings where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsThings) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListThings where
  type Rs ListThings = ListThingsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "things" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThings

instance NFData ListThings

instance ToHeaders ListThings where
  toHeaders = const mempty

instance ToPath ListThings where
  toPath = const "/things"

instance ToQuery ListThings where
  toQuery ListThings' {..} =
    mconcat
      [ "attributeValue" =: _ltAttributeValue,
        "nextToken" =: _ltNextToken,
        "maxResults" =: _ltMaxResults,
        "attributeName" =: _ltAttributeName,
        "thingTypeName" =: _ltThingTypeName
      ]

-- | The output from the ListThings operation.
--
--
--
-- /See:/ 'listThingsResponse' smart constructor.
data ListThingsResponse = ListThingsResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsThings ::
      !(Maybe [ThingAttribute]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - The token to use to get the next set of results. Will not be returned if operation has returned all results.
--
-- * 'ltrrsThings' - The things.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listThingsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListThingsResponse
listThingsResponse pResponseStatus_ =
  ListThingsResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsThings = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results. Will not be returned if operation has returned all results.
ltrrsNextToken :: Lens' ListThingsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The things.
ltrrsThings :: Lens' ListThingsResponse [ThingAttribute]
ltrrsThings = lens _ltrrsThings (\s a -> s {_ltrrsThings = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListThingsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListThingsResponse
