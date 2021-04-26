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
-- Module      : Network.AWS.AppStream.Types.VisibilityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.VisibilityType
  ( VisibilityType
      ( ..,
        VisibilityTypePRIVATE,
        VisibilityTypePUBLIC,
        VisibilityTypeSHARED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VisibilityType = VisibilityType'
  { fromVisibilityType ::
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

pattern VisibilityTypePRIVATE :: VisibilityType
pattern VisibilityTypePRIVATE = VisibilityType' "PRIVATE"

pattern VisibilityTypePUBLIC :: VisibilityType
pattern VisibilityTypePUBLIC = VisibilityType' "PUBLIC"

pattern VisibilityTypeSHARED :: VisibilityType
pattern VisibilityTypeSHARED = VisibilityType' "SHARED"

{-# COMPLETE
  VisibilityTypePRIVATE,
  VisibilityTypePUBLIC,
  VisibilityTypeSHARED,
  VisibilityType'
  #-}

instance Prelude.FromText VisibilityType where
  parser = VisibilityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VisibilityType where
  toText (VisibilityType' x) = x

instance Prelude.Hashable VisibilityType

instance Prelude.NFData VisibilityType

instance Prelude.ToByteString VisibilityType

instance Prelude.ToQuery VisibilityType

instance Prelude.ToHeader VisibilityType

instance Prelude.ToJSON VisibilityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VisibilityType where
  parseJSON = Prelude.parseJSONText "VisibilityType"
