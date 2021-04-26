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
-- Module      : Network.AWS.CodeDeploy.Types.BundleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.BundleType
  ( BundleType
      ( ..,
        BundleTypeJSON,
        BundleTypeTar,
        BundleTypeTgz,
        BundleTypeYAML,
        BundleTypeZip
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BundleType = BundleType'
  { fromBundleType ::
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

pattern BundleTypeJSON :: BundleType
pattern BundleTypeJSON = BundleType' "JSON"

pattern BundleTypeTar :: BundleType
pattern BundleTypeTar = BundleType' "tar"

pattern BundleTypeTgz :: BundleType
pattern BundleTypeTgz = BundleType' "tgz"

pattern BundleTypeYAML :: BundleType
pattern BundleTypeYAML = BundleType' "YAML"

pattern BundleTypeZip :: BundleType
pattern BundleTypeZip = BundleType' "zip"

{-# COMPLETE
  BundleTypeJSON,
  BundleTypeTar,
  BundleTypeTgz,
  BundleTypeYAML,
  BundleTypeZip,
  BundleType'
  #-}

instance Prelude.FromText BundleType where
  parser = BundleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BundleType where
  toText (BundleType' x) = x

instance Prelude.Hashable BundleType

instance Prelude.NFData BundleType

instance Prelude.ToByteString BundleType

instance Prelude.ToQuery BundleType

instance Prelude.ToHeader BundleType

instance Prelude.ToJSON BundleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BundleType where
  parseJSON = Prelude.parseJSONText "BundleType"
