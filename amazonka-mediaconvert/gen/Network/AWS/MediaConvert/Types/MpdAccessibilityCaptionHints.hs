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
-- Module      : Network.AWS.MediaConvert.Types.MpdAccessibilityCaptionHints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdAccessibilityCaptionHints
  ( MpdAccessibilityCaptionHints
      ( ..,
        MpdAccessibilityCaptionHintsEXCLUDE,
        MpdAccessibilityCaptionHintsINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Choose Include (INCLUDE) to have MediaConvert mark up your
-- DASH manifest with elements for embedded 608 captions. This markup
-- isn\'t generally required, but some video players require it to discover
-- and play embedded 608 captions. Keep the default value, Exclude
-- (EXCLUDE), to leave these elements out. When you enable this setting,
-- this is the markup that MediaConvert includes in your manifest:
newtype MpdAccessibilityCaptionHints = MpdAccessibilityCaptionHints'
  { fromMpdAccessibilityCaptionHints ::
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

pattern MpdAccessibilityCaptionHintsEXCLUDE :: MpdAccessibilityCaptionHints
pattern MpdAccessibilityCaptionHintsEXCLUDE = MpdAccessibilityCaptionHints' "EXCLUDE"

pattern MpdAccessibilityCaptionHintsINCLUDE :: MpdAccessibilityCaptionHints
pattern MpdAccessibilityCaptionHintsINCLUDE = MpdAccessibilityCaptionHints' "INCLUDE"

{-# COMPLETE
  MpdAccessibilityCaptionHintsEXCLUDE,
  MpdAccessibilityCaptionHintsINCLUDE,
  MpdAccessibilityCaptionHints'
  #-}

instance Prelude.FromText MpdAccessibilityCaptionHints where
  parser = MpdAccessibilityCaptionHints' Prelude.<$> Prelude.takeText

instance Prelude.ToText MpdAccessibilityCaptionHints where
  toText (MpdAccessibilityCaptionHints' x) = x

instance Prelude.Hashable MpdAccessibilityCaptionHints

instance Prelude.NFData MpdAccessibilityCaptionHints

instance Prelude.ToByteString MpdAccessibilityCaptionHints

instance Prelude.ToQuery MpdAccessibilityCaptionHints

instance Prelude.ToHeader MpdAccessibilityCaptionHints

instance Prelude.ToJSON MpdAccessibilityCaptionHints where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MpdAccessibilityCaptionHints where
  parseJSON = Prelude.parseJSONText "MpdAccessibilityCaptionHints"
