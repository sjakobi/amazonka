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
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
  ( HealthStatusFilter
      ( ..,
        HealthStatusFilterALL,
        HealthStatusFilterHEALTHY,
        HealthStatusFilterUNHEALTHY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HealthStatusFilter = HealthStatusFilter'
  { fromHealthStatusFilter ::
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

pattern HealthStatusFilterALL :: HealthStatusFilter
pattern HealthStatusFilterALL = HealthStatusFilter' "ALL"

pattern HealthStatusFilterHEALTHY :: HealthStatusFilter
pattern HealthStatusFilterHEALTHY = HealthStatusFilter' "HEALTHY"

pattern HealthStatusFilterUNHEALTHY :: HealthStatusFilter
pattern HealthStatusFilterUNHEALTHY = HealthStatusFilter' "UNHEALTHY"

{-# COMPLETE
  HealthStatusFilterALL,
  HealthStatusFilterHEALTHY,
  HealthStatusFilterUNHEALTHY,
  HealthStatusFilter'
  #-}

instance Prelude.FromText HealthStatusFilter where
  parser = HealthStatusFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText HealthStatusFilter where
  toText (HealthStatusFilter' x) = x

instance Prelude.Hashable HealthStatusFilter

instance Prelude.NFData HealthStatusFilter

instance Prelude.ToByteString HealthStatusFilter

instance Prelude.ToQuery HealthStatusFilter

instance Prelude.ToHeader HealthStatusFilter

instance Prelude.ToJSON HealthStatusFilter where
  toJSON = Prelude.toJSONText
