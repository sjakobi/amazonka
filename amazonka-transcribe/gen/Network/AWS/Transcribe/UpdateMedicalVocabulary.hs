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
-- Module      : Network.AWS.Transcribe.UpdateMedicalVocabulary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a vocabulary with new values that you provide in a different text file from the one you used to create the vocabulary. The @UpdateMedicalVocabulary@ operation overwrites all of the existing information with the values that you provide in the request.
module Network.AWS.Transcribe.UpdateMedicalVocabulary
  ( -- * Creating a Request
    updateMedicalVocabulary,
    UpdateMedicalVocabulary,

    -- * Request Lenses
    umvVocabularyFileURI,
    umvVocabularyName,
    umvLanguageCode,

    -- * Destructuring the Response
    updateMedicalVocabularyResponse,
    UpdateMedicalVocabularyResponse,

    -- * Response Lenses
    umvrrsLanguageCode,
    umvrrsLastModifiedTime,
    umvrrsVocabularyState,
    umvrrsVocabularyName,
    umvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'updateMedicalVocabulary' smart constructor.
data UpdateMedicalVocabulary = UpdateMedicalVocabulary'
  { _umvVocabularyFileURI ::
      !(Maybe Text),
    _umvVocabularyName ::
      !Text,
    _umvLanguageCode ::
      !LanguageCode
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMedicalVocabulary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvVocabularyFileURI' - The location in Amazon S3 of the text file that contains the you use for your custom vocabulary. The URI must be in the same AWS Region as the resource that you are calling. The following is the format for a URI: @https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey> @  For example: @https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt@  For more information about Amazon S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies in Amazon Transcribe Medical, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Medical Custom Vocabularies> .
--
-- * 'umvVocabularyName' - The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a vocabulary you've already made, you get a @ConflictException@ error.
--
-- * 'umvLanguageCode' - The language code of the language used for the entries in the updated vocabulary. US English (en-US) is the only valid language code in Amazon Transcribe Medical.
updateMedicalVocabulary ::
  -- | 'umvVocabularyName'
  Text ->
  -- | 'umvLanguageCode'
  LanguageCode ->
  UpdateMedicalVocabulary
updateMedicalVocabulary
  pVocabularyName_
  pLanguageCode_ =
    UpdateMedicalVocabulary'
      { _umvVocabularyFileURI =
          Nothing,
        _umvVocabularyName = pVocabularyName_,
        _umvLanguageCode = pLanguageCode_
      }

-- | The location in Amazon S3 of the text file that contains the you use for your custom vocabulary. The URI must be in the same AWS Region as the resource that you are calling. The following is the format for a URI: @https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey> @  For example: @https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt@  For more information about Amazon S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies in Amazon Transcribe Medical, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Medical Custom Vocabularies> .
umvVocabularyFileURI :: Lens' UpdateMedicalVocabulary (Maybe Text)
umvVocabularyFileURI = lens _umvVocabularyFileURI (\s a -> s {_umvVocabularyFileURI = a})

-- | The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a vocabulary you've already made, you get a @ConflictException@ error.
umvVocabularyName :: Lens' UpdateMedicalVocabulary Text
umvVocabularyName = lens _umvVocabularyName (\s a -> s {_umvVocabularyName = a})

-- | The language code of the language used for the entries in the updated vocabulary. US English (en-US) is the only valid language code in Amazon Transcribe Medical.
umvLanguageCode :: Lens' UpdateMedicalVocabulary LanguageCode
umvLanguageCode = lens _umvLanguageCode (\s a -> s {_umvLanguageCode = a})

instance AWSRequest UpdateMedicalVocabulary where
  type
    Rs UpdateMedicalVocabulary =
      UpdateMedicalVocabularyResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          UpdateMedicalVocabularyResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "VocabularyState")
            <*> (x .?> "VocabularyName")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateMedicalVocabulary

instance NFData UpdateMedicalVocabulary

instance ToHeaders UpdateMedicalVocabulary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.UpdateMedicalVocabulary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMedicalVocabulary where
  toJSON UpdateMedicalVocabulary' {..} =
    object
      ( catMaybes
          [ ("VocabularyFileUri" .=) <$> _umvVocabularyFileURI,
            Just ("VocabularyName" .= _umvVocabularyName),
            Just ("LanguageCode" .= _umvLanguageCode)
          ]
      )

instance ToPath UpdateMedicalVocabulary where
  toPath = const "/"

instance ToQuery UpdateMedicalVocabulary where
  toQuery = const mempty

-- | /See:/ 'updateMedicalVocabularyResponse' smart constructor.
data UpdateMedicalVocabularyResponse = UpdateMedicalVocabularyResponse'
  { _umvrrsLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _umvrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _umvrrsVocabularyState ::
      !( Maybe
           VocabularyState
       ),
    _umvrrsVocabularyName ::
      !( Maybe
           Text
       ),
    _umvrrsResponseStatus ::
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

-- | Creates a value of 'UpdateMedicalVocabularyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrrsLanguageCode' - The language code for the language of the text file used to update the custom vocabulary. US English (en-US) is the only language supported in Amazon Transcribe Medical.
--
-- * 'umvrrsLastModifiedTime' - The date and time that the vocabulary was updated.
--
-- * 'umvrrsVocabularyState' - The processing state of the update to the vocabulary. When the @VocabularyState@ field is @READY@ , the vocabulary is ready to be used in a @StartMedicalTranscriptionJob@ request.
--
-- * 'umvrrsVocabularyName' - The name of the updated vocabulary.
--
-- * 'umvrrsResponseStatus' - -- | The response status code.
updateMedicalVocabularyResponse ::
  -- | 'umvrrsResponseStatus'
  Int ->
  UpdateMedicalVocabularyResponse
updateMedicalVocabularyResponse pResponseStatus_ =
  UpdateMedicalVocabularyResponse'
    { _umvrrsLanguageCode =
        Nothing,
      _umvrrsLastModifiedTime = Nothing,
      _umvrrsVocabularyState = Nothing,
      _umvrrsVocabularyName = Nothing,
      _umvrrsResponseStatus = pResponseStatus_
    }

-- | The language code for the language of the text file used to update the custom vocabulary. US English (en-US) is the only language supported in Amazon Transcribe Medical.
umvrrsLanguageCode :: Lens' UpdateMedicalVocabularyResponse (Maybe LanguageCode)
umvrrsLanguageCode = lens _umvrrsLanguageCode (\s a -> s {_umvrrsLanguageCode = a})

-- | The date and time that the vocabulary was updated.
umvrrsLastModifiedTime :: Lens' UpdateMedicalVocabularyResponse (Maybe UTCTime)
umvrrsLastModifiedTime = lens _umvrrsLastModifiedTime (\s a -> s {_umvrrsLastModifiedTime = a}) . mapping _Time

-- | The processing state of the update to the vocabulary. When the @VocabularyState@ field is @READY@ , the vocabulary is ready to be used in a @StartMedicalTranscriptionJob@ request.
umvrrsVocabularyState :: Lens' UpdateMedicalVocabularyResponse (Maybe VocabularyState)
umvrrsVocabularyState = lens _umvrrsVocabularyState (\s a -> s {_umvrrsVocabularyState = a})

-- | The name of the updated vocabulary.
umvrrsVocabularyName :: Lens' UpdateMedicalVocabularyResponse (Maybe Text)
umvrrsVocabularyName = lens _umvrrsVocabularyName (\s a -> s {_umvrrsVocabularyName = a})

-- | -- | The response status code.
umvrrsResponseStatus :: Lens' UpdateMedicalVocabularyResponse Int
umvrrsResponseStatus = lens _umvrrsResponseStatus (\s a -> s {_umvrrsResponseStatus = a})

instance NFData UpdateMedicalVocabularyResponse
