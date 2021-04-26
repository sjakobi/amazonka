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
-- Module      : Network.AWS.ECS.Types.ServiceField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ServiceField
  ( ServiceField
      ( ..,
        ServiceFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceField = ServiceField'
  { fromServiceField ::
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

pattern ServiceFieldTAGS :: ServiceField
pattern ServiceFieldTAGS = ServiceField' "TAGS"

{-# COMPLETE
  ServiceFieldTAGS,
  ServiceField'
  #-}

instance Prelude.FromText ServiceField where
  parser = ServiceField' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceField where
  toText (ServiceField' x) = x

instance Prelude.Hashable ServiceField

instance Prelude.NFData ServiceField

instance Prelude.ToByteString ServiceField

instance Prelude.ToQuery ServiceField

instance Prelude.ToHeader ServiceField

instance Prelude.ToJSON ServiceField where
  toJSON = Prelude.toJSONText
