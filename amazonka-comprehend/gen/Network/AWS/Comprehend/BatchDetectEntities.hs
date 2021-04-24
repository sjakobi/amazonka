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
-- Module      : Network.AWS.Comprehend.BatchDetectEntities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see 'how-entities'
module Network.AWS.Comprehend.BatchDetectEntities
  ( -- * Creating a Request
    batchDetectEntities,
    BatchDetectEntities,

    -- * Request Lenses
    bdeTextList,
    bdeLanguageCode,

    -- * Destructuring the Response
    batchDetectEntitiesResponse,
    BatchDetectEntitiesResponse,

    -- * Response Lenses
    bderrsResponseStatus,
    bderrsResultList,
    bderrsErrorList,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchDetectEntities' smart constructor.
data BatchDetectEntities = BatchDetectEntities'
  { _bdeTextList ::
      !(Sensitive [Sensitive Text]),
    _bdeLanguageCode ::
      !LanguageCode
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDetectEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdeTextList' - A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded characters.
--
-- * 'bdeLanguageCode' - The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
batchDetectEntities ::
  -- | 'bdeLanguageCode'
  LanguageCode ->
  BatchDetectEntities
batchDetectEntities pLanguageCode_ =
  BatchDetectEntities'
    { _bdeTextList = mempty,
      _bdeLanguageCode = pLanguageCode_
    }

-- | A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded characters.
bdeTextList :: Lens' BatchDetectEntities [Text]
bdeTextList = lens _bdeTextList (\s a -> s {_bdeTextList = a}) . _Sensitive . _Coerce

-- | The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language.
bdeLanguageCode :: Lens' BatchDetectEntities LanguageCode
bdeLanguageCode = lens _bdeLanguageCode (\s a -> s {_bdeLanguageCode = a})

instance AWSRequest BatchDetectEntities where
  type
    Rs BatchDetectEntities =
      BatchDetectEntitiesResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          BatchDetectEntitiesResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "ResultList" .!@ mempty)
            <*> (x .?> "ErrorList" .!@ mempty)
      )

instance Hashable BatchDetectEntities

instance NFData BatchDetectEntities

instance ToHeaders BatchDetectEntities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.BatchDetectEntities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDetectEntities where
  toJSON BatchDetectEntities' {..} =
    object
      ( catMaybes
          [ Just ("TextList" .= _bdeTextList),
            Just ("LanguageCode" .= _bdeLanguageCode)
          ]
      )

instance ToPath BatchDetectEntities where
  toPath = const "/"

instance ToQuery BatchDetectEntities where
  toQuery = const mempty

-- | /See:/ 'batchDetectEntitiesResponse' smart constructor.
data BatchDetectEntitiesResponse = BatchDetectEntitiesResponse'
  { _bderrsResponseStatus ::
      !Int,
    _bderrsResultList ::
      ![BatchDetectEntitiesItemResult],
    _bderrsErrorList ::
      ![BatchItemError]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectEntitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bderrsResponseStatus' - -- | The response status code.
--
-- * 'bderrsResultList' - A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
--
-- * 'bderrsErrorList' - A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
batchDetectEntitiesResponse ::
  -- | 'bderrsResponseStatus'
  Int ->
  BatchDetectEntitiesResponse
batchDetectEntitiesResponse pResponseStatus_ =
  BatchDetectEntitiesResponse'
    { _bderrsResponseStatus =
        pResponseStatus_,
      _bderrsResultList = mempty,
      _bderrsErrorList = mempty
    }

-- | -- | The response status code.
bderrsResponseStatus :: Lens' BatchDetectEntitiesResponse Int
bderrsResponseStatus = lens _bderrsResponseStatus (\s a -> s {_bderrsResponseStatus = a})

-- | A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
bderrsResultList :: Lens' BatchDetectEntitiesResponse [BatchDetectEntitiesItemResult]
bderrsResultList = lens _bderrsResultList (\s a -> s {_bderrsResultList = a}) . _Coerce

-- | A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
bderrsErrorList :: Lens' BatchDetectEntitiesResponse [BatchItemError]
bderrsErrorList = lens _bderrsErrorList (\s a -> s {_bderrsErrorList = a}) . _Coerce

instance NFData BatchDetectEntitiesResponse
