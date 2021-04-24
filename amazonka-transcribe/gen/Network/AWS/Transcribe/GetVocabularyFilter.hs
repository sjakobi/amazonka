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
-- Module      : Network.AWS.Transcribe.GetVocabularyFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a vocabulary filter.
module Network.AWS.Transcribe.GetVocabularyFilter
  ( -- * Creating a Request
    getVocabularyFilter,
    GetVocabularyFilter,

    -- * Request Lenses
    gvfVocabularyFilterName,

    -- * Destructuring the Response
    getVocabularyFilterResponse,
    GetVocabularyFilterResponse,

    -- * Response Lenses
    gvfrrsLanguageCode,
    gvfrrsVocabularyFilterName,
    gvfrrsLastModifiedTime,
    gvfrrsDownloadURI,
    gvfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'getVocabularyFilter' smart constructor.
newtype GetVocabularyFilter = GetVocabularyFilter'
  { _gvfVocabularyFilterName ::
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

-- | Creates a value of 'GetVocabularyFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvfVocabularyFilterName' - The name of the vocabulary filter for which to return information.
getVocabularyFilter ::
  -- | 'gvfVocabularyFilterName'
  Text ->
  GetVocabularyFilter
getVocabularyFilter pVocabularyFilterName_ =
  GetVocabularyFilter'
    { _gvfVocabularyFilterName =
        pVocabularyFilterName_
    }

-- | The name of the vocabulary filter for which to return information.
gvfVocabularyFilterName :: Lens' GetVocabularyFilter Text
gvfVocabularyFilterName = lens _gvfVocabularyFilterName (\s a -> s {_gvfVocabularyFilterName = a})

instance AWSRequest GetVocabularyFilter where
  type
    Rs GetVocabularyFilter =
      GetVocabularyFilterResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          GetVocabularyFilterResponse'
            <$> (x .?> "LanguageCode")
            <*> (x .?> "VocabularyFilterName")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "DownloadUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetVocabularyFilter

instance NFData GetVocabularyFilter

instance ToHeaders GetVocabularyFilter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.GetVocabularyFilter" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetVocabularyFilter where
  toJSON GetVocabularyFilter' {..} =
    object
      ( catMaybes
          [ Just
              ( "VocabularyFilterName"
                  .= _gvfVocabularyFilterName
              )
          ]
      )

instance ToPath GetVocabularyFilter where
  toPath = const "/"

instance ToQuery GetVocabularyFilter where
  toQuery = const mempty

-- | /See:/ 'getVocabularyFilterResponse' smart constructor.
data GetVocabularyFilterResponse = GetVocabularyFilterResponse'
  { _gvfrrsLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _gvfrrsVocabularyFilterName ::
      !(Maybe Text),
    _gvfrrsLastModifiedTime ::
      !(Maybe POSIX),
    _gvfrrsDownloadURI ::
      !(Maybe Text),
    _gvfrrsResponseStatus ::
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

-- | Creates a value of 'GetVocabularyFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvfrrsLanguageCode' - The language code of the words in the vocabulary filter.
--
-- * 'gvfrrsVocabularyFilterName' - The name of the vocabulary filter.
--
-- * 'gvfrrsLastModifiedTime' - The date and time that the contents of the vocabulary filter were updated.
--
-- * 'gvfrrsDownloadURI' - The URI of the list of words in the vocabulary filter. You can use this URI to get the list of words.
--
-- * 'gvfrrsResponseStatus' - -- | The response status code.
getVocabularyFilterResponse ::
  -- | 'gvfrrsResponseStatus'
  Int ->
  GetVocabularyFilterResponse
getVocabularyFilterResponse pResponseStatus_ =
  GetVocabularyFilterResponse'
    { _gvfrrsLanguageCode =
        Nothing,
      _gvfrrsVocabularyFilterName = Nothing,
      _gvfrrsLastModifiedTime = Nothing,
      _gvfrrsDownloadURI = Nothing,
      _gvfrrsResponseStatus = pResponseStatus_
    }

-- | The language code of the words in the vocabulary filter.
gvfrrsLanguageCode :: Lens' GetVocabularyFilterResponse (Maybe LanguageCode)
gvfrrsLanguageCode = lens _gvfrrsLanguageCode (\s a -> s {_gvfrrsLanguageCode = a})

-- | The name of the vocabulary filter.
gvfrrsVocabularyFilterName :: Lens' GetVocabularyFilterResponse (Maybe Text)
gvfrrsVocabularyFilterName = lens _gvfrrsVocabularyFilterName (\s a -> s {_gvfrrsVocabularyFilterName = a})

-- | The date and time that the contents of the vocabulary filter were updated.
gvfrrsLastModifiedTime :: Lens' GetVocabularyFilterResponse (Maybe UTCTime)
gvfrrsLastModifiedTime = lens _gvfrrsLastModifiedTime (\s a -> s {_gvfrrsLastModifiedTime = a}) . mapping _Time

-- | The URI of the list of words in the vocabulary filter. You can use this URI to get the list of words.
gvfrrsDownloadURI :: Lens' GetVocabularyFilterResponse (Maybe Text)
gvfrrsDownloadURI = lens _gvfrrsDownloadURI (\s a -> s {_gvfrrsDownloadURI = a})

-- | -- | The response status code.
gvfrrsResponseStatus :: Lens' GetVocabularyFilterResponse Int
gvfrrsResponseStatus = lens _gvfrrsResponseStatus (\s a -> s {_gvfrrsResponseStatus = a})

instance NFData GetVocabularyFilterResponse
