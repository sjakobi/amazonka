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
-- Module      : Network.AWS.CodeDeploy.Types.EC2TagFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.EC2TagFilterType
  ( EC2TagFilterType
      ( ..,
        EC2TagFilterTypeKEYANDVALUE,
        EC2TagFilterTypeKEYONLY,
        EC2TagFilterTypeVALUEONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EC2TagFilterType = EC2TagFilterType'
  { fromEC2TagFilterType ::
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

pattern EC2TagFilterTypeKEYANDVALUE :: EC2TagFilterType
pattern EC2TagFilterTypeKEYANDVALUE = EC2TagFilterType' "KEY_AND_VALUE"

pattern EC2TagFilterTypeKEYONLY :: EC2TagFilterType
pattern EC2TagFilterTypeKEYONLY = EC2TagFilterType' "KEY_ONLY"

pattern EC2TagFilterTypeVALUEONLY :: EC2TagFilterType
pattern EC2TagFilterTypeVALUEONLY = EC2TagFilterType' "VALUE_ONLY"

{-# COMPLETE
  EC2TagFilterTypeKEYANDVALUE,
  EC2TagFilterTypeKEYONLY,
  EC2TagFilterTypeVALUEONLY,
  EC2TagFilterType'
  #-}

instance Prelude.FromText EC2TagFilterType where
  parser = EC2TagFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EC2TagFilterType where
  toText (EC2TagFilterType' x) = x

instance Prelude.Hashable EC2TagFilterType

instance Prelude.NFData EC2TagFilterType

instance Prelude.ToByteString EC2TagFilterType

instance Prelude.ToQuery EC2TagFilterType

instance Prelude.ToHeader EC2TagFilterType

instance Prelude.ToJSON EC2TagFilterType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EC2TagFilterType where
  parseJSON = Prelude.parseJSONText "EC2TagFilterType"
