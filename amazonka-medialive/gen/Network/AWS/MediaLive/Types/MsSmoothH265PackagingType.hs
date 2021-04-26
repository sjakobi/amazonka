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
-- Module      : Network.AWS.MediaLive.Types.MsSmoothH265PackagingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MsSmoothH265PackagingType
  ( MsSmoothH265PackagingType
      ( ..,
        MsSmoothH265PackagingTypeHEV1,
        MsSmoothH265PackagingTypeHVC1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ms Smooth H265 Packaging Type
newtype MsSmoothH265PackagingType = MsSmoothH265PackagingType'
  { fromMsSmoothH265PackagingType ::
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

pattern MsSmoothH265PackagingTypeHEV1 :: MsSmoothH265PackagingType
pattern MsSmoothH265PackagingTypeHEV1 = MsSmoothH265PackagingType' "HEV1"

pattern MsSmoothH265PackagingTypeHVC1 :: MsSmoothH265PackagingType
pattern MsSmoothH265PackagingTypeHVC1 = MsSmoothH265PackagingType' "HVC1"

{-# COMPLETE
  MsSmoothH265PackagingTypeHEV1,
  MsSmoothH265PackagingTypeHVC1,
  MsSmoothH265PackagingType'
  #-}

instance Prelude.FromText MsSmoothH265PackagingType where
  parser = MsSmoothH265PackagingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MsSmoothH265PackagingType where
  toText (MsSmoothH265PackagingType' x) = x

instance Prelude.Hashable MsSmoothH265PackagingType

instance Prelude.NFData MsSmoothH265PackagingType

instance Prelude.ToByteString MsSmoothH265PackagingType

instance Prelude.ToQuery MsSmoothH265PackagingType

instance Prelude.ToHeader MsSmoothH265PackagingType

instance Prelude.ToJSON MsSmoothH265PackagingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MsSmoothH265PackagingType where
  parseJSON = Prelude.parseJSONText "MsSmoothH265PackagingType"
