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
-- Module      : Network.AWS.Greengrass.Types.FunctionIsolationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.FunctionIsolationMode
  ( FunctionIsolationMode
      ( ..,
        FunctionIsolationModeGreengrassContainer,
        FunctionIsolationModeNoContainer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the Lambda function runs in a Greengrass container
-- (default) or without containerization. Unless your scenario requires
-- that you run without containerization, we recommend that you run in a
-- Greengrass container. Omit this value to run the Lambda function with
-- the default containerization for the group.
newtype FunctionIsolationMode = FunctionIsolationMode'
  { fromFunctionIsolationMode ::
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

pattern FunctionIsolationModeGreengrassContainer :: FunctionIsolationMode
pattern FunctionIsolationModeGreengrassContainer = FunctionIsolationMode' "GreengrassContainer"

pattern FunctionIsolationModeNoContainer :: FunctionIsolationMode
pattern FunctionIsolationModeNoContainer = FunctionIsolationMode' "NoContainer"

{-# COMPLETE
  FunctionIsolationModeGreengrassContainer,
  FunctionIsolationModeNoContainer,
  FunctionIsolationMode'
  #-}

instance Prelude.FromText FunctionIsolationMode where
  parser = FunctionIsolationMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FunctionIsolationMode where
  toText (FunctionIsolationMode' x) = x

instance Prelude.Hashable FunctionIsolationMode

instance Prelude.NFData FunctionIsolationMode

instance Prelude.ToByteString FunctionIsolationMode

instance Prelude.ToQuery FunctionIsolationMode

instance Prelude.ToHeader FunctionIsolationMode

instance Prelude.ToJSON FunctionIsolationMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FunctionIsolationMode where
  parseJSON = Prelude.parseJSONText "FunctionIsolationMode"
