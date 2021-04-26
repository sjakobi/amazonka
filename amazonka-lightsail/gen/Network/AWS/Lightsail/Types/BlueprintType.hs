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
-- Module      : Network.AWS.Lightsail.Types.BlueprintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.BlueprintType
  ( BlueprintType
      ( ..,
        BlueprintTypeApp,
        BlueprintTypeOS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BlueprintType = BlueprintType'
  { fromBlueprintType ::
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

pattern BlueprintTypeApp :: BlueprintType
pattern BlueprintTypeApp = BlueprintType' "app"

pattern BlueprintTypeOS :: BlueprintType
pattern BlueprintTypeOS = BlueprintType' "os"

{-# COMPLETE
  BlueprintTypeApp,
  BlueprintTypeOS,
  BlueprintType'
  #-}

instance Prelude.FromText BlueprintType where
  parser = BlueprintType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BlueprintType where
  toText (BlueprintType' x) = x

instance Prelude.Hashable BlueprintType

instance Prelude.NFData BlueprintType

instance Prelude.ToByteString BlueprintType

instance Prelude.ToQuery BlueprintType

instance Prelude.ToHeader BlueprintType

instance Prelude.FromJSON BlueprintType where
  parseJSON = Prelude.parseJSONText "BlueprintType"
