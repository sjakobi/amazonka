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
-- Module      : Network.AWS.AlexaBusiness.Types.EnablementType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EnablementType
  ( EnablementType
      ( ..,
        EnablementTypeENABLED,
        EnablementTypePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnablementType = EnablementType'
  { fromEnablementType ::
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

pattern EnablementTypeENABLED :: EnablementType
pattern EnablementTypeENABLED = EnablementType' "ENABLED"

pattern EnablementTypePENDING :: EnablementType
pattern EnablementTypePENDING = EnablementType' "PENDING"

{-# COMPLETE
  EnablementTypeENABLED,
  EnablementTypePENDING,
  EnablementType'
  #-}

instance Prelude.FromText EnablementType where
  parser = EnablementType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnablementType where
  toText (EnablementType' x) = x

instance Prelude.Hashable EnablementType

instance Prelude.NFData EnablementType

instance Prelude.ToByteString EnablementType

instance Prelude.ToQuery EnablementType

instance Prelude.ToHeader EnablementType

instance Prelude.FromJSON EnablementType where
  parseJSON = Prelude.parseJSONText "EnablementType"
