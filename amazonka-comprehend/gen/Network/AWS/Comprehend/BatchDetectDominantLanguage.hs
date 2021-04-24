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
-- Module      : Network.AWS.Comprehend.BatchDetectDominantLanguage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see <https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html Amazon Comprehend Supported Languages> .
module Network.AWS.Comprehend.BatchDetectDominantLanguage
  ( -- * Creating a Request
    batchDetectDominantLanguage,
    BatchDetectDominantLanguage,

    -- * Request Lenses
    bddlTextList,

    -- * Destructuring the Response
    batchDetectDominantLanguageResponse,
    BatchDetectDominantLanguageResponse,

    -- * Response Lenses
    bddlrrsResponseStatus,
    bddlrrsResultList,
    bddlrrsErrorList,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchDetectDominantLanguage' smart constructor.
newtype BatchDetectDominantLanguage = BatchDetectDominantLanguage'
  { _bddlTextList ::
      Sensitive
        [ Sensitive
            Text
        ]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectDominantLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bddlTextList' - A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document should contain at least 20 characters and must contain fewer than 5,000 bytes of UTF-8 encoded characters.
batchDetectDominantLanguage ::
  BatchDetectDominantLanguage
batchDetectDominantLanguage =
  BatchDetectDominantLanguage'
    { _bddlTextList =
        mempty
    }

-- | A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document should contain at least 20 characters and must contain fewer than 5,000 bytes of UTF-8 encoded characters.
bddlTextList :: Lens' BatchDetectDominantLanguage [Text]
bddlTextList = lens _bddlTextList (\s a -> s {_bddlTextList = a}) . _Sensitive . _Coerce

instance AWSRequest BatchDetectDominantLanguage where
  type
    Rs BatchDetectDominantLanguage =
      BatchDetectDominantLanguageResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          BatchDetectDominantLanguageResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "ResultList" .!@ mempty)
            <*> (x .?> "ErrorList" .!@ mempty)
      )

instance Hashable BatchDetectDominantLanguage

instance NFData BatchDetectDominantLanguage

instance ToHeaders BatchDetectDominantLanguage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.BatchDetectDominantLanguage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDetectDominantLanguage where
  toJSON BatchDetectDominantLanguage' {..} =
    object
      (catMaybes [Just ("TextList" .= _bddlTextList)])

instance ToPath BatchDetectDominantLanguage where
  toPath = const "/"

instance ToQuery BatchDetectDominantLanguage where
  toQuery = const mempty

-- | /See:/ 'batchDetectDominantLanguageResponse' smart constructor.
data BatchDetectDominantLanguageResponse = BatchDetectDominantLanguageResponse'
  { _bddlrrsResponseStatus ::
      !Int,
    _bddlrrsResultList ::
      ![BatchDetectDominantLanguageItemResult],
    _bddlrrsErrorList ::
      ![BatchItemError]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectDominantLanguageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bddlrrsResponseStatus' - -- | The response status code.
--
-- * 'bddlrrsResultList' - A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
--
-- * 'bddlrrsErrorList' - A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
batchDetectDominantLanguageResponse ::
  -- | 'bddlrrsResponseStatus'
  Int ->
  BatchDetectDominantLanguageResponse
batchDetectDominantLanguageResponse pResponseStatus_ =
  BatchDetectDominantLanguageResponse'
    { _bddlrrsResponseStatus =
        pResponseStatus_,
      _bddlrrsResultList = mempty,
      _bddlrrsErrorList = mempty
    }

-- | -- | The response status code.
bddlrrsResponseStatus :: Lens' BatchDetectDominantLanguageResponse Int
bddlrrsResponseStatus = lens _bddlrrsResponseStatus (\s a -> s {_bddlrrsResponseStatus = a})

-- | A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
bddlrrsResultList :: Lens' BatchDetectDominantLanguageResponse [BatchDetectDominantLanguageItemResult]
bddlrrsResultList = lens _bddlrrsResultList (\s a -> s {_bddlrrsResultList = a}) . _Coerce

-- | A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
bddlrrsErrorList :: Lens' BatchDetectDominantLanguageResponse [BatchItemError]
bddlrrsErrorList = lens _bddlrrsErrorList (\s a -> s {_bddlrrsErrorList = a}) . _Coerce

instance NFData BatchDetectDominantLanguageResponse
