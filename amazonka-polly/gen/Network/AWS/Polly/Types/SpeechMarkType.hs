{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.SpeechMarkType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.SpeechMarkType
  ( SpeechMarkType
      ( ..,
        SpeechMarkTypeSentence,
        SpeechMarkTypeSsml,
        SpeechMarkTypeViseme,
        SpeechMarkTypeWord
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SpeechMarkType = SpeechMarkType'
  { fromSpeechMarkType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SpeechMarkTypeSentence :: SpeechMarkType
pattern SpeechMarkTypeSentence = SpeechMarkType' "sentence"

pattern SpeechMarkTypeSsml :: SpeechMarkType
pattern SpeechMarkTypeSsml = SpeechMarkType' "ssml"

pattern SpeechMarkTypeViseme :: SpeechMarkType
pattern SpeechMarkTypeViseme = SpeechMarkType' "viseme"

pattern SpeechMarkTypeWord :: SpeechMarkType
pattern SpeechMarkTypeWord = SpeechMarkType' "word"

{-# COMPLETE
  SpeechMarkTypeSentence,
  SpeechMarkTypeSsml,
  SpeechMarkTypeViseme,
  SpeechMarkTypeWord,
  SpeechMarkType'
  #-}

instance Prelude.FromText SpeechMarkType where
  parser = SpeechMarkType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpeechMarkType where
  toText (SpeechMarkType' x) = x

instance Prelude.Hashable SpeechMarkType

instance Prelude.NFData SpeechMarkType

instance Prelude.ToByteString SpeechMarkType

instance Prelude.ToQuery SpeechMarkType

instance Prelude.ToHeader SpeechMarkType

instance Prelude.ToJSON SpeechMarkType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SpeechMarkType where
  parseJSON = Prelude.parseJSONText "SpeechMarkType"
