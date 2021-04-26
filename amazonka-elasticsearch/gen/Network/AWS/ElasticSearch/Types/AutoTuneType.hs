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
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneType
  ( AutoTuneType
      ( ..,
        AutoTuneTypeSCHEDULEDACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION.
newtype AutoTuneType = AutoTuneType'
  { fromAutoTuneType ::
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

pattern AutoTuneTypeSCHEDULEDACTION :: AutoTuneType
pattern AutoTuneTypeSCHEDULEDACTION = AutoTuneType' "SCHEDULED_ACTION"

{-# COMPLETE
  AutoTuneTypeSCHEDULEDACTION,
  AutoTuneType'
  #-}

instance Prelude.FromText AutoTuneType where
  parser = AutoTuneType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoTuneType where
  toText (AutoTuneType' x) = x

instance Prelude.Hashable AutoTuneType

instance Prelude.NFData AutoTuneType

instance Prelude.ToByteString AutoTuneType

instance Prelude.ToQuery AutoTuneType

instance Prelude.ToHeader AutoTuneType

instance Prelude.FromJSON AutoTuneType where
  parseJSON = Prelude.parseJSONText "AutoTuneType"
