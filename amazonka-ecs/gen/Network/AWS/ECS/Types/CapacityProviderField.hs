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
-- Module      : Network.AWS.ECS.Types.CapacityProviderField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderField
  ( CapacityProviderField
      ( ..,
        CapacityProviderFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CapacityProviderField = CapacityProviderField'
  { fromCapacityProviderField ::
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

pattern CapacityProviderFieldTAGS :: CapacityProviderField
pattern CapacityProviderFieldTAGS = CapacityProviderField' "TAGS"

{-# COMPLETE
  CapacityProviderFieldTAGS,
  CapacityProviderField'
  #-}

instance Prelude.FromText CapacityProviderField where
  parser = CapacityProviderField' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityProviderField where
  toText (CapacityProviderField' x) = x

instance Prelude.Hashable CapacityProviderField

instance Prelude.NFData CapacityProviderField

instance Prelude.ToByteString CapacityProviderField

instance Prelude.ToQuery CapacityProviderField

instance Prelude.ToHeader CapacityProviderField

instance Prelude.ToJSON CapacityProviderField where
  toJSON = Prelude.toJSONText
