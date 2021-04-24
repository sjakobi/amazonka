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
-- Module      : Network.AWS.LexModels.GetBuiltinSlotTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of built-in slot types that meet the specified criteria.
--
--
-- For a list of built-in slot types, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference> in the /Alexa Skills Kit/ .
--
-- This operation requires permission for the @lex:GetBuiltInSlotTypes@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBuiltinSlotTypes
  ( -- * Creating a Request
    getBuiltinSlotTypes,
    GetBuiltinSlotTypes,

    -- * Request Lenses
    gbstSignatureContains,
    gbstNextToken,
    gbstMaxResults,
    gbstLocale,

    -- * Destructuring the Response
    getBuiltinSlotTypesResponse,
    GetBuiltinSlotTypesResponse,

    -- * Response Lenses
    gbstrrsSlotTypes,
    gbstrrsNextToken,
    gbstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBuiltinSlotTypes' smart constructor.
data GetBuiltinSlotTypes = GetBuiltinSlotTypes'
  { _gbstSignatureContains ::
      !(Maybe Text),
    _gbstNextToken :: !(Maybe Text),
    _gbstMaxResults :: !(Maybe Nat),
    _gbstLocale :: !(Maybe Locale)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBuiltinSlotTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbstSignatureContains' - Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
--
-- * 'gbstNextToken' - A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.
--
-- * 'gbstMaxResults' - The maximum number of slot types to return in the response. The default is 10.
--
-- * 'gbstLocale' - A list of locales that the slot type supports.
getBuiltinSlotTypes ::
  GetBuiltinSlotTypes
getBuiltinSlotTypes =
  GetBuiltinSlotTypes'
    { _gbstSignatureContains =
        Nothing,
      _gbstNextToken = Nothing,
      _gbstMaxResults = Nothing,
      _gbstLocale = Nothing
    }

-- | Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
gbstSignatureContains :: Lens' GetBuiltinSlotTypes (Maybe Text)
gbstSignatureContains = lens _gbstSignatureContains (\s a -> s {_gbstSignatureContains = a})

-- | A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.
gbstNextToken :: Lens' GetBuiltinSlotTypes (Maybe Text)
gbstNextToken = lens _gbstNextToken (\s a -> s {_gbstNextToken = a})

-- | The maximum number of slot types to return in the response. The default is 10.
gbstMaxResults :: Lens' GetBuiltinSlotTypes (Maybe Natural)
gbstMaxResults = lens _gbstMaxResults (\s a -> s {_gbstMaxResults = a}) . mapping _Nat

-- | A list of locales that the slot type supports.
gbstLocale :: Lens' GetBuiltinSlotTypes (Maybe Locale)
gbstLocale = lens _gbstLocale (\s a -> s {_gbstLocale = a})

instance AWSPager GetBuiltinSlotTypes where
  page rq rs
    | stop (rs ^. gbstrrsNextToken) = Nothing
    | stop (rs ^. gbstrrsSlotTypes) = Nothing
    | otherwise =
      Just $ rq & gbstNextToken .~ rs ^. gbstrrsNextToken

instance AWSRequest GetBuiltinSlotTypes where
  type
    Rs GetBuiltinSlotTypes =
      GetBuiltinSlotTypesResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBuiltinSlotTypesResponse'
            <$> (x .?> "slotTypes" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBuiltinSlotTypes

instance NFData GetBuiltinSlotTypes

instance ToHeaders GetBuiltinSlotTypes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBuiltinSlotTypes where
  toPath = const "/builtins/slottypes/"

instance ToQuery GetBuiltinSlotTypes where
  toQuery GetBuiltinSlotTypes' {..} =
    mconcat
      [ "signatureContains" =: _gbstSignatureContains,
        "nextToken" =: _gbstNextToken,
        "maxResults" =: _gbstMaxResults,
        "locale" =: _gbstLocale
      ]

-- | /See:/ 'getBuiltinSlotTypesResponse' smart constructor.
data GetBuiltinSlotTypesResponse = GetBuiltinSlotTypesResponse'
  { _gbstrrsSlotTypes ::
      !( Maybe
           [BuiltinSlotTypeMetadata]
       ),
    _gbstrrsNextToken ::
      !(Maybe Text),
    _gbstrrsResponseStatus ::
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

-- | Creates a value of 'GetBuiltinSlotTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbstrrsSlotTypes' - An array of @BuiltInSlotTypeMetadata@ objects, one entry for each slot type returned.
--
-- * 'gbstrrsNextToken' - If the response is truncated, the response includes a pagination token that you can use in your next request to fetch the next page of slot types.
--
-- * 'gbstrrsResponseStatus' - -- | The response status code.
getBuiltinSlotTypesResponse ::
  -- | 'gbstrrsResponseStatus'
  Int ->
  GetBuiltinSlotTypesResponse
getBuiltinSlotTypesResponse pResponseStatus_ =
  GetBuiltinSlotTypesResponse'
    { _gbstrrsSlotTypes =
        Nothing,
      _gbstrrsNextToken = Nothing,
      _gbstrrsResponseStatus = pResponseStatus_
    }

-- | An array of @BuiltInSlotTypeMetadata@ objects, one entry for each slot type returned.
gbstrrsSlotTypes :: Lens' GetBuiltinSlotTypesResponse [BuiltinSlotTypeMetadata]
gbstrrsSlotTypes = lens _gbstrrsSlotTypes (\s a -> s {_gbstrrsSlotTypes = a}) . _Default . _Coerce

-- | If the response is truncated, the response includes a pagination token that you can use in your next request to fetch the next page of slot types.
gbstrrsNextToken :: Lens' GetBuiltinSlotTypesResponse (Maybe Text)
gbstrrsNextToken = lens _gbstrrsNextToken (\s a -> s {_gbstrrsNextToken = a})

-- | -- | The response status code.
gbstrrsResponseStatus :: Lens' GetBuiltinSlotTypesResponse Int
gbstrrsResponseStatus = lens _gbstrrsResponseStatus (\s a -> s {_gbstrrsResponseStatus = a})

instance NFData GetBuiltinSlotTypesResponse
