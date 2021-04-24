{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum
  ( DedicatedTenancySupportResultEnum
      ( ..,
        DTSREDisabled,
        DTSREEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DedicatedTenancySupportResultEnum
  = DedicatedTenancySupportResultEnum'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DTSREDisabled :: DedicatedTenancySupportResultEnum
pattern DTSREDisabled = DedicatedTenancySupportResultEnum' "DISABLED"

pattern DTSREEnabled :: DedicatedTenancySupportResultEnum
pattern DTSREEnabled = DedicatedTenancySupportResultEnum' "ENABLED"

{-# COMPLETE
  DTSREDisabled,
  DTSREEnabled,
  DedicatedTenancySupportResultEnum'
  #-}

instance FromText DedicatedTenancySupportResultEnum where
  parser = (DedicatedTenancySupportResultEnum' . mk) <$> takeText

instance ToText DedicatedTenancySupportResultEnum where
  toText (DedicatedTenancySupportResultEnum' ci) = original ci

instance Hashable DedicatedTenancySupportResultEnum

instance NFData DedicatedTenancySupportResultEnum

instance ToByteString DedicatedTenancySupportResultEnum

instance ToQuery DedicatedTenancySupportResultEnum

instance ToHeader DedicatedTenancySupportResultEnum

instance FromJSON DedicatedTenancySupportResultEnum where
  parseJSON = parseJSONText "DedicatedTenancySupportResultEnum"
