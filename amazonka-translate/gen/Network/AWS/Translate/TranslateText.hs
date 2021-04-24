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
-- Module      : Network.AWS.Translate.TranslateText
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates input text from the source language to the target language. For a list of available languages and language codes, see 'what-is-languages' .
module Network.AWS.Translate.TranslateText
  ( -- * Creating a Request
    translateText,
    TranslateText,

    -- * Request Lenses
    ttTerminologyNames,
    ttText,
    ttSourceLanguageCode,
    ttTargetLanguageCode,

    -- * Destructuring the Response
    translateTextResponse,
    TranslateTextResponse,

    -- * Response Lenses
    ttrrsAppliedTerminologies,
    ttrrsResponseStatus,
    ttrrsTranslatedText,
    ttrrsSourceLanguageCode,
    ttrrsTargetLanguageCode,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'translateText' smart constructor.
data TranslateText = TranslateText'
  { _ttTerminologyNames ::
      !(Maybe [Text]),
    _ttText :: !Text,
    _ttSourceLanguageCode :: !Text,
    _ttTargetLanguageCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TranslateText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttTerminologyNames' - The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a @TranslateText@ request. Terminology lists can contain a maximum of 256 terms.
--
-- * 'ttText' - The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.
--
-- * 'ttSourceLanguageCode' - The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see 'what-is-languages' . To have Amazon Translate determine the source language of your text, you can specify @auto@ in the @SourceLanguageCode@ field. If you specify @auto@ , Amazon Translate will call <https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html Amazon Comprehend> to determine the source language.
--
-- * 'ttTargetLanguageCode' - The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.
translateText ::
  -- | 'ttText'
  Text ->
  -- | 'ttSourceLanguageCode'
  Text ->
  -- | 'ttTargetLanguageCode'
  Text ->
  TranslateText
translateText
  pText_
  pSourceLanguageCode_
  pTargetLanguageCode_ =
    TranslateText'
      { _ttTerminologyNames = Nothing,
        _ttText = pText_,
        _ttSourceLanguageCode = pSourceLanguageCode_,
        _ttTargetLanguageCode = pTargetLanguageCode_
      }

-- | The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a @TranslateText@ request. Terminology lists can contain a maximum of 256 terms.
ttTerminologyNames :: Lens' TranslateText [Text]
ttTerminologyNames = lens _ttTerminologyNames (\s a -> s {_ttTerminologyNames = a}) . _Default . _Coerce

-- | The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.
ttText :: Lens' TranslateText Text
ttText = lens _ttText (\s a -> s {_ttText = a})

-- | The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see 'what-is-languages' . To have Amazon Translate determine the source language of your text, you can specify @auto@ in the @SourceLanguageCode@ field. If you specify @auto@ , Amazon Translate will call <https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html Amazon Comprehend> to determine the source language.
ttSourceLanguageCode :: Lens' TranslateText Text
ttSourceLanguageCode = lens _ttSourceLanguageCode (\s a -> s {_ttSourceLanguageCode = a})

-- | The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.
ttTargetLanguageCode :: Lens' TranslateText Text
ttTargetLanguageCode = lens _ttTargetLanguageCode (\s a -> s {_ttTargetLanguageCode = a})

instance AWSRequest TranslateText where
  type Rs TranslateText = TranslateTextResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          TranslateTextResponse'
            <$> (x .?> "AppliedTerminologies" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "TranslatedText")
            <*> (x .:> "SourceLanguageCode")
            <*> (x .:> "TargetLanguageCode")
      )

instance Hashable TranslateText

instance NFData TranslateText

instance ToHeaders TranslateText where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.TranslateText" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TranslateText where
  toJSON TranslateText' {..} =
    object
      ( catMaybes
          [ ("TerminologyNames" .=) <$> _ttTerminologyNames,
            Just ("Text" .= _ttText),
            Just ("SourceLanguageCode" .= _ttSourceLanguageCode),
            Just
              ("TargetLanguageCode" .= _ttTargetLanguageCode)
          ]
      )

instance ToPath TranslateText where
  toPath = const "/"

instance ToQuery TranslateText where
  toQuery = const mempty

-- | /See:/ 'translateTextResponse' smart constructor.
data TranslateTextResponse = TranslateTextResponse'
  { _ttrrsAppliedTerminologies ::
      !( Maybe
           [AppliedTerminology]
       ),
    _ttrrsResponseStatus ::
      !Int,
    _ttrrsTranslatedText ::
      !Text,
    _ttrrsSourceLanguageCode ::
      !Text,
    _ttrrsTargetLanguageCode ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TranslateTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrrsAppliedTerminologies' - The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.
--
-- * 'ttrrsResponseStatus' - -- | The response status code.
--
-- * 'ttrrsTranslatedText' - The translated text.
--
-- * 'ttrrsSourceLanguageCode' - The language code for the language of the source text.
--
-- * 'ttrrsTargetLanguageCode' - The language code for the language of the target text.
translateTextResponse ::
  -- | 'ttrrsResponseStatus'
  Int ->
  -- | 'ttrrsTranslatedText'
  Text ->
  -- | 'ttrrsSourceLanguageCode'
  Text ->
  -- | 'ttrrsTargetLanguageCode'
  Text ->
  TranslateTextResponse
translateTextResponse
  pResponseStatus_
  pTranslatedText_
  pSourceLanguageCode_
  pTargetLanguageCode_ =
    TranslateTextResponse'
      { _ttrrsAppliedTerminologies =
          Nothing,
        _ttrrsResponseStatus = pResponseStatus_,
        _ttrrsTranslatedText = pTranslatedText_,
        _ttrrsSourceLanguageCode = pSourceLanguageCode_,
        _ttrrsTargetLanguageCode = pTargetLanguageCode_
      }

-- | The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.
ttrrsAppliedTerminologies :: Lens' TranslateTextResponse [AppliedTerminology]
ttrrsAppliedTerminologies = lens _ttrrsAppliedTerminologies (\s a -> s {_ttrrsAppliedTerminologies = a}) . _Default . _Coerce

-- | -- | The response status code.
ttrrsResponseStatus :: Lens' TranslateTextResponse Int
ttrrsResponseStatus = lens _ttrrsResponseStatus (\s a -> s {_ttrrsResponseStatus = a})

-- | The translated text.
ttrrsTranslatedText :: Lens' TranslateTextResponse Text
ttrrsTranslatedText = lens _ttrrsTranslatedText (\s a -> s {_ttrrsTranslatedText = a})

-- | The language code for the language of the source text.
ttrrsSourceLanguageCode :: Lens' TranslateTextResponse Text
ttrrsSourceLanguageCode = lens _ttrrsSourceLanguageCode (\s a -> s {_ttrrsSourceLanguageCode = a})

-- | The language code for the language of the target text.
ttrrsTargetLanguageCode :: Lens' TranslateTextResponse Text
ttrrsTargetLanguageCode = lens _ttrrsTargetLanguageCode (\s a -> s {_ttrrsTargetLanguageCode = a})

instance NFData TranslateTextResponse
