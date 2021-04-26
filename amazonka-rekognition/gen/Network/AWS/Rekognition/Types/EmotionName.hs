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
-- Module      : Network.AWS.Rekognition.Types.EmotionName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.EmotionName
  ( EmotionName
      ( ..,
        EmotionNameANGRY,
        EmotionNameCALM,
        EmotionNameCONFUSED,
        EmotionNameDISGUSTED,
        EmotionNameFEAR,
        EmotionNameHAPPY,
        EmotionNameSAD,
        EmotionNameSURPRISED,
        EmotionNameUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EmotionName = EmotionName'
  { fromEmotionName ::
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

pattern EmotionNameANGRY :: EmotionName
pattern EmotionNameANGRY = EmotionName' "ANGRY"

pattern EmotionNameCALM :: EmotionName
pattern EmotionNameCALM = EmotionName' "CALM"

pattern EmotionNameCONFUSED :: EmotionName
pattern EmotionNameCONFUSED = EmotionName' "CONFUSED"

pattern EmotionNameDISGUSTED :: EmotionName
pattern EmotionNameDISGUSTED = EmotionName' "DISGUSTED"

pattern EmotionNameFEAR :: EmotionName
pattern EmotionNameFEAR = EmotionName' "FEAR"

pattern EmotionNameHAPPY :: EmotionName
pattern EmotionNameHAPPY = EmotionName' "HAPPY"

pattern EmotionNameSAD :: EmotionName
pattern EmotionNameSAD = EmotionName' "SAD"

pattern EmotionNameSURPRISED :: EmotionName
pattern EmotionNameSURPRISED = EmotionName' "SURPRISED"

pattern EmotionNameUNKNOWN :: EmotionName
pattern EmotionNameUNKNOWN = EmotionName' "UNKNOWN"

{-# COMPLETE
  EmotionNameANGRY,
  EmotionNameCALM,
  EmotionNameCONFUSED,
  EmotionNameDISGUSTED,
  EmotionNameFEAR,
  EmotionNameHAPPY,
  EmotionNameSAD,
  EmotionNameSURPRISED,
  EmotionNameUNKNOWN,
  EmotionName'
  #-}

instance Prelude.FromText EmotionName where
  parser = EmotionName' Prelude.<$> Prelude.takeText

instance Prelude.ToText EmotionName where
  toText (EmotionName' x) = x

instance Prelude.Hashable EmotionName

instance Prelude.NFData EmotionName

instance Prelude.ToByteString EmotionName

instance Prelude.ToQuery EmotionName

instance Prelude.ToHeader EmotionName

instance Prelude.FromJSON EmotionName where
  parseJSON = Prelude.parseJSONText "EmotionName"
