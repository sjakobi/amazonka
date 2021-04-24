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
-- Module      : Network.AWS.LexModels.GetSlotTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns slot type information as follows:
--
--
--     * If you specify the @nameContains@ field, returns the @> LATEST@ version of all slot types that contain the specified string.
--
--     * If you don't specify the @nameContains@ field, returns information about the @> LATEST@ version of all slot types.
--
--
--
-- The operation requires permission for the @lex:GetSlotTypes@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetSlotTypes
  ( -- * Creating a Request
    getSlotTypes,
    GetSlotTypes,

    -- * Request Lenses
    gstNextToken,
    gstNameContains,
    gstMaxResults,

    -- * Destructuring the Response
    getSlotTypesResponse,
    GetSlotTypesResponse,

    -- * Response Lenses
    grsSlotTypes,
    grsNextToken,
    grsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSlotTypes' smart constructor.
data GetSlotTypes = GetSlotTypes'
  { _gstNextToken ::
      !(Maybe Text),
    _gstNameContains :: !(Maybe Text),
    _gstMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSlotTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstNextToken' - A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.
--
-- * 'gstNameContains' - Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
--
-- * 'gstMaxResults' - The maximum number of slot types to return in the response. The default is 10.
getSlotTypes ::
  GetSlotTypes
getSlotTypes =
  GetSlotTypes'
    { _gstNextToken = Nothing,
      _gstNameContains = Nothing,
      _gstMaxResults = Nothing
    }

-- | A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.
gstNextToken :: Lens' GetSlotTypes (Maybe Text)
gstNextToken = lens _gstNextToken (\s a -> s {_gstNextToken = a})

-- | Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
gstNameContains :: Lens' GetSlotTypes (Maybe Text)
gstNameContains = lens _gstNameContains (\s a -> s {_gstNameContains = a})

-- | The maximum number of slot types to return in the response. The default is 10.
gstMaxResults :: Lens' GetSlotTypes (Maybe Natural)
gstMaxResults = lens _gstMaxResults (\s a -> s {_gstMaxResults = a}) . mapping _Nat

instance AWSPager GetSlotTypes where
  page rq rs
    | stop (rs ^. grsNextToken) = Nothing
    | stop (rs ^. grsSlotTypes) = Nothing
    | otherwise =
      Just $ rq & gstNextToken .~ rs ^. grsNextToken

instance AWSRequest GetSlotTypes where
  type Rs GetSlotTypes = GetSlotTypesResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetSlotTypesResponse'
            <$> (x .?> "slotTypes" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSlotTypes

instance NFData GetSlotTypes

instance ToHeaders GetSlotTypes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSlotTypes where
  toPath = const "/slottypes/"

instance ToQuery GetSlotTypes where
  toQuery GetSlotTypes' {..} =
    mconcat
      [ "nextToken" =: _gstNextToken,
        "nameContains" =: _gstNameContains,
        "maxResults" =: _gstMaxResults
      ]

-- | /See:/ 'getSlotTypesResponse' smart constructor.
data GetSlotTypesResponse = GetSlotTypesResponse'
  { _grsSlotTypes ::
      !(Maybe [SlotTypeMetadata]),
    _grsNextToken ::
      !(Maybe Text),
    _grsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSlotTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsSlotTypes' - An array of objects, one for each slot type, that provides information such as the name of the slot type, the version, and a description.
--
-- * 'grsNextToken' - If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of slot types.
--
-- * 'grsResponseStatus' - -- | The response status code.
getSlotTypesResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetSlotTypesResponse
getSlotTypesResponse pResponseStatus_ =
  GetSlotTypesResponse'
    { _grsSlotTypes = Nothing,
      _grsNextToken = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | An array of objects, one for each slot type, that provides information such as the name of the slot type, the version, and a description.
grsSlotTypes :: Lens' GetSlotTypesResponse [SlotTypeMetadata]
grsSlotTypes = lens _grsSlotTypes (\s a -> s {_grsSlotTypes = a}) . _Default . _Coerce

-- | If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of slot types.
grsNextToken :: Lens' GetSlotTypesResponse (Maybe Text)
grsNextToken = lens _grsNextToken (\s a -> s {_grsNextToken = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetSlotTypesResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetSlotTypesResponse
