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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitlingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitlingType
  ( DvbSubtitlingType
      ( ..,
        DvbSubtitlingTypeHEARINGIMPAIRED,
        DvbSubtitlingTypeSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your DVB subtitles are standard or for hearing impaired.
-- Choose hearing impaired if your subtitles include audio descriptions and
-- dialogue. Choose standard if your subtitles include only dialogue.
newtype DvbSubtitlingType = DvbSubtitlingType'
  { fromDvbSubtitlingType ::
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

pattern DvbSubtitlingTypeHEARINGIMPAIRED :: DvbSubtitlingType
pattern DvbSubtitlingTypeHEARINGIMPAIRED = DvbSubtitlingType' "HEARING_IMPAIRED"

pattern DvbSubtitlingTypeSTANDARD :: DvbSubtitlingType
pattern DvbSubtitlingTypeSTANDARD = DvbSubtitlingType' "STANDARD"

{-# COMPLETE
  DvbSubtitlingTypeHEARINGIMPAIRED,
  DvbSubtitlingTypeSTANDARD,
  DvbSubtitlingType'
  #-}

instance Prelude.FromText DvbSubtitlingType where
  parser = DvbSubtitlingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitlingType where
  toText (DvbSubtitlingType' x) = x

instance Prelude.Hashable DvbSubtitlingType

instance Prelude.NFData DvbSubtitlingType

instance Prelude.ToByteString DvbSubtitlingType

instance Prelude.ToQuery DvbSubtitlingType

instance Prelude.ToHeader DvbSubtitlingType

instance Prelude.ToJSON DvbSubtitlingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitlingType where
  parseJSON = Prelude.parseJSONText "DvbSubtitlingType"
