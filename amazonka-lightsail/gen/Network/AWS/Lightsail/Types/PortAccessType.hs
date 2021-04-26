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
-- Module      : Network.AWS.Lightsail.Types.PortAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortAccessType
  ( PortAccessType
      ( ..,
        PortAccessTypePrivate,
        PortAccessTypePublic
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PortAccessType = PortAccessType'
  { fromPortAccessType ::
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

pattern PortAccessTypePrivate :: PortAccessType
pattern PortAccessTypePrivate = PortAccessType' "Private"

pattern PortAccessTypePublic :: PortAccessType
pattern PortAccessTypePublic = PortAccessType' "Public"

{-# COMPLETE
  PortAccessTypePrivate,
  PortAccessTypePublic,
  PortAccessType'
  #-}

instance Prelude.FromText PortAccessType where
  parser = PortAccessType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PortAccessType where
  toText (PortAccessType' x) = x

instance Prelude.Hashable PortAccessType

instance Prelude.NFData PortAccessType

instance Prelude.ToByteString PortAccessType

instance Prelude.ToQuery PortAccessType

instance Prelude.ToHeader PortAccessType

instance Prelude.FromJSON PortAccessType where
  parseJSON = Prelude.parseJSONText "PortAccessType"
