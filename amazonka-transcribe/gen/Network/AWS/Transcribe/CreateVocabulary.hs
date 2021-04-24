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
-- Module      : Network.AWS.Transcribe.CreateVocabulary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file.
module Network.AWS.Transcribe.CreateVocabulary
  ( -- * Creating a Request
    createVocabulary,
    CreateVocabulary,

    -- * Request Lenses
    cvPhrases,
    cvVocabularyFileURI,
    cvVocabularyName,
    cvLanguageCode,

    -- * Destructuring the Response
    createVocabularyResponse,
    CreateVocabularyResponse,

    -- * Response Lenses
    cvrrsLanguageCode,
    cvrrsFailureReason,
    cvrrsLastModifiedTime,
    cvrrsVocabularyState,
    cvrrsVocabularyName,
    cvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'createVocabulary' smart constructor.
data CreateVocabulary = CreateVocabulary'
  { _cvPhrases ::
      !(Maybe [Text]),
    _cvVocabularyFileURI :: !(Maybe Text),
    _cvVocabularyName :: !Text,
    _cvLanguageCode :: !LanguageCode
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVocabulary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvPhrases' - An array of strings that contains the vocabulary entries.
--
-- * 'cvVocabularyFileURI' - The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
--
-- * 'cvVocabularyName' - The name of the vocabulary. The name must be unique within an AWS account. The name is case sensitive. If you try to create a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
--
-- * 'cvLanguageCode' - The language code of the vocabulary entries.
createVocabulary ::
  -- | 'cvVocabularyName'
  Text ->
  -- | 'cvLanguageCode'
  LanguageCode ->
  CreateVocabulary
createVocabulary pVocabularyName_ pLanguageCode_ =
  CreateVocabulary'
    { _cvPhrases = Nothing,
      _cvVocabularyFileURI = Nothing,
      _cvVocabularyName = pVocabularyName_,
      _cvLanguageCode = pLanguageCode_
    }

-- | An array of strings that contains the vocabulary entries.
cvPhrases :: Lens' CreateVocabulary [Text]
cvPhrases = lens _cvPhrases (\s a -> s {_cvPhrases = a}) . _Default . _Coerce

-- | The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ . For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
cvVocabularyFileURI :: Lens' CreateVocabulary (Maybe Text)
cvVocabularyFileURI = lens _cvVocabularyFileURI (\s a -> s {_cvVocabularyFileURI = a})

-- | The name of the vocabulary. The name must be unique within an AWS account. The name is case sensitive. If you try to create a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
cvVocabularyName :: Lens' CreateVocabulary Text
cvVocabularyName = lens _cvVocabularyName (\s a -> s {_cvVocabularyName = a})

-- | The language code of the vocabulary entries.
cvLanguageCode :: Lens' CreateVocabulary LanguageCode
cvLanguageCode = lens _cvLanguageCode (\s a -> s {_cvLanguageCode = a})

instance AWSRequest CreateVocabulary where
  type Rs CreateVocabulary = CreateVocabularyResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          CreateVocabularyResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "VocabularyState")
            <*> (x .?> "VocabularyName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateVocabulary

instance NFData CreateVocabulary

instance ToHeaders CreateVocabulary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.CreateVocabulary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateVocabulary where
  toJSON CreateVocabulary' {..} =
    object
      ( catMaybes
          [ ("Phrases" .=) <$> _cvPhrases,
            ("VocabularyFileUri" .=) <$> _cvVocabularyFileURI,
            Just ("VocabularyName" .= _cvVocabularyName),
            Just ("LanguageCode" .= _cvLanguageCode)
          ]
      )

instance ToPath CreateVocabulary where
  toPath = const "/"

instance ToQuery CreateVocabulary where
  toQuery = const mempty

-- | /See:/ 'createVocabularyResponse' smart constructor.
data CreateVocabularyResponse = CreateVocabularyResponse'
  { _cvrrsLanguageCode ::
      !(Maybe LanguageCode),
    _cvrrsFailureReason ::
      !(Maybe Text),
    _cvrrsLastModifiedTime ::
      !(Maybe POSIX),
    _cvrrsVocabularyState ::
      !( Maybe
           VocabularyState
       ),
    _cvrrsVocabularyName ::
      !(Maybe Text),
    _cvrrsResponseStatus ::
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

-- | Creates a value of 'CreateVocabularyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvrrsLanguageCode' - The language code of the vocabulary entries.
--
-- * 'cvrrsFailureReason' - If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
--
-- * 'cvrrsLastModifiedTime' - The date and time that the vocabulary was created.
--
-- * 'cvrrsVocabularyState' - The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
--
-- * 'cvrrsVocabularyName' - The name of the vocabulary.
--
-- * 'cvrrsResponseStatus' - -- | The response status code.
createVocabularyResponse ::
  -- | 'cvrrsResponseStatus'
  Int ->
  CreateVocabularyResponse
createVocabularyResponse pResponseStatus_ =
  CreateVocabularyResponse'
    { _cvrrsLanguageCode =
        Nothing,
      _cvrrsFailureReason = Nothing,
      _cvrrsLastModifiedTime = Nothing,
      _cvrrsVocabularyState = Nothing,
      _cvrrsVocabularyName = Nothing,
      _cvrrsResponseStatus = pResponseStatus_
    }

-- | The language code of the vocabulary entries.
cvrrsLanguageCode :: Lens' CreateVocabularyResponse (Maybe LanguageCode)
cvrrsLanguageCode = lens _cvrrsLanguageCode (\s a -> s {_cvrrsLanguageCode = a})

-- | If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
cvrrsFailureReason :: Lens' CreateVocabularyResponse (Maybe Text)
cvrrsFailureReason = lens _cvrrsFailureReason (\s a -> s {_cvrrsFailureReason = a})

-- | The date and time that the vocabulary was created.
cvrrsLastModifiedTime :: Lens' CreateVocabularyResponse (Maybe UTCTime)
cvrrsLastModifiedTime = lens _cvrrsLastModifiedTime (\s a -> s {_cvrrsLastModifiedTime = a}) . mapping _Time

-- | The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
cvrrsVocabularyState :: Lens' CreateVocabularyResponse (Maybe VocabularyState)
cvrrsVocabularyState = lens _cvrrsVocabularyState (\s a -> s {_cvrrsVocabularyState = a})

-- | The name of the vocabulary.
cvrrsVocabularyName :: Lens' CreateVocabularyResponse (Maybe Text)
cvrrsVocabularyName = lens _cvrrsVocabularyName (\s a -> s {_cvrrsVocabularyName = a})

-- | -- | The response status code.
cvrrsResponseStatus :: Lens' CreateVocabularyResponse Int
cvrrsResponseStatus = lens _cvrrsResponseStatus (\s a -> s {_cvrrsResponseStatus = a})

instance NFData CreateVocabularyResponse
