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
-- Module      : Network.AWS.Comprehend.DetectDominantLanguage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see <https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html Amazon Comprehend Supported Languages> .
module Network.AWS.Comprehend.DetectDominantLanguage
  ( -- * Creating a Request
    detectDominantLanguage,
    DetectDominantLanguage,

    -- * Request Lenses
    ddlText,

    -- * Destructuring the Response
    detectDominantLanguageResponse,
    DetectDominantLanguageResponse,

    -- * Response Lenses
    ddlrrsLanguages,
    ddlrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detectDominantLanguage' smart constructor.
newtype DetectDominantLanguage = DetectDominantLanguage'
  { _ddlText ::
      Sensitive Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectDominantLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddlText' - A UTF-8 text string. Each string should contain at least 20 characters and must contain fewer that 5,000 bytes of UTF-8 encoded characters.
detectDominantLanguage ::
  -- | 'ddlText'
  Text ->
  DetectDominantLanguage
detectDominantLanguage pText_ =
  DetectDominantLanguage'
    { _ddlText =
        _Sensitive # pText_
    }

-- | A UTF-8 text string. Each string should contain at least 20 characters and must contain fewer that 5,000 bytes of UTF-8 encoded characters.
ddlText :: Lens' DetectDominantLanguage Text
ddlText = lens _ddlText (\s a -> s {_ddlText = a}) . _Sensitive

instance AWSRequest DetectDominantLanguage where
  type
    Rs DetectDominantLanguage =
      DetectDominantLanguageResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DetectDominantLanguageResponse'
            <$> (x .?> "Languages" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DetectDominantLanguage

instance NFData DetectDominantLanguage

instance ToHeaders DetectDominantLanguage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DetectDominantLanguage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetectDominantLanguage where
  toJSON DetectDominantLanguage' {..} =
    object (catMaybes [Just ("Text" .= _ddlText)])

instance ToPath DetectDominantLanguage where
  toPath = const "/"

instance ToQuery DetectDominantLanguage where
  toQuery = const mempty

-- | /See:/ 'detectDominantLanguageResponse' smart constructor.
data DetectDominantLanguageResponse = DetectDominantLanguageResponse'
  { _ddlrrsLanguages ::
      !( Maybe
           [DominantLanguage]
       ),
    _ddlrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectDominantLanguageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddlrrsLanguages' - The languages that Amazon Comprehend detected in the input text. For each language, the response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend has in the accuracy of its inference. For more information about RFC 5646, see <https://tools.ietf.org/html/rfc5646 Tags for Identifying Languages> on the /IETF Tools/ web site.
--
-- * 'ddlrrsResponseStatus' - -- | The response status code.
detectDominantLanguageResponse ::
  -- | 'ddlrrsResponseStatus'
  Int ->
  DetectDominantLanguageResponse
detectDominantLanguageResponse pResponseStatus_ =
  DetectDominantLanguageResponse'
    { _ddlrrsLanguages =
        Nothing,
      _ddlrrsResponseStatus = pResponseStatus_
    }

-- | The languages that Amazon Comprehend detected in the input text. For each language, the response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend has in the accuracy of its inference. For more information about RFC 5646, see <https://tools.ietf.org/html/rfc5646 Tags for Identifying Languages> on the /IETF Tools/ web site.
ddlrrsLanguages :: Lens' DetectDominantLanguageResponse [DominantLanguage]
ddlrrsLanguages = lens _ddlrrsLanguages (\s a -> s {_ddlrrsLanguages = a}) . _Default . _Coerce

-- | -- | The response status code.
ddlrrsResponseStatus :: Lens' DetectDominantLanguageResponse Int
ddlrrsResponseStatus = lens _ddlrrsResponseStatus (\s a -> s {_ddlrrsResponseStatus = a})

instance NFData DetectDominantLanguageResponse
