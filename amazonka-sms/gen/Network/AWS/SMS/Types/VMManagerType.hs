{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.VMManagerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.VMManagerType
  ( VMManagerType
      ( ..,
        HypervManager,
        Scvmm,
        Vsphere
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VMManagerType = VMManagerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HypervManager :: VMManagerType
pattern HypervManager = VMManagerType' "HYPERV-MANAGER"

pattern Scvmm :: VMManagerType
pattern Scvmm = VMManagerType' "SCVMM"

pattern Vsphere :: VMManagerType
pattern Vsphere = VMManagerType' "VSPHERE"

{-# COMPLETE
  HypervManager,
  Scvmm,
  Vsphere,
  VMManagerType'
  #-}

instance FromText VMManagerType where
  parser = (VMManagerType' . mk) <$> takeText

instance ToText VMManagerType where
  toText (VMManagerType' ci) = original ci

instance Hashable VMManagerType

instance NFData VMManagerType

instance ToByteString VMManagerType

instance ToQuery VMManagerType

instance ToHeader VMManagerType

instance ToJSON VMManagerType where
  toJSON = toJSONText

instance FromJSON VMManagerType where
  parseJSON = parseJSONText "VMManagerType"
