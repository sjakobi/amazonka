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
-- Module      : Network.AWS.Polly.DescribeVoices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.
--
--
-- When synthesizing speech ( @SynthesizeSpeech@ ), you provide the voice ID for the voice you want from the list of voices returned by @DescribeVoices@ .
--
-- For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the @DescribeVoices@ operation you can provide the user with a list of available voices to select from.
--
-- You can optionally specify a language code to filter the available voices. For example, if you specify @en-US@ , the operation returns a list of all available US English voices.
--
-- This operation requires permissions to perform the @polly:DescribeVoices@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.Polly.DescribeVoices
  ( -- * Creating a Request
    describeVoices,
    DescribeVoices,

    -- * Request Lenses
    dvLanguageCode,
    dvNextToken,
    dvIncludeAdditionalLanguageCodes,
    dvEngine,

    -- * Destructuring the Response
    describeVoicesResponse,
    DescribeVoicesResponse,

    -- * Response Lenses
    dvrrsNextToken,
    dvrrsVoices,
    dvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVoices' smart constructor.
data DescribeVoices = DescribeVoices'
  { _dvLanguageCode ::
      !(Maybe LanguageCode),
    _dvNextToken :: !(Maybe Text),
    _dvIncludeAdditionalLanguageCodes ::
      !(Maybe Bool),
    _dvEngine :: !(Maybe Engine)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVoices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvLanguageCode' - The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.
--
-- * 'dvNextToken' - An opaque pagination token returned from the previous @DescribeVoices@ operation. If present, this indicates where to continue the listing.
--
-- * 'dvIncludeAdditionalLanguageCodes' - Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify @yes@ but not if you specify @no@ .
--
-- * 'dvEngine' - Specifies the engine (@standard@ or @neural@ ) used by Amazon Polly when processing input text for speech synthesis.
describeVoices ::
  DescribeVoices
describeVoices =
  DescribeVoices'
    { _dvLanguageCode = Nothing,
      _dvNextToken = Nothing,
      _dvIncludeAdditionalLanguageCodes = Nothing,
      _dvEngine = Nothing
    }

-- | The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.
dvLanguageCode :: Lens' DescribeVoices (Maybe LanguageCode)
dvLanguageCode = lens _dvLanguageCode (\s a -> s {_dvLanguageCode = a})

-- | An opaque pagination token returned from the previous @DescribeVoices@ operation. If present, this indicates where to continue the listing.
dvNextToken :: Lens' DescribeVoices (Maybe Text)
dvNextToken = lens _dvNextToken (\s a -> s {_dvNextToken = a})

-- | Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify @yes@ but not if you specify @no@ .
dvIncludeAdditionalLanguageCodes :: Lens' DescribeVoices (Maybe Bool)
dvIncludeAdditionalLanguageCodes = lens _dvIncludeAdditionalLanguageCodes (\s a -> s {_dvIncludeAdditionalLanguageCodes = a})

-- | Specifies the engine (@standard@ or @neural@ ) used by Amazon Polly when processing input text for speech synthesis.
dvEngine :: Lens' DescribeVoices (Maybe Engine)
dvEngine = lens _dvEngine (\s a -> s {_dvEngine = a})

instance AWSPager DescribeVoices where
  page rq rs
    | stop (rs ^. dvrrsNextToken) = Nothing
    | stop (rs ^. dvrrsVoices) = Nothing
    | otherwise =
      Just $ rq & dvNextToken .~ rs ^. dvrrsNextToken

instance AWSRequest DescribeVoices where
  type Rs DescribeVoices = DescribeVoicesResponse
  request = get polly
  response =
    receiveJSON
      ( \s h x ->
          DescribeVoicesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Voices" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVoices

instance NFData DescribeVoices

instance ToHeaders DescribeVoices where
  toHeaders = const mempty

instance ToPath DescribeVoices where
  toPath = const "/v1/voices"

instance ToQuery DescribeVoices where
  toQuery DescribeVoices' {..} =
    mconcat
      [ "LanguageCode" =: _dvLanguageCode,
        "NextToken" =: _dvNextToken,
        "IncludeAdditionalLanguageCodes"
          =: _dvIncludeAdditionalLanguageCodes,
        "Engine" =: _dvEngine
      ]

-- | /See:/ 'describeVoicesResponse' smart constructor.
data DescribeVoicesResponse = DescribeVoicesResponse'
  { _dvrrsNextToken ::
      !(Maybe Text),
    _dvrrsVoices ::
      !(Maybe [Voice]),
    _dvrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVoicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvrrsNextToken' - The pagination token to use in the next request to continue the listing of voices. @NextToken@ is returned only if the response is truncated.
--
-- * 'dvrrsVoices' - A list of voices with their properties.
--
-- * 'dvrrsResponseStatus' - -- | The response status code.
describeVoicesResponse ::
  -- | 'dvrrsResponseStatus'
  Int ->
  DescribeVoicesResponse
describeVoicesResponse pResponseStatus_ =
  DescribeVoicesResponse'
    { _dvrrsNextToken = Nothing,
      _dvrrsVoices = Nothing,
      _dvrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use in the next request to continue the listing of voices. @NextToken@ is returned only if the response is truncated.
dvrrsNextToken :: Lens' DescribeVoicesResponse (Maybe Text)
dvrrsNextToken = lens _dvrrsNextToken (\s a -> s {_dvrrsNextToken = a})

-- | A list of voices with their properties.
dvrrsVoices :: Lens' DescribeVoicesResponse [Voice]
dvrrsVoices = lens _dvrrsVoices (\s a -> s {_dvrrsVoices = a}) . _Default . _Coerce

-- | -- | The response status code.
dvrrsResponseStatus :: Lens' DescribeVoicesResponse Int
dvrrsResponseStatus = lens _dvrrsResponseStatus (\s a -> s {_dvrrsResponseStatus = a})

instance NFData DescribeVoicesResponse
