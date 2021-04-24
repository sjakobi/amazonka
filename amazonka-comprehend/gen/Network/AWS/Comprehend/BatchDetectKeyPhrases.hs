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
-- Module      : Network.AWS.Comprehend.BatchDetectKeyPhrases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the key noun phrases found in a batch of documents.
module Network.AWS.Comprehend.BatchDetectKeyPhrases
  ( -- * Creating a Request
    batchDetectKeyPhrases,
    BatchDetectKeyPhrases,

    -- * Request Lenses
    bdkpTextList,
    bdkpLanguageCode,

    -- * Destructuring the Response
    batchDetectKeyPhrasesResponse,
    BatchDetectKeyPhrasesResponse,

    -- * Response Lenses
    bdkprrsResponseStatus,
    bdkprrsResultList,
    bdkprrsErrorList,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchDetectKeyPhrases' smart constructor.
data BatchDetectKeyPhrases = BatchDetectKeyPhrases'
  { _bdkpTextList ::
      !( Sensitive
           [Sensitive Text]
       ),
    _bdkpLanguageCode ::
      !LanguageCode
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDetectKeyPhrases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdkpTextList' - A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
--
-- * 'bdkpLanguageCode' - The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
batchDetectKeyPhrases ::
  -- | 'bdkpLanguageCode'
  LanguageCode ->
  BatchDetectKeyPhrases
batchDetectKeyPhrases pLanguageCode_ =
  BatchDetectKeyPhrases'
    { _bdkpTextList = mempty,
      _bdkpLanguageCode = pLanguageCode_
    }

-- | A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
bdkpTextList :: Lens' BatchDetectKeyPhrases [Text]
bdkpTextList = lens _bdkpTextList (\s a -> s {_bdkpTextList = a}) . _Sensitive . _Coerce

-- | The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
bdkpLanguageCode :: Lens' BatchDetectKeyPhrases LanguageCode
bdkpLanguageCode = lens _bdkpLanguageCode (\s a -> s {_bdkpLanguageCode = a})

instance AWSRequest BatchDetectKeyPhrases where
  type
    Rs BatchDetectKeyPhrases =
      BatchDetectKeyPhrasesResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          BatchDetectKeyPhrasesResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "ResultList" .!@ mempty)
            <*> (x .?> "ErrorList" .!@ mempty)
      )

instance Hashable BatchDetectKeyPhrases

instance NFData BatchDetectKeyPhrases

instance ToHeaders BatchDetectKeyPhrases where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.BatchDetectKeyPhrases" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDetectKeyPhrases where
  toJSON BatchDetectKeyPhrases' {..} =
    object
      ( catMaybes
          [ Just ("TextList" .= _bdkpTextList),
            Just ("LanguageCode" .= _bdkpLanguageCode)
          ]
      )

instance ToPath BatchDetectKeyPhrases where
  toPath = const "/"

instance ToQuery BatchDetectKeyPhrases where
  toQuery = const mempty

-- | /See:/ 'batchDetectKeyPhrasesResponse' smart constructor.
data BatchDetectKeyPhrasesResponse = BatchDetectKeyPhrasesResponse'
  { _bdkprrsResponseStatus ::
      !Int,
    _bdkprrsResultList ::
      ![BatchDetectKeyPhrasesItemResult],
    _bdkprrsErrorList ::
      ![BatchItemError]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectKeyPhrasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdkprrsResponseStatus' - -- | The response status code.
--
-- * 'bdkprrsResultList' - A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
--
-- * 'bdkprrsErrorList' - A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
batchDetectKeyPhrasesResponse ::
  -- | 'bdkprrsResponseStatus'
  Int ->
  BatchDetectKeyPhrasesResponse
batchDetectKeyPhrasesResponse pResponseStatus_ =
  BatchDetectKeyPhrasesResponse'
    { _bdkprrsResponseStatus =
        pResponseStatus_,
      _bdkprrsResultList = mempty,
      _bdkprrsErrorList = mempty
    }

-- | -- | The response status code.
bdkprrsResponseStatus :: Lens' BatchDetectKeyPhrasesResponse Int
bdkprrsResponseStatus = lens _bdkprrsResponseStatus (\s a -> s {_bdkprrsResponseStatus = a})

-- | A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
bdkprrsResultList :: Lens' BatchDetectKeyPhrasesResponse [BatchDetectKeyPhrasesItemResult]
bdkprrsResultList = lens _bdkprrsResultList (\s a -> s {_bdkprrsResultList = a}) . _Coerce

-- | A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
bdkprrsErrorList :: Lens' BatchDetectKeyPhrasesResponse [BatchItemError]
bdkprrsErrorList = lens _bdkprrsErrorList (\s a -> s {_bdkprrsErrorList = a}) . _Coerce

instance NFData BatchDetectKeyPhrasesResponse
