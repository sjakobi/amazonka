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
-- Module      : Network.AWS.MediaPackage.Types.ManifestLayout
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.ManifestLayout
  ( ManifestLayout
      ( ..,
        ManifestLayoutCOMPACT,
        ManifestLayoutFULL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ManifestLayout = ManifestLayout'
  { fromManifestLayout ::
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

pattern ManifestLayoutCOMPACT :: ManifestLayout
pattern ManifestLayoutCOMPACT = ManifestLayout' "COMPACT"

pattern ManifestLayoutFULL :: ManifestLayout
pattern ManifestLayoutFULL = ManifestLayout' "FULL"

{-# COMPLETE
  ManifestLayoutCOMPACT,
  ManifestLayoutFULL,
  ManifestLayout'
  #-}

instance Prelude.FromText ManifestLayout where
  parser = ManifestLayout' Prelude.<$> Prelude.takeText

instance Prelude.ToText ManifestLayout where
  toText (ManifestLayout' x) = x

instance Prelude.Hashable ManifestLayout

instance Prelude.NFData ManifestLayout

instance Prelude.ToByteString ManifestLayout

instance Prelude.ToQuery ManifestLayout

instance Prelude.ToHeader ManifestLayout

instance Prelude.ToJSON ManifestLayout where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ManifestLayout where
  parseJSON = Prelude.parseJSONText "ManifestLayout"
