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
-- Module      : Network.AWS.AppSync.Types.RelationalDatabaseSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.RelationalDatabaseSourceType
  ( RelationalDatabaseSourceType
      ( ..,
        RelationalDatabaseSourceTypeRDSHTTPENDPOINT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RelationalDatabaseSourceType = RelationalDatabaseSourceType'
  { fromRelationalDatabaseSourceType ::
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

pattern RelationalDatabaseSourceTypeRDSHTTPENDPOINT :: RelationalDatabaseSourceType
pattern RelationalDatabaseSourceTypeRDSHTTPENDPOINT = RelationalDatabaseSourceType' "RDS_HTTP_ENDPOINT"

{-# COMPLETE
  RelationalDatabaseSourceTypeRDSHTTPENDPOINT,
  RelationalDatabaseSourceType'
  #-}

instance Prelude.FromText RelationalDatabaseSourceType where
  parser = RelationalDatabaseSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RelationalDatabaseSourceType where
  toText (RelationalDatabaseSourceType' x) = x

instance Prelude.Hashable RelationalDatabaseSourceType

instance Prelude.NFData RelationalDatabaseSourceType

instance Prelude.ToByteString RelationalDatabaseSourceType

instance Prelude.ToQuery RelationalDatabaseSourceType

instance Prelude.ToHeader RelationalDatabaseSourceType

instance Prelude.ToJSON RelationalDatabaseSourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RelationalDatabaseSourceType where
  parseJSON = Prelude.parseJSONText "RelationalDatabaseSourceType"
