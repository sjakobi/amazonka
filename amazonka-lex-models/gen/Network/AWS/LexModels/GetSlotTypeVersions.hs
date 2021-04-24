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
-- Module      : Network.AWS.LexModels.GetSlotTypeVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about all versions of a slot type.
--
--
-- The @GetSlotTypeVersions@ operation returns a @SlotTypeMetadata@ object for each version of a slot type. For example, if a slot type has three numbered versions, the @GetSlotTypeVersions@ operation returns four @SlotTypeMetadata@ objects in the response, one for each numbered version and one for the @> LATEST@ version.
--
-- The @GetSlotTypeVersions@ operation always returns at least one version, the @> LATEST@ version.
--
-- This operation requires permissions for the @lex:GetSlotTypeVersions@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetSlotTypeVersions
  ( -- * Creating a Request
    getSlotTypeVersions,
    GetSlotTypeVersions,

    -- * Request Lenses
    gstvNextToken,
    gstvMaxResults,
    gstvName,

    -- * Destructuring the Response
    getSlotTypeVersionsResponse,
    GetSlotTypeVersionsResponse,

    -- * Response Lenses
    gstvrrsSlotTypes,
    gstvrrsNextToken,
    gstvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSlotTypeVersions' smart constructor.
data GetSlotTypeVersions = GetSlotTypeVersions'
  { _gstvNextToken ::
      !(Maybe Text),
    _gstvMaxResults :: !(Maybe Nat),
    _gstvName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSlotTypeVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstvNextToken' - A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
--
-- * 'gstvMaxResults' - The maximum number of slot type versions to return in the response. The default is 10.
--
-- * 'gstvName' - The name of the slot type for which versions should be returned.
getSlotTypeVersions ::
  -- | 'gstvName'
  Text ->
  GetSlotTypeVersions
getSlotTypeVersions pName_ =
  GetSlotTypeVersions'
    { _gstvNextToken = Nothing,
      _gstvMaxResults = Nothing,
      _gstvName = pName_
    }

-- | A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
gstvNextToken :: Lens' GetSlotTypeVersions (Maybe Text)
gstvNextToken = lens _gstvNextToken (\s a -> s {_gstvNextToken = a})

-- | The maximum number of slot type versions to return in the response. The default is 10.
gstvMaxResults :: Lens' GetSlotTypeVersions (Maybe Natural)
gstvMaxResults = lens _gstvMaxResults (\s a -> s {_gstvMaxResults = a}) . mapping _Nat

-- | The name of the slot type for which versions should be returned.
gstvName :: Lens' GetSlotTypeVersions Text
gstvName = lens _gstvName (\s a -> s {_gstvName = a})

instance AWSPager GetSlotTypeVersions where
  page rq rs
    | stop (rs ^. gstvrrsNextToken) = Nothing
    | stop (rs ^. gstvrrsSlotTypes) = Nothing
    | otherwise =
      Just $ rq & gstvNextToken .~ rs ^. gstvrrsNextToken

instance AWSRequest GetSlotTypeVersions where
  type
    Rs GetSlotTypeVersions =
      GetSlotTypeVersionsResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetSlotTypeVersionsResponse'
            <$> (x .?> "slotTypes" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSlotTypeVersions

instance NFData GetSlotTypeVersions

instance ToHeaders GetSlotTypeVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSlotTypeVersions where
  toPath GetSlotTypeVersions' {..} =
    mconcat
      ["/slottypes/", toBS _gstvName, "/versions/"]

instance ToQuery GetSlotTypeVersions where
  toQuery GetSlotTypeVersions' {..} =
    mconcat
      [ "nextToken" =: _gstvNextToken,
        "maxResults" =: _gstvMaxResults
      ]

-- | /See:/ 'getSlotTypeVersionsResponse' smart constructor.
data GetSlotTypeVersionsResponse = GetSlotTypeVersionsResponse'
  { _gstvrrsSlotTypes ::
      !( Maybe
           [SlotTypeMetadata]
       ),
    _gstvrrsNextToken ::
      !(Maybe Text),
    _gstvrrsResponseStatus ::
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

-- | Creates a value of 'GetSlotTypeVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstvrrsSlotTypes' - An array of @SlotTypeMetadata@ objects, one for each numbered version of the slot type plus one for the @> LATEST@ version.
--
-- * 'gstvrrsNextToken' - A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
--
-- * 'gstvrrsResponseStatus' - -- | The response status code.
getSlotTypeVersionsResponse ::
  -- | 'gstvrrsResponseStatus'
  Int ->
  GetSlotTypeVersionsResponse
getSlotTypeVersionsResponse pResponseStatus_ =
  GetSlotTypeVersionsResponse'
    { _gstvrrsSlotTypes =
        Nothing,
      _gstvrrsNextToken = Nothing,
      _gstvrrsResponseStatus = pResponseStatus_
    }

-- | An array of @SlotTypeMetadata@ objects, one for each numbered version of the slot type plus one for the @> LATEST@ version.
gstvrrsSlotTypes :: Lens' GetSlotTypeVersionsResponse [SlotTypeMetadata]
gstvrrsSlotTypes = lens _gstvrrsSlotTypes (\s a -> s {_gstvrrsSlotTypes = a}) . _Default . _Coerce

-- | A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request.
gstvrrsNextToken :: Lens' GetSlotTypeVersionsResponse (Maybe Text)
gstvrrsNextToken = lens _gstvrrsNextToken (\s a -> s {_gstvrrsNextToken = a})

-- | -- | The response status code.
gstvrrsResponseStatus :: Lens' GetSlotTypeVersionsResponse Int
gstvrrsResponseStatus = lens _gstvrrsResponseStatus (\s a -> s {_gstvrrsResponseStatus = a})

instance NFData GetSlotTypeVersionsResponse
