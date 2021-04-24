{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SnapshotAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotAttributeName
  ( SnapshotAttributeName
      ( ..,
        CreateVolumePermission,
        ProductCodes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SnapshotAttributeName
  = SnapshotAttributeName'
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

pattern CreateVolumePermission :: SnapshotAttributeName
pattern CreateVolumePermission = SnapshotAttributeName' "createVolumePermission"

pattern ProductCodes :: SnapshotAttributeName
pattern ProductCodes = SnapshotAttributeName' "productCodes"

{-# COMPLETE
  CreateVolumePermission,
  ProductCodes,
  SnapshotAttributeName'
  #-}

instance FromText SnapshotAttributeName where
  parser = (SnapshotAttributeName' . mk) <$> takeText

instance ToText SnapshotAttributeName where
  toText (SnapshotAttributeName' ci) = original ci

instance Hashable SnapshotAttributeName

instance NFData SnapshotAttributeName

instance ToByteString SnapshotAttributeName

instance ToQuery SnapshotAttributeName

instance ToHeader SnapshotAttributeName
