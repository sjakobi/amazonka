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
-- Module      : Network.AWS.CostExplorer.Types.Granularity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Granularity
  ( Granularity
      ( ..,
        GranularityDAILY,
        GranularityHOURLY,
        GranularityMONTHLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Granularity = Granularity'
  { fromGranularity ::
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

pattern GranularityDAILY :: Granularity
pattern GranularityDAILY = Granularity' "DAILY"

pattern GranularityHOURLY :: Granularity
pattern GranularityHOURLY = Granularity' "HOURLY"

pattern GranularityMONTHLY :: Granularity
pattern GranularityMONTHLY = Granularity' "MONTHLY"

{-# COMPLETE
  GranularityDAILY,
  GranularityHOURLY,
  GranularityMONTHLY,
  Granularity'
  #-}

instance Prelude.FromText Granularity where
  parser = Granularity' Prelude.<$> Prelude.takeText

instance Prelude.ToText Granularity where
  toText (Granularity' x) = x

instance Prelude.Hashable Granularity

instance Prelude.NFData Granularity

instance Prelude.ToByteString Granularity

instance Prelude.ToQuery Granularity

instance Prelude.ToHeader Granularity

instance Prelude.ToJSON Granularity where
  toJSON = Prelude.toJSONText
