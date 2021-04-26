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
-- Module      : Network.AWS.WorkDocs.Types.ResourceStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceStateType
  ( ResourceStateType
      ( ..,
        ResourceStateTypeACTIVE,
        ResourceStateTypeRECYCLED,
        ResourceStateTypeRECYCLING,
        ResourceStateTypeRESTORING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceStateType = ResourceStateType'
  { fromResourceStateType ::
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

pattern ResourceStateTypeACTIVE :: ResourceStateType
pattern ResourceStateTypeACTIVE = ResourceStateType' "ACTIVE"

pattern ResourceStateTypeRECYCLED :: ResourceStateType
pattern ResourceStateTypeRECYCLED = ResourceStateType' "RECYCLED"

pattern ResourceStateTypeRECYCLING :: ResourceStateType
pattern ResourceStateTypeRECYCLING = ResourceStateType' "RECYCLING"

pattern ResourceStateTypeRESTORING :: ResourceStateType
pattern ResourceStateTypeRESTORING = ResourceStateType' "RESTORING"

{-# COMPLETE
  ResourceStateTypeACTIVE,
  ResourceStateTypeRECYCLED,
  ResourceStateTypeRECYCLING,
  ResourceStateTypeRESTORING,
  ResourceStateType'
  #-}

instance Prelude.FromText ResourceStateType where
  parser = ResourceStateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceStateType where
  toText (ResourceStateType' x) = x

instance Prelude.Hashable ResourceStateType

instance Prelude.NFData ResourceStateType

instance Prelude.ToByteString ResourceStateType

instance Prelude.ToQuery ResourceStateType

instance Prelude.ToHeader ResourceStateType

instance Prelude.ToJSON ResourceStateType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceStateType where
  parseJSON = Prelude.parseJSONText "ResourceStateType"
