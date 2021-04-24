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
-- Module      : Network.AWS.Transcribe.GetMedicalVocabulary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a medical vocabulary.
module Network.AWS.Transcribe.GetMedicalVocabulary
  ( -- * Creating a Request
    getMedicalVocabulary,
    GetMedicalVocabulary,

    -- * Request Lenses
    gmvVocabularyName,

    -- * Destructuring the Response
    getMedicalVocabularyResponse,
    GetMedicalVocabularyResponse,

    -- * Response Lenses
    gmvrrsLanguageCode,
    gmvrrsFailureReason,
    gmvrrsLastModifiedTime,
    gmvrrsVocabularyState,
    gmvrrsVocabularyName,
    gmvrrsDownloadURI,
    gmvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'getMedicalVocabulary' smart constructor.
newtype GetMedicalVocabulary = GetMedicalVocabulary'
  { _gmvVocabularyName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMedicalVocabulary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmvVocabularyName' - The name of the vocabulary that you want information about. The value is case sensitive.
getMedicalVocabulary ::
  -- | 'gmvVocabularyName'
  Text ->
  GetMedicalVocabulary
getMedicalVocabulary pVocabularyName_ =
  GetMedicalVocabulary'
    { _gmvVocabularyName =
        pVocabularyName_
    }

-- | The name of the vocabulary that you want information about. The value is case sensitive.
gmvVocabularyName :: Lens' GetMedicalVocabulary Text
gmvVocabularyName = lens _gmvVocabularyName (\s a -> s {_gmvVocabularyName = a})

instance AWSRequest GetMedicalVocabulary where
  type
    Rs GetMedicalVocabulary =
      GetMedicalVocabularyResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          GetMedicalVocabularyResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "VocabularyState")
            <*> (x .?> "VocabularyName")
            <*> (x .?> "DownloadUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMedicalVocabulary

instance NFData GetMedicalVocabulary

instance ToHeaders GetMedicalVocabulary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.GetMedicalVocabulary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMedicalVocabulary where
  toJSON GetMedicalVocabulary' {..} =
    object
      ( catMaybes
          [Just ("VocabularyName" .= _gmvVocabularyName)]
      )

instance ToPath GetMedicalVocabulary where
  toPath = const "/"

instance ToQuery GetMedicalVocabulary where
  toQuery = const mempty

-- | /See:/ 'getMedicalVocabularyResponse' smart constructor.
data GetMedicalVocabularyResponse = GetMedicalVocabularyResponse'
  { _gmvrrsLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _gmvrrsFailureReason ::
      !(Maybe Text),
    _gmvrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _gmvrrsVocabularyState ::
      !( Maybe
           VocabularyState
       ),
    _gmvrrsVocabularyName ::
      !(Maybe Text),
    _gmvrrsDownloadURI ::
      !(Maybe Text),
    _gmvrrsResponseStatus ::
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

-- | Creates a value of 'GetMedicalVocabularyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmvrrsLanguageCode' - The valid language code for your vocabulary entries.
--
-- * 'gmvrrsFailureReason' - If the @VocabularyState@ is @FAILED@ , this field contains information about why the job failed.
--
-- * 'gmvrrsLastModifiedTime' - The date and time that the vocabulary was last modified with a text file different from the one that was previously used.
--
-- * 'gmvrrsVocabularyState' - The processing state of the vocabulary. If the @VocabularyState@ is @READY@ then you can use it in the @StartMedicalTranscriptionJob@ operation.
--
-- * 'gmvrrsVocabularyName' - The name of the vocabulary returned by Amazon Transcribe Medical.
--
-- * 'gmvrrsDownloadURI' - The location in Amazon S3 where the vocabulary is stored. Use this URI to get the contents of the vocabulary. You can download your vocabulary from the URI for a limited time.
--
-- * 'gmvrrsResponseStatus' - -- | The response status code.
getMedicalVocabularyResponse ::
  -- | 'gmvrrsResponseStatus'
  Int ->
  GetMedicalVocabularyResponse
getMedicalVocabularyResponse pResponseStatus_ =
  GetMedicalVocabularyResponse'
    { _gmvrrsLanguageCode =
        Nothing,
      _gmvrrsFailureReason = Nothing,
      _gmvrrsLastModifiedTime = Nothing,
      _gmvrrsVocabularyState = Nothing,
      _gmvrrsVocabularyName = Nothing,
      _gmvrrsDownloadURI = Nothing,
      _gmvrrsResponseStatus = pResponseStatus_
    }

-- | The valid language code for your vocabulary entries.
gmvrrsLanguageCode :: Lens' GetMedicalVocabularyResponse (Maybe LanguageCode)
gmvrrsLanguageCode = lens _gmvrrsLanguageCode (\s a -> s {_gmvrrsLanguageCode = a})

-- | If the @VocabularyState@ is @FAILED@ , this field contains information about why the job failed.
gmvrrsFailureReason :: Lens' GetMedicalVocabularyResponse (Maybe Text)
gmvrrsFailureReason = lens _gmvrrsFailureReason (\s a -> s {_gmvrrsFailureReason = a})

-- | The date and time that the vocabulary was last modified with a text file different from the one that was previously used.
gmvrrsLastModifiedTime :: Lens' GetMedicalVocabularyResponse (Maybe UTCTime)
gmvrrsLastModifiedTime = lens _gmvrrsLastModifiedTime (\s a -> s {_gmvrrsLastModifiedTime = a}) . mapping _Time

-- | The processing state of the vocabulary. If the @VocabularyState@ is @READY@ then you can use it in the @StartMedicalTranscriptionJob@ operation.
gmvrrsVocabularyState :: Lens' GetMedicalVocabularyResponse (Maybe VocabularyState)
gmvrrsVocabularyState = lens _gmvrrsVocabularyState (\s a -> s {_gmvrrsVocabularyState = a})

-- | The name of the vocabulary returned by Amazon Transcribe Medical.
gmvrrsVocabularyName :: Lens' GetMedicalVocabularyResponse (Maybe Text)
gmvrrsVocabularyName = lens _gmvrrsVocabularyName (\s a -> s {_gmvrrsVocabularyName = a})

-- | The location in Amazon S3 where the vocabulary is stored. Use this URI to get the contents of the vocabulary. You can download your vocabulary from the URI for a limited time.
gmvrrsDownloadURI :: Lens' GetMedicalVocabularyResponse (Maybe Text)
gmvrrsDownloadURI = lens _gmvrrsDownloadURI (\s a -> s {_gmvrrsDownloadURI = a})

-- | -- | The response status code.
gmvrrsResponseStatus :: Lens' GetMedicalVocabularyResponse Int
gmvrrsResponseStatus = lens _gmvrrsResponseStatus (\s a -> s {_gmvrrsResponseStatus = a})

instance NFData GetMedicalVocabularyResponse
