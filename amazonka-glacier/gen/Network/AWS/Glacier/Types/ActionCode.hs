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
-- Module      : Network.AWS.Glacier.Types.ActionCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.ActionCode
  ( ActionCode
      ( ..,
        ActionCodeArchiveRetrieval,
        ActionCodeInventoryRetrieval,
        ActionCodeSelect
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionCode = ActionCode'
  { fromActionCode ::
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

pattern ActionCodeArchiveRetrieval :: ActionCode
pattern ActionCodeArchiveRetrieval = ActionCode' "ArchiveRetrieval"

pattern ActionCodeInventoryRetrieval :: ActionCode
pattern ActionCodeInventoryRetrieval = ActionCode' "InventoryRetrieval"

pattern ActionCodeSelect :: ActionCode
pattern ActionCodeSelect = ActionCode' "Select"

{-# COMPLETE
  ActionCodeArchiveRetrieval,
  ActionCodeInventoryRetrieval,
  ActionCodeSelect,
  ActionCode'
  #-}

instance Prelude.FromText ActionCode where
  parser = ActionCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionCode where
  toText (ActionCode' x) = x

instance Prelude.Hashable ActionCode

instance Prelude.NFData ActionCode

instance Prelude.ToByteString ActionCode

instance Prelude.ToQuery ActionCode

instance Prelude.ToHeader ActionCode

instance Prelude.FromJSON ActionCode where
  parseJSON = Prelude.parseJSONText "ActionCode"
