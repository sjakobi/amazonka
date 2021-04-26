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
-- Module      : Network.AWS.CloudWatchLogs.Types.Distribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.Distribution
  ( Distribution
      ( ..,
        DistributionByLogStream,
        DistributionRandom
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The method used to distribute log data to the destination, which can be
-- either random or grouped by log stream.
newtype Distribution = Distribution'
  { fromDistribution ::
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

pattern DistributionByLogStream :: Distribution
pattern DistributionByLogStream = Distribution' "ByLogStream"

pattern DistributionRandom :: Distribution
pattern DistributionRandom = Distribution' "Random"

{-# COMPLETE
  DistributionByLogStream,
  DistributionRandom,
  Distribution'
  #-}

instance Prelude.FromText Distribution where
  parser = Distribution' Prelude.<$> Prelude.takeText

instance Prelude.ToText Distribution where
  toText (Distribution' x) = x

instance Prelude.Hashable Distribution

instance Prelude.NFData Distribution

instance Prelude.ToByteString Distribution

instance Prelude.ToQuery Distribution

instance Prelude.ToHeader Distribution

instance Prelude.ToJSON Distribution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Distribution where
  parseJSON = Prelude.parseJSONText "Distribution"
