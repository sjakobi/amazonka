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
-- Module      : Network.AWS.Transcribe.Types.VocabularyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.VocabularyState
  ( VocabularyState
      ( ..,
        VocabularyStateFAILED,
        VocabularyStatePENDING,
        VocabularyStateREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VocabularyState = VocabularyState'
  { fromVocabularyState ::
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

pattern VocabularyStateFAILED :: VocabularyState
pattern VocabularyStateFAILED = VocabularyState' "FAILED"

pattern VocabularyStatePENDING :: VocabularyState
pattern VocabularyStatePENDING = VocabularyState' "PENDING"

pattern VocabularyStateREADY :: VocabularyState
pattern VocabularyStateREADY = VocabularyState' "READY"

{-# COMPLETE
  VocabularyStateFAILED,
  VocabularyStatePENDING,
  VocabularyStateREADY,
  VocabularyState'
  #-}

instance Prelude.FromText VocabularyState where
  parser = VocabularyState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VocabularyState where
  toText (VocabularyState' x) = x

instance Prelude.Hashable VocabularyState

instance Prelude.NFData VocabularyState

instance Prelude.ToByteString VocabularyState

instance Prelude.ToQuery VocabularyState

instance Prelude.ToHeader VocabularyState

instance Prelude.ToJSON VocabularyState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VocabularyState where
  parseJSON = Prelude.parseJSONText "VocabularyState"
