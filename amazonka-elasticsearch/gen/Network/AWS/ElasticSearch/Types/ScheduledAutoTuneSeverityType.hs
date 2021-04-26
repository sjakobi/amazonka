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
-- Module      : Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
  ( ScheduledAutoTuneSeverityType
      ( ..,
        ScheduledAutoTuneSeverityTypeHIGH,
        ScheduledAutoTuneSeverityTypeLOW,
        ScheduledAutoTuneSeverityTypeMEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and
-- HIGH.
newtype ScheduledAutoTuneSeverityType = ScheduledAutoTuneSeverityType'
  { fromScheduledAutoTuneSeverityType ::
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

pattern ScheduledAutoTuneSeverityTypeHIGH :: ScheduledAutoTuneSeverityType
pattern ScheduledAutoTuneSeverityTypeHIGH = ScheduledAutoTuneSeverityType' "HIGH"

pattern ScheduledAutoTuneSeverityTypeLOW :: ScheduledAutoTuneSeverityType
pattern ScheduledAutoTuneSeverityTypeLOW = ScheduledAutoTuneSeverityType' "LOW"

pattern ScheduledAutoTuneSeverityTypeMEDIUM :: ScheduledAutoTuneSeverityType
pattern ScheduledAutoTuneSeverityTypeMEDIUM = ScheduledAutoTuneSeverityType' "MEDIUM"

{-# COMPLETE
  ScheduledAutoTuneSeverityTypeHIGH,
  ScheduledAutoTuneSeverityTypeLOW,
  ScheduledAutoTuneSeverityTypeMEDIUM,
  ScheduledAutoTuneSeverityType'
  #-}

instance Prelude.FromText ScheduledAutoTuneSeverityType where
  parser = ScheduledAutoTuneSeverityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduledAutoTuneSeverityType where
  toText (ScheduledAutoTuneSeverityType' x) = x

instance Prelude.Hashable ScheduledAutoTuneSeverityType

instance Prelude.NFData ScheduledAutoTuneSeverityType

instance Prelude.ToByteString ScheduledAutoTuneSeverityType

instance Prelude.ToQuery ScheduledAutoTuneSeverityType

instance Prelude.ToHeader ScheduledAutoTuneSeverityType

instance Prelude.FromJSON ScheduledAutoTuneSeverityType where
  parseJSON = Prelude.parseJSONText "ScheduledAutoTuneSeverityType"
