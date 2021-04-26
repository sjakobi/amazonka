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
-- Module      : Network.AWS.WorkSpaces.Types.OperatingSystemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.OperatingSystemType
  ( OperatingSystemType
      ( ..,
        OperatingSystemTypeLINUX,
        OperatingSystemTypeWINDOWS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperatingSystemType = OperatingSystemType'
  { fromOperatingSystemType ::
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

pattern OperatingSystemTypeLINUX :: OperatingSystemType
pattern OperatingSystemTypeLINUX = OperatingSystemType' "LINUX"

pattern OperatingSystemTypeWINDOWS :: OperatingSystemType
pattern OperatingSystemTypeWINDOWS = OperatingSystemType' "WINDOWS"

{-# COMPLETE
  OperatingSystemTypeLINUX,
  OperatingSystemTypeWINDOWS,
  OperatingSystemType'
  #-}

instance Prelude.FromText OperatingSystemType where
  parser = OperatingSystemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperatingSystemType where
  toText (OperatingSystemType' x) = x

instance Prelude.Hashable OperatingSystemType

instance Prelude.NFData OperatingSystemType

instance Prelude.ToByteString OperatingSystemType

instance Prelude.ToQuery OperatingSystemType

instance Prelude.ToHeader OperatingSystemType

instance Prelude.FromJSON OperatingSystemType where
  parseJSON = Prelude.parseJSONText "OperatingSystemType"
