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
-- Module      : Network.AWS.Inspector.Types.AssetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssetType
  ( AssetType
      ( ..,
        AssetTypeEC2Instance
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssetType = AssetType'
  { fromAssetType ::
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

pattern AssetTypeEC2Instance :: AssetType
pattern AssetTypeEC2Instance = AssetType' "ec2-instance"

{-# COMPLETE
  AssetTypeEC2Instance,
  AssetType'
  #-}

instance Prelude.FromText AssetType where
  parser = AssetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssetType where
  toText (AssetType' x) = x

instance Prelude.Hashable AssetType

instance Prelude.NFData AssetType

instance Prelude.ToByteString AssetType

instance Prelude.ToQuery AssetType

instance Prelude.ToHeader AssetType

instance Prelude.FromJSON AssetType where
  parseJSON = Prelude.parseJSONText "AssetType"
