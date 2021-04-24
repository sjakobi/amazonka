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
-- Module      : Network.AWS.Transcribe.ListMedicalVocabularies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.
module Network.AWS.Transcribe.ListMedicalVocabularies
  ( -- * Creating a Request
    listMedicalVocabularies,
    ListMedicalVocabularies,

    -- * Request Lenses
    lmvNextToken,
    lmvNameContains,
    lmvMaxResults,
    lmvStateEquals,

    -- * Destructuring the Response
    listMedicalVocabulariesResponse,
    ListMedicalVocabulariesResponse,

    -- * Response Lenses
    lmvrrsStatus,
    lmvrrsNextToken,
    lmvrrsVocabularies,
    lmvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listMedicalVocabularies' smart constructor.
data ListMedicalVocabularies = ListMedicalVocabularies'
  { _lmvNextToken ::
      !(Maybe Text),
    _lmvNameContains ::
      !(Maybe Text),
    _lmvMaxResults ::
      !(Maybe Nat),
    _lmvStateEquals ::
      !( Maybe
           VocabularyState
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMedicalVocabularies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmvNextToken' - If the result of your previous request to @ListMedicalVocabularies@ was truncated, include the @NextToken@ to fetch the next set of vocabularies.
--
-- * 'lmvNameContains' - Returns vocabularies whose names contain the specified string. The search is not case sensitive. @ListMedicalVocabularies@ returns both "@vocabularyname@ " and "@VocabularyName@ ".
--
-- * 'lmvMaxResults' - The maximum number of vocabularies to return in the response.
--
-- * 'lmvStateEquals' - When specified, returns only vocabularies with the @VocabularyState@ equal to the specified vocabulary state. Use this field to see which vocabularies are ready for your medical transcription jobs.
listMedicalVocabularies ::
  ListMedicalVocabularies
listMedicalVocabularies =
  ListMedicalVocabularies'
    { _lmvNextToken = Nothing,
      _lmvNameContains = Nothing,
      _lmvMaxResults = Nothing,
      _lmvStateEquals = Nothing
    }

-- | If the result of your previous request to @ListMedicalVocabularies@ was truncated, include the @NextToken@ to fetch the next set of vocabularies.
lmvNextToken :: Lens' ListMedicalVocabularies (Maybe Text)
lmvNextToken = lens _lmvNextToken (\s a -> s {_lmvNextToken = a})

-- | Returns vocabularies whose names contain the specified string. The search is not case sensitive. @ListMedicalVocabularies@ returns both "@vocabularyname@ " and "@VocabularyName@ ".
lmvNameContains :: Lens' ListMedicalVocabularies (Maybe Text)
lmvNameContains = lens _lmvNameContains (\s a -> s {_lmvNameContains = a})

-- | The maximum number of vocabularies to return in the response.
lmvMaxResults :: Lens' ListMedicalVocabularies (Maybe Natural)
lmvMaxResults = lens _lmvMaxResults (\s a -> s {_lmvMaxResults = a}) . mapping _Nat

-- | When specified, returns only vocabularies with the @VocabularyState@ equal to the specified vocabulary state. Use this field to see which vocabularies are ready for your medical transcription jobs.
lmvStateEquals :: Lens' ListMedicalVocabularies (Maybe VocabularyState)
lmvStateEquals = lens _lmvStateEquals (\s a -> s {_lmvStateEquals = a})

instance AWSRequest ListMedicalVocabularies where
  type
    Rs ListMedicalVocabularies =
      ListMedicalVocabulariesResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListMedicalVocabulariesResponse'
            <$> (x .?> "Status")
            <*> (x .?> "NextToken")
            <*> (x .?> "Vocabularies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMedicalVocabularies

instance NFData ListMedicalVocabularies

instance ToHeaders ListMedicalVocabularies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.ListMedicalVocabularies" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListMedicalVocabularies where
  toJSON ListMedicalVocabularies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lmvNextToken,
            ("NameContains" .=) <$> _lmvNameContains,
            ("MaxResults" .=) <$> _lmvMaxResults,
            ("StateEquals" .=) <$> _lmvStateEquals
          ]
      )

instance ToPath ListMedicalVocabularies where
  toPath = const "/"

instance ToQuery ListMedicalVocabularies where
  toQuery = const mempty

-- | /See:/ 'listMedicalVocabulariesResponse' smart constructor.
data ListMedicalVocabulariesResponse = ListMedicalVocabulariesResponse'
  { _lmvrrsStatus ::
      !( Maybe
           VocabularyState
       ),
    _lmvrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmvrrsVocabularies ::
      !( Maybe
           [VocabularyInfo]
       ),
    _lmvrrsResponseStatus ::
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

-- | Creates a value of 'ListMedicalVocabulariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmvrrsStatus' - The requested vocabulary state.
--
-- * 'lmvrrsNextToken' - The @ListMedicalVocabularies@ operation returns a page of vocabularies at a time. You set the maximum number of vocabularies to return on a page with the @MaxResults@ parameter. If there are more jobs in the list will fit on a page, Amazon Transcribe Medical returns the @NextPage@ token. To return the next page of vocabularies, include the token in the next request to the @ListMedicalVocabularies@ operation .
--
-- * 'lmvrrsVocabularies' - A list of objects that describe the vocabularies that match your search criteria.
--
-- * 'lmvrrsResponseStatus' - -- | The response status code.
listMedicalVocabulariesResponse ::
  -- | 'lmvrrsResponseStatus'
  Int ->
  ListMedicalVocabulariesResponse
listMedicalVocabulariesResponse pResponseStatus_ =
  ListMedicalVocabulariesResponse'
    { _lmvrrsStatus =
        Nothing,
      _lmvrrsNextToken = Nothing,
      _lmvrrsVocabularies = Nothing,
      _lmvrrsResponseStatus = pResponseStatus_
    }

-- | The requested vocabulary state.
lmvrrsStatus :: Lens' ListMedicalVocabulariesResponse (Maybe VocabularyState)
lmvrrsStatus = lens _lmvrrsStatus (\s a -> s {_lmvrrsStatus = a})

-- | The @ListMedicalVocabularies@ operation returns a page of vocabularies at a time. You set the maximum number of vocabularies to return on a page with the @MaxResults@ parameter. If there are more jobs in the list will fit on a page, Amazon Transcribe Medical returns the @NextPage@ token. To return the next page of vocabularies, include the token in the next request to the @ListMedicalVocabularies@ operation .
lmvrrsNextToken :: Lens' ListMedicalVocabulariesResponse (Maybe Text)
lmvrrsNextToken = lens _lmvrrsNextToken (\s a -> s {_lmvrrsNextToken = a})

-- | A list of objects that describe the vocabularies that match your search criteria.
lmvrrsVocabularies :: Lens' ListMedicalVocabulariesResponse [VocabularyInfo]
lmvrrsVocabularies = lens _lmvrrsVocabularies (\s a -> s {_lmvrrsVocabularies = a}) . _Default . _Coerce

-- | -- | The response status code.
lmvrrsResponseStatus :: Lens' ListMedicalVocabulariesResponse Int
lmvrrsResponseStatus = lens _lmvrrsResponseStatus (\s a -> s {_lmvrrsResponseStatus = a})

instance NFData ListMedicalVocabulariesResponse
