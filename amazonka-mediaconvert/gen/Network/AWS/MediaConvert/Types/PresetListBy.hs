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
-- Module      : Network.AWS.MediaConvert.Types.PresetListBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.PresetListBy
  ( PresetListBy
      ( ..,
        PresetListByCREATIONDATE,
        PresetListByNAME,
        PresetListBySYSTEM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you request a list of presets, you can choose to list
-- them alphabetically by NAME or chronologically by CREATION_DATE. If you
-- don\'t specify, the service will list them by name.
newtype PresetListBy = PresetListBy'
  { fromPresetListBy ::
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

pattern PresetListByCREATIONDATE :: PresetListBy
pattern PresetListByCREATIONDATE = PresetListBy' "CREATION_DATE"

pattern PresetListByNAME :: PresetListBy
pattern PresetListByNAME = PresetListBy' "NAME"

pattern PresetListBySYSTEM :: PresetListBy
pattern PresetListBySYSTEM = PresetListBy' "SYSTEM"

{-# COMPLETE
  PresetListByCREATIONDATE,
  PresetListByNAME,
  PresetListBySYSTEM,
  PresetListBy'
  #-}

instance Prelude.FromText PresetListBy where
  parser = PresetListBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText PresetListBy where
  toText (PresetListBy' x) = x

instance Prelude.Hashable PresetListBy

instance Prelude.NFData PresetListBy

instance Prelude.ToByteString PresetListBy

instance Prelude.ToQuery PresetListBy

instance Prelude.ToHeader PresetListBy

instance Prelude.ToJSON PresetListBy where
  toJSON = Prelude.toJSONText
