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
-- Module      : Network.AWS.Transcribe.Types.VocabularyFilterMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.VocabularyFilterMethod
  ( VocabularyFilterMethod
      ( ..,
        VocabularyFilterMethodMask,
        VocabularyFilterMethodRemove
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VocabularyFilterMethod = VocabularyFilterMethod'
  { fromVocabularyFilterMethod ::
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

pattern VocabularyFilterMethodMask :: VocabularyFilterMethod
pattern VocabularyFilterMethodMask = VocabularyFilterMethod' "mask"

pattern VocabularyFilterMethodRemove :: VocabularyFilterMethod
pattern VocabularyFilterMethodRemove = VocabularyFilterMethod' "remove"

{-# COMPLETE
  VocabularyFilterMethodMask,
  VocabularyFilterMethodRemove,
  VocabularyFilterMethod'
  #-}

instance Prelude.FromText VocabularyFilterMethod where
  parser = VocabularyFilterMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText VocabularyFilterMethod where
  toText (VocabularyFilterMethod' x) = x

instance Prelude.Hashable VocabularyFilterMethod

instance Prelude.NFData VocabularyFilterMethod

instance Prelude.ToByteString VocabularyFilterMethod

instance Prelude.ToQuery VocabularyFilterMethod

instance Prelude.ToHeader VocabularyFilterMethod

instance Prelude.ToJSON VocabularyFilterMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VocabularyFilterMethod where
  parseJSON = Prelude.parseJSONText "VocabularyFilterMethod"
