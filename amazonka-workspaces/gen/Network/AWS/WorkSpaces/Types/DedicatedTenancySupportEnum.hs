{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.DedicatedTenancySupportEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DedicatedTenancySupportEnum
  ( DedicatedTenancySupportEnum
      ( ..,
        DTSEEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DedicatedTenancySupportEnum
  = DedicatedTenancySupportEnum'
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

pattern DTSEEnabled :: DedicatedTenancySupportEnum
pattern DTSEEnabled = DedicatedTenancySupportEnum' "ENABLED"

{-# COMPLETE
  DTSEEnabled,
  DedicatedTenancySupportEnum'
  #-}

instance FromText DedicatedTenancySupportEnum where
  parser = (DedicatedTenancySupportEnum' . mk) <$> takeText

instance ToText DedicatedTenancySupportEnum where
  toText (DedicatedTenancySupportEnum' ci) = original ci

instance Hashable DedicatedTenancySupportEnum

instance NFData DedicatedTenancySupportEnum

instance ToByteString DedicatedTenancySupportEnum

instance ToQuery DedicatedTenancySupportEnum

instance ToHeader DedicatedTenancySupportEnum

instance ToJSON DedicatedTenancySupportEnum where
  toJSON = toJSONText
