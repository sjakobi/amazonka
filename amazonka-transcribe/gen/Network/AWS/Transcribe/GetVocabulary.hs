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
-- Module      : Network.AWS.Transcribe.GetVocabulary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a vocabulary.
module Network.AWS.Transcribe.GetVocabulary
  ( -- * Creating a Request
    getVocabulary,
    GetVocabulary,

    -- * Request Lenses
    gvVocabularyName,

    -- * Destructuring the Response
    getVocabularyResponse,
    GetVocabularyResponse,

    -- * Response Lenses
    gvrrsLanguageCode,
    gvrrsFailureReason,
    gvrrsLastModifiedTime,
    gvrrsVocabularyState,
    gvrrsVocabularyName,
    gvrrsDownloadURI,
    gvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'getVocabulary' smart constructor.
newtype GetVocabulary = GetVocabulary'
  { _gvVocabularyName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVocabulary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvVocabularyName' - The name of the vocabulary to return information about. The name is case sensitive.
getVocabulary ::
  -- | 'gvVocabularyName'
  Text ->
  GetVocabulary
getVocabulary pVocabularyName_ =
  GetVocabulary'
    { _gvVocabularyName =
        pVocabularyName_
    }

-- | The name of the vocabulary to return information about. The name is case sensitive.
gvVocabularyName :: Lens' GetVocabulary Text
gvVocabularyName = lens _gvVocabularyName (\s a -> s {_gvVocabularyName = a})

instance AWSRequest GetVocabulary where
  type Rs GetVocabulary = GetVocabularyResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          GetVocabularyResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "VocabularyState")
            <*> (x .?> "VocabularyName")
            <*> (x .?> "DownloadUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetVocabulary

instance NFData GetVocabulary

instance ToHeaders GetVocabulary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.GetVocabulary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetVocabulary where
  toJSON GetVocabulary' {..} =
    object
      ( catMaybes
          [Just ("VocabularyName" .= _gvVocabularyName)]
      )

instance ToPath GetVocabulary where
  toPath = const "/"

instance ToQuery GetVocabulary where
  toQuery = const mempty

-- | /See:/ 'getVocabularyResponse' smart constructor.
data GetVocabularyResponse = GetVocabularyResponse'
  { _gvrrsLanguageCode ::
      !(Maybe LanguageCode),
    _gvrrsFailureReason ::
      !(Maybe Text),
    _gvrrsLastModifiedTime ::
      !(Maybe POSIX),
    _gvrrsVocabularyState ::
      !(Maybe VocabularyState),
    _gvrrsVocabularyName ::
      !(Maybe Text),
    _gvrrsDownloadURI ::
      !(Maybe Text),
    _gvrrsResponseStatus ::
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

-- | Creates a value of 'GetVocabularyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvrrsLanguageCode' - The language code of the vocabulary entries.
--
-- * 'gvrrsFailureReason' - If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
--
-- * 'gvrrsLastModifiedTime' - The date and time that the vocabulary was last modified.
--
-- * 'gvrrsVocabularyState' - The processing state of the vocabulary.
--
-- * 'gvrrsVocabularyName' - The name of the vocabulary to return.
--
-- * 'gvrrsDownloadURI' - The S3 location where the vocabulary is stored. Use this URI to get the contents of the vocabulary. The URI is available for a limited time.
--
-- * 'gvrrsResponseStatus' - -- | The response status code.
getVocabularyResponse ::
  -- | 'gvrrsResponseStatus'
  Int ->
  GetVocabularyResponse
getVocabularyResponse pResponseStatus_ =
  GetVocabularyResponse'
    { _gvrrsLanguageCode =
        Nothing,
      _gvrrsFailureReason = Nothing,
      _gvrrsLastModifiedTime = Nothing,
      _gvrrsVocabularyState = Nothing,
      _gvrrsVocabularyName = Nothing,
      _gvrrsDownloadURI = Nothing,
      _gvrrsResponseStatus = pResponseStatus_
    }

-- | The language code of the vocabulary entries.
gvrrsLanguageCode :: Lens' GetVocabularyResponse (Maybe LanguageCode)
gvrrsLanguageCode = lens _gvrrsLanguageCode (\s a -> s {_gvrrsLanguageCode = a})

-- | If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
gvrrsFailureReason :: Lens' GetVocabularyResponse (Maybe Text)
gvrrsFailureReason = lens _gvrrsFailureReason (\s a -> s {_gvrrsFailureReason = a})

-- | The date and time that the vocabulary was last modified.
gvrrsLastModifiedTime :: Lens' GetVocabularyResponse (Maybe UTCTime)
gvrrsLastModifiedTime = lens _gvrrsLastModifiedTime (\s a -> s {_gvrrsLastModifiedTime = a}) . mapping _Time

-- | The processing state of the vocabulary.
gvrrsVocabularyState :: Lens' GetVocabularyResponse (Maybe VocabularyState)
gvrrsVocabularyState = lens _gvrrsVocabularyState (\s a -> s {_gvrrsVocabularyState = a})

-- | The name of the vocabulary to return.
gvrrsVocabularyName :: Lens' GetVocabularyResponse (Maybe Text)
gvrrsVocabularyName = lens _gvrrsVocabularyName (\s a -> s {_gvrrsVocabularyName = a})

-- | The S3 location where the vocabulary is stored. Use this URI to get the contents of the vocabulary. The URI is available for a limited time.
gvrrsDownloadURI :: Lens' GetVocabularyResponse (Maybe Text)
gvrrsDownloadURI = lens _gvrrsDownloadURI (\s a -> s {_gvrrsDownloadURI = a})

-- | -- | The response status code.
gvrrsResponseStatus :: Lens' GetVocabularyResponse Int
gvrrsResponseStatus = lens _gvrrsResponseStatus (\s a -> s {_gvrrsResponseStatus = a})

instance NFData GetVocabularyResponse
