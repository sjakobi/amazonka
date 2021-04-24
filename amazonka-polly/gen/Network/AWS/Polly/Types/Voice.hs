{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.Voice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.Voice where

import Network.AWS.Lens
import Network.AWS.Polly.Types.Engine
import Network.AWS.Polly.Types.Gender
import Network.AWS.Polly.Types.LanguageCode
import Network.AWS.Polly.Types.VoiceId
import Network.AWS.Prelude

-- | Description of the voice.
--
--
--
-- /See:/ 'voice' smart constructor.
data Voice = Voice'
  { _vLanguageCode ::
      !(Maybe LanguageCode),
    _vId :: !(Maybe VoiceId),
    _vGender :: !(Maybe Gender),
    _vName :: !(Maybe Text),
    _vSupportedEngines :: !(Maybe [Engine]),
    _vAdditionalLanguageCodes :: !(Maybe [LanguageCode]),
    _vLanguageName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Voice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vLanguageCode' - Language code of the voice.
--
-- * 'vId' - Amazon Polly assigned voice ID. This is the ID that you specify when calling the @SynthesizeSpeech@ operation.
--
-- * 'vGender' - Gender of the voice.
--
-- * 'vName' - Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
--
-- * 'vSupportedEngines' - Specifies which engines (@standard@ or @neural@ ) that are supported by a given voice.
--
-- * 'vAdditionalLanguageCodes' - Additional codes for languages available for the specified voice in addition to its default language.  For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code @hi-IN@ .
--
-- * 'vLanguageName' - Human readable name of the language in English.
voice ::
  Voice
voice =
  Voice'
    { _vLanguageCode = Nothing,
      _vId = Nothing,
      _vGender = Nothing,
      _vName = Nothing,
      _vSupportedEngines = Nothing,
      _vAdditionalLanguageCodes = Nothing,
      _vLanguageName = Nothing
    }

-- | Language code of the voice.
vLanguageCode :: Lens' Voice (Maybe LanguageCode)
vLanguageCode = lens _vLanguageCode (\s a -> s {_vLanguageCode = a})

-- | Amazon Polly assigned voice ID. This is the ID that you specify when calling the @SynthesizeSpeech@ operation.
vId :: Lens' Voice (Maybe VoiceId)
vId = lens _vId (\s a -> s {_vId = a})

-- | Gender of the voice.
vGender :: Lens' Voice (Maybe Gender)
vGender = lens _vGender (\s a -> s {_vGender = a})

-- | Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
vName :: Lens' Voice (Maybe Text)
vName = lens _vName (\s a -> s {_vName = a})

-- | Specifies which engines (@standard@ or @neural@ ) that are supported by a given voice.
vSupportedEngines :: Lens' Voice [Engine]
vSupportedEngines = lens _vSupportedEngines (\s a -> s {_vSupportedEngines = a}) . _Default . _Coerce

-- | Additional codes for languages available for the specified voice in addition to its default language.  For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code @hi-IN@ .
vAdditionalLanguageCodes :: Lens' Voice [LanguageCode]
vAdditionalLanguageCodes = lens _vAdditionalLanguageCodes (\s a -> s {_vAdditionalLanguageCodes = a}) . _Default . _Coerce

-- | Human readable name of the language in English.
vLanguageName :: Lens' Voice (Maybe Text)
vLanguageName = lens _vLanguageName (\s a -> s {_vLanguageName = a})

instance FromJSON Voice where
  parseJSON =
    withObject
      "Voice"
      ( \x ->
          Voice'
            <$> (x .:? "LanguageCode")
            <*> (x .:? "Id")
            <*> (x .:? "Gender")
            <*> (x .:? "Name")
            <*> (x .:? "SupportedEngines" .!= mempty)
            <*> (x .:? "AdditionalLanguageCodes" .!= mempty)
            <*> (x .:? "LanguageName")
      )

instance Hashable Voice

instance NFData Voice
