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
-- Module      : Network.AWS.Rekognition.Types.GenderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.GenderType
  ( GenderType
      ( ..,
        GenderTypeFemale,
        GenderTypeMale
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GenderType = GenderType'
  { fromGenderType ::
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

pattern GenderTypeFemale :: GenderType
pattern GenderTypeFemale = GenderType' "Female"

pattern GenderTypeMale :: GenderType
pattern GenderTypeMale = GenderType' "Male"

{-# COMPLETE
  GenderTypeFemale,
  GenderTypeMale,
  GenderType'
  #-}

instance Prelude.FromText GenderType where
  parser = GenderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GenderType where
  toText (GenderType' x) = x

instance Prelude.Hashable GenderType

instance Prelude.NFData GenderType

instance Prelude.ToByteString GenderType

instance Prelude.ToQuery GenderType

instance Prelude.ToHeader GenderType

instance Prelude.FromJSON GenderType where
  parseJSON = Prelude.parseJSONText "GenderType"
