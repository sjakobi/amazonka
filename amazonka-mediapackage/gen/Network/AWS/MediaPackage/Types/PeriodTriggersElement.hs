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
-- Module      : Network.AWS.MediaPackage.Types.PeriodTriggersElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.PeriodTriggersElement
  ( PeriodTriggersElement
      ( ..,
        PeriodTriggersElementADS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PeriodTriggersElement = PeriodTriggersElement'
  { fromPeriodTriggersElement ::
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

pattern PeriodTriggersElementADS :: PeriodTriggersElement
pattern PeriodTriggersElementADS = PeriodTriggersElement' "ADS"

{-# COMPLETE
  PeriodTriggersElementADS,
  PeriodTriggersElement'
  #-}

instance Prelude.FromText PeriodTriggersElement where
  parser = PeriodTriggersElement' Prelude.<$> Prelude.takeText

instance Prelude.ToText PeriodTriggersElement where
  toText (PeriodTriggersElement' x) = x

instance Prelude.Hashable PeriodTriggersElement

instance Prelude.NFData PeriodTriggersElement

instance Prelude.ToByteString PeriodTriggersElement

instance Prelude.ToQuery PeriodTriggersElement

instance Prelude.ToHeader PeriodTriggersElement

instance Prelude.ToJSON PeriodTriggersElement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PeriodTriggersElement where
  parseJSON = Prelude.parseJSONText "PeriodTriggersElement"
