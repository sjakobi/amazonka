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
-- Module      : Network.AWS.Lightsail.Types.PortInfoSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortInfoSourceType
  ( PortInfoSourceType
      ( ..,
        PortInfoSourceTypeCLOSED,
        PortInfoSourceTypeDEFAULT,
        PortInfoSourceTypeINSTANCE,
        PortInfoSourceTypeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PortInfoSourceType = PortInfoSourceType'
  { fromPortInfoSourceType ::
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

pattern PortInfoSourceTypeCLOSED :: PortInfoSourceType
pattern PortInfoSourceTypeCLOSED = PortInfoSourceType' "CLOSED"

pattern PortInfoSourceTypeDEFAULT :: PortInfoSourceType
pattern PortInfoSourceTypeDEFAULT = PortInfoSourceType' "DEFAULT"

pattern PortInfoSourceTypeINSTANCE :: PortInfoSourceType
pattern PortInfoSourceTypeINSTANCE = PortInfoSourceType' "INSTANCE"

pattern PortInfoSourceTypeNONE :: PortInfoSourceType
pattern PortInfoSourceTypeNONE = PortInfoSourceType' "NONE"

{-# COMPLETE
  PortInfoSourceTypeCLOSED,
  PortInfoSourceTypeDEFAULT,
  PortInfoSourceTypeINSTANCE,
  PortInfoSourceTypeNONE,
  PortInfoSourceType'
  #-}

instance Prelude.FromText PortInfoSourceType where
  parser = PortInfoSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PortInfoSourceType where
  toText (PortInfoSourceType' x) = x

instance Prelude.Hashable PortInfoSourceType

instance Prelude.NFData PortInfoSourceType

instance Prelude.ToByteString PortInfoSourceType

instance Prelude.ToQuery PortInfoSourceType

instance Prelude.ToHeader PortInfoSourceType

instance Prelude.ToJSON PortInfoSourceType where
  toJSON = Prelude.toJSONText
