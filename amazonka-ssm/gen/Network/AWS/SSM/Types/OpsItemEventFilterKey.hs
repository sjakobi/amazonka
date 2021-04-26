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
-- Module      : Network.AWS.SSM.Types.OpsItemEventFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventFilterKey
  ( OpsItemEventFilterKey
      ( ..,
        OpsItemEventFilterKeyOpsItemId
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemEventFilterKey = OpsItemEventFilterKey'
  { fromOpsItemEventFilterKey ::
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

pattern OpsItemEventFilterKeyOpsItemId :: OpsItemEventFilterKey
pattern OpsItemEventFilterKeyOpsItemId = OpsItemEventFilterKey' "OpsItemId"

{-# COMPLETE
  OpsItemEventFilterKeyOpsItemId,
  OpsItemEventFilterKey'
  #-}

instance Prelude.FromText OpsItemEventFilterKey where
  parser = OpsItemEventFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemEventFilterKey where
  toText (OpsItemEventFilterKey' x) = x

instance Prelude.Hashable OpsItemEventFilterKey

instance Prelude.NFData OpsItemEventFilterKey

instance Prelude.ToByteString OpsItemEventFilterKey

instance Prelude.ToQuery OpsItemEventFilterKey

instance Prelude.ToHeader OpsItemEventFilterKey

instance Prelude.ToJSON OpsItemEventFilterKey where
  toJSON = Prelude.toJSONText
