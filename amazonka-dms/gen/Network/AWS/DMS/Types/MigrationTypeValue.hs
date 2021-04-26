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
-- Module      : Network.AWS.DMS.Types.MigrationTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MigrationTypeValue
  ( MigrationTypeValue
      ( ..,
        MigrationTypeValueCdc,
        MigrationTypeValueFullLoad,
        MigrationTypeValueFullLoadAndCdc
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MigrationTypeValue = MigrationTypeValue'
  { fromMigrationTypeValue ::
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

pattern MigrationTypeValueCdc :: MigrationTypeValue
pattern MigrationTypeValueCdc = MigrationTypeValue' "cdc"

pattern MigrationTypeValueFullLoad :: MigrationTypeValue
pattern MigrationTypeValueFullLoad = MigrationTypeValue' "full-load"

pattern MigrationTypeValueFullLoadAndCdc :: MigrationTypeValue
pattern MigrationTypeValueFullLoadAndCdc = MigrationTypeValue' "full-load-and-cdc"

{-# COMPLETE
  MigrationTypeValueCdc,
  MigrationTypeValueFullLoad,
  MigrationTypeValueFullLoadAndCdc,
  MigrationTypeValue'
  #-}

instance Prelude.FromText MigrationTypeValue where
  parser = MigrationTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText MigrationTypeValue where
  toText (MigrationTypeValue' x) = x

instance Prelude.Hashable MigrationTypeValue

instance Prelude.NFData MigrationTypeValue

instance Prelude.ToByteString MigrationTypeValue

instance Prelude.ToQuery MigrationTypeValue

instance Prelude.ToHeader MigrationTypeValue

instance Prelude.ToJSON MigrationTypeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MigrationTypeValue where
  parseJSON = Prelude.parseJSONText "MigrationTypeValue"
