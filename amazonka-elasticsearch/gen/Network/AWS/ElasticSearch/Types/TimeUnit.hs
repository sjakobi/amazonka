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
-- Module      : Network.AWS.ElasticSearch.Types.TimeUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.TimeUnit
  ( TimeUnit
      ( ..,
        TimeUnitHOURS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the unit of a maintenance schedule duration. Valid value is
-- HOUR. See the
-- <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide>
-- for more information.
newtype TimeUnit = TimeUnit'
  { fromTimeUnit ::
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

pattern TimeUnitHOURS :: TimeUnit
pattern TimeUnitHOURS = TimeUnit' "HOURS"

{-# COMPLETE
  TimeUnitHOURS,
  TimeUnit'
  #-}

instance Prelude.FromText TimeUnit where
  parser = TimeUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeUnit where
  toText (TimeUnit' x) = x

instance Prelude.Hashable TimeUnit

instance Prelude.NFData TimeUnit

instance Prelude.ToByteString TimeUnit

instance Prelude.ToQuery TimeUnit

instance Prelude.ToHeader TimeUnit

instance Prelude.ToJSON TimeUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimeUnit where
  parseJSON = Prelude.parseJSONText "TimeUnit"
