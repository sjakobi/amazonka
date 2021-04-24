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
-- Module      : Network.AWS.Transcribe.UpdateVocabulary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing vocabulary with new values. The @UpdateVocabulary@ operation overwrites all of the existing information with the values that you provide in the request.
module Network.AWS.Transcribe.UpdateVocabulary
  ( -- * Creating a Request
    updateVocabulary,
    UpdateVocabulary,

    -- * Request Lenses
    uvPhrases,
    uvVocabularyFileURI,
    uvVocabularyName,
    uvLanguageCode,

    -- * Destructuring the Response
    updateVocabularyResponse,
    UpdateVocabularyResponse,

    -- * Response Lenses
    uvrrsLanguageCode,
    uvrrsLastModifiedTime,
    uvrrsVocabularyState,
    uvrrsVocabularyName,
    uvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'updateVocabulary' smart constructor.
data UpdateVocabulary = UpdateVocabulary'
  { _uvPhrases ::
      !(Maybe [Text]),
    _uvVocabularyFileURI :: !(Maybe Text),
    _uvVocabularyName :: !Text,
    _uvLanguageCode :: !LanguageCode
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateVocabulary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvPhrases' - An array of strings containing the vocabulary entries.
--
-- * 'uvVocabularyFileURI' - The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For example: For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
--
-- * 'uvVocabularyName' - The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
--
-- * 'uvLanguageCode' - The language code of the vocabulary entries.
updateVocabulary ::
  -- | 'uvVocabularyName'
  Text ->
  -- | 'uvLanguageCode'
  LanguageCode ->
  UpdateVocabulary
updateVocabulary pVocabularyName_ pLanguageCode_ =
  UpdateVocabulary'
    { _uvPhrases = Nothing,
      _uvVocabularyFileURI = Nothing,
      _uvVocabularyName = pVocabularyName_,
      _uvLanguageCode = pLanguageCode_
    }

-- | An array of strings containing the vocabulary entries.
uvPhrases :: Lens' UpdateVocabulary [Text]
uvPhrases = lens _uvPhrases (\s a -> s {_uvPhrases = a}) . _Default . _Coerce

-- | The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For example: For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
uvVocabularyFileURI :: Lens' UpdateVocabulary (Maybe Text)
uvVocabularyFileURI = lens _uvVocabularyFileURI (\s a -> s {_uvVocabularyFileURI = a})

-- | The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
uvVocabularyName :: Lens' UpdateVocabulary Text
uvVocabularyName = lens _uvVocabularyName (\s a -> s {_uvVocabularyName = a})

-- | The language code of the vocabulary entries.
uvLanguageCode :: Lens' UpdateVocabulary LanguageCode
uvLanguageCode = lens _uvLanguageCode (\s a -> s {_uvLanguageCode = a})

instance AWSRequest UpdateVocabulary where
  type Rs UpdateVocabulary = UpdateVocabularyResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          UpdateVocabularyResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "VocabularyState")
            <*> (x .?> "VocabularyName")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateVocabulary

instance NFData UpdateVocabulary

instance ToHeaders UpdateVocabulary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.UpdateVocabulary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateVocabulary where
  toJSON UpdateVocabulary' {..} =
    object
      ( catMaybes
          [ ("Phrases" .=) <$> _uvPhrases,
            ("VocabularyFileUri" .=) <$> _uvVocabularyFileURI,
            Just ("VocabularyName" .= _uvVocabularyName),
            Just ("LanguageCode" .= _uvLanguageCode)
          ]
      )

instance ToPath UpdateVocabulary where
  toPath = const "/"

instance ToQuery UpdateVocabulary where
  toQuery = const mempty

-- | /See:/ 'updateVocabularyResponse' smart constructor.
data UpdateVocabularyResponse = UpdateVocabularyResponse'
  { _uvrrsLanguageCode ::
      !(Maybe LanguageCode),
    _uvrrsLastModifiedTime ::
      !(Maybe POSIX),
    _uvrrsVocabularyState ::
      !( Maybe
           VocabularyState
       ),
    _uvrrsVocabularyName ::
      !(Maybe Text),
    _uvrrsResponseStatus ::
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

-- | Creates a value of 'UpdateVocabularyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvrrsLanguageCode' - The language code of the vocabulary entries.
--
-- * 'uvrrsLastModifiedTime' - The date and time that the vocabulary was updated.
--
-- * 'uvrrsVocabularyState' - The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
--
-- * 'uvrrsVocabularyName' - The name of the vocabulary that was updated.
--
-- * 'uvrrsResponseStatus' - -- | The response status code.
updateVocabularyResponse ::
  -- | 'uvrrsResponseStatus'
  Int ->
  UpdateVocabularyResponse
updateVocabularyResponse pResponseStatus_ =
  UpdateVocabularyResponse'
    { _uvrrsLanguageCode =
        Nothing,
      _uvrrsLastModifiedTime = Nothing,
      _uvrrsVocabularyState = Nothing,
      _uvrrsVocabularyName = Nothing,
      _uvrrsResponseStatus = pResponseStatus_
    }

-- | The language code of the vocabulary entries.
uvrrsLanguageCode :: Lens' UpdateVocabularyResponse (Maybe LanguageCode)
uvrrsLanguageCode = lens _uvrrsLanguageCode (\s a -> s {_uvrrsLanguageCode = a})

-- | The date and time that the vocabulary was updated.
uvrrsLastModifiedTime :: Lens' UpdateVocabularyResponse (Maybe UTCTime)
uvrrsLastModifiedTime = lens _uvrrsLastModifiedTime (\s a -> s {_uvrrsLastModifiedTime = a}) . mapping _Time

-- | The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
uvrrsVocabularyState :: Lens' UpdateVocabularyResponse (Maybe VocabularyState)
uvrrsVocabularyState = lens _uvrrsVocabularyState (\s a -> s {_uvrrsVocabularyState = a})

-- | The name of the vocabulary that was updated.
uvrrsVocabularyName :: Lens' UpdateVocabularyResponse (Maybe Text)
uvrrsVocabularyName = lens _uvrrsVocabularyName (\s a -> s {_uvrrsVocabularyName = a})

-- | -- | The response status code.
uvrrsResponseStatus :: Lens' UpdateVocabularyResponse Int
uvrrsResponseStatus = lens _uvrrsResponseStatus (\s a -> s {_uvrrsResponseStatus = a})

instance NFData UpdateVocabularyResponse
