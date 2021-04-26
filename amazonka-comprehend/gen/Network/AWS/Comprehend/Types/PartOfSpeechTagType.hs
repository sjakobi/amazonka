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
-- Module      : Network.AWS.Comprehend.Types.PartOfSpeechTagType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PartOfSpeechTagType
  ( PartOfSpeechTagType
      ( ..,
        PartOfSpeechTagTypeADJ,
        PartOfSpeechTagTypeADP,
        PartOfSpeechTagTypeADV,
        PartOfSpeechTagTypeAUX,
        PartOfSpeechTagTypeCCONJ,
        PartOfSpeechTagTypeCONJ,
        PartOfSpeechTagTypeDET,
        PartOfSpeechTagTypeINTJ,
        PartOfSpeechTagTypeNOUN,
        PartOfSpeechTagTypeNUM,
        PartOfSpeechTagTypeO,
        PartOfSpeechTagTypePART,
        PartOfSpeechTagTypePRON,
        PartOfSpeechTagTypePROPN,
        PartOfSpeechTagTypePUNCT,
        PartOfSpeechTagTypeSCONJ,
        PartOfSpeechTagTypeSYM,
        PartOfSpeechTagTypeVERB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PartOfSpeechTagType = PartOfSpeechTagType'
  { fromPartOfSpeechTagType ::
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

pattern PartOfSpeechTagTypeADJ :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeADJ = PartOfSpeechTagType' "ADJ"

pattern PartOfSpeechTagTypeADP :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeADP = PartOfSpeechTagType' "ADP"

pattern PartOfSpeechTagTypeADV :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeADV = PartOfSpeechTagType' "ADV"

pattern PartOfSpeechTagTypeAUX :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeAUX = PartOfSpeechTagType' "AUX"

pattern PartOfSpeechTagTypeCCONJ :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeCCONJ = PartOfSpeechTagType' "CCONJ"

pattern PartOfSpeechTagTypeCONJ :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeCONJ = PartOfSpeechTagType' "CONJ"

pattern PartOfSpeechTagTypeDET :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeDET = PartOfSpeechTagType' "DET"

pattern PartOfSpeechTagTypeINTJ :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeINTJ = PartOfSpeechTagType' "INTJ"

pattern PartOfSpeechTagTypeNOUN :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeNOUN = PartOfSpeechTagType' "NOUN"

pattern PartOfSpeechTagTypeNUM :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeNUM = PartOfSpeechTagType' "NUM"

pattern PartOfSpeechTagTypeO :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeO = PartOfSpeechTagType' "O"

pattern PartOfSpeechTagTypePART :: PartOfSpeechTagType
pattern PartOfSpeechTagTypePART = PartOfSpeechTagType' "PART"

pattern PartOfSpeechTagTypePRON :: PartOfSpeechTagType
pattern PartOfSpeechTagTypePRON = PartOfSpeechTagType' "PRON"

pattern PartOfSpeechTagTypePROPN :: PartOfSpeechTagType
pattern PartOfSpeechTagTypePROPN = PartOfSpeechTagType' "PROPN"

pattern PartOfSpeechTagTypePUNCT :: PartOfSpeechTagType
pattern PartOfSpeechTagTypePUNCT = PartOfSpeechTagType' "PUNCT"

pattern PartOfSpeechTagTypeSCONJ :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeSCONJ = PartOfSpeechTagType' "SCONJ"

pattern PartOfSpeechTagTypeSYM :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeSYM = PartOfSpeechTagType' "SYM"

pattern PartOfSpeechTagTypeVERB :: PartOfSpeechTagType
pattern PartOfSpeechTagTypeVERB = PartOfSpeechTagType' "VERB"

{-# COMPLETE
  PartOfSpeechTagTypeADJ,
  PartOfSpeechTagTypeADP,
  PartOfSpeechTagTypeADV,
  PartOfSpeechTagTypeAUX,
  PartOfSpeechTagTypeCCONJ,
  PartOfSpeechTagTypeCONJ,
  PartOfSpeechTagTypeDET,
  PartOfSpeechTagTypeINTJ,
  PartOfSpeechTagTypeNOUN,
  PartOfSpeechTagTypeNUM,
  PartOfSpeechTagTypeO,
  PartOfSpeechTagTypePART,
  PartOfSpeechTagTypePRON,
  PartOfSpeechTagTypePROPN,
  PartOfSpeechTagTypePUNCT,
  PartOfSpeechTagTypeSCONJ,
  PartOfSpeechTagTypeSYM,
  PartOfSpeechTagTypeVERB,
  PartOfSpeechTagType'
  #-}

instance Prelude.FromText PartOfSpeechTagType where
  parser = PartOfSpeechTagType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PartOfSpeechTagType where
  toText (PartOfSpeechTagType' x) = x

instance Prelude.Hashable PartOfSpeechTagType

instance Prelude.NFData PartOfSpeechTagType

instance Prelude.ToByteString PartOfSpeechTagType

instance Prelude.ToQuery PartOfSpeechTagType

instance Prelude.ToHeader PartOfSpeechTagType

instance Prelude.FromJSON PartOfSpeechTagType where
  parseJSON = Prelude.parseJSONText "PartOfSpeechTagType"
