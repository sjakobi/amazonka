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
-- Module      : Network.AWS.Glue.Types.RegistryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.RegistryStatus
  ( RegistryStatus
      ( ..,
        RegistryStatusAVAILABLE,
        RegistryStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegistryStatus = RegistryStatus'
  { fromRegistryStatus ::
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

pattern RegistryStatusAVAILABLE :: RegistryStatus
pattern RegistryStatusAVAILABLE = RegistryStatus' "AVAILABLE"

pattern RegistryStatusDELETING :: RegistryStatus
pattern RegistryStatusDELETING = RegistryStatus' "DELETING"

{-# COMPLETE
  RegistryStatusAVAILABLE,
  RegistryStatusDELETING,
  RegistryStatus'
  #-}

instance Prelude.FromText RegistryStatus where
  parser = RegistryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RegistryStatus where
  toText (RegistryStatus' x) = x

instance Prelude.Hashable RegistryStatus

instance Prelude.NFData RegistryStatus

instance Prelude.ToByteString RegistryStatus

instance Prelude.ToQuery RegistryStatus

instance Prelude.ToHeader RegistryStatus

instance Prelude.FromJSON RegistryStatus where
  parseJSON = Prelude.parseJSONText "RegistryStatus"
