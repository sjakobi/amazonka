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
-- Module      : Network.AWS.Greengrass.Types.LoggerComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerComponent
  ( LoggerComponent
      ( ..,
        LoggerComponentGreengrassSystem,
        LoggerComponentLambda
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoggerComponent = LoggerComponent'
  { fromLoggerComponent ::
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

pattern LoggerComponentGreengrassSystem :: LoggerComponent
pattern LoggerComponentGreengrassSystem = LoggerComponent' "GreengrassSystem"

pattern LoggerComponentLambda :: LoggerComponent
pattern LoggerComponentLambda = LoggerComponent' "Lambda"

{-# COMPLETE
  LoggerComponentGreengrassSystem,
  LoggerComponentLambda,
  LoggerComponent'
  #-}

instance Prelude.FromText LoggerComponent where
  parser = LoggerComponent' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoggerComponent where
  toText (LoggerComponent' x) = x

instance Prelude.Hashable LoggerComponent

instance Prelude.NFData LoggerComponent

instance Prelude.ToByteString LoggerComponent

instance Prelude.ToQuery LoggerComponent

instance Prelude.ToHeader LoggerComponent

instance Prelude.ToJSON LoggerComponent where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoggerComponent where
  parseJSON = Prelude.parseJSONText "LoggerComponent"
